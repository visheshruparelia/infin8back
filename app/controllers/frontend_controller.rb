class FrontendController<ApplicationController
  def index
    @user=current_user
    @a=[]
    if(@user!=nil)
      @b=@user.id
    # print "SUPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP"
      i=0
      Reg.where(:user_id=>@user.id).each do |reg|
        @a[i]=reg.event_id
        print @a[i]
        i+=1
      end

    end
    # print @a.name
    # print "SUPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP"
  end
end