# general text parser

import os
import sys
from time import sleep
import glob
import json
import re
#import jsonpickle

# config
# file (inc. glob)
# list of searches: type (re, etc), singe/multiline, text, template

class Spec:
   def __init__(self):
      self.val = None
      self.multiline = False
      self.re = False
      self.post = None   # postprocessor function
      self.ci = False    # case-insensitive
      self.flags = 0     # re flags
      self.matchOnly = False  # return re match, or whole result (if not multiline)
      self.before = 0
      self.after = 0
      # start from prev?
      # callback for every match?
      self.search = False  # use re.search instead of re.match

class Config:
   def __init__(self):
      self.specs = None
      self.title = None

   def toJson(self):
      return json.dumps(self, default=lambda o: o.__dict__)

class Log:

   def __init__(self, config=None):
      self.config = config

   # process all matching files, or newest only
   def processGlob(self, g, spec, newest=False):
      files = glob.glob(g)
      if newest:
         files = [max(files, key=os.path.getctime)]
      for f in files:
         self.processFile(f, spec)

   # read file
   def processFile(self, fn, spec):
      contents = None
      lines = None

      # process spec list in order
      results = []
      for s in spec:

         if s.multiline and contents is None:
            with open(fn, 'r') as f:
               contents = f.read()
         elif lines is None:
            lines = []
            with open(fn, 'r') as f:
               for l in f:
                  lines.append(l.rstrip('\n'))

         v = []
         if s.re:
            if s.multiline:
               r = re.findall(s.val, contents, s.flags)
               for i in range(len(r)):
                  v.append(r[i])
            else:
               for i in range(len(lines)):
                  l = lines[i]
                  matchFn = re.match if not s.search else re.search
                  res = matchFn(s.val, l, s.flags)
                  if res is not None:
                     if s.matchOnly:
                        v.append(res.groups())
                     else:
                        if s.before == -1:
                           for j in range(0, i):
                              v.append(lines[j])
                        elif s.before > 0:
                           for j in range(max(0, i-s.before), i):
                              v.append(lines[j])
                        v.append(l)
                        if s.after == -1:
                           for j in range(i+1, len(lines)):
                              v.append(lines[j])
                        elif s.after > 0:
                           for j in range(i+1, i+1+s.after):
                              v.append(lines[j])

         else:
            if s.multiline:
               p = 0
               while p < len(contents):
                  p1 = contents.find(s.val, p)
                  if p1 == -1:
                     break
                  v.append(p1)
                  p += len(p1)
            else:
               for i in range(len(lines)):
                  l = lines[i]
                  if l.find(s.val) != -1:
                     if s.before == -1:
                        for j in range(0, i):
                           v.append(lines[j])
                     elif s.before > 0:
                        for j in range(max(0, i-s.before), i):
                           v.append(lines[j])
                     v.append(l)
                     if s.after == -1:
                        for j in range(i+1, len(lines)):
                           v.append(lines[j])
                     elif s.after > 0:
                        for j in range(i+1, i+1+s.after):
                           v.append(lines[j])

         results.append(v)

      return results

