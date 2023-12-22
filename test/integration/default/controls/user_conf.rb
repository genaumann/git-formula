# frozen_string_literal: true

control "User conf #{os.name}" do
  title 'Test user conf'

  describe command('git config -f ~/.gitconfig --get user.email') do
    its('exit_status') { should eq 0 }
    its('stdout') { should eq "g@gnaumann.de\n" }
  end
  describe command('git config -f ~/.gitconfig --get user.name') do
    its('exit_status') { should eq 0 }
    its('stdout') { should eq "Gino Naumann\n" }
  end
  describe command('git -C ~/cib config -f ~/cib/.git/config --get user.name') do
    its('exit_status') { should eq 0 }
    its('stdout') { should eq "Rainer Zufall\n" }
  end
end
