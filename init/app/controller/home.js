'use strict';

const Controller = require('egg').Controller;

class HomeController extends Controller {
  async index() {
    const { ctx } = this;
    ctx.body = 'hi, egg';
  }
  async user() {
    const { ctx } = this;
    const result = await ctx.service.home.user();
    ctx.body = result
  }

}

module.exports = HomeController;
