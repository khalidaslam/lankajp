require 'test_helper'

class JobPostsControllerTest < ActionController::TestCase
  setup do
    @job_post = job_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:job_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job_post" do
    assert_difference('JobPost.count') do
      post :create, job_post: { conactno: @job_post.conactno, cvemailoption: @job_post.cvemailoption, email: @job_post.email, fullname: @job_post.fullname, jobposttype: @job_post.jobposttype, jobuuid: @job_post.jobuuid, terms: @job_post.terms }
    end

    assert_redirected_to job_post_path(assigns(:job_post))
  end

  test "should show job_post" do
    get :show, id: @job_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job_post
    assert_response :success
  end

  test "should update job_post" do
    put :update, id: @job_post, job_post: { conactno: @job_post.conactno, cvemailoption: @job_post.cvemailoption, email: @job_post.email, fullname: @job_post.fullname, jobposttype: @job_post.jobposttype, jobuuid: @job_post.jobuuid, terms: @job_post.terms }
    assert_redirected_to job_post_path(assigns(:job_post))
  end

  test "should destroy job_post" do
    assert_difference('JobPost.count', -1) do
      delete :destroy, id: @job_post
    end

    assert_redirected_to job_posts_path
  end
end
