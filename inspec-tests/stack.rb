describe service('tomcat7') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end

describe service('mysql') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end

describe port(8080) do
  it { should be_listening }
  its('processes') {should include 'java'}
end

