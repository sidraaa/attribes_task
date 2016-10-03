<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Providers API</title>
        <script src="assets/js/jquery-3.1.0.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <?php echo link_tag('assets/css/bootstrap.css'); ?>

    </head>
    <style>
        @media only screen and (max-width: 500px) {
            .container{
                width:100%;
            }
        }
        .selected-style{
            border: 1px solid #ccc;
            border-radius: 3px;
            padding: 10px;
            margin: 3px;
            background-color: #fff;
        }
        .aside-style{
            border-right: 1px solid #ccc;
            height: 780px;
            width:420px;
        }
    </style>
    <body>
        <div class="container">
            <div class="page-header">
                <h1>  Page Header</h1>
            </div>
            <div class="row jumbotron">
                <div class="col-md-6 aside-style" >
                    <aside>
                        <select id="sp-dd" class="selected-style">
                            <option selected disabled> Select Speciality</option>
                            <?php echo ''; ?>
                        </select><br><br>
                        <select id="c-dd" class="selected-style">
                            <option selected disabled> Select City, State</option>
                        </select><br><br>
                        <button id="search-btn" class="btn btn-primary" style="text-align:center;">Search</button><br><br>
                        <button id="sort-btn" class="btn btn-primary" >Sort by Provider Name</button>
                    </aside>

                </div>
                <div class="col-md-6">
                    <form>
                        <input id="search-bar" type="text" name="search" placeholder="Search by Provider Name..">
                    </form>
                    <div id= 'result-pane' style="text-align: center; padding: 80px;" >
                        
                        
                    </div>

                </div>
            </div>
        </div>

    </body>

    <script src="<?php echo base_url('assets/js/js_file.js');?>" type="text/javascript"></script>
</html>