ActionMailer::Base.smtp_settings = {
 :address              => "smtp.gmail.com",
 :port                 => 587,
 :domain               => 'gmail.com',
 :user_name            => 'shreyas.1rn17mca86@gmail.com',
 :password             => '8050Asdfg',
 :authentication       => "plain",
 :enable_starttls_auto => true,
 :openssl_verify_mode  => "none"
}