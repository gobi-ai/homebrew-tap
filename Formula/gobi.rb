class Gobi < Formula
  desc "CLI client for the Gobi collaborative knowledge platform"
  homepage "https://github.com/gobi-ai/gobi-cli"
  url "https://registry.npmjs.org/@gobi-ai/cli/-/cli-3.0.1.tgz"
  sha256 "fb3df3bb1e60a9168152c364782dad63f6349f754145887185ad6977fbd6a01c"
  license "MIT"
  depends_on "node"
  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/gobi --version")
  end
end
