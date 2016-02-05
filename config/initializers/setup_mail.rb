ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address              =>  'smtp.sendgrid.net',
  :port                 =>  '587',
  :authentication       =>  :plain,
  :user_name            =>  'app46994141@heroku.com',
  :password             =>  'mbap0wbm7331',
  :domain               =>  'obscure-cove-47194.herokuapp.com',
  :enable_starttls_auto  =>  true
}