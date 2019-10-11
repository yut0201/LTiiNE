class CommentsController < ApplicationController

  def index
  	# 一覧取得
  end

  def create
    @comment = Comment.new
    @comment.presentation_id = params[:presentation_id]
    @comment.sentence = params[:sentence]
    @comment.user_id = params[:user_id]
  	if @comment.save
  		redirect_to presentation_path(params[:presentation_id])
  	else
  		render presentation_path(params[:presentation_id])
  	end
  end

  def edit
  end

  def destroy
  end
end
