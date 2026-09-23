import subprocess, sys
cmd=['py','tools\truthan_gui.py','tap','2420','578']
print('tapping',cmd)
res=subprocess.run(cmd,capture_output=True,text=True)
print('stdout',res.stdout)
print('stderr',res.stderr)
