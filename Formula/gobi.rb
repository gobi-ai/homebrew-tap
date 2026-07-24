class Gobi < Formula
  desc "CLI client for the Gobi collaborative knowledge platform"
  homepage "https://github.com/gobi-ai/gobi-cli"
  url "https://registry.npmjs.org/@gobi-ai/cli/-/cli-2.0.45.tgz"
  sha256 "f9fe32b146c5e691d00c037404cc79b186e5ec1345a34fd268f09b45c7830466"
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
