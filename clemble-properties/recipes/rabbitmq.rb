rabbitmq_user "clemble" do
  password "clemble"
  action :add
end

rabbitmq_user "clemble" do
  permissions ".* .* .*"
  action :set_permissions
end

rabbitmq_user "clemble" do
  tag "admin,lead"
  action :set_tags
end
