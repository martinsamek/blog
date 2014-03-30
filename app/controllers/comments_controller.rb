class CommentsController < ApplicationController
  def create
    @commentable = find_commentable
    @comment = @commentable.comments.create(comment_params)

    redirect_to @commentable
    #debugger

    #@article = Article.find(params[:article_id])
    #@comment = @article.comments.create(comment_params)

    #redirect_to article_path(@article)
  end

private

  def comment_params
    params.require(:comment).permit(:commenter, :comment_body)
  end

  def find_commentable
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return $1.classify.constantize.find(value)
      end
    end
    nil
  end
end
