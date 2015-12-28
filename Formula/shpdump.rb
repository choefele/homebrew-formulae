class Azkaban < Formula
  homepage "https://github.com/choefele/shpdump"
  url "https://github.com/choefele/shpdump.git", :tag => "0.1.0"
  head "https://github.com/choefele/shpdump.git"

  depends_on 'shapelib'
  depends_on 'swift'

  def install
    system 'swift' 'build'
    bin.install '.build/debug/shpdump'
  end

  test do
    system "#{bin}/shpdump", "--help"
  end
end
