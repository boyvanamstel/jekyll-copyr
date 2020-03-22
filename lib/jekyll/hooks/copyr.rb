# frozen_string_literal: true

Jekyll::Hooks.register :site, :post_write do |site|
  copier = Jekyll::Copyr::Copier.new site.config.fetch "jekyll-copyr", nil
  copier.process_post_write
end
