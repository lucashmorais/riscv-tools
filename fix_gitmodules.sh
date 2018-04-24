#!/bin/bash

sed -i.bak 's|git:\/\/github.com\/riscv\/|https:\/\/github.com\/riscv\/|' $(find -name [.]gitmodules)
sed -i.bak 's|git:\/\/git.qemu-project.org\/|http:\/\/git.qemu.org\/git\/|' $(find -name [.]gitmodules)
sed -i.bak 's|git:\/\/anongit.freedesktop.org\/pixman|http:\/\/anongit.freedesktop.org\/git\/pixman.git\/|' $(find -name [.]gitmodules)
sed -i.bak 's|git:\/\/github.com\/rth7680\/qemu-palcode.git|https:\/\/github.com\/rth7680\/qemu-palcode.git|' $(find -name [.]gitmodules)

git submodule sync --recursive
