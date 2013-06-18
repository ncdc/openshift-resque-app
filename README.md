# Overview
This is an OpenShift sample application that uses a custom Foreman cartridge to run Resque to process background jobs.

# Usage
* Create an OpenShift ruby-1.9 application using this repo as the source
* Add the Redis cartridge (https://github.com/smarterclayton/openshift-redis-cart)
* Add the Foreman cartridge (https://github.com/ncdc/openshift-foreman-cartridge)

# Test it out!
* Open your app in your web browser
* Enter a number such as 60 into the text box, and click submit
* Open the Resque status link
* You should see 1 worker running your Sleeper task