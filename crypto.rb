class EncryptionEngine

  def encrypt(l)
    first_vairable = "abcdefghijklmnopqrstuvwxyz"
    code = first_vairable.chars
    second_variable = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    code2 = second_variable.chars

    input = l.chars

    new_str = ""
    input.each do |i|

      if i == i.upcase
        new_num = code2.find_index(i)
        # if new_num < 14 run first loop if new_num = > 14 then run new loop subtracting 13
        changed_num = new_num + 13
        new_str << code2[changed_num]
      else
        new_num = code.find_index(i)
        changed_num = new_num + 13
        new_str << code[changed_num]
      end
    end
    new_str

  end


end

