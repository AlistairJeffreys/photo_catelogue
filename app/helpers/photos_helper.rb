module PhotosHelper
  
  def all_subjects
    subjects = []
    Photo.all.each do |photo|
      if subjects.include?(photo.subject) == false
        subjects << photo.subject
      end
    end
    subjects.sort
  end
  
end
