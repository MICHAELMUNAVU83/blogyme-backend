class PostsController < ApplicationController
    def index
        @posts = Post.all
        render json: @posts , include: [:category, :author, :comments]
    end

    def show
        @post = Post.find(params[:id])
        render json: @post
    end

    def create
        @post = Post.create(post_params)
        render json: @post
    end

    def update
        @post = Post.find(params[:id])
        @post.update(post_params)
        render json: @post
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
    end

    def recent_posts 
        @posts = Post.all.order(created_at: :desc).limit(3)
        render json: @posts , include: [:category, :author, :comments]
    end

    def related_posts
        @post = Post.find(params[:id])
        @posts = Post.where(category_id: @post.category_id).where.not(id: @post.id).limit(3)
        render json: @posts , include: [:category, :author, :comments]
    end


    private

    def post_params
        params.permit(:title, :content, :category_id, :featured_image  , :featured_post, :author_id)
    end

end
