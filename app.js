const express = require('express');
const expressLayouts = require('express-ejs-layouts');
const mysql = require('mysql');
const app = express();
const flash = require('connect-flash');
const session  = require('express-session');
const passport = require('passport');

//passport config
require('./config/passport')(passport);

//images middleware
app.use(express.static('.'));

// EJS
app.use(expressLayouts);
app.set('view engine', 'ejs');

// Bodyparser
// this lets you get data from form with request.body
app.use(express.urlencoded({ extended: false}));

// Express session
app.use(session({
  secret: 'secret',
  resave: true,
  saveUninitialized: true
}))

//passport middleware
app.use(passport.initialize());
app.use(passport.session());

// Connect flash
app.use(flash());

// Global Vars middleware
app.use((req, res, next) => {
    res.locals.pass_msg = req.flash('pass_msg');
    res.locals.fail_msg = req.flash('fail_msg');
    res.locals.error = req.flash('error');
    next();
})

// Routes
app.use('/', require('./routes/index'));
app.use('/users', require('./routes/users'));

app.listen('3000', () => {
    console.log('server started on port 3000');
});