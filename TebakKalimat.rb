object = "love"
acak = object.split("")
spasi = acak - [" "]
final = object.gsub(/[a-zA-Z]/,"_").split("")

while acak.count("") < spasi.count
  puts "Tebak sebuah huruf : "
  input = gets.downcase.chomp

  if acak.include?(input)
    kata = acak.find_index(input)
    acak[kata] = ""
    final[kata] = input
    puts "Tepat! Sekarang kalimatnya menjadi : #{final.join}"
  else
    puts "Oops, Itu bukan huruf yang tepat, Ayo coba lagi!"
    end
  end