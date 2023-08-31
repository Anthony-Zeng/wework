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

        def send_text_msg_on_event(code:, msgid: nil, content:)
          post '/kf/send_msg_on_event', {
            code: code,
            msgid: msgid,
            msgtype: 'text',
            text: {
              content: content
            }
          }.compact
        end

        def send_menu_msg_on_event(code: ,msgid: nil, msgmenu:)
          post '/kf/send_msg_on_event', {
            code: code,
            msgid: msgid,
            msgtype: 'msgmenu',
            msgmenu: msgmenu
          }.compact
        end

        # 客服账号管理
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

        def account_update(open_kfid:, name: nil, media_id: nil)
          post('/kf/account/update', {
            open_kfid: open_kfid,
            name: name,
            media_id: media_id
          })
        end

        def account_del(open_kfid:)
          post('/kf/account/del', {
            open_kfid: open_kfid
          })
        end

        def add_contact_way(open_kfid:, scene: nil)
          post('/kf/add_contact_way', {
            open_kfid: open_kfid,
            scene: scene
          })
        end

        def customer_batchget(external_userid_list:, need_enter_session_context: 0)
          post('/kf/customer/batchget', {
            external_userid_list: external_userid_list,
            need_enter_session_context: need_enter_session_context
          })
        end

        def servicer_add(userid_list:, department_id_list:, open_kfid:)
          post('/kf/servicer/add', {
            userid_list: userid_list,
            department_id_list: department_id_list,
            open_kfid: open_kfid
          })
        end

        def servicer_del(userid_list:, department_id_list:, open_kfid:)
          post('/kf/servicer/del', {
            userid_list: userid_list,
            department_id_list: department_id_list,
            open_kfid: open_kfid
          })
        end

        def servicer_list(open_kf_id)
          get '/kf/servicer/list', params: { open_kfid: open_kf_id }
        end

        ##
        # 分配客服会话
        #
        def service_state_get(open_kfid:, external_userid:)
          post('/kf/service_state/get', {
            open_kfid: open_kfid,
            external_userid: external_userid
          })
        end

        def service_state_trans(open_kfid:, external_userid:, service_state:, servicer_userid: nil)
          post('/kf/service_state/trans', {
            open_kfid: open_kfid,
            external_userid: external_userid,
            service_state: service_state,
            servicer_userid: servicer_userid
          })
        end

        ##
        # 统计
        #

        def get_corp_statistic(open_kfid:, start_time:, end_time:)
          post('/kf/get_corp_statistic', {
            open_kfid: open_kfid,
            start_time: start_time,
            end_time: end_time
          })
        end

        def get_servicer_statistic(open_kfid:, servicer_userid:, start_time:, end_time:)
          post('/kf/get_servicer_statistic', {
            open_kfid: open_kfid,
            servicer_userid: servicer_userid,
            start_time: start_time,
            end_time: end_time
          })
        end

      end
    end
  end
end
