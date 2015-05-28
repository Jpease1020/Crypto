require 'minitest/autorun'
require_relative 'crypto'

class EncryptionEngineTest < Minitest::Test
  def test_result_is_n_when_a_is_input
    engine = EncryptionEngine.new
    output = engine.encrypt("a")
    assert_equal "n", output
    end

  def test_result_is_l_when_y_is_input
    engine = EncryptionEngine.new
    output = engine.encrypt("l")
    assert_equal "y", output
  end

  def test_result_is_g_when_t_is_input
    engine = EncryptionEngine.new
    output = engine.encrypt("t")
    assert_equal "g", output
  end

  def test_decrpyts_entire_message
    engine = EncryptionEngine.new
    output = engine.encrypt("al")
    assert_equal "ny", output
  end

  def test_decrpyts_uppercase
    engine = EncryptionEngine.new
    output = engine.encrypt("B")
    assert_equal "O", output
  end

  def test_decrpyts_mixed_case
    engine = EncryptionEngine.new
    output = engine.encrypt("aB")
    assert_equal "nO", output
  end

  def test_it_encrypts_using_rot13
    skip
    engine = EncryptionEngine.new
    output = engine.encrypt("My Message")
    assert_equal "Zl Zrffntr", output
  end
end


