Airbrake.configure do |config|
  config.api_key = '00c08a0c9dcc2c579f5d85869c3f3620'
  config.host    = 'bnb-errbit.herokuapp.com'
  config.port    = 443
  config.secure  = config.port == 443
end