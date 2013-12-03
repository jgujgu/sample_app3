# config/initializers/pony.rb
 
Pony.options = {
  :to => 'jgu@jeffreygu.com',
  :via => :smtp,
  :via_options => {
    :address              => 'smtp.gmail.com',
    :port                 => '587',
    :enable_starttls_auto => true,
<<<<<<< HEAD
    :user_name            => 'jgujgujgu',
    :password             => '5493554935',
=======
    :user_name            => 'denverpiggyback',
    :password             => 'tayedrums1',
>>>>>>> d91b771614447ff9e134bbb0c63e9d34a763844a
    :authentication       => :plain, # :plain, :login, :cram_md5, no auth by default
    :domain               => "localhost.localdomain" # the HELO domain provided by the client to the server
  }
}