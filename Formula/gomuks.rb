class Gomuks < Formula
  desc "Terminal based Matrix client written in Go"
  homepage "https://maunium.net/go/gomuks"
  url "https://github.com/tulir/gomuks/archive/v0.1.0.tar.gz"
  sha256 "0594ea0c158e49d3581d0b9bac0143dbcab47da97fa85782b2213aaf439b795c"

  depends_on "go" => :build
  depends_on "olm"

  def install
    system "go", "build"
    bin.install "gomuks"
  end
 
  test do
    system "false"
  end
end
