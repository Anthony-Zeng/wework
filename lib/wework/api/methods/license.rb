# @author anthony
# @date  2023/11/13
# @desc 
module Wework
  module Api
    module Methods
      module License
        # 下单购买账号
        def create_new_order(corp_id:, buyer_userid:, account_count: {}, account_duration: {})
          post 'license/create_new_order', {
            corpid: corp_id,
            "buyer_userid": buyer_userid,
            account_count: account_count,
            account_duration: account_duration
          }
        end

        def create_renew_order_job(corp_id:, account_list: {}, job_id:)
          post 'license/create_renew_order_job', {
            corpid: corp_id,
            account_list: account_list,
            jobid: job_id
          }
        end

        # 激活账号
        def active_account(active_code, corp_id, user_id)
          post 'license/active_account', {
            corpid: corp_id,
            active_code: active_code,
            userid: user_id
          }
        end

        def get_active_info_by_code(corp_id, active_code)
          post 'license/get_active_info_by_code', {
            corp_id: corp_id,
            active_code: active_code
          }
        end

      end
    end
  end
end
