class Admin::BlogsController < InheritedResources::Base
  before_filter :authenticate_admin!

  respond_to    :html, :xml
  actions       :all
  
  skip_before_filter :verify_authenticity_token


  def default_path
    admin_blogs_path
  end

  def create
    create!   { default_path }
  end

  def update
    update!   { default_path }
  end

  def destroy
    destroy!  { default_path }
  end

end
