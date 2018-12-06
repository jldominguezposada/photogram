class ObsessionsController < ApplicationController
  def index
    @obsessions = Obsession.all

    render("obsession_templates/index.html.erb")
  end

  def show
    @obsession = Obsession.find(params.fetch("id_to_display"))

    render("obsession_templates/show.html.erb")
  end

  def new_form
    @obsession = Obsession.new

    render("obsession_templates/new_form.html.erb")
  end

  def create_row
    @obsession = Obsession.new

    @obsession.stalker_id = params.fetch("stalker_id")
    @obsession.victim_id = params.fetch("victim_id")

    if @obsession.valid?
      @obsession.save

      redirect_back(:fallback_location => "/obsessions", :notice => "Obsession created successfully.")
    else
      render("obsession_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @obsession = Obsession.find(params.fetch("prefill_with_id"))

    render("obsession_templates/edit_form.html.erb")
  end

  def update_row
    @obsession = Obsession.find(params.fetch("id_to_modify"))

    @obsession.stalker_id = params.fetch("stalker_id")
    @obsession.victim_id = params.fetch("victim_id")

    if @obsession.valid?
      @obsession.save

      redirect_to("/obsessions/#{@obsession.id}", :notice => "Obsession updated successfully.")
    else
      render("obsession_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_stalker
    @obsession = Obsession.find(params.fetch("id_to_remove"))

    @obsession.destroy

    redirect_to("/users/#{@obsession.stalker_id}", notice: "Obsession deleted successfully.")
  end

  def destroy_row_from_victim
    @obsession = Obsession.find(params.fetch("id_to_remove"))

    @obsession.destroy

    redirect_to("/users/#{@obsession.victim_id}", notice: "Obsession deleted successfully.")
  end

  def destroy_row
    @obsession = Obsession.find(params.fetch("id_to_remove"))

    @obsession.destroy

    redirect_to("/obsessions", :notice => "Obsession deleted successfully.")
  end
end
