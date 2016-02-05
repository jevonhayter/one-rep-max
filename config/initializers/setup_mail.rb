ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address              =>  'smtp.sendgrid.net',
  :port                 =>  '587',
  :authentication       =>  :plain,
  :user_name            =>  ' ',
  :password             =>  ' ',
  :domain               =>  'obscure-cove-47194.herokuapp.com',
  :enable_starttls_auto  =>  true
}
