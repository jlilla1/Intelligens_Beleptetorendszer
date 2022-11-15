from Detector import main_app
import os, sys


name = sys.argv[1]
#name = "G4O424"
main_app(name)

"""
with open(os.path.join(sys.path[0], "neptun.txt"), "r") as file:
    for name in file.read().splitlines():
        main_app(name)
"""
