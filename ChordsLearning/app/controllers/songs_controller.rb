class SongsController < ApplicationController
	before_action :authenticate_user!
	def new
	end

	def index
		 @songs = Song.all
	end

	def create
		@song =Song.new(params.require(:song).permit(:name, :artist, :chords, :strumming, :capo))
		@song.name = params[:name]
		@song.artist = params[:artist]
		@song.chords = params[:chords]
		@song.strumming = params[:strumming]
		@song.capo = params[:capo]
		if @song.save
			redirect_to :action => 'show'
		else
			render plain: "Not Successful"
		end
	end

	def show
	end

end
