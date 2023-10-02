import robotframework

libraries = robotframework.get_library_names()
def print_hi(name):
    # Use a breakpoint in the code line below to debug your script.
    print(f'Hi, {name}')  # Press ⌘F8 to toggle the breakpoint.
    if "SeleniumLibrary" in libraries:
        print("SeleniumLibrary is installed.")
    else:
        print("SeleniumLibrary is not installed.")

# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    print_hi('PyCharm')

# See PyCharm help at https://www.jetbrains.com/help/pycharm/
