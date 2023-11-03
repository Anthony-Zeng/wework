# @author anthony
# @date  2023/11/3
# @desc 
module Wework
  module Api
    module Methods
      module ExternalContact

        def external_contact_get(external_userid, cursor = nil)
          get 'externalcontact/get', params: { external_userid: external_userid, cursor: cursor }
        end

        def external_contact_group_list(status_filter:, userid_list:, cursor: nil, limit: 10)
          post 'externalcontact/groupchat/list', { status_filter: status_filter, owner_filter: { userid_list: userid_list }, cursor: cursor, limit: limit }
        end

        def external_contact_group_get(chat_id, need_name = 0)
          post 'externalcontact/groupchat/get', { chat_id: chat_id, need_name: need_name }
        end

      end
    end
  end
end
