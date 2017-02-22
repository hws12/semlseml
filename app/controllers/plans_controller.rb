class PlansController < ApplicationController

  def index
    @plans = Plan.all
      respond_to do |format|
      format.html
      format.json { render :json => @plans }
    end
  end

  def researchscope

  end

  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.new(plan_params)
    respond_to do |format|
      format.json do
        if @plan.save
          render :json => @plan
        else
          render :json => { :errors => @plan.errors.messages }, :status => 422
        end
      end
    end
  end

  def update
    @plan = Plan.find(params[:id])
    respond_to do |format|
      format.json do
        if @plan.update(plan_params)
          render :json => @plan
        else
          render :json => { :errors => @plan.errors.messages }, :status => 422
        end
      end
    end
  end

  def destroy
    Plan.find(params[:id]).destroy
    respond_to do |format|
      format.json { render :json => {}, :status => :no_content }
    end
  end



  protected
  def Plan_params
    params[:plan].permit(:name, :role, :period, :sponsor)
  end
end
