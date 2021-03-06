class UserEvent < ActiveRecord::Base
  belongs_to :event

  module Status
    SAVED = 'saved'
    SEEN = 'seen'
  end


  def self.create_seen_status!(uuid:, event:)
    create!(
      uuid: uuid,
      event_id: event.id,
      status: Status::SEEN
    )
  end
end
