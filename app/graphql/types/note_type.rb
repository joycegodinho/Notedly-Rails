module Types
  class NoteType < Types::BaseObject
    field :id, ID, null: false
    field :content, String, null: false
    # `posted_by` is automatically camelcased as `postedBy`
    # field can be nil, because we added users relationship later
    # "method" option remaps field to an attribute of Note model
    field :posted_by, UserType, null: true, method: :user
  end
end
