def start(arr, n)
  file_f = File.new('F.txt', 'w')
    n.times do
      arr.each { |val| file_f.print(val.to_s + ' ') }
      arr.each { |val| file_f.print((-val).to_s + ' ') }
    end
  file_f.close
end

def sequences
  pos = []
  neg = []
  file_f = File.new('F.txt', 'r')
  file_f.gets.split.each do |val|
    if val.to_i > 0
      pos << val.to_i
    else
      neg << val.to_i
    end
  end
  file_f.close
  shift = 0
  file_p = File.new('P.txt', 'w')
  9.times do
    (0..4).each { |ind| file_p.print(pos[shift + ind].to_s + ' ') }
    (0..4).each { |ind| file_p.print(neg[shift + ind].to_s + ' ') }
    shift += 5
  end
  shift = 0
  file_p.print("\n")
  3.times do
    (0..19).each { |ind| file_p.print(pos[shift + ind].to_s + ' ') }
    (0..19).each { |ind| file_p.print(neg[shift + ind].to_s + ' ') }
    shift += 20
  end
  file_p.close
end
