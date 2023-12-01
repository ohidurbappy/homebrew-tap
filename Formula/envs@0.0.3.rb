class EnvsAT003 < Formula
  desc "Environment variable manager"
  homepage "https://github.com/ohidurbappy/envs"
  url "https://github.com/ohidurbappy/envs.git", tag: "v0.0.1"
  license "MPL-2.0"
  head "https://github.com/ohidurbappy/envs.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "#{bin}/envs@0.0.1"
  end
end
