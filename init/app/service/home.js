'use strict';

const Service = require('egg').Service;

class HomeService extends Service {
    async user() {
        const { ctx, app } = this;
        const QUERY_STR = 'id, name';
        let sql = `select ${QUERY_STR} from list`; // 获取 id 的 sql 语句
        try {
            const result = await app.mysql.query(sql); // mysql 实例已经挂载到 app 对象下，可以通过 app.mysql 获取到。
            return result;
        } catch (error) {

            return null;
        }
    }
}
module.exports = HomeService;