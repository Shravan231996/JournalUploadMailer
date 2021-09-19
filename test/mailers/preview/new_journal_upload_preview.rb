class NewJournalUploadPreview < ActionMailer::Preview
  
  def new_journal_upload
    
    #grabs the last journal upload in database
    upload = Upload.last
    JournalUploadMailer.new_upload(upload)
  end 
end
