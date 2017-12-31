class ReadsController < ApplicationController
  def create
    @read = Read.create(user_id: current_user.id, article_id: params[:article_id])
    @read = Read.where(article_id: params[:article_id])
    @article = Article.find(params[:article_id])
  end

  def destroy
    read = Read.find_by(user_id: current_user.id, article_id: params[:article_id])
    read.destroy
    @reads = Read.where(article_id: params[:article_id])
    @article = Article.find(params[:article_id])
  end
end
