class CyphersController < ApplicationController
  LETTERS = ("a".ord.."z".ord)
  def encrypt
    start_time = Time.now
    cypher = 3
    @sentence = params[:sentence].downcase
    @result = make_cipher(@sentence, cypher)
    @final_time = (Time.now - start_time) * 10000000
    if session[:try] == nil
      session[:try] = 1
    else
      session[:try] += 1
    end
      @try = session[:try]
  end

  def about
  end

  def query
  end

  def make_cipher(string, n)
    string.chars.map {|x| LETTERS.include?(x.ord)?((x.ord - LETTERS.min + n) % 26 + LETTERS.min).chr  : x}.join
  end

  def solve_cipher(string, n)
    n = -n
    string.chars.map {|x| LETTERS.include?(x.ord)?((x.ord - LETTERS.min + n) % 26 + LETTERS.min).chr  : x}.join
  end
end
