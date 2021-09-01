'use strict';

/**
 * @param {Egg.Application} app - egg application
 */
module.exports = app => {

  const { router, controller,middleware } = app;
  const _jwt = middleware.jwtErr(app.config.jwt.secret); // 传入加密字符串

  // router.get('/', controller.home.index);
  router.post('/api/user/register', controller.user.register);//注册
  router.post('/api/user/login', controller.user.login); //登陆
  router.get('/api/user/test', _jwt,controller.user.test);

  router.get('/api/user/get_userinfo', _jwt, controller.user.getUserInfo); // 获取用户信息
  router.post('/api/user/edit_userinfo', _jwt, controller.user.editUserInfo); // 修改用户个性签名

};
