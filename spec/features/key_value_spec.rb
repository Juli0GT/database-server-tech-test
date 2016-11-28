require 'spec_helper'

RSpec.feature 'set key-value pairs', :type => :feature do
  scenario 'user can set key value pairs' do
    @key = "my_key"
    @value = "my_value"
    visit "/set/#{@key}=#{@value}"
    expect(page).to have_content(@key)
    expect(page).to have_content(@value)
  end
end
