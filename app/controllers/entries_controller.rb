class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end

  def new
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def create
    @entry = Entry.new(entry_params)

    @entry.save
    redirect_to entry_path(@entry)
  end

  private
    def entry_params
      params.require(:entry).permit(:title, :body)
    end
end
