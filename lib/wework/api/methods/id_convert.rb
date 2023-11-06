# @author anthony
# @date  2023/11/3
# @desc 

module Wework
  module Api
    module Methods
      module IdConvert


        def convert_external_userid(id_list)
          post 'externalcontact/get_new_external_userid', { external_userid_list: id_list }
        end

        def convert_user_id(id_list)
          post 'batch/userid_to_openuserid', { userid_list: id_list }
        end

      end
    end
  end
end