# Created by Qingzhi Ma at 2019-07-25
# All right reserved
# Department of Computer Science
# the University of Warwick
# Q.Ma.2@warwick.ac.uk
import argparse
import sys

from dbestclient.cli.prompt import DBEstPrompt
from dbestclient.ml import mdn
from dbestclient.socket import app_client, app_server


def main():
    p = DBEstPrompt()
    p.cmdloop()


def cmd():
    print("Welcome to DBEst++")

    parser = argparse.ArgumentParser(
        description='Process the input for DBEst++.')
    # parser.add_argument('--foo', action='store')
    parser.add_argument('--pm25', action='store_true',
                        help="run pm25 experiments")
    args = parser.parse_args()

    if args.pm25:
        print("run pm25")
        mdn.test_pm25_3d()


def slave():
    print("Welcome to DBEst++")
    if len(sys.argv) != 2:
        print("Usage:", " dbestslave ", "<local IP>:<port>")
        print("Abort.")
        sys.exit(1)
    splits = sys.argv[1].split(":")[0]
    host = splits[0]
    port = int(splits[1])
    print("starting slave, connecting to ", (host, port))
    app_server.run(host, port)


def master():
    print("Welcome to DBEst++")
    if len(sys.argv) != 2:
        print("Usage:", " dbestmaster ",
              "<host:port>, <host:port>, ... (lists of slaves)")
        print("Abort.")
        sys.exit(1)
    splits = sys.argv[1].split(":")[0]
    host = splits[0]
    port = int(splits[1])
    print("starting master, ready for connections...")
    app_client.run(host, port)


if __name__ == "__main__":
    main()
