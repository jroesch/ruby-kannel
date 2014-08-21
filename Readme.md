A simple skeleton project that shows how one gets setup with running Kannel,
and communicating with it via a simple Sinatra application.

# Contents
- `Vagrantfile` is using the vmware-fusion provider but can easily be changed
  to work with a different provider. It will create a blank Ubunutu machine locally for
  testing.
- `setup.sh` can be used to provision a Ubunutu server with all the necessary dependencies.
- `kannel.conf` contains the basic settings for running `bearerbox` and `smsbox`.
- `modems.conf` is copied from the source tree of Kannel and used for recongnizing
  different modems.
- `Gemfile` contains all the necessary deps for the Sinatra app.
- `kannel_test.rb` runs the ruby part of the test.
