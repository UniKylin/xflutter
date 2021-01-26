const Koa = require('koa');
const app = new Koa();
const mongoose = require('mongoose');
const { connectionUrl } = require('./config');
const routers = require('./routes');
const bodyParser = require('koa-bodyparser');

app.use(bodyParser());
routers(app);

mongoose.connect(
	connectionUrl,
	{
		useNewUrlParser: true,
		useUnifiedTopology: true,
	},
	() => {
		console.log(`>>>>>>>>> MongoDB Connection Success...👌👌👌👌👌👌👌👌👌👌`)
	}
);

app.listen(9000, () => console.log(`>>>>>>>>> Server running at: http://localhost:9000`));