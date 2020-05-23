class Slave:
    """ define slaves in socket programing.
    """

    def __init__(self, host_port: str):
        if ":" not in host_port:
            raise ValueError(
                "The format of slave definition is incorrect, should be <host>:<port>")
        splits = host_port.lstrip().rstrip().split(":")
        self.host = splits[0]
        try:
            self.port = int(splits[1])
        except ValueError:
            raise ValueError("The port should be an integer.")

    def to_string(self) -> str:
        """ convert to string

        Returns:
            [str]: description of the slave.
        """
        return "<"+self.host+">:<"+str(self.port)+">"


class Slaves:
    def __init__(self):
        self.container = {}

    def add(self, slave: Slave):
        self.container[slave.host] = slave.port

    def delete(self, host: str):
        if host in self.container:
            del self.container[host]
        else:
            print("Host does not exists in the slaves file, not deleted.")

    def to_string(self):
        slaves_str = ""
        for key in self.container:
            slaves_str = slaves_str + " " + "<" + \
                key+":"+str(self.container[key])+">,"
        if slaves_str:
            slaves_str = slaves_str[:-1]
        return slaves_str

    def is_empty(self):
        if self.container:
            return False
        else:
            return True

    def get(self):
        return self.container
