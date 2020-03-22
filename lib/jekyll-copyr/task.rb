# frozen_string_literal: true

module Jekyll
  module Copyr
    class Task
      attr_accessor :from, :to

      def initialize(task_hash = {})
        @from = task_hash.fetch "from", nil
        @to = task_hash.fetch "to", nil
      end
    end
  end
end
