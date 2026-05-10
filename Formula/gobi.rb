class Gobi < Formula
  desc "CLI client for the Gobi collaborative knowledge platform"
  homepage "https://github.com/gobi-ai/gobi-cli"
  url "https://registry.npmjs.org/@gobi-ai/cli/-/cli-2.0.12.tgz"
  sha256 "5edd022305a08c53b867248c100a821b7d5870da96f7bf11f3eca0018f426934"
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
