const UserModel = require('../model/UserModel');

class UserController {
  async list(ctx) {
    const { page_size = 50 } = ctx.query;
    console.table(ctx.query);
    const currentPage = Math.max(ctx.query.current_page * 1, 1) - 1;
    const pageSize = Math.max(page_size * 1, 1);
    ctx.body = await UserModel.find().limit(pageSize).skip(pageSize * currentPage );
  }

  async findById(ctx) {
    const User = await UserModel.findById(ctx.params.id);
    if (!User) {
      ctx.throw(404, '用户不存在');
    }
    ctx.body = User;
  }

  async create(ctx) {
    console.table(ctx.request.body)
    const User = await new UserModel(ctx.request.body).save();
    ctx.body = User;
  }

  async update(ctx) {
    const User = await UserModel.findByIdAndUpdate(ctx.params.id, ctx.request.body);
    if (!User) {
      ctx.throw(404, '用户不存在');
    }
    ctx.body = User;
  }

  async deleteById(ctx) {
    console.table(ctx.params.id)
    const User = await UserModel.findByIdAndRemove(ctx.params.id);
    if (!User) {
      ctx.throw(404, '用户不存在');
    }
    ctx.status = 200;
  }
}

module.exports = new UserController();