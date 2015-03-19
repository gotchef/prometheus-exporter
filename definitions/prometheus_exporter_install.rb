
define :prometheus_exporter_install, :run_args=> '', :exporter=> {} , :deploy_key => "" do
	
	exporter = params[:exporter]
	run_args = params[:run_args]
	
	service_name = exporter[:service][:name]
	
	runit_service service_name do
		action :nothing
	end

	go_service_deploy do 
		service exporter[:service]
		build	exporter[:build]
		key		nil
		notifies :restart, "runit_service[#{service_name}]"
	end
	
	go_service_service do
		service_name	service_name
		run_file		exporter[:service][:run_file]
		run_args		run_args
	end
end
