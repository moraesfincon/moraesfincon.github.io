class SoluctionUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  process resize_to_fit: [309, 171]

  version :thumb do
    process resize_to_fill: [250,138]
  end

  version :mini_thumb do
    process resize_to_fill: [100,40]
  end

  def extension_whitelist
    %w(jpg jpeg png)
  end

end
