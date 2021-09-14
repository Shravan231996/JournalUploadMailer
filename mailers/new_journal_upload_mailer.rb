class JournalUploadMailer < ApplicationMailer
  
  def new_journal_upload(upload)
    @upload = upload
    @child = @upload.child
    
    mail to: @child.parent.email,
         subject: "New Journal Upload for #{@child.name}
  end
end 
