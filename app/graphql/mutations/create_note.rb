module Mutations
  class CreateNote < BaseMutation
    # arguments passed to the `resolve` method
    argument :content, String, required: true

    # return type from the mutation
    type Types::NoteType

    def resolve(content: nil)
      Note.create!(
        content: content,
        user: context[:current_user]
      )
    end
  end
end
