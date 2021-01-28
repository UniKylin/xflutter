const mongoose = require('mongoose');

const { Schema, model } = mongoose;

const userSchema = new Schema({
  // __v: {
  //   type: Number,
  //   select: false,
  // },
  // _id: {
  //   type: String,
  //   alias: 'id',
  //   select: false,
  // },
  name: {
    type: String,
    required: true,
  },
});

module.exports = model('user', userSchema);
