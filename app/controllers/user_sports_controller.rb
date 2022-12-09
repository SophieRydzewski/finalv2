class UserSportsController < ApplicationController
  def index
    matching_user_sports = UserSport.all

    @list_of_user_sports = matching_user_sports.order({ :created_at => :desc })

    render({ :template => "user_sports/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_user_sports = UserSport.where({ :id => the_id })

    @the_user_sport = matching_user_sports.at(0)

    render({ :template => "user_sports/show.html.erb" })
  end

  def create
    
    the_user_sport = UserSport.new
    the_user_sport.user_id = session.fetch(:user_id)
    the_user_sport.city = session.fetch(:city)
    the_user_sport.sport_id = params.fetch("query_sport_id")
    the_user_sport.save
      redirect_to("/sports", { :notice => "User sport created successfully." })
    # else
    #   redirect_to("/sports", { :alert => the_user_sport.errors.full_messages.to_sentence })
    # end

    matching_user_sports = UserSport.all

    @list_of_user_sports = matching_user_sports.order({ :created_at => :desc })
  end

  def update
    the_id = params.fetch("path_id")
    the_user_sport = UserSport.where({ :id => the_id }).at(0)

    the_user_sport.user_id = params.fetch("query_user_id")
    the_user_sport.sport_id = params.fetch("query_sport_id")

    if the_user_sport.valid?
      the_user_sport.save
      redirect_to("/user_sports/#{the_user_sport.id}", { :notice => "User sport updated successfully."} )
    else
      redirect_to("/user_sports/#{the_user_sport.id}", { :alert => the_user_sport.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_user_sport = UserSport.where({ :id => the_id }).at(0)

    the_user_sport.destroy

    redirect_to("/user_sports", { :notice => "User sport deleted successfully."} )
  end
end
