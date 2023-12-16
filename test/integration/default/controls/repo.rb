# frozen_string_literal: true

control "Repo #{os.name}" do
  title 'Test git repos'

  dirs = ["/home/vagrant/container", "/home/vagrant/cib"]
  dirs.each do | dir |
    describe directory(dir) do
      it { should exist }
    end
    describe directory(dir + '/.git') do
      it { should exist }
    end
  end

  describe file('/home/vagrant/cib/VERSION') do
    its('content') { should eq "1.0.4\n" }
  end
  
end