if __name__ == '__main__':

   import os.path, time
   import argparse
   parser = argparse.ArgumentParser()
   parser.add_argument('logFile')
   parser.add_argument('-l', '--loops', type=int, dest='loops', default=200, help='loops to run; default=200')
   parser.add_argument('-m', '--move', type=int, dest='move', default=10, help='rate of movement (1/n iterations); default=10')
   parser.add_argument('--test', dest='testVal', default=None, help='test value')
   args = parser.parse_args()

   logDir = args.logFile

   # openroad testing

   log = Log()

   # --------------------

   logFile = logDir + '/1_1_yosys.log'
   print('Report: ' + logFile)
   print('')

   s0 = Spec()
   s0.val = r'^Yosys .* \(git sha1'
   s0.re = True

   s1 = Spec()
   s1.val = r'\n(30\. .*)'
   s1.re = True
   s1.multiline = True
   s1.flags = re.DOTALL

   specs = [s0, s1]
   config = Config()
   config.specs = specs

   res = log.processFile(logFile, config.specs)
   for i in range(len(res)):
      for l in res[i]:
         print(l)
      print('')

   print()
   print('*** Warnings ***')
   print()

   s0 = Spec()
   s0.val = r'(Warning:.*)'
   s0.re = True
   config = Config()
   config.specs = [s0]
   res = log.processFile(logFile, config.specs)
   for i in range(len(res)):
      for l in res[i]:
         print(l)
      print('')

   s0 = Spec()
   s0.val = r'(Error:.*)'
   s0.re = True
   config = Config()
   config.specs = [s0]
   res = log.processFile(logFile, config.specs)

   found = False
   for i in range(len(res)):
      for l in res[i]:
         if not found:
            print()
            print('*** Errors ***')
            print()
            found = True
         print(l)
      print('')

   # --------------------
   logFile = logDir + '/2_1_floorplan.log'
   print('Report: ' + logFile)
   print('')

   s0 = Spec()
   s0.val = r'\n(Design area .*)'
   s0.re = True
   s0.multiline = True
   s0.flags = re.DOTALL

   config = Config()
   config.specs = [s0]

   res = log.processFile(logFile, config.specs)
   for i in range(len(res)):
      for l in res[i]:
         print(l)
      print('')

   # --------------------
   logFile = logDir + '/2_2_floorplan_io.log'
   print('Report: ' + logFile)
   print('')

   s0 = Spec()
   s0.val = r'\n\[INFO ODB-0134\].*?\n(.*)'
   s0.re = True
   s0.multiline = True
   s0.flags = re.DOTALL

   config = Config()
   config.specs = [s0]

   res = log.processFile(logFile, config.specs)
   for i in range(len(res)):
      for l in res[i]:
         print(l)
      print('')

   # --------------------
   logFile = logDir + '/2_3_tdms_place.log'
   print('Report: ' + logFile)
   print('')

   s0 = Spec()
   s0.val = r'\n\[INFO ODB-0134\].*?\n(.*)'
   s0.re = True
   s0.multiline = True
   s0.flags = re.DOTALL

   config = Config()
   config.specs = [s0]

   res = log.processFile(logFile, config.specs)
   for i in range(len(res)):
      for l in res[i]:
         print(l)
      print('')

   # --------------------
   logFile = logDir + '/2_4_mplace.log'
   print('Report: ' + logFile)
   print('')

   s0 = Spec()
   s0.val = r'\n\[INFO ODB-0134\].*?\n(.*)'
   s0.re = True
   s0.multiline = True
   s0.flags = re.DOTALL

   config = Config()
   config.specs = [s0]

   res = log.processFile(logFile, config.specs)
   for i in range(len(res)):
      for l in res[i]:
         print(l)
      print('')

   # --------------------
   logFile = logDir + '/2_5_tapcell.log'
   print('Report: ' + logFile)
   print('')

   s0 = Spec()
   s0.val = r'\n\[INFO TAP-0005\].*?\n(.*)'
   s0.re = True
   s0.multiline = True
   s0.flags = re.DOTALL

   config = Config()
   config.specs = [s0]

   res = log.processFile(logFile, config.specs)
   for i in range(len(res)):
      for l in res[i]:
         print(l)
      print('')

   # --------------------
   logFile = logDir + '/2_6_pdn.log'
   print('Report: ' + logFile)
   print('')

   s0 = Spec()
   s0.val = r'\n\[INFO PDN-0015\].*?\n(.*)'
   s0.re = True
   s0.multiline = True
   s0.flags = re.DOTALL

   config = Config()
   config.specs = [s0]

   res = log.processFile(logFile, config.specs)
   for i in range(len(res)):
      for l in res[i]:
         print(l)
      print('')

   quit()

   # python makes this hard for even trivial objects
   print('Writing config.json...')

   configJson = json.dumps(config, default=lambda x: x.__dict__)
   #configJson = jsonpickle.encode(config)
   print(configJson)
   #quit()
   #
   #configJson = json.dumps(config.toJson(), indent=2)
   with open('config.json', 'w') as configFile:
      configFile.write(configJson)
      configFile.close()

   print('Reading config.json...')
   print('')

   print('string')
   with open('config.json', 'r') as configFile:
      print(configFile.read())
      configFile.close()

   print('loads')
   with open('config.json', 'r') as configFile:
      config = json.loads(configFile.read())
      print(config)
      configFile.close()

   res = log.processFile(logFile, config.specs)
   for i in range(len(res)):
      for l in res[i]:
         print(l)
      print('')

   # fpga
      s0 = Spec()
   s0.val = r'.*Command.*-hierarchical (.*)\*.*'
   s0.re = True
   s0.matchOnly = True

   specs = [s0]
   log = Log()
   res = log.processFile(logFile, specs)

   comps = []
   for r in res:
      for i in r:
         comps.append({
            'name': i[0],
            'luts': -1
         })

   s0.val = r'.*Slice LUTs.*?\|(.*?)\|'

   res = log.processFile(logFile, specs)

   for r in res:
      for i in range(len(r)):
         comps[i]['luts'] = r[i][0]


   mod = time.ctime(os.path.getmtime(logFile))
   print(f"report: {logFile} [{mod}]")
   for i in range(len(comps)):
      print(f"{comps[i]['name']:16}: {comps[i]['luts']:>7}")


   quit()
