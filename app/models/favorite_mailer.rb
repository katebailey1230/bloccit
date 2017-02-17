class FavoriteMailer < ActiveRecord::Base
    default from: "katebailey1230@gmail.com"
    
    def new_comment(user, post, comment)
        
        headers["Message-ID"] = "<comments/#{comment.id}@damp-brook-69537"
        headers["In-Reply-To"] = "<post/#{post.id}@damp-brook-69537"
        headers["References"] = "<post/#{post.id}@damp-brook-69537"
        
        
        
    @user = user
    @post = post
    @comment = comment
        
    mail(to: user.email, subject: "New comment on #{post.title}")    
    end
    
    def new_post(post)
        headers["Message-ID"] = "<comments/#{comment.id}@damp-brook-69537"
        headers["In-Reply-To"] = "<post/#{post.id}@damp-brook-69537"
        headers["References"] = "<post/#{post.id}@damp-brook-69537"
        
        @post = post
        
        mail(to: post.user.email, subject: "You're following, #{post.title}") 
    end
end