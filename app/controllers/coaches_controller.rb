class CoachesController < ApplicationController
  def index
    @coaches = Coach.all

    render("coaches/index.html.erb")
  end

  def show
    @coach = Coach.find(params[:id])

    render("coaches/show.html.erb")
  end

  def new
    @coach = Coach.new

    render("coaches/new.html.erb")
  end

  def create
    @coach = Coach.new

    @coach.user_id = params[:user_id]
    @coach.improvement_plan_id = params[:improvement_plan_id]

    save_status = @coach.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/coaches/new", "/create_coach"
        redirect_to("/coaches")
      else
        redirect_back(:fallback_location => "/", :notice => "Coach created successfully.")
      end
    else
      render("coaches/new.html.erb")
    end
  end

  def edit
    @coach = Coach.find(params[:id])

    render("coaches/edit.html.erb")
  end

  def update
    @coach = Coach.find(params[:id])

    @coach.user_id = params[:user_id]
    @coach.improvement_plan_id = params[:improvement_plan_id]

    save_status = @coach.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/coaches/#{@coach.id}/edit", "/update_coach"
        redirect_to("/coaches/#{@coach.id}", :notice => "Coach updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Coach updated successfully.")
      end
    else
      render("coaches/edit.html.erb")
    end
  end

  def destroy
    @coach = Coach.find(params[:id])

    @coach.destroy

    if URI(request.referer).path == "/coaches/#{@coach.id}"
      redirect_to("/", :notice => "Coach deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Coach deleted.")
    end
  end
end
