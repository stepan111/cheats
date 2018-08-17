import getopt, sys

def usage():
    print  str(sys.argv[0])+" -e test.modeln.com -p ./config/path --dry-run"

def main():
    try:
        opts, args = getopt.getopt(sys.argv[1:], "e:p:dh", ["externalName=", "dry-run","help","config-path="])
    except getopt.GetoptError as err:
        # print help information and exit:
        print str(err)  # will print something like "option -a not recognized"
        usage()
        sys.exit(2)
    for o, a in opts:
        if o in ("-e","--externalName"):
            externalName=a
        elif o in ("-h", "--help"):
            usage()
            sys.exit()
        elif o in ("-d", "--dry-run"):
            dryRun = True
        elif o in ("-p", "--config-path"):
            configPath = a
        else:
            assert False, "unhandled option"
    # place here required arguments
    try:
        externalName
        configPath
    except:
        usage()
        sys.exit(2)
    print externalName
    print configPath


if __name__ == "__main__":
    main()
