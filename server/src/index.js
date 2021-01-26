const Koa = require('koa');
const app = new Koa();

app.use((ctx, next) => {
    ctx.body = `<h1>hi koa...</h1>`
});

app.listen(9000, () => console.log(`>>>>>>>>> Server running at: http://localhost:9000`));