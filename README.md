# OldKana
This gem converts historical Japanese kana usage into modern kana usage.
Only words are supported; sentences cannot be converted.

日本語の歴史的仮名遣いを現代仮名遣いに変換するGemです。
現在は単語のみ対応しており、文章の変換はできません。

## Installation
Add this line to your application's Gemfile:
```
gem 'old_kana'
```
And then execute:
```
$ bundle
```
Or install it yourself as:
```
$ gem install old_kana
```

## Usage
```ruby
require 'old_kana'

"あはれ".to_gendaikana #=> "あわれ"

"あふぎ".to_gendaikana #=> "おうぎ"

"けふ".to_gendaikana #=> "きょう"

"ぐわんかけ".to_gendaikana #=> "がんかけ"

"うつくしうて".to_gendaikana #=> "うつくしゅうて"

"こゑ".to_gendaikana #=> "こえ"
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/old_kana. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/old_kana/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the OldKana project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/old_kana/blob/master/CODE_OF_CONDUCT.md).
