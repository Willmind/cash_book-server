'use strict';

const Service = require('egg').Service;

class BillService extends Service {
    async add(params) {
        const {ctx, app} = this;
        try {
            // 往 bill 表中，插入一条账单数据
            const result = await app.mysql.insert('bill', params);
            return result;

        } catch (error) {
            console.log(error);
            return null;
        }

    }

    async list(id) {
        const {ctx, app} = this;
        const QUERY_STR = 'id, pay_type, amount, date, type_id, type_name, remark,user_id';
        let sql = `select ${QUERY_STR} from bill where user_id = '${id}'`;

        try {
            const result = await app.mysql.query(sql);
            return result;

        } catch (error) {
            console.log(error);
            return null;
        }

    }

    async detail(id, user_id){
        const { ctx, app } = this;
        try {
            const result = await app.mysql.get('bill', { id, user_id })
            return result;
        } catch (error) {
            console.log(error);
            return null;
        }


    }

    async update(params) {
        const { ctx, app } = this;
        try {
            /**
             * 第一个参数为需要操作的数据库表名称 bill；
             * 第二个参数为需要更新的数据内容，这里直接将参数展开；
             * 第三个为查询参数，指定 id 和 user_id
             * @type {*}
             */
            let result = await app.mysql.update('bill', {
                ...params
            }, {
                id: params.id,
                user_id: params.user_id
            });
            return result;
        } catch (error) {
            console.log(error);
            return null;
        }
    }

    async delete(id, user_id) {
        const { ctx, app } = this;
        try {
            /**
             * 接收两个参数，第一个是数据库表名称，第二个是查询条件。
             * 这里我们给的查询条件是账单 id 和用户 user_id
             * @type {*}
             */
            let result = await app.mysql.delete('bill', {
                id: id,
                user_id: user_id
            });
            return result;
        } catch (error) {
            console.log(error);
            return null;
        }
    }

}

module.exports = BillService;