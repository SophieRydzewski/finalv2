class SportsController < ApplicationController

  

  def index
    matching_user_sports = UserSport.all

    @list_of_user_sports = matching_user_sports.order({ :created_at => :desc })

    @user = User.all
    @sport = Sport.all

    render({ :template => "sports/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_sports = Sport.where({ :id => the_id })

    @the_sport = matching_sports.at(0)

    render({ :template => "sports/show.html.erb" })
  end

  def create
    the_sport = Sport.new
    the_sport.sport = params.fetch("query_sport_sport")


    if the_sport.valid?
      the_sport.save
      redirect_to("/sports", { :notice => "Sport created successfully." })
    else
      redirect_to("/sports", { :alert => the_sport.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_sport = Sport.where({ :id => the_id }).at(0)


    if the_sport.valid?
      the_sport.save
      redirect_to("/sports/#{the_sport.id}", { :notice => "Sport updated successfully."} )
    else
      redirect_to("/sports/#{the_sport.id}", { :alert => the_sport.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_sport = Sport.where({ :id => the_id }).at(0)

    the_sport.destroy

    redirect_to("/sports", { :notice => "Sport deleted successfully."} )
  end
end
