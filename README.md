Moneybaby

Production deployment checklist

1. config/environments/production.rb
   config.action_mailer.default_url_options = { :host => '[host]' }

2. change uris in for google oauth2 api from localhost to host
