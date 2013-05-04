import sys
import maya.OpenMaya as OpenMaya
import maya.OpenMayaMPx as OpenMayaMPx

# Initialize the plug-in
def initializePlugin(plugin):
	try:
		sys.stdout.write("Hello World! The plug-in has been loaded successfully.\n")
	except:
		sys.stderr.write("Error: Failed in loading plugin....")
		raise


# Uninitialize the plug-in
def uninitializePlugin(plugin):
	try:
		sys.stdout.write("The plug-in has been unloaded successfully.\n")
	except:
		sys.stderr.write("Error: Failed in unloading plugin....")
		raise
