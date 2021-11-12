class BookmarksController < ApplicationController

  def new
    @bookmark = Bookmark.new
    @list = List.find(params[:list_id])
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    # we need `restaurant_id` to associate review with corresponding restaurant
    @list = List.find(params[:list_id])
    @bookmark.list = @list
    if @bookmark.save
    redirect_to list_path(@list)
    else
      render :new
    end
  end


  private

  def bookmark_params
    params.require(:bookmark).permit(:movie_id, :comment)
  end
end
