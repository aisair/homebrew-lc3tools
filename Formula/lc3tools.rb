class Lc3tools < Formula
  desc "Collection of tools used for development with the LC-3 assembly language"
  homepage "https://lumetta.web.engr.illinois.edu/ase2021.html"
  url "https://lumetta.web.engr.illinois.edu/lc3tools.0.13.tar.bz2"
  sha256 "a36aee9e97b79054fdc3d35d2834e720fe2d20ed204e4f5289bdb95a46deeaa5"
  license "GPL-2.0-only"

  def install
    system "./configure", "--installdir", prefix, *std_configure_args
    system "make", "install"
    bin.install "lc3as", "lc3convert", "lc3sim", "lc3sim-tk"
  end

  test do
    system bin/"lc3sim", "-s", "dev/null"
  end
end
