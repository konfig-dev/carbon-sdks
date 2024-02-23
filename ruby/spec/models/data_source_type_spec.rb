=begin
#Carbon

#Connect external data to LLMs, no matter the source.

The version of the OpenAPI document: 1.0.0


=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Carbon::DataSourceType
describe Carbon::DataSourceType do
  let(:instance) { Carbon::DataSourceType.new }

  describe 'test an instance of DataSourceType' do
    it 'should create an instance of DataSourceType' do
      expect(instance).to be_instance_of(Carbon::DataSourceType)
    end
  end
end
