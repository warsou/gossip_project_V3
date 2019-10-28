class StaticController < ApplicationController
  def acceuil
    @gossips = Gossip.all
  end
  def contact
  end
  def team
  end
  def welcome
  end
  def self.find(id)
    return id
  end
end
