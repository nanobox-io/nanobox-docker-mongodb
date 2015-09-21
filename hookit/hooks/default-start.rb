
service 'db' do
  action :enable
  init :runit
end

ensure_socket 'db' do
  port '27017'
  action :listening
end
