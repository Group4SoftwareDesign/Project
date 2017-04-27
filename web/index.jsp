<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Music Website</title>

        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="css/stylish-portfolio.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>

    <body>

        <!-- Navigation -->
        <a id="menu-toggle" href="#" class="btn btn-dark btn-lg toggle"><i class="fa fa-bars"></i></a>
        <nav id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <a id="menu-close" href="#" class="btn btn-light btn-lg pull-right toggle"><i class="fa fa-times"></i></a>
                <li class="sidebar-brand">
                    <a href="#top" onclick=$("#menu-close").click();>Start Bootstrap</a>
                </li>
                <li>
                    <a href="#top" onclick=$("#menu-close").click();>Home</a>
                </li>
                <li>
                    <a href="#about" onclick=$("#menu-close").click();>About</a>
                </li>
                <li>
                    <a href="#services" onclick=$("#menu-close").click();>Services</a>
                </li>
                <li>
                    <a href="#map" onclick=$("#menu-close").click();>Location</a>
                </li>
            </ul>
        </nav>

        <!-- Header -->
        <header id="top" class="header">
            <div class="text-vertical-center">
                <h1>Ms.X Music Class</h1>
                <h3>Lessons for Voice &amp; Piano</h3>
                <br>
                <a href="#about" class="btn btn-dark btn-lg">Learn More</a>
            </div>
        </header>

        <!-- About -->
        <section id="about" class="about">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2>All About Me!</h2>
                        <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vitae ex sit amet lacus mollis mattis. Donec interdum egestas lacus nec scelerisque. Mauris mollis urna nec metus ullamcorper sagittis. Nam lorem metus, cursus ac ex eget, malesuada vehicula nisi. In libero lorem, imperdiet a quam a, maximus posuere nibh. Morbi mattis ultricies metus, vel maximus ipsum euismod in. Nam tortor nisl, porta vitae fringilla gravida, consequat sit amet lectus. Proin eget eros varius, iaculis orci vitae, venenatis turpis.
                        </p>
                        <br><br>
                        <p>
                            Nulla ante eros, dictum eget finibus sed, tristique nec ligula. Aenean viverra tortor massa, sit amet pharetra ante cursus at. Nulla aliquam tempor libero ut consequat. Aliquam dui velit, dapibus eu urna ac, convallis lobortis elit. Praesent semper fringilla diam, vitae dignissim nisi lobortis quis. Fusce ac magna orci. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus quis velit elit. Vivamus scelerisque ut mi ac auctor. Integer semper consequat nunc, non tincidunt ante accumsan ut. Sed laoreet pellentesque orci. Integer libero augue, feugiat porttitor lectus id, dapibus accumsan velit.
                            <br><br>
                            <img src="img/logo.jpg" class="img-circle" alt="Myself" width="304" height="236">
                    </div>
                    </p>
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </section>

    <!-- Services -->
    <!-- The circle icons use Font Awesome's stacked icon classes. For more information, visit http://fontawesome.io/examples/ -->
    <section id="services" class="services bg-primary">
        <div class="container">
            <div class="row text-center">
                <div class="col-lg-10 col-lg-offset-1">
                    <h2>My Services</h2>
                    <hr class="small">
                    <div class="row">
                        <div class="col-md-6 col-sd-3">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-music fa-stack-1x text-primary"></i>
                                </span>
                                <h4>
                                    <strong>Piano</strong>
                                </h4>
                                <p>I offer piano lessons for...etc.</p>
                                <a href="#costs" class="btn btn-light">Learn More</a>
                            </div>
                        </div>
                        <div class="col-md-6 col-sd-3">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-microphone fa-stack-1x text-primary"></i>
                                </span>
                                <h4>
                                    <strong>Voice</strong>
                                </h4>
                                <p>I offer voice lessons for... etc.</p>
                                <a href="#costs" class="btn btn-light">Learn More</a>
                            </div>
                        </div>

                    </div>
                    <!-- /.row (nested) -->
                </div>
                <!-- /.col-lg-10 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </section>

    <!-- Callout -->
    <section id="costs" class="costs">
        <aside class="callout">
            <div class="text-vertical-center">
                <h1>Lesson Costs:</h1>
                <br>
                <h2>Piano: $20/hr</h2>
                <br>
                <h2>Voice: $25/hr</h2>
            </div>
        </aside>
    </section>

    <!-- Portfolio -->
    <section id="portfolio" class="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-lg-offset-1 text-center">
                    <h2>Schedule</h2>

                    <div class="container">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>Times</th>
                                    <th>Monday</th>
                                    <th>Tuesday</th>
                                    <th>Wednesday</th>
                                    <th>Thursday</th>
                                    <th>Friday</th>
                                    <th>Saturday</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>9:30-10:00 (am)</td>
                                    <td class="bg-danger"> Not Available </td>
                                    <td class="bg-danger"> </td>
                                    <td class="bg-danger"> </td>
                                    <td class="bg-danger"> </td>
                                    <td class="bg-danger"> </td>
                                    <td class="bg-success"> Available </td>

                                </tr>
                                <tr>
                                    <td>10:00-10:30 (am)</td>
                                    <td class="bg-danger"> </td>
                                    <td class="bg-danger"> </td>
                                    <td class="bg-danger"> </td>
                                    <td class="bg-danger"> </td>
                                    <td class="bg-danger"> </td>
                                    <td class="bg-success"> </td>

                                </tr>
                                <tr>
                                    <td>10:30-11:00 (am)</td>
                                    <td class="bg-danger"> </td>
                                    <td class="bg-danger"> </td>
                                    <td class="bg-danger"> </td>
                                    <td class="bg-danger"> </td>
                                    <td class="bg-danger"> </td>
                                    <td class="bg-danger"> </td>
                                </tr>
                                <tr>
                                    <td>11:00-11:30 (am)</td>
                                    <td class="bg-danger"> </td>
                                    <td class="bg-danger"> </td>
                                    <td class="bg-danger"> </td>
                                    <td class="bg-danger"> </td>
                                    <td class="bg-danger"> </td>
                                    <td class="bg-success"> </td>
                                </tr>
                                <tr>
                                    <td>3:30-4:00 (pm)</td>
                                    <td class="bg-success"> </td>
                                    <td class="bg-success"> </td>
                                    <td class="bg-success"> </td>
                                    <td class="bg-success"> </td>
                                    <td class="bg-success"> </td>
                                    <td class="bg-danger"> </td>

                                </tr>
                                <tr>
                                    <td>4:00-4:30 (pm)</td>
                                    <td class="bg-success"> </td>
                                    <td class="bg-success"> </td>
                                    <td class="bg-success"> </td>
                                    <td class="bg-success"> </td>
                                    <td class="bg-success"> </td>
                                    <td class="bg-danger"> </td>
                                </tr>
                                <tr>
                                    <td>4:30-5:00 (pm)</td>
                                    <td class="bg-success"> </td>
                                    <td class="bg-success"> </td>
                                    <td class="bg-success"> </td>
                                    <td class="bg-success"> </td>
                                    <td class="bg-success"> </td>
                                    <td class="bg-danger"> </td>
                                </tr>
                                <tr>
                                    <td>5:00-5:30 (pm)</td>
                                    <td class="bg-success"> </td>
                                    <td class="bg-success"> </td>
                                    <td class="bg-danger"> </td>
                                    <td class="bg-success"> </td>
                                    <td class="bg-success"> </td>
                                    <td class="bg-danger"> </td>
                                </tr>
                                <tr>
                                    <td>5:30-6:00 (pm)</td>
                                    <td class="bg-success"> </td>
                                    <td class="bg-success"> </td>
                                    <td class="bg-success"> </td>
                                    <td class="bg-success"> </td>
                                    <td class="bg-danger"> </td>
                                    <td class="bg-danger"> </td>
                                </tr>
                                <tr>
                                    <td>6:00-6:30 (pm)</td>
                                    <td class="bg-success"> </td>
                                    <td class="bg-success"> </td>
                                    <td class="bg-danger"> </td>
                                    <td class="bg-success"> </td>
                                    <td class="bg-success"> </td>
                                    <td class="bg-danger"> </td>
                                </tr>
                                <tr>
                                    <td>6:30-7:00 (pm)</td>
                                    <td class="bg-success"> </td>
                                    <td class="bg-danger"> </td>
                                    <td class="bg-success"> </td>
                                    <td class="bg-success"> </td>
                                    <td class="bg-success"> </td>
                                    <td class="bg-danger"> </td>
                                </tr>
                                <tr>
                                    <td>7:00-7:30 (pm)</td>
                                    <td class="bg-success"> </td>
                                    <td class="bg-success"> </td>
                                    <td class="bg-success"> </td>
                                    <td class="bg-danger"> </td>
                                    <td class="bg-success"> </td>
                                    <td class="bg-danger"> </td>
                                </tr>
                                <tr>
                                    <td>7:30-8:00 (pm)</td>
                                    <td class="bg-success"> </td>
                                    <td class="bg-success"> </td>
                                    <td class="bg-success"> </td>
                                    <td class="bg-success"> </td>
                                    <td class="bg-success"> </td>
                                    <td class="bg-danger"> </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <br><br><br>
                    <h2>Teacher Options</h2>
                    <!-- button to trigger add -->
                    <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#view">View Students</button>
                    <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#add">Add Student</button>
                    <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#search">Search Student</button>
                    
                    <br><br>
                    <h2>Contact</h2>
                     <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#contact">Contact Me</button>
                </div>
                <!-- /.col-lg-10 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </section>

    <!-- code for Modal (add) -->
    <div class="modal fade" id="add" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">


                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Add Students</h4>
                </div>
                <div class="modal-body">
                    <div class="main">
                        <a href="add.jsp">Add A Student</a>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <!-- update modal -->
    <div class="modal fade" id="update" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">


                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Update A Student</h4>
                </div>
                <div class="modal-body">
                    <p>
                    <div class="main">
                        <form name="addForm" action="addCar" method="get">

                            <label>Name:</label>
                            <br>
                            <input type="text" name="make" value="" />
                            <br>
                            <label>Address:</label>
                            <br>
                            <input type="text" name="model" value="" />
                            <br>
                            <label>City:</label>
                            <br>
                            <input type="text" name="color" value="" />
                            <br>
                            <label>State:</label>
                            <br>
                            <input type="text" name="year" value="" />
                            <br>
                            <label>Zip</label>
                            <br>
                            <input type="text" name="type" value="" />
                            <br>
                            <label>Phone:</label>
                            <br>
                            <input type="text" name="type" value="" />
                            <br>
                            <label>Email:</label>
                            <br>
                            <input type="text" name="type" value="" />
                            <br><br>
                            <div class="form-check">
                                <label>Student Type:</label>
                                <br>
                                <label class="form-check-label">
                                    <input type="radio" class="form-check-input" name="stype" id="stype" value=" " checked>
                                    V
                                </label>
                            </div>
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="radio" class="form-check-input" name="stype" id="stype" value=" ">
                                    P
                                </label>
                            </div>
                            <br>
                            <div class="form-group">
                                <label for="exampleSelect1">Student Level</label>
                                <select class="form-control" id="level" value=" ">
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                </select>
                            </div>
                            <br>
                            <div class="form-check">
                                <label>Gender:</label>
                                <br>
                                <label class="form-check-label">
                                    <input type="radio" class="form-check-input" name="gender" id="gender" value=" " checked>
                                    M
                                </label>
                            </div>
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="radio" class="form-check-input" name="gender" id="gender" value=" ">
                                    F
                                </label>
                            </div>

                            <br><br>

                            <input type="reset" name="reset" value="Clear" />
                            <input type="submit" name="submit" value="Submit" />
                        </form>
                    </div> 
                    </p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>
    </div>


    <!-- search modal -->
    <div class="modal fade" id="search" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">


                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Search Students</h4>
                    </div>
                    <div class="modal-body">
                        <div class="main">
                            <a href="search.jsp">Search Students</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!-- view modal -->
        <div class="modal fade" id="view" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">


                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">View Students</h4>
                    </div>
                    <div class="modal-body">
                        <div class="main">
                            <a href="read">View Students</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        
        <div class="modal fade" id="contact" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">


                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Contact Page</h4>
                </div>
                <div class="modal-body">
                    <p>
                    <div class="main">
                        <form name="addForm" action="addCar" method="get">

                            <label>Name:</label>
                            <br>
                            <input type="text" name="make" value="" />
                            <br>
                            <label>Email:</label>
                            <br>
                            <input type="text" name="type" value="" />
                            <br>
                            <label>Message:</label>
                            <br>                          
                            <input type="text" style="width: 75%; height: 100px;" class= "input-large">
                            <br><br>
                            <button type="button" class="btn btn-info btn-md" data-toggle="modal" data-target="">Clear</button>
                            <button type="button" class="btn btn-info btn-md" data-toggle="modal" data-target="">Submit</button>
                        </form>
                    </div> 
                    </p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>
    </div>



        <!-- Call to Action -->
        <aside class="call-to-action bg-primary">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <a class="twitter-timeline" data-width="500" data-height="500" href="https://twitter.com/affablebean">Tweets by affablebean</a> <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
                    </div>
                </div>
            </div>
        </aside>

        <!-- Map -->
        <section id="map" class="map">
            <iframe width="100%" height="100%"src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2980.6491927073594!2d-91.53711968472703!3d41.66332098680681!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x87e441f178969f6b%3A0x3f4fd5c31d76764f!2sUniversity+of+Iowa+Tippie+College+of+Business!5e0!3m2!1sen!2sus!4v1493307791545" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
            <br />
            <small>
                <a href="https://www.google.com/maps/embed/v1/place?q=University+of+Iowa+Tippie+College+of+Business,+East+Market+Street,+Iowa+City,+IA,+United+States&key=AIzaSyAN0om9mFmy1QN6Wf54tXAowK4eT0ZUPrU"></a>
            </small>
        </section>

        <!-- Footer -->
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-lg-10 col-lg-offset-1 text-center">
                        <h4><strong>The University of Iowa</strong>
                        </h4>
                        <p>21 E Market St
                            <br>Iowa City, IA 52242</p>
                        <ul class="list-unstyled">
                            <li><i class="fa fa-phone fa-fw"></i> (123) 456-7890</li>
                            <li><i class="fa fa-envelope-o fa-fw"></i> <a href="mailto:name@example.com">name@example.com</a>
                            </li>
                        </ul>
                        <br>
                        <ul class="list-inline">
                            <li>
                                <a href="#"><i class="fa fa-facebook fa-fw fa-3x"></i></a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-twitter fa-fw fa-3x"></i></a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-dribbble fa-fw fa-3x"></i></a>
                            </li>
                        </ul>
                        <hr class="small">
                        <p class="text-muted">Copyright &copy; Your Website 2014</p>
                    </div>
                </div>
            </div>
            <a id="to-top" href="#top" class="btn btn-dark btn-lg"><i class="fa fa-chevron-up fa-fw fa-1x"></i></a>
        </footer>

        <!-- jQuery -->
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

        <!-- Custom Theme JavaScript -->
        <script>
                        // Closes the sidebar menu
                        $("#menu-close").click(function (e) {
                            e.preventDefault();
                            $("#sidebar-wrapper").toggleClass("active");
                        });
                        // Opens the sidebar menu
                        $("#menu-toggle").click(function (e) {
                            e.preventDefault();
                            $("#sidebar-wrapper").toggleClass("active");
                        });
                        // Scrolls to the selected menu item on the page
                        $(function () {
                            $('a[href*=#]:not([href=#],[data-toggle],[data-target],[data-slide])').click(function () {
                                if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') || location.hostname == this.hostname) {
                                    var target = $(this.hash);
                                    target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                                    if (target.length) {
                                        $('html,body').animate({
                                            scrollTop: target.offset().top
                                        }, 1000);
                                        return false;
                                    }
                                }
                            });
                        });
                        //#to-top button appears after scrolling
                        var fixed = false;
                        $(document).scroll(function () {
                            if ($(this).scrollTop() > 250) {
                                if (!fixed) {
                                    fixed = true;
                                    // $('#to-top').css({position:'fixed', display:'block'});
                                    $('#to-top').show("slow", function () {
                                        $('#to-top').css({
                                            position: 'fixed',
                                            display: 'block'
                                        });
                                    });
                                }
                            } else {
                                if (fixed) {
                                    fixed = false;
                                    $('#to-top').hide("slow", function () {
                                        $('#to-top').css({
                                            display: 'none'
                                        });
                                    });
                                }
                            }
                        });
                        // Disable Google Maps scrolling
                        // See http://stackoverflow.com/a/25904582/1607849
                        // Disable scroll zooming and bind back the click event
                        var onMapMouseleaveHandler = function (event) {
                            var that = $(this);
                            that.on('click', onMapClickHandler);
                            that.off('mouseleave', onMapMouseleaveHandler);
                            that.find('iframe').css("pointer-events", "none");
                        }
                        var onMapClickHandler = function (event) {
                            var that = $(this);
                            // Disable the click handler until the user leaves the map area
                            that.off('click', onMapClickHandler);
                            // Enable scrolling zoom
                            that.find('iframe').css("pointer-events", "auto");
                            // Handle the mouse leave event
                            that.on('mouseleave', onMapMouseleaveHandler);
                        }
                        // Enable map zooming with mouse scroll when the user clicks the map
                        $('.map').on('click', onMapClickHandler);
        </script>

</body>

</html>
