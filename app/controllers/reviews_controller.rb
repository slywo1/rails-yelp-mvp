class ReviewsController < ApplicationController

  before_action :set_review, only: [:show]

  def index
    @reviews = review.all
  end

  def show
  end

  def new
    @review = review.new
  end

  def create
    @review = review.new(review_params)
    @review.save
    redirect_to @review
  end

  private

  def set_review
    @review = review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
