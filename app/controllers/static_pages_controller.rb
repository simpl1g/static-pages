class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def who_we_are
    @participants = Participant.all
  end
end
