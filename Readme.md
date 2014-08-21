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
- `kannel_test.rb` runs the Sinatra app.
- `start_sms.sh` will start up the needed pieces of the sms service.

# Running the example

After you have fully configured the server you can do:
```
./start_sms.sh
ruby kannel_test.rb
```
then in another screen/tmux session or tab you can send a message with:
```
./fakesmsc  -m 1 "123 789 text ping-kannel"
```

and queue a message with:
```
curl "http://localhost:13013/cgi-bin/sendsms?username=testuser&password=foobar&to=4055544&test=hi"
```
