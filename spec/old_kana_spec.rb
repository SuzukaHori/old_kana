# frozen_string_literal: true

RSpec.describe OldKana do
  it "has a version number" do
    expect(OldKana::VERSION).not_to be nil
  end

  it "#to_gendaikana" do
    words = %w[思ひ出 言ふ ゐなか こゑ をとこ はづかし くわし さんぐわつ まうす やうす あやしう りうぐう けふ てふ]
    expected = %w[思い出 言う いなか こえ おとこ はずかし かし さんがつ もうす ようす あやしゅう りゅうぐう きょう
                  ちょう]
    expect(words.map(&:to_gendaikana)).to eq(expected)
  end
end
