const fs = require('fs')
const moment = require('moment')
const mkdirp = require('mkdirp')
const path = require('path')

const Controller = require('egg').Controller;
class UploadController extends Controller {
    async upload() {
        const { ctx } = this
        // 需要前往 config/config.default.js 设置 config.multipart 的 mode 属性为 file
        let file = ctx.request.files[0]

        // 声明存放资源的路径
        let uploadDir = ''

        try {
            // ctx.request.files[0] 表示获取第一个文件，若前端上传多个文件则可以遍历这个数组对象
            let f = fs.readFileSync(file.filepath)
            // 1.获取当前日期
            let day = moment(new Date()).format('YYYYMMDD')
            // 2.创建图片保存的路径
            let dir = path.join(this.config.uploadDir, day);
            let date = Date.now(); // 毫秒数
            await mkdirp(dir); // 不存在就创建目录
            // 返回图片保存的路径
            uploadDir = path.join(dir, date + path.extname(file.filename));
            // 写入文件夹
            fs.writeFileSync(uploadDir, f)
        } finally {
            // 清除临时文件
            ctx.cleanupRequestFiles();
        }

        ctx.body = {
            code: 200,
            msg: '上传成功',
            data: uploadDir.replace(/app/g, ''),
        }
    }
}

module.exports = UploadController;