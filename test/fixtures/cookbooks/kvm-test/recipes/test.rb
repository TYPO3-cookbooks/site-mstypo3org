# create us some loop device that we can use for our test
devices = ['/dev/loop1']
LvmTest::Helper.create_loop_devices(devices) unless shell_out('pvs | grep -c /dev/loop0').stdout.to_i == 1

include_recipe "lvm"

lvm_volume_group "vgpool" do
  physical_volumes devices
end