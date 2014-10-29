source "https://api.berkshelf.com"

cookbook 'java', '~> 1.28.0'

cookbook 'ulimit', '~> 0.3.2'

cookbook 'mongodb', '~> 0.16.1'
cookbook 'redisio', '~> 2.2.4'

cookbook 'rabbitmq', '~> 3.3.0'

cookbook 'datadog'

cookbook 'tomcat'

cookbook 'clemble', path: './clemble'

cookbook 'neo4j-server', git: 'git://github.com/michaelklishin/neo4j-server-chef-cookbook.git'

Dir.glob('/Users/mavarazy/work/git/aws/opsworks-cookbooks/**').each do |path|
  if File::directory?(path)
    cookbook File.basename(path), path: path
  end
end
