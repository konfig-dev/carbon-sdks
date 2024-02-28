=begin
#Carbon

#Connect external data to LLMs, no matter the source.

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Carbon::DataSourceTypeNullable
describe Carbon::DataSourceTypeNullable do
  let(:instance) { Carbon::DataSourceTypeNullable.new }

  describe 'test an instance of DataSourceTypeNullable' do
    it 'should create an instance of DataSourceTypeNullable' do
      expect(instance).to be_instance_of(Carbon::DataSourceTypeNullable)
    end
  end
end
