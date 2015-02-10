class Book

  attr_accessor :title

  def initialize(title = '')
    @title = title.capitalize
  end

  def title
    exceptions = ['and', 'in', 'the', 'of', 'a', 'an']
    title_list = @title.split(' ')
    
    title_list.map! { |word| 
      if not exceptions.include? word
        word.capitalize
      else
        word
      end
    }
    
    @title = title_list.join(' ')
    @title[0] = @title[0].upcase
    @title
  end

end


