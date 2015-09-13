require "formula"

class Netpgpverify < Formula
  homepage "http://www.netpgp.com"
  url "http://www.netpgp.com/src/netpgpverify-20150204.tar.gz"
  sha1 "19afc8cfaf4e6159b0c2bd64562b45e52ecbd904"
  version "20150204"

  def install
    ENV["CFLAGS"] = "-Wno-deprecated-declarations"
    system "./configure", "--prefix=#{prefix}",
                          "--mandir=#{man}"
    system "make"
    system "mkdir", "-p", "#{prefix}"
    system "mkdir", "-p", "#{man}"
    system "make", "install"
  end

  test do
    system "#{bin}/netpgpverify", "-v"
  end
end
