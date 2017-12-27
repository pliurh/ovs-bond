#!/bin/bash

exec openstack overcloud deploy \
        --templates /usr/share/openstack-tripleo-heat-templates \
        --ntp-server 192.168.23.1 \
        --control-flavor control --control-scale 3 \
        --compute-flavor compute --compute-scale 2 \
        -e /root/templates-bond/network-isolation-absolute.yaml \
        -e /root/templates-bond/network-environment.yaml \
        -e /usr/share/openstack-tripleo-heat-templates/environments/neutron-ovs-dpdk.yaml \
        -e /root/templates-bond/environment.yaml
