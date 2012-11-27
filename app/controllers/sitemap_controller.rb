class SitemapController < ApplicationController
  def index
    static_urls = [ {:url => '/',      			:updated_at => ""},
                    {:url => '/about',       	:updated_at => ""},
                    {:url => '/history', 		:updated_at => ""},
                    {:url => '/credit',      	:updated_at => ""},
                    {:url => '/profiles',      	:updated_at => ""},
                    {:url => '/asset',      	:updated_at => ""},
                    {:url => '/trade',      	:updated_at => ""},
                    {:url => '/current',      	:updated_at => ""},
                    {:url => '/prior',      	:updated_at => ""},
                    {:url => '/gerberCO',      	:updated_at => ""},
                    {:url => '/top10',      	:updated_at => ""},
                    {:url => '/gear',	      	:updated_at => ""},
                    {:url => '/calc',     	 	:updated_at => ""},
                    {:url => '/calculator',    	:updated_at => ""},
                    {:url => '/contact',      	:updated_at => ""} ] 
    @pages_to_visit  = static_urls
    @pages_to_visit += Article.all.collect{  |a| {:url => article_path(a) ,  :updated_at => I18n.l(a.updated_at, :format => :w3c)} }
    @pages_to_visit += Category.all.collect{ |c| {:url => category_path(c) , :updated_at => I18n.l(c.updated_at, :format => :w3c)} }
    respond_to do |format|
      format.xml
    end
  end
end
