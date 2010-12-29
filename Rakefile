task :test do
	require 'rake/runtest'
	Rake.run_tests '**/*test.rb'
end

task :default => :test do
	# this task runs by default - we run it from CI server (http://tv:8080)
	print "ok"
end
