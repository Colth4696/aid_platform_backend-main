class StatusesController < ApplicationController
    def index
        @statuses = Status.all
        if @statuses
          render json: {
            statuses: @statuses
          }
        else
          render json: {
            status: 500,
            errors: ['no status found']
          }
        end
    end
    def show
        @status = Status.find(params[:id])
       if @status
          render json: {
            status: @status
          }
        else
          render json: {
            status: 500,
            errors: ['status not found']
          }
        end
      end
    def create
        @status = Status.new(status_params)
        if @status.save
          render json: {
            status: :created,
            status: @status
          }
        else 
          render json: {
            status: 500,
            errors: @status.errors.full_messages
          }
        end
      end
      
    private
      
      def status_params
        params.require(:status).permit(:fulfilled, :volunteer_id, :request_id)
      end
    end
