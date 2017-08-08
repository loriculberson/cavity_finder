require 'pry'
require_relative 'cavity'

RSpec.describe Cavity do 
  context "#cavity_find" do 
    it "returns array with cavities marked on 4x4 grid" do 
      cavity = Cavity.new
      incoming_data =   "4",
                        "1512",
                        "3942",
                        "1892",
                        "1234"
              
      final_output =    "1512",
                        "3X42",
                        "18X2",
                        "1234"
                
      expect(cavity.cavity_finder(incoming_data)).to eq(final_output)
    end

    it "returns array with cavities marked on 6x6 grid" do 
      cavity = Cavity.new
      incoming_data =   "6",
                        "151270",
                        "394269",
                        "189237",
                        "123454",
                        "164237",
                        "310253"
              
      final_output =    "151270",
                        "3X4269",
                        "18X237",
                        "1234X4",
                        "1X4237",
                        "310253"
                
      expect(cavity.cavity_finder(incoming_data)).to eq(final_output)
    end
  end
end
