require 'test_helper'

class InformacionsControllerTest < ActionController::TestCase
  setup do
    @informacion = informacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:informacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create informacion" do
    assert_difference('Informacion.count') do
      post :create, informacion: { Autor: @informacion.Autor, Duracion: @informacion.Duracion, Genero: @informacion.Genero, Lanzamiento: @informacion.Lanzamiento }
    end

    assert_redirected_to informacion_path(assigns(:informacion))
  end

  test "should show informacion" do
    get :show, id: @informacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @informacion
    assert_response :success
  end

  test "should update informacion" do
    patch :update, id: @informacion, informacion: { Autor: @informacion.Autor, Duracion: @informacion.Duracion, Genero: @informacion.Genero, Lanzamiento: @informacion.Lanzamiento }
    assert_redirected_to informacion_path(assigns(:informacion))
  end

  test "should destroy informacion" do
    assert_difference('Informacion.count', -1) do
      delete :destroy, id: @informacion
    end

    assert_redirected_to informacions_path
  end
end
