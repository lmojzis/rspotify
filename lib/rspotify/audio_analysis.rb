module RSpotify

  # @attr [Array]   bars              The time intervals of the bars throughout the track. A bar (or measure) is a segment of time defined as a given number of beats. Bar offsets also indicate downbeats, the first beat of the measure.
  # @attr [Array]   beats             The time intervals of beats throughout the track. A beat is the basic time unit of a piece of music; for example, each tick of a metronome. Beats are typically multiples of tatums.
  # @attr [Array]   sections          Sections are defined by large variations in rhythm or timbre, e.g. chorus, verse, bridge, guitar solo, etc. Each section contains its own descriptions of tempo, key, mode, time_signature, and loudness.
  # @attr [Array]   segments          Audio segments attempts to subdivide a song into many segments, with each segment containing a roughly consistent sound throughout its duration.
  # @attr [Array]   tatums            A tatum represents the lowest regular pulse train that a listener intuitively infers from the timing of perceived musical events (segments).
  class AudioAnalysis < Base

    # Retrieves AudioAnalysis object(s) for the track id(s) provided
    #
    # @param id [String] A single track id.
    # @return [AudioAnalysis, Array<AudioAnalysis>]
    #
    # @example
    #           audio_features = RSpotify::AudioAnalysis.find('1zHlj4dQ8ZAtrayhuDDmkY')
    def self.find(id)
      url = "audio-features/#{id}"
      response = RSpotify.get(url)
      return response if RSpotify.raw_response

      AudioAnalysis.new response
    end

    def initialize(options = {})
      @bars = options['bars']
      @beats = options['beats']
      @sections = options['sections']
      @segments = options['segments']
      @tatums = options['tatums']

      super(options)
    end

    # Spotify does not support search for audio analysis
    def self.search(*)
      warn 'Spotify API does not support search for audio analysis'
      false
    end

  end
end
