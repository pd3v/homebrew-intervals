class Intervals < Formula
  desc "Notes, intervals, chords, scales and MIDI matchings"
  homepage "https://github.com/pd3v/intervals"
  # url "https://github.com/pd3v/intervals/archive/refs/tags/v0.0.1.tar.gz"
  url "https://github.com/pd3v/intervals.git", #, :using => :git, :branch => :main
    tag: "v0.0.1",
    revision: "8673da324b362878e627399fe392356a7a179c7d"
  #sha256 "4ed19c9ab1911b5d0ad99f524c08078444949e49814bb07a158febacd653f8d1"
  #license "MIT"

  depends_on "cmake" => :build

  def install
    #system "./configure", "--disable-silent-rules", *std_configure_args
    system "mkdir", "build"
    #system "cd", "build"
    system "cmake", "-S", ".", "-B", "build/", *std_cmake_args
    system "make", "-C", "build/" 
    bin.install "build/intervals"
  end
end
