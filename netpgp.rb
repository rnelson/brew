require "formula"

class Netpgp < Formula
  homepage "http://www.netpgp.com"
  url "http://www.netpgp.com/src/netpgp-20140220.tar.gz"
  sha1 "815418cbae5d02a1385cd7947618303e5aa06d5c"
  version "3.99.17"

  def install
    ENV["CFLAGS"] = "-Wno-deprecated-declarations"
    system "./configure", "--prefix=#{prefix}",
                          "--mandir=#{man}"
    system "make", "install"
  end

  test do
    system "#{bin}/netpgp", "--version"
  end
end
