class SearchController < ApplicationController
def index
  @artists = Artist.search params[:term]
  @songs = Song.search params[:term]
  @chords = Chord.search params[:term]
   @results = @artists + @songs + @chords
   @results.uniq
end
end
