<?php include('header.php'); ?>
<link rel="stylesheet" href="validation/dist/css/bootstrapValidator.css"/>

<script type="text/javascript" src="validation/dist/js/bootstrapValidator.js"></script>
<!-- =============================================== -->
<?php
include('form.php');
$frm = new formBuilder;      
?>
<div class="content">
    <div class="wrap">
        <div class="content-top" style="min-height:300px;padding:50px">
            <div class="col-md-4 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-heading">Register</div>
                    <div class="panel-body">
                        <form action="process_registration.php" method="post" id="form1">
                            <div class="form-group has-feedback">
                                <input name="name" type="text" size="25" placeholder="Name" class="form-control"/>
                                <span class="glyphicon glyphicon-user form-control-feedback"></span>
                            </div>
                            <div class="form-group has-feedback">
                                <input name="age" type="text" size="25" placeholder="Age" class="form-control"/>
                                <span class="glyphicon glyphicon-user form-control-feedback"></span>
                            </div>
                            <div class="form-group has-feedback">
                                <select name="gender" class="form-control">
                                    <option value>Select Gender</option>
                                    <option>Male</option>
                                    <option>Female</option>
                                </select>
                                <span class="glyphicon glyphicon-user form-control-feedback"></span>
                            </div>
                            <div class="form-group has-feedback">
                                <input name="phone" type="text" size="25" placeholder="Mobile Number" class="form-control"/>
                                <span class="glyphicon glyphicon-phone form-control-feedback"></span>
                            </div>
                            <div class="form-group has-feedback">
                                <input name="email" type="text" size="25" placeholder="Email" class="form-control"/>
                                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                            </div>
                            <div class="form-group has-feedback">
                                <input name="password" type="password" size="25" placeholder="Password" class="form-control"/>
                                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                            </div>
                            <div class="form-group has-feedback">
                                <input name="cpassword" type="password" size="25" placeholder="Confirm Password" class="form-control"/>
                                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary">Continue</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="clear"></div>    
        </div>
    </div>
</div>
<?php include('footer.php'); ?>
<script>
    <?php $frm->applyvalidations("form1"); ?>
</script>
