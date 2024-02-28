=begin
#Carbon

#Connect external data to LLMs, no matter the source.

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Carbon::WebhookQueryResponse
describe Carbon::WebhookQueryResponse do
  let(:instance) { Carbon::WebhookQueryResponse.new }

  describe 'test an instance of WebhookQueryResponse' do
    it 'should create an instance of WebhookQueryResponse' do
      expect(instance).to be_instance_of(Carbon::WebhookQueryResponse)
    end
  end
  describe 'test attribute "results"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "count"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
