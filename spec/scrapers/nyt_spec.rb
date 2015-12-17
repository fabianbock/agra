require 'rails_helper'

describe NewYorkTimes do
  describe '#most_popular' do
    let(:client) { NewYorkTimes.new }
    let(:sports_results) { client.most_popular(section: NewYorkTimes::SECTIONS.first) }
    let(:sports_result) { sports_results.first }
    it { expect(sports_results).to be_present }
    it { expect(sports_result).to be_present }
    it { expect(sports_result['media']['media-metadata']).to have_key('url') }

  end
end
