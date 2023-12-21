# frozen_string_literal: true

control "Global conf #{os.name}" do
  title 'Test global conf'

  describe file('/etc/gitconfig') do
    it { should be_file }
  end

  describe command('git config --get alias.st') do
    its('exit_status') { should eq 0 }
    its('stdout') { should eq "status\n" }
  end
end
