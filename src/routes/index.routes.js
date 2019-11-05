const router = require('express').Router();
const passport = require('passport');

router.get('/view-pro',(req, res) =>{
  res.render('view-pro.ejs')
})

router.get('/registro',(req, res) => {
  res.render('registros.ejs'); 

})

router.get('/pagos',(req, res) => {
  res.render('pagos.ejs'); 

})

router.get('/cortes-3D',(req, res) => {
  res.render('cortes3d.ejs'); 

})

router.get('/Impresion-3D',(req, res) => {
  res.render('Impresion3d.ejs'); 

})

router.get('/Cortes-2D',(req, res) => {
  res.render('cortelaser.ejs'); 

})

router.get('/servicios',(req, res) => {
  res.render('servicios.ejs'); 

})

router.get('/concursos',(req, res) => {
  res.render('Concursos.ejs'); 

})

router.get('/pruebas',(req, res) => {
  res.render('pruebas.ejs'); 

})

router.get('/404',(req, res) => {
  res.render('404.ejs'); 

})

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
