=begin
#Carbon

#Connect external data to LLMs, no matter the source.

The version of the OpenAPI document: 1.0.0


=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Carbon::HTTPValidationError
describe Carbon::HTTPValidationError do
  let(:instance) { Carbon::HTTPValidationError.new }

  describe 'test an instance of HTTPValidationError' do
    it 'should create an instance of HTTPValidationError' do
      expect(instance).to be_instance_of(Carbon::HTTPValidationError)
    end
  end
  describe 'test attribute "detail"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
