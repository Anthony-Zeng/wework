# @author anthony
# @date  2023/7/18
module Wework
  module Api
    module Methods
      module Kf

        def sync_msg(cursor: nil, token: nil, open_kfid: nil, voice_format: 0, limit: 1000)
          post('/kf/sync_msg', {
            cursor: cursor,
            token: token,
            limit: limit,
            voice_format: voice_format,
            open_kfid: open_kfid
          })
        end

        def send_msg(touser:, open_kfid:, msgtype:, msgid: nil, ext: {})
          post('/kf/send_msg', {
            touser: touser,
            open_kfid: open_kfid,
            msgid: msgid,
            msgtype: msgtype,
          }.merge(ext))
        end

        def account_list(offset: 0, limit: 50)
          post('/kf/account/list', {
            offset: offset,
            limit: limit
          })
        end

        def account_add(name:, media_id:)
          post('/kf/account/add', {
            name: name,
            media_id: media_id
          })
        end

        def customer_batchget(external_userid_list:, need_enter_session_context: 0)
          post('/kf/customer/batchget', {
            external_userid_list: external_userid_list,
            need_enter_session_context: need_enter_session_context
          })
        end

        def servicer_add(userid_list, department_id_list, open_kfid:)
          post('/kf/servicer/add', {
            userid_list: userid_list,
            department_id_list: department_id_list,
            open_kfid: open_kfid
          })
        end

      end
    end
  end
end
