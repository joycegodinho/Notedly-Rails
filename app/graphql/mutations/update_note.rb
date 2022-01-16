module Mutations
  class UpdateNote < BaseMutation
    # arguments passed to the `resolve` method
    argument :content, String, required: true
    argument :id, String, required: true

    # return type from the mutation
    type Types::NoteType

    def resolve(content: nil, id: nil)
      note = Note.find_by(id: id)
      note.update(content: content)
      return note

    end
  end
end
