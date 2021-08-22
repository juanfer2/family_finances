module Client
  class GoogleDrive

    def initialize(file:)
      @drive = Google::Apis::DriveV3::DriveService.new
    end
  end
end
