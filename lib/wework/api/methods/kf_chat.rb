# @author anthony
# @date  2023/7/18
module Wework
  module Api
    module Methods
      module KfChat

        def text_kf_chat_send(touser:, open_kfid:, msgid: nil, content:)
          send_msg({ touser: touser,
                     open_kfid: open_kfid,
                     msgid: msgid,
                     msgtype: 'text',
                     text: {
                       content: content
                     }
                   })
        end

        def image_kf_chat_send(touser:, open_kfid:, msgid: nil, media_id:)
          send_msg({ touser: touser,
                     open_kfid: open_kfid,
                     msgid: msgid,
                     msgtype: 'image',
                     image: {
                       media_id: media_id
                     }
                   })
        end

        def voice_kf_chat_send(touser:, open_kfid:, msgid: nil, media_id:)
          send_msg({ touser: touser,
                     open_kfid: open_kfid,
                     msgid: msgid,
                     msgtype: 'voice',
                     voice: {
                       media_id: media_id
                     }
                   })
        end

        def video_kf_chat_send(touser:, open_kfid:, msgid: nil, media_id:)
          send_msg({ touser: touser,
                     open_kfid: open_kfid,
                     msgid: msgid,
                     msgtype: 'video',
                     video: {
                       media_id: media_id
                     }
                   })
        end

        def file_kf_chat_send(touser:, open_kfid:, msgid: nil, media_id:)
          send_msg({ touser: touser,
                     open_kfid: open_kfid,
                     msgid: msgid,
                     msgtype: 'file',
                     file: {
                       media_id: media_id
                     }
                   })
        end

        def link_kf_chat_send(touser:, open_kfid:, msgid: nil, link:)
          send_msg({ touser: touser,
                     open_kfid: open_kfid,
                     msgid: msgid,
                     msgtype: 'link',
                     link: link
                   })
        end

        def miniprogram_kf_chat_send(touser:, open_kfid:, msgid: nil, miniprogram:)
          send_msg({ touser: touser,
                     open_kfid: open_kfid,
                     msgid: msgid,
                     msgtype: 'miniprogram',
                     miniprogram: miniprogram
                   })
        end

        def msgmenu_kf_chat_send(touser:, open_kfid:, msgid: nil, msgmenu:)
          send_msg({ touser: touser,
                     open_kfid: open_kfid,
                     msgid: msgid,
                     msgtype: 'msgmenu',
                     msgmenu: msgmenu
                   })
        end

        def location_kf_chat_send(touser:, open_kfid:, msgid: nil, location:)
          send_msg({ touser: touser,
                     open_kfid: open_kfid,
                     msgid: msgid,
                     msgtype: 'location',
                     location: location
                   })
        end

        private

        def send_msg(options = {})
          post('/kf/send_msg', options.compact)
        end
      end
    end
  end
end

