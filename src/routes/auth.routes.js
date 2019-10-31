const router = require('express').Router();

router.get('/my-account', (req, res) => {
    res.render('cuenta');
});


module.exports = router;