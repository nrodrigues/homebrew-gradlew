
class Gradlew < Formula
  desc "is a gradle / gradlew wrapper"
  homepage "https://github.com/nrodrigues/gradlew"
  url "https://github.com/nrodrigues/gradlew/archive/v1.0.0.tar.gz"
  sha256 "c0c4d7bc261c2fe88512799f7ae41aafbb2182f1707bfea1ae2d85666cc5f1e0"

  depends_on "gradle" => :recommended

  def install
    bin.install "bin/gradlew"
  end

  test do
    ENV.java_cache
    system "#{bin}/gradlew", "--version"
  end
end
