class EncryptionEngine
  def encrypt(string)
    encryptor = Encryptor.new
    encryptor.doit(string)
  end

  def decrypt(string)
    decryptor = Decryptor.new
    decryptor.doit(string)
  end
end
class Decryptor
  def doit(l)
    first_vairable = "abcdefghijklmnopqrstuvwxyz".reverse
    code = first_vairable.chars
    second_variable = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".reverse
    code2 = second_variable.chars

    input = l.chars

    new_str = ""
    input.each do |i|
      if i == " "
        new_str << i
      else
        if i == i.upcase
          new_num = code2.find_index(i)
          # if new_num < 14 run first loop if new_num = > 14 then run new loop subtracting 13

          if new_num < 14
            changed_num = new_num + 13
          else
            changed_num = new_num - 13
          end
          new_str << code2[changed_num]
        else
          new_num = code.find_index(i)
          if new_num < 14
            changed_num = new_num + 13
          else
            changed_num = new_num - 13
          end
          new_str << code[changed_num]
        end
      end
    end
    new_str

  end
end
class Encryptor
  def doit(l)
    first_vairable = "abcdefghijklmnopqrstuvwxyz"
    code = first_vairable.chars
    second_variable = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    code2 = second_variable.chars

    input = l.chars

    new_str = ""
    input.each do |i|
      if i == " "
        new_str << i
      else
        if i == i.upcase
          new_num = code2.find_index(i)
          # if new_num < 14 run first loop if new_num = > 14 then run new loop subtracting 13

          if new_num < 14
            changed_num = new_num + 13
          else
            changed_num = new_num - 13
          end
          new_str << code2[changed_num]
        else
          new_num = code.find_index(i)
          if new_num < 14
            changed_num = new_num + 13
          else
            changed_num = new_num - 13
          end
          new_str << code[changed_num]
        end
      end
    end
    new_str

  end

end

engine = EncryptionEngine.new

engine = EncryptionEngine.new
output = engine.encrypt("My Message")
puts output  # outputs "Zl Zrffntr"
output2 = engine.decrypt("Zl Zrffntr")
puts output2 # outputs "My Message"
