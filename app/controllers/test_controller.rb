class TestController < ApplicationController
  def v1; end

  def v2; end

  def v3; end

  def proc
    puts "#{params}"
  end
end
