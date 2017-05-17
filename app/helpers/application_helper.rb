require 'csv'

module ApplicationHelper
  def parse_tsv(tsv)
    CSV.parse(tsv, col_sep: "\t")
  end
end
