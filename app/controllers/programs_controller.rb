class ProgramsController < ApplicationController
  # GET /programs
  # GET /programs.json
  def index
    @programs = Program.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @programs }
    end
  end

  # GET /programs/1
  # GET /programs/1.json
  def show
    @program = Program.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @program }
    end
  end

  # GET /programs/new
  # GET /programs/new.json
  def new
    @program = Program.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @program }
    end
  end

  # GET /programs/1/edit
  def edit
    @content_partial = "layouts/two_column_layout"
    @program = Program.find(params[:id])
    @people = Person.all
    @items = Item.all
    @hymns = Hymn.all
  end

  # POST /programs
  # POST /programs.json
  def create
    @people = Person.all
    @items = Item.all
    @hymns = Hymn.all

    @program = Program.create!(body_html: render_to_string('template', layout: false).html_safe)

    respond_to do |format|
        format.html { redirect_to @program, notice: 'Program was successfully created.' }
        format.json { render json: @program, status: :created, location: @program }
    end
  end

  def print
    @program = Program.last
    respond_to do |format|
      format.html {render :layout => false}
    end
  end

  # PUT /programs/1
  # PUT /programs/1.json
  def update
    @program = Program.find(params[:id])
    if params[:program_week]
      p = params[:program_week]
      params[:program] ||= {program_week: Date.new(p[:year].to_i, p[:month].to_i, p[:day].to_i)}
    end
    @program.update_attributes(params[:program])
    respond_to do |format|
      if @program.update_attributes(params[:program])
        #format.html { redirect_to @program, notice: 'Program was successfully updated.' }
        format.json { render json: {message: 'you did it!'} }
      else
        #format.html { render action: "edit" }
        format.json { render json: @program.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /programs/1
  # DELETE /programs/1.json
  def destroy
    @program = Program.find(params[:id])
    @program.destroy

    respond_to do |format|
      format.html { redirect_to programs_url }
      format.json { head :no_content }
    end
  end

  def final
    @program = Program.last
    respond_to do |format|
      format.html {render template: 'programs/show' }
      format.json { render json: @program }
    end
  end
end
