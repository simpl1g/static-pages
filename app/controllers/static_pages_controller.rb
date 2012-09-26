class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def who_we_are
    @emails = %w(paveltyk@gmail.com simpli4eg@gmail.com andrey.koleshko@altoros.com)
  end
end
