describe 'sysctl' do
  let(:title) { 'baz' }
  let(:params) { { :value => 'foo' } }

  it { should contain_exec('sysctl/reload').with_command("/sbin/sysctl -p /etc/sysctl.conf") }
end
