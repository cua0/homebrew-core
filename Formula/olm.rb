class Olm < Formula
  desc "Implementation of the Double Ratchet cryptographic ratchet in C++"
  homepage "https://git.matrix.org/git/olm/about/docs/olm.rst"
  url "https://gitlab.matrix.org/matrix-org/olm/-/archive/3.1.4/olm-3.1.4.tar.bz2"
  sha256 "eff513cff8e5c7af657e800a2c2dbbdee5be19ee9ce24c5498a2528c4b5f1dc3"
  depends_on "cmake" => :build

  def install
    system "cmake", "-Bbuild", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--build", "build", "--target", "install"
  end

  test do
    system "make", "test"
  end
end
