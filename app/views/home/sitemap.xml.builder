xml.instruct!
xml.urlset "xmlns" => "http://www.sitemaps.org/schemas/sitemap/0.9", "xmlns:image" => "http://www.google.com/schemas/sitemap-image/1.1" do


  xml.url do
    xml.loc "http://www.paintforfuture.org" 
    xml.changefreq "weekly"
  end

  xml.url do 
    xml.loc "http://www.paintforfuture.org/certificateofregistration.pdf"
    xml.changefreq "never"
  end

  xml.url do 
    xml.loc "http://www.paintforfuture.org/stadgar.pdf"
    xml.changefreq "yearly"
  end

  xml.url do 
    xml.loc "http://www.paintforfuture.org/stiftelseforordnande.pdf"
    xml.changefreq "yearly"
  end

  xml.url do 
    xml.loc "http://www.paintforfuture.org/upprop.pdf"
    xml.changefreq "yearly"
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

    xml.url do
      xml.loc galleries_url
      xml.changefreq "weekly"
    end

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
