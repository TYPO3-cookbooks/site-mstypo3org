control 'kvm-1' do
  title 'KVM user setup'
  desc '
    Check that sysadmin users are members of the group "libvirt"
  '
  describe package('libvirt-bin') do
    it { should be_installed }
  end

  describe user('johnsysadmin') do
    it { should exist }
    its('groups') { should include 'libvirt' }
  end
end
