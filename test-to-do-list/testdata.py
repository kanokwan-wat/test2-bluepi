import robotframework

libraries = robotframework.get_library_names()

if "SeleniumLibrary" in libraries:
    print("SeleniumLibrary is installed.")
else:
    print("SeleniumLibrary is not installed.")