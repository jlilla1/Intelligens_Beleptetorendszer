# This simple file runs the original create_dateset.py script with the argument given in the C# code

from create_dataset import start_capture
import sys


name = sys.argv[1]
start_capture(name)