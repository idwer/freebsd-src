rm -fr acpi_ca_destination

fetch https://downloadmirror.intel.com/783534/acpica-unix-20230628.tar.gz

./acpica_prep.sh acpica-unix-20230628.tar.gz

rsync -aPv acpi_ca_destination/* .

cd ../../../../

make -C usr.sbin/acpi
make buildkernel
