#
# haproxy exporter
#

include_recipe 'prometheus-exporter::dependencies'

prometheus_exporter_install do 
	exporter node[:prometheus_exporter][:haproxy]
	run_args '-web.listen-address :9101 -haproxy.scrape-uri="http://127.0.0.1/haproxy?stats;csv"'
	key		nil
end

