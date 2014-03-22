require 'test_helper'

class JobApplicationsControllerTest < ActionController::TestCase
  setup do
    @job = jobs(:one)
    @job_application = job_applications(:one)
  end

  test "should get index" do
    get :index, :job_id => @job
    assert_response :success
    assert_not_nil assigns(:job_applications)
  end

  test "should get new" do
    get :new, :job_id => @job
    assert_response :success
  end

  test "should create job_application" do
    assert_difference('JobApplication.count') do
      post :create, :job_id => @job, :job_application => @job_application.attributes
    end

    assert_redirected_to job_job_application_path(@job, assigns(:job_application))
  end

  test "should show job_application" do
    get :show, :job_id => @job, :id => @job_application.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :job_id => @job, :id => @job_application.to_param
    assert_response :success
  end

  test "should update job_application" do
    put :update, :job_id => @job, :id => @job_application.to_param, :job_application => @job_application.attributes
    assert_redirected_to job_job_application_path(@job, assigns(:job_application))
  end

  test "should destroy job_application" do
    assert_difference('JobApplication.count', -1) do
      delete :destroy, :job_id => @job, :id => @job_application.to_param
    end

    assert_redirected_to job_job_applications_path(@job)
  end
end
