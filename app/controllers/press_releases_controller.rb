class PressReleasesController < ApplicationController
  def index
    @releases = PressRelease.find(:all,
                                  :order => 'press_releases.created_at desc',
                                  :limit => 5)
  end

  def show
    @pr = PressRelease.find(params[:id])
  end
end
