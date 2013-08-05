require 'spec_helper'
describe Short do 
	it 'exists' do
		short = Short.create()
		expect(short).to_not be_nil
	end

	context 'attributes' do
		it 'has a long url' do
			short= Short.create(long:"www.thisisalongassurl.com")
			short.long.should eq 'www.thisisalongassurl.com'
		end
	end
end