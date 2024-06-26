# frozen_string_literal: true

require_relative "old_kana/version"

module OldKana
  require "romankana"

  OLD_KANA_TO_GENDAI_KANA = { "は" => "わ", "ひ" => "い", "ふ" => "う", "へ" => "え", "ほ" => "お", "ゐ" => "い", "ゑ" => "え",
                              "ぢ" => "じ", "づ" => "ず" }

  def to_gendaikana
    replaced = gsub(/(?<!^)[はひふへほ]/) { |old_kana| OLD_KANA_TO_GENDAI_KANA[old_kana] }
               .gsub(/[ゐゑぢづ]/) { |old_kana| OLD_KANA_TO_GENDAI_KANA[old_kana] }
               .gsub(/\bを\b/, "お")
               .gsub(/くわ/, "か")
               .gsub(/ぐわ/, "が")
               .gsub(/(?<!^)む/, "ん")

    replaced.to_roman
            .gsub(/shi/, "si")
            .gsub(/au/, "ou")
            .gsub(/iu/, "yuu")
            .gsub(/eu|ehu/, "you")
            .roman_to_hiragana
            .tr("n", "ん")
  end
end

class String
  include ::OldKana
end
