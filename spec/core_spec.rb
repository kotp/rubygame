require 'spec_helper'

describe Core do
  before :each do
    @core = Core.new
  end

  it 'should have default value tries as 0' do
    @core.tries.must_equal 0
  end

  it 'should have secret range in between 1 and 100' do
    (1..100).must_include @core.instance_variable_get(:@secret)
  end

  it 'should respond with :higher when guess equals secret' do
    Core::RESPONSES[-1].must_equal :higher
  end

  it 'should respond with :lower when guess equals secret' do
    Core::RESPONSES[1].must_equal :lower
  end

  it 'should respond with :win when guess equals secret' do
    Core::RESPONSES[0].must_equal :win
  end
end
