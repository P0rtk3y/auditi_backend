class Audiocard < ApplicationRecord
    belongs_to :user
    # has_attached_file :soundfile, 
    #                    styles: {mp3: {}},
    #                    processors: [:ffmpeg_wav_to_mp3], 
    #                    :path => ':user_id/:style/:filename',
    #                    :storage => :s3,
    #                    :s3_credentials => Proc.new{|a| a.instance.s3_credentials },
    #                    :s3_region => 'us-west-2'
    # # validates_attachment_file_name :soundfile, :matches => [/wav\Z/i, /mp\w\Z/i]
    # validates_attachment_size :soundfile, :less_than => 25.megabytes
    # do_not_validate_attachment_file_type :soundfile

    # Paperclip.interpolates :user_id do |attachment, style|
    #     attachment.instance.user.present? ? attachment.instance.user.id : 'dev'
    # end 

    # def s3_credentials 
    #     {:bucket => "auditi-soundcards", :access_key_id => ENV['aws_access_key'], :secret_access_key => ENV['aws_secret_access_key']}
    # end 
end
