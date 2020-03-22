# frozen_string_literal: true

RSpec.describe Jekyll::Copyr::Copier do
  before do
    Jekyll.logger.log_level = :error
  end

  after do
    FileUtils.remove_dir output_path if File.directory? output_path
  end

  def input_path
    File.expand_path "../fixtures/files/.", __dir__
  end

  def output_path
    File.expand_path "../../tmp/copy", __dir__
  end

  def config
    { "tasks" => [{ "from" => input_path, "to" => output_path }] }
  end

  def disabled_config
    { "enabled" => false, "tasks" => [{ "from" => input_path, "to" => output_path }] }
  end

  it "should copy files per default" do
    Jekyll::Copyr::Copier.new(config).process_post_write

    expect(File).to exist(File.join(output_path, "files", "0.txt"))
    expect(File).to exist(File.join(output_path, "files", "1.txt"))
    expect(File).to exist(File.join(output_path, "files", "2.txt"))
    expect(File).to exist(File.join(output_path, "files", "3.txt"))
  end

  it "should not copy files when disabled" do
    Jekyll::Copyr::Copier.new(disabled_config).process_post_write

    expect(File).not_to exist(File.join(output_path, "files", "0.txt"))
    expect(File).not_to exist(File.join(output_path, "files", "1.txt"))
    expect(File).not_to exist(File.join(output_path, "files", "2.txt"))
    expect(File).not_to exist(File.join(output_path, "files", "3.txt"))
  end
end
