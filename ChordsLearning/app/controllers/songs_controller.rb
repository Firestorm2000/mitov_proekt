class SongsController < ApplicationController
	def new
	end

	def index
	end

	def create
		@song =Song.new(params.require(:song).permit(:name, :artist, :chords, :strumming, :capo, :level))
		@song.name = params[:name]
		@song.artist = params[:artist]
		@song.chords = params[:chords]
		@song.strumming = params[:strumming]
		@song.capo = params[:capo]
		@song.level = params[:level]
		if @song.save 
			#redirect_to
			render plain: "Successful"
		else 
			render plain: "Not Successful"
		end
	end
	
	def show
	end

end
