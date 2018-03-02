class ActionStepsController < ApplicationController
  def index
    @action_steps = ActionStep.all

    render("action_steps/index.html.erb")
  end

  def show
    @action_step = ActionStep.find(params[:id])

    render("action_steps/show.html.erb")
  end

  def new
    @action_step = ActionStep.new

    render("action_steps/new.html.erb")
  end

  def create
    @action_step = ActionStep.new

    @action_step.goal_id = params[:goal_id]
    @action_step.description = params[:description]
    @action_step.target_date = params[:target_date]
    @action_step.resources = params[:resources]
    @action_step.specs = params[:specs]
    @action_step.winning = params[:winning]
    @action_step.lead = params[:lead]

    save_status = @action_step.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/action_steps/new", "/create_action_step"
        redirect_to("/action_steps")
      else
        redirect_back(:fallback_location => "/", :notice => "Action step created successfully.")
      end
    else
      render("action_steps/new.html.erb")
    end
  end

  def edit
    @action_step = ActionStep.find(params[:id])

    render("action_steps/edit.html.erb")
  end

  def update
    @action_step = ActionStep.find(params[:id])

    @action_step.goal_id = params[:goal_id]
    @action_step.description = params[:description]
    @action_step.target_date = params[:target_date]
    @action_step.resources = params[:resources]
    @action_step.specs = params[:specs]
    @action_step.winning = params[:winning]
    @action_step.lead = params[:lead]

    save_status = @action_step.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/action_steps/#{@action_step.id}/edit", "/update_action_step"
        redirect_to("/action_steps/#{@action_step.id}", :notice => "Action step updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Action step updated successfully.")
      end
    else
      render("action_steps/edit.html.erb")
    end
  end

  def destroy
    @action_step = ActionStep.find(params[:id])

    @action_step.destroy

    if URI(request.referer).path == "/action_steps/#{@action_step.id}"
      redirect_to("/", :notice => "Action step deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Action step deleted.")
    end
  end
end
