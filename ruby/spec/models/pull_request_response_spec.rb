=begin
#Carbon

#Connect external data to LLMs, no matter the source.

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Carbon::PullRequestResponse
describe Carbon::PullRequestResponse do
  let(:instance) { Carbon::PullRequestResponse.new }

  describe 'test an instance of PullRequestResponse' do
    it 'should create an instance of PullRequestResponse' do
      expect(instance).to be_instance_of(Carbon::PullRequestResponse)
    end
  end
  describe 'test attribute "data"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "next_cursor"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
