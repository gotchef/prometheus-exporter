#
# machine exporter
#

include_recipe 'prometheus-exporter::dependencies'

prometheus_exporter_install do 
	exporter node[:prometheus_exporter][:machine]
	run_args '-web.listen-address :9100 -collectors.enabled attributes,diskstats,filesystem,loadavg,meminfo,stat,textfile,time,netdev,netstat,runit,lastlogin'
	key		nil
end
