=begin
#Carbon

#Connect external data to LLMs, no matter the source.

The version of the OpenAPI document: 1.0.0


=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Carbon::RevokeAccessTokenInput
describe Carbon::RevokeAccessTokenInput do
  let(:instance) { Carbon::RevokeAccessTokenInput.new }

  describe 'test an instance of RevokeAccessTokenInput' do
    it 'should create an instance of RevokeAccessTokenInput' do
      expect(instance).to be_instance_of(Carbon::RevokeAccessTokenInput)
    end
  end
  describe 'test attribute "data_source_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
