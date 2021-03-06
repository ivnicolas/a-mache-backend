class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]
  # i did the following because I was recieving the follow error: ActionController::InvalidAuthenticityToken (ActionController::InvalidAuthenticityToken)
  skip_before_action :verify_authenticity_token
  # GET /posts or /posts.json
  def index
    if params[:subcategory_id]
      @subcategory= Subcategory.find_by_id(params[:subcategory_id])
      @posts = @subcategory.posts
    elsif params[:category_id]
      @category = Category.find_by_id(params[:category_id])
      @posts= @category.posts
    else 
      @posts = Post.all
    end 
  end

  # GET /posts/1 or /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts or /posts.json
  def create
    
    @post = Post.new(post_params)

    @category = Category.find_by_id(params[:category])
    @subcategory = Subcategory.find_by_id(params[:subcategory])

    @post.category_id = @category.id
    @post.subcategory_id = @subcategory.id 
    
    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: "Post was successfully created." }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1 or /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: "Post was successfully updated." }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: "Post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:title, :description, :photo, :tags, :price, :location, :contact_email, :contact_phone, :subcategory_id, :category_id)
    end
end
