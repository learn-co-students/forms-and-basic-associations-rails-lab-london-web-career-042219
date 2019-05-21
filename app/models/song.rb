class Song < ActiveRecord::Base
  has_many :notes
  belongs_to :artist
  belongs_to :genre


  def artist_name=(name)
    self.artist.name = Artist.find_or_create_by(name: name)
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end

  def note_contents=(contents)
    contents.each do |note|
      Note.create(content: note, song_id: self.id)
    end
  end

  def note_contents
    self.notes.map{|note| note.content}
  end

end
