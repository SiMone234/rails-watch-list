class BookmarksController < ApplicationController
  def destroy

    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy



  end
  def new
    @bookmarks = Bookmark.new

  end
  def create
    @bookmarks = Bookmark.new(bookmark_params)
    @bookmarks.save!


  end

  private


  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end
end
