#!/bin/bash
set -e

function cleanup {
    sudo rm -f /tmp/ussher.te /tmp/ussher.mod /tmp/ussher.pp
}
trap cleanup EXIT

cp ussher.te /tmp/ussher.te
checkmodule -M -m -o /tmp/ussher.mod /tmp/ussher.te
semodule_package -o /tmp/ussher.pp -m /tmp/ussher.mod
sudo semodule -l | grep -w ussher
sudo semodule -i /tmp/ussher.pp
