class Song < ActiveRecord::Base
  # add associations here
  belongs_to :artist
  belongs_to :genre
  has_many :notes

  def genre_name=(name)
    self.genre = Genre.find_or_create_by(name:name)
  end

  def genre_name
    self.genre ? self.genre.name : nil
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name:name)
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end

  def note_contents=(content)
    if !content.kind_of?(Array)
      temp = []
      temp << content
      content = temp
    end

    notes = self.notes
    content.each do |new_note|
      notes << Note.create(content:new_note)
    end
    self.notes = notes
  end

  def note_contents
    self.notes.map { |note| note.content }.reject {|content| content == ""}
  end
end
