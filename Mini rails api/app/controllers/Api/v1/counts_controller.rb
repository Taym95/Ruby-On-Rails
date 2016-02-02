module Api
  module V1
   class CountsController<ApplicationController
      respond_to :json

      def last
        respond_with Count.last
      end

      def show
        respond_with Count.all
      end

      def create
        count =params[:count]
        if count == 1
          respond_with Count.create(Count.last.count+1)
        else
          respond_with Count.create(Count.last.count-1)
        end
      end

      def update
        respond_with Count.update(params[:id],params[:count])
      end

      def destroy
        respond_with Count.destroy(params[:id])
      end
    end

  end
end