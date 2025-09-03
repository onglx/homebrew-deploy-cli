class OnglxDeploy < Formula
  desc "Deploy AI APIs to AWS in 30 seconds with 85% cost savings"
  homepage "https://deploy.onglx.io/docs"
  version "0.1.39"

  depends_on "opentofu"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/onglx/homebrew-deploy-cli/releases/download/v#{version}/onglx-deploy_Darwin_arm64.tar.gz"
      sha256 "replace_with_darwin_arm64_sha256"
    else
      url "https://github.com/onglx/homebrew-deploy-cli/releases/download/v#{version}/onglx-deploy_Darwin_amd64.tar.gz"
      sha256 "replace_with_darwin_amd64_sha256"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/onglx/homebrew-deploy-cli/releases/download/v#{version}/onglx-deploy_Linux_arm64.tar.gz"
      sha256 "replace_with_linux_arm64_sha256"
    else
      url "https://github.com/onglx/homebrew-deploy-cli/releases/download/v#{version}/onglx-deploy_Linux_amd64.tar.gz"
      sha256 "replace_with_linux_amd64_sha256"
    end
  end

  def install
    bin.install "onglx-deploy"
  end

  test do
    system "#{bin}/onglx-deploy", "--version"
  end
end