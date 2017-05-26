require 'ios_goodies_new_issue'

describe IosGoodiesNewIssue do
  describe 'latest' do
    r = IosGoodiesNewIssue.web_get

    context 'web' do
      value = r.class
      expect = String
      it 'returns a string' do
        expect(value).to eql(expect)
      end
    end

    context "github issue #{r}" do
      r2 = IosGoodiesNewIssue.github_matches 129
      expect2 = false
      it 'matches github' do
        expect(r2).to eql(expect2)
      end
    end

  end
end
