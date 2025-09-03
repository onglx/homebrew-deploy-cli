class OnglxDeploy < Formula
  desc "Deploy AI APIs to cloud providers with 85% cost savings"
  homepage "https://deploy.onglx.io"
  version "0.1.41"
  license "MIT"

  depends_on "opentofu"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/onglx/homebrew-deploy-cli/releases/download/v0.1.41/onglx-deploy_Darwin_arm64.tar.gz"
      sha256 "d047594e069d6ab935d0fac538a572d866ff3a7455ec99e36b0a6bec56f75df7"
    else
      url "https://github.com/onglx/homebrew-deploy-cli/releases/download/v0.1.41/onglx-deploy_Darwin_amd64.tar.gz"
      sha256 "5658b9702248c3e98beb874f42fcce6574a661538388fbf6ef64eb6d754def5f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/onglx/homebrew-deploy-cli/releases/download/v0.1.41/onglx-deploy_Linux_arm64.tar.gz"
      sha256 "b9890c6d3d282dae9ec2c1689a7f83aca5e21bb8f1030ac2fb045700b0eb397a"
    else
      url "https://github.com/onglx/homebrew-deploy-cli/releases/download/v0.1.41/onglx-deploy_Linux_amd64.tar.gz"
      sha256 "288452f1939c018cba53455a607ff10150e89289ab244abd9301e79e8402c854"
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
