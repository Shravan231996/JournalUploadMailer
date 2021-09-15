class JournalUploadMailer < ApplicationMailer
  
  #function to mail the parent of the child who made the upload
  def new_journal_upload(upload)
    
    #set variable for the actual journal upload
    @upload = upload
    
    #assign the upload variable to the child who uploaded it
    @child = @upload.child
    
    #sends mail to the parent email of the child, set up the parameters based on how child and parent are linked it database
    mail to: @child.parent.email,
    
          #subject will display message with variable of child's name 
         subject: "New Journal Upload for #{@child.name}
  end
end 
