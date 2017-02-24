class StaticPagesController < ApplicationController
  def home
  end

  def help
  end
    
  def about
  end
    
  def contact
  end
  def palindrome 
        if params[:name].nil?
            params[:name] = ''
        end
        if params[:name].downcase == params[:name].downcase.reverse
            @pageTitle = "its a palindrome !"
        else
            @pageTitle = "its not a palindrome !"
        end
        @wordLength = params[:name].length
        @palind = params[:name].reverse
        
        @shuffle =  params[:name].split('').shuffle.join
        
  end

end
