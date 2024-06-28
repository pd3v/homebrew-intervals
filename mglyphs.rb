class Mglyphs < Formula
  desc "Notes, intervals, chords, scales and MIDI matchings"
  homepage "https://github.com/pd3v/mglyphs"
  # url "https://github.com/pd3v/intervals/archive/refs/tags/v0.0.1.tar.gz"
  url "https://github.com/pd3v/mglyphs.git", #, :using => :git, :branch => :main
  #tag: "v0.0.2",
  #revision: "493b9511e1ebea7b1668dbc4f189d52a28953a9f"
  tag: "v0.1",
  #revision: "83808b98ffd224b55c91401984e4200333e39e10"
  #revision: "2feb98a86d66d0d762c58d0b3e106b7b0adfa679"
  #revision: "cdc7a67c4c8c9686e2e238be5b20b26743172f40"
  revision: "969b71a30bdbca2aa217bffaf0e976e86b8f3984"

  #sha256 "4ed19c9ab1911b5d0ad99f524c08078444949e49814bb07a158febacd653f8d1"
  #license "MIT"

  depends_on "cmake" => :build
  # depends_on "diatonic" => :build

  def install
    #system "./configure", "--disable-silent-rules", *std_configure_args
    system "mkdir", "build"
    system "mkdir", "bin"
    #system "cd", "build"
    system "cmake", "-S", ".", "-B", "build/", *std_cmake_args
    system "make", "-C", "build/"
    # system "make", "install"
    # lib.install "build/externals/diatonic/build/libdiatonic.so"
    bin.install "build/mglyphs"
    ohai("Keep playing in the key ... or don't!")
  end
end
