class CreateAttendBordController < ApplicationController
  protect_from_forgery except: :new
  def index
    @event_date = EventDate.new
    render action: 'index'
  end

  def new
    puts params[:post]
    event_date = EventDate.new(event_date_params)
    event_date_params['type'].each do |r|
      puts r
      event_date = r['event_date']
      event_date.event_id = 1
      event_date.delete_flg = 0
      event_date.save
    end
    
    # @event_date_comment = EventDateComment.new(event_date_comment_params)
    # @event = Event.new(event_params)
    # event = Event.new
    # event.event_name = "テスト"
    # event.event_content = "テスト"
    # event.delete_flg = 0
    # event.save
  end

  def event_date_params
    params.require(:event_date).permit(:event_date)
  end

  def event_date_comment_params
    
  end

  def event_params
    # params.require(:event).permit()
  end
end
