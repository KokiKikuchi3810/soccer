class ForumsController < ApplicationController


  before_action :authenticate_user!, only: [:new]

    def index
        @users = User.all.order(likes_count: "DESC").limit(3)
        @forums = Forum.all
        @all_ranks = Forum.find(Like.group(:forum_id).order('count(forum_id) desc').limit(5).pluck(:forum_id))
    end

    def link
    end

    def new
        @forum = Forum.new
    end

    def create
        forum = Forum.new(forum_params)
        forum.user_id = current_user.id

        if forum.save
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end

      def show 
        @forum = Forum.find(params[:id])
      end
  

      def J1
        @forums = Forum.all
        @user =User.all
      end
    
      def sapporo
        @forums = Forum.all
      end
    
      def sendai
        @forums = Forum.all
      end

      def kashima
        @forums = Forum.all
      end
    
      def urawa
        @forums = Forum.all
      end
    
      def kashiwa
        @forums = Forum.all
      end

      def fctokyo
        @forums = Forum.all
      end
    
      def kawasaki
        @forums = Forum.all
      end
    
      def yokohamafm
        @forums = Forum.all
      end

      def yokohamafc
        @forums = Forum.all
      end
    
      def syonan
        @forums = Forum.all
      end
    
      def shimizu
        @forums = Forum.all
      end

      def nagoya
        @forums = Forum.all
      end
    
      def gosaka
        @forums = Forum.all
      end
    
      def cosaka
        @forums = Forum.all
      end

      def kobe 
        @forums = Forum.all
      end
    
      def hiroshima
        @forums = Forum.all
      end
    
      def tokushima
        @forums = Forum.all
      end

      def fukuoka 
        @forums = Forum.all
      end
    
      def tosu
        @forums = Forum.all
      end

      def ouita
        @forums = Forum.all
      end

      def destroy
        forum = Forum.find(params[:id])
        forum.destroy
        redirect_to action: :index
      end


    
      private
      def forum_params
        params.require(:forum).permit(:about,:category)
      
      
      end
    
    end
