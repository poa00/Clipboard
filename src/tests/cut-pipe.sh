#!/bin/sh
. ./resources.sh
setup_dir cut-pipe

echo "Foobar" | clipboard cut

item_is_in_cb 0 rawdata.clipboard

clipboard paste

item_is_here rawdata.clipboard

item_is_not_in_cb 0 rawdata.clipboard

pass_test cut-pipe