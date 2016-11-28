require 'spec_helper'

RSpec.feature 'key-value pairs', :type => :feature do
  before(:all) do
    @key = "my_key"
    @value = "my_value"
  end
  scenario 'user can set key value pairs' do
    visit "/set?#{@key}=#{@value}"
    expect(page).to have_content(@key)
    expect(page).to have_content(@value)
  end

  scenario 'user can get key-value pairs' do
    visit "/set?#{@key}=#{@value}"
    visit "/set?key=#{@key}"
    expect(page).to have_content(@value)
  end




end
