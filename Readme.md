A simple skeleton project that shows how one gets setup with running Kannel,
and communicating with it via a simple Sinatra application.

# Contents
- `Vagrantfile` is setup up to use the vmware-fusion provider but can easily be changed
  to work with a different provider. It will create a blank Ubunutu machine locally for
  testing.
- `setup.sh` will configure a blank Ubunutu server with all the necessary dependencies.
- `kannel.conf` contains the basic settings for getting the services working
- `modems.conf` is copied from the source tree of Kannel and used for recongnizing
  different modems.
- `Gemfile` contains all the necessary deps for the Sinatra app.
- `kannel_test.rb` runs the ruby part of the test.
