module PostCommentsHelper
    def posts_or_comments_submitted(user)
        user.name.post.count == 0 && user.name.comments.count == 0
        print "#{user.name} has not submitted any posts yet."
    end
end
    
    