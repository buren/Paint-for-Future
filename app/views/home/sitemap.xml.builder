xml.instruct!
xml.urlset "xmlns" => "http://www.sitemaps.org/schemas/sitemap/0.9" do

  xml.url do
    xml.loc "http://www.paintforfuture.org" 
    xml.changefreq "weekly"
  end

  xml.url do
    xml.loc projects_url
    xml.changefreq "weekly"
  end

  xml.url do
    xml.loc goals_url
    xml.changefreq "weekly"
  end

  xml.url do
    xml.loc videos_url
    xml.changefreq "weekly"
  end

  # Add image ref to sitemap for gallery images

  xml.url do 
    xml.loc posts_url
    xml.changefreq "daily"
  end

  @posts.each do |post|
    xml.url do
      xml.loc post_url(post)
      xml.lastmod post.updated_at.to_date
      xml.changefreq "monthly"
    end
  end

  xml.url do 
    xml.loc contacts_url
    xml.changefreq "monthly"
  end

  @contacts.each do |contact|
    xml.url do
      xml.loc contact_url(contact)
      xml.lastmod contact.updated_at.to_date
      xml.changefreq "monthly"
    end
  end
end
