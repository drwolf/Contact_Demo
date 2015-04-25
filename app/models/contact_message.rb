class ContactMessage < ActiveRecord::Base
after_initialize :bombing


  
  attr_accessible :email, :message, :name
  
  
  
  validates :name, length: {:minimum => 2}
  
  validates :email,
            format: /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
            
  validates :message, presence: true
  
 
  after_find do |contact_message|
    puts "you have received a message"
  end
  
  def bombing
    puts "Yes it works"
  end  



  
  
  
  
end
