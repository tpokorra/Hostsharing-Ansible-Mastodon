#!/bin/bash

/bin/kill $( cat $HOME/var/run/monit.pid)
/bin/kill $( cat $HOME/var/run/puma.pid )
/bin/kill $( cat $HOME/var/run/sidekiq.pid )
/bin/kill $( cat $HOME/var/run/streaming.pid )
/bin/kill $( cat $HOME/var/run/redis-server.pid )

rm -f $HOME/var/run/*
/usr/bin/monit -c "$HOME/.monitrc"
