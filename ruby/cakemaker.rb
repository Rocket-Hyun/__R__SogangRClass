# encoding: UTF-8
@textfile = File.open('../sglikelion.txt', 'r:UTF-8')


@talks = []
@filteredTalks = []
@textfile.each do |line|
  if line.include? "임동진"
    @talks << line.split("]")[2]
  end
end
# index = 0
@talks.each do |talk|
  # puts index
  unless talk.nil?
    # if talk.include? "예인"
      puts talk
      # @filterTalks << talk
    # end
  end
  # index+=1
end
puts @filterTalks
