require 'test_helper'

class EventRegistrationsControllerTest < ActionController::TestCase
  setup do
    @event_registration = event_registrations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:event_registrations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event_registration" do
    assert_difference('EventRegistration.count') do
      post :create, event_registration: { college: @event_registration.college, department: @event_registration.department, event_id: @event_registration.event_id, name: @event_registration.name }
    end

    assert_redirected_to event_registration_path(assigns(:event_registration))
  end

  test "should show event_registration" do
    get :show, id: @event_registration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event_registration
    assert_response :success
  end

  test "should update event_registration" do
    patch :update, id: @event_registration, event_registration: { college: @event_registration.college, department: @event_registration.department, event_id: @event_registration.event_id, name: @event_registration.name }
    assert_redirected_to event_registration_path(assigns(:event_registration))
  end

  test "should destroy event_registration" do
    assert_difference('EventRegistration.count', -1) do
      delete :destroy, id: @event_registration
    end

    assert_redirected_to event_registrations_path
  end
end
