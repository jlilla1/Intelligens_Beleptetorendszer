# This simple file runs the original create_classifier.py script with the argument given in the C# code

from create_classifier import train_classifer
import sys


name = sys.argv[1]
train_classifer(name)
