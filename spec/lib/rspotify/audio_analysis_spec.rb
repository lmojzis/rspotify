describe RSpotify::AudioAnalysis do

  let(:client_id) { '5ac1cda2ad354aeaa1ad2693d33bb98c' }
  let(:client_secret) { '155fc038a85840679b55a1822ef36b9b' }

  before do
    authenticate_client
  end

  describe 'AudioAnalysis::find' do
    it 'finds the audio features for a track' do
      audio_features = VCR.use_cassette('audio_features:find:1zHlj4dQ8ZAtrayhuDDmkY') do
        RSpotify::AudioAnalysis.find('1zHlj4dQ8ZAtrayhuDDmkY')
      end

      expect(audio_features.bars).to             eq [{"start": 0.49434, "duration": 1.8546, "confidence": 0.301}, {"start": 2.34895, "duration": 1.84058, "confidence": 0.309}, {"start": 4.18953, "duration": 1.84403, "confidence": 0.395}, {"start": 6.03356, "duration": 1.85671, "confidence": 0.782}, {"start": 7.89027, "duration": 1.85464, "confidence": 0.491}, {"start": 9.7449, "duration": 1.85629, "confidence": 0.486}, {"start": 11.60119, "duration": 1.83829, "confidence": 0.676}, {"start": 13.43948, "duration": 1.83982, "confidence": 0.538}, {"start": 15.2793, "duration": 1.85485, "confidence": 0.686}, {"start": 17.13415, "duration": 0.46312, "confidence": 0.752}, {"start": 17.59727, "duration": 1.84477, "confidence": 0.475}, {"start": 19.44205, "duration": 1.84396, "confidence": 0.603}, {"start": 21.28601, "duration": 1.8404, "confidence": 0.563}, {"start": 23.12641, "duration": 1.83522, "confidence": 0.687}, {"start": 24.96163, "duration": 1.84145, "confidence": 0.609}, {"start": 26.80308, "duration": 1.84807, "confidence": 0.105}, {"start": 28.65115, "duration": 1.84693, "confidence": 0.777}, {"start": 30.49808, "duration": 1.84681, "confidence": 0.703}, {"start": 32.34489, "duration": 1.84646, "confidence": 0.702}, {"start": 34.19135, "duration": 1.8418, "confidence": 0.177}, {"start": 36.03315, "duration": 1.84298, "confidence": 0.691}, {"start": 37.87613, "duration": 1.84693, "confidence": 0.639}, {"start": 39.72306, "duration": 1.84433, "confidence": 0.795}, {"start": 41.56739, "duration": 1.85047, "confidence": 0.276}, {"start": 43.41786, "duration": 1.85008, "confidence": 0.242}, {"start": 45.26794, "duration": 1.83801, "confidence": 0.568}, {"start": 47.10595, "duration": 1.84368, "confidence": 0.502}, {"start": 48.94963, "duration": 1.85373, "confidence": 0.899}, {"start": 50.80336, "duration": 1.84556, "confidence": 0.616}, {"start": 52.64892, "duration": 1.84248, "confidence": 0.406}, {"start": 54.4914, "duration": 1.84241, "confidence": 0.26}, {"start": 56.33381, "duration": 1.85026, "confidence": 0.821}, {"start": 58.18407, "duration": 1.84472, "confidence": 0.63}, {"start": 60.02879, "duration": 1.84797, "confidence": 0.249}, {"start": 61.87676, "duration": 1.85094, "confidence": 0.451}, {"start": 63.7277, "duration": 1.84923, "confidence": 0.655}, {"start": 65.57693, "duration": 1.85068, "confidence": 0.531}, {"start": 67.42762, "duration": 1.85773, "confidence": 0.298}, {"start": 69.28535, "duration": 1.84321, "confidence": 0.555}, {"start": 71.12856, "duration": 1.83681, "confidence": 0.057}, {"start": 72.96536, "duration": 1.85131, "confidence": 0.201}, {"start": 74.81667, "duration": 1.85562, "confidence": 0.083}, {"start": 76.67229, "duration": 1.84117, "confidence": 0.273}, {"start": 78.51346, "duration": 1.84277, "confidence": 0.733}, {"start": 80.35624, "duration": 1.84872, "confidence": 0.407}, {"start": 82.20495, "duration": 1.85184, "confidence": 0.773}, {"start": 84.05679, "duration": 1.84213, "confidence": 0.625}, {"start": 85.89892, "duration": 1.84172, "confidence": 0.785}, {"start": 87.74064, "duration": 1.84555, "confidence": 0.472}, {"start": 89.58619, "duration": 1.84787, "confidence": 0.378}, {"start": 91.43406, "duration": 1.84202, "confidence": 0.437}, {"start": 93.27608, "duration": 1.84631, "confidence": 0.813}, {"start": 95.12239, "duration": 1.83849, "confidence": 0.522}, {"start": 96.96087, "duration": 1.8297, "confidence": 0.652}, {"start": 98.79058, "duration": 1.83582, "confidence": 0.583}, {"start": 100.6264, "duration": 1.85212, "confidence": 0.762}, {"start": 102.47852, "duration": 1.85136, "confidence": 0.642}, {"start": 104.32988, "duration": 1.84175, "confidence": 0.229}, {"start": 106.17163, "duration": 1.84106, "confidence": 0.092}, {"start": 108.01268, "duration": 1.85227, "confidence": 0.256}, {"start": 109.86495, "duration": 1.85711, "confidence": 0.229}, {"start": 111.72206, "duration": 1.8519, "confidence": 0.799}, {"start": 113.57396, "duration": 1.82936, "confidence": 0.677}, {"start": 115.40332, "duration": 1.85826, "confidence": 0.538}, {"start": 117.26158, "duration": 1.85267, "confidence": 0.329}, {"start": 119.11425, "duration": 1.84075, "confidence": 0.412}, {"start": 120.955, "duration": 1.84516, "confidence": 0.612}, {"start": 122.80016, "duration": 1.84771, "confidence": 0.564}, {"start": 124.64787, "duration": 1.8412, "confidence": 0.661}, {"start": 126.48908, "duration": 1.8359, "confidence": 0.511}, {"start": 128.32498, "duration": 1.84586, "confidence": 0.707}, {"start": 130.17084, "duration": 1.85868, "confidence": 0.821}, {"start": 132.02951, "duration": 1.84709, "confidence": 0.526}, {"start": 133.87662, "duration": 1.8338, "confidence": 0.415}, {"start": 135.7104, "duration": 1.84979, "confidence": 0.608}, {"start": 137.5602, "duration": 1.86016, "confidence": 0.716}, {"start": 139.42036, "duration": 1.8591, "confidence": 0.32}, {"start": 141.27946, "duration": 1.85684, "confidence": 0.287}, {"start": 143.1363, "duration": 1.83811, "confidence": 0.236}, {"start": 144.97441, "duration": 1.83846, "confidence": 0.266}, {"start": 146.81287, "duration": 1.85008, "confidence": 0.935}, {"start": 148.66295, "duration": 1.85437, "confidence": 0.272}, {"start": 150.51732, "duration": 1.84327, "confidence": 0.29}, {"start": 152.3606, "duration": 1.85275, "confidence": 0.227}, {"start": 154.21333, "duration": 1.84786, "confidence": 0.438}, {"start": 156.0612, "duration": 1.83913, "confidence": 0.351}, {"start": 157.90033, "duration": 1.83578, "confidence": 0.374}, {"start": 159.73611, "duration": 1.84425, "confidence": 0.92}, {"start": 161.58035, "duration": 1.84938, "confidence": 0.308}, {"start": 163.42973, "duration": 1.84873, "confidence": 0.369}, {"start": 165.27847, "duration": 1.84064, "confidence": 0.24}, {"start": 167.11911, "duration": 1.84643, "confidence": 0.794}, {"start": 168.96555, "duration": 1.83804, "confidence": 0.41}, {"start": 170.80359, "duration": 1.82453, "confidence": 0.706}, {"start": 172.62811, "duration": 1.84154, "confidence": 0.281}, {"start": 174.46967, "duration": 1.86367, "confidence": 0.644}, {"start": 176.33333, "duration": 1.84699, "confidence": 0.573}, {"start": 178.18031, "duration": 1.83238, "confidence": 0.311}, {"start": 180.0127, "duration": 1.84436, "confidence": 0.182}, {"start": 181.85706, "duration": 1.85834, "confidence": 0.685}, {"start": 183.7154, "duration": 1.84221, "confidence": 0.276}, {"start": 185.55762, "duration": 1.84036, "confidence": 0.51}, {"start": 187.39796, "duration": 1.84771, "confidence": 0.179}, {"start": 189.24568, "duration": 1.85579, "confidence": 0.739}, {"start": 191.10149, "duration": 1.84835, "confidence": 0.597}, {"start": 192.94981, "duration": 1.84673, "confidence": 0.575}, {"start": 194.79655, "duration": 1.83952, "confidence": 0.098}, {"start": 196.63606, "duration": 2.76126, "confidence": 0.607}]
    end

  end

end