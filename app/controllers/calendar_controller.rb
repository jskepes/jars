class CalendarController < ApplicationController
  def show
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
    @gnotes_by_date = GNote.all.group_by(&:g_note_date)
  end
end
