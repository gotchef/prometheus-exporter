#
# attributes::default
#

default['go']['version'] = '1.4.2'

default[:github][:deploy_key] = "passed in"

default[:prometheus_exporter][:machine][:build][:repository] = "https://github.com/prometheus/node_exporter.git"
default[:prometheus_exporter][:machine][:service][:name] = 'prometheus-machine'
default[:prometheus_exporter][:machine][:service][:run_file] = 'node_exporter'
default[:prometheus_exporter][:machine][:build][:command] = "" # make || go install (default)


default[:prometheus_exporter][:haproxy][:build][:repository] = "https://github.com/prometheus/haproxy_exporter.git"
default[:prometheus_exporter][:haproxy][:service][:name] = 'prometheus-haproxy'
default[:prometheus_exporter][:haproxy][:service][:run_file] = 'haproxy_exporter'
default[:prometheus_exporter][:haproxy][:build][:command] = "" # make || go install (default)


