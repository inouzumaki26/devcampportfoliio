module DefaultSetContent
   extend ActiveSupport::concern
   
   included do
      before_filter :set_title
   end
   
   def set_title
    @page_title = "DevcampPorfolio | My Portfolio Website"
    @seo_keywords = "Jorden Hudgens portfolio"
   end
end