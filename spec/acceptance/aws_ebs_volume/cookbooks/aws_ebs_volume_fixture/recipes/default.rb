require 'chef/provisioning/aws_driver'
with_driver 'aws'

node.default['test'] = 'ebs-vol-test'

aws_key_pair node['test']

with_machine_options :boostrap_options => { :key_name => node['test'] }
