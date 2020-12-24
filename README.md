# Cloud Desktop - Docker

Standalone docker image for running `tb3-ros` on your cloud desktop.

## Installation
* `git clone https://github.com/campusrover/clouddesktop-docker`
* `cd clouddesktop-docker`

## Commands
* Start the container
  ```bash
  make start
  ```
* Stop the container
  ```bash
  make stop
  ```
* Update the container to the latest version (**This will restart your environment**)
  ```bash
  make update
  ```

## Accessing the virtual desktop
* Browser: http://0.0.0.0/vnc.html
* Password is: `dev@ros`
* Click on desktop and get a tiny menu. Click "terminal"
* In that terminal do `source setup.bash`

## Accessing a virtual instance of VSCode for coding

* VSCode is a very popular text editor
* You can get to it with http://0.0.0.0:8080
* Password is: `dev@ros`

## Setup SSH for remote access
* To enable ssh, first login using virtual desktop/VScode
* Open up the terminal
* Run `sudo passwd root` to setup a password
* To SSH in: `ssh root@host -p 2222`, type in the previous password

## Playing around

* If you don't know much about ROS but want to see what it's like, try these commands
* Open a terminal window and do: `roscore`
* Open a different terminal window and do: `roslaunch turtlebot3_fake turtlebot3_fake.launch`
* Open a different terminal window and do: `roslaunch turtlebot3_teleop turtlebot3_teleop_key.launch`

## Fixing the REST error

```bash
sed -i -e 's/https:\/\/api.ignitionfuel.org/https:\/\/api.ignitionrobotics.org/g' ~/.ignition/fuel/config.yaml
```
