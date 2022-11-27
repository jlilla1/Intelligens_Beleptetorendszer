# This simple file runs the original Detector.py script with the argument given in the C# code

from Detector import main_app
import os, sys


name = sys.argv[1]
main_app(name)
