class OnglxDeploy < Formula
  desc "Deploy AI APIs to cloud providers with 85% cost savings"
  homepage "https://deploy.onglx.io"
  version "0.1.42"
  license "MIT"

  depends_on "opentofu"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/onglx/homebrew-deploy-cli/releases/download/v0.1.42/onglx-deploy_Darwin_arm64.tar.gz"
      sha256 "738c6686bf08bb78f3ce3c78b82ff2a6f82678fbd40cf4ec0f244c469c450a9d"
    else
      url "https://github.com/onglx/homebrew-deploy-cli/releases/download/v0.1.42/onglx-deploy_Darwin_amd64.tar.gz"
      sha256 "b0378fa31201864a53c66bb070c4fcd6c9876f5f8690c5970d8b94a7f2a36e29"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/onglx/homebrew-deploy-cli/releases/download/v0.1.42/onglx-deploy_Linux_arm64.tar.gz"
      sha256 "962f4c2f8a0610b8e337c9bb06983d4c2315c06cdcf54cb63fcd82f041c819d6"
    else
      url "https://github.com/onglx/homebrew-deploy-cli/releases/download/v0.1.42/onglx-deploy_Linux_amd64.tar.gz"
      sha256 "3dbb5739d0a0a83b61caafce2fb74da9f1081c79d2b2e6485ff8201baf05a559"
    end
  end

  def install
    bin.install "onglx-deploy"
    
    # Generate shell completions
    generate_completions_from_executable(bin/"onglx-deploy", "completion")
  end

  test do
    system "#{bin}/onglx-deploy", "--help"
  end
end
