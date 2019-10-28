const router = require('express').Router();
const passport = require('passport');


router.get('/contacto',(req, res) => {
  res.render('contac.ejs'); 

})

router.get('/politicas-de-privacidad',(req, res) => {
  res.render('poli-priv.ejs'); 

})

router.get('/Productos/Producto',(req, res) => {
  res.render('Producto.ejs'); 

})

router.get('/Pay',(req, res) => {
  res.render('pay.ejs'); 

})

router.get('/Arduino',(req,res)=>{
  res.redirect('https://www.arduino.cc/'); 
})

router.get('/Rasbperry',(req,res)=>{
  res.redirect('https://www.raspberrypi.org/'); 
})

router.get('/Productos',(req, res) => {
  res.render('Produ.ejs'); 

})

router.get('/Mi-Cuenta',(req, res) => {
  res.render('cuenta.ejs'); 

})

router.get('/index1',(req, res) => {
  res.render('index1.ejs'); 

})

router.get('/', (req, res, next) => {
  res.render('index');
});

router.get('/signup', (req, res, next) => {
  res.render('signup');
});

router.post('/signup', passport.authenticate('local-signup', {
  successRedirect: '/profile',
  failureRedirect: 'signup',
  failureFlash: true
})); 

router.get('/signin', (req, res, next) => {
  res.render('signin');
});


router.post('/signin', passport.authenticate('local-signin', {
  successRedirect: '/profile',
  failureRedirect: '/signin',
  failureFlash: true
}));

router.get('/profile',isAuthenticated, (req, res, next) => {
  res.render('profile');
});

router.get('/logout', (req, res, next) => {
  req.logout();
  res.redirect('/');
});


function isAuthenticated(req, res, next) {
  if(req.isAuthenticated()) {
    return next();
  }

  res.redirect('/')
}



module.exports = router;
