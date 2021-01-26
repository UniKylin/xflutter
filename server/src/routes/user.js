const Router = require('koa-router');
const router = new Router({
  prefix: '/users'
});

const { list, create, update, deleteById, findById } = require('../controller/UserController')

router.get('/', list);
router.get('/:id', findById);
router.post('/save', create);
router.put('/:id', update);
router.delete('/:id', deleteById);

module.exports = router;