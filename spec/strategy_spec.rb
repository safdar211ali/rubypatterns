require 'spec_helper'
require_relative '../lib/strategy'

describe "Strategy  Pattern" do
  let(:hero) { Hero.new }
  it 'has damage' do
    expect(hero.damage).to eq(10)
  end

  it 'has health' do
    expect(hero.health).to eq(5)
  end

  it 'has skills' do
    expect(hero.skills).to include(:stealth,:driving,:intimidation)
  end
  it 'prints battle stats' do
    expect(hero.print_stats).to eq("Damage: 10\nHealth:5")
  end
 it 'prints skills' do
   expect(hero.print_stats(:skills)).to eq("Stealth\nDriving\nIntimidation\n")
 end
end


