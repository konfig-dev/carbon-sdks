=begin
#Carbon

#Connect external data to LLMs, no matter the source.

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Carbon::ConfluenceFileTypes
describe Carbon::ConfluenceFileTypes do
  let(:instance) { Carbon::ConfluenceFileTypes.new }

  describe 'test an instance of ConfluenceFileTypes' do
    it 'should create an instance of ConfluenceFileTypes' do
      expect(instance).to be_instance_of(Carbon::ConfluenceFileTypes)
    end
  end
end
