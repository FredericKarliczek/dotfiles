import subprocess
import re

REGEX_DNF_PKG = re.compile(b"^\\S+\\.", re.M)


def get_dnf_updates() -> int:
    update_count: int = 0
    output, error = subprocess.Popen(
        ['dnf', 'check-update'],
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE
    ).communicate()

    update_count = len(REGEX_DNF_PKG.findall(output))
    return update_count


print(get_dnf_updates())
