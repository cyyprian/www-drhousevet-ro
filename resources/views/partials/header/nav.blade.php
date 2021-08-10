<!-- Collect the nav links, forms, and other content for toggling -->
<div class="collapse navbar-collapse" id="navbar-menu">
    <ul class="nav navbar-nav navbar-left" data-in="fadeInDown" data-out="fadeOutUp">


        @foreach(F1::getDataOfModel('page') as $row)
            <li>
                <a href='{{ url($row->slug) }}'>{{ $row->title }}</a>
            </li>
        @endforeach
    
    

        <!-- <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" >Home</a>
            <ul class="dropdown-menu">
                <li><a href="index.html">Home Version One</a></li>
                <li><a href="index-2.html">Home Version Two</a></li>
                <li><a href="index-3.html">Home Version Three</a></li>
                <li><a href="index-4.html">Home Version Four</a></li>
                <li><a href="index-5.html">Home Version Five</a></li>
                <li><a href="index-6.html">Home Version Six</a></li>
                <li><a href="index-7.html">Home Version Seven</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" >Pages</a>
            <ul class="dropdown-menu">
                <li><a href="about-us.html">About Us</a></li>
                <li><a href="contact.html">Contact Us</a></li>
                <li><a href="404.html">Error Page</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" >Departments</a>
            <ul class="dropdown-menu">
                <li><a href="department.html">Department Version One</a></li>
                <li><a href="department-2.html">Department Version Two</a></li>
                <li><a href="department-single.html">Department Single</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" >Doctors</a>
            <ul class="dropdown-menu">
                <li><a href="doctors.html">Doctors Grid</a></li>
                <li><a href="doctors-carousel.html">Doctors Carousel</a></li>
                <li><a href="doctor-single.html">Doctor Single</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" >Blog</a>
            <ul class="dropdown-menu">
                <li><a href="blog-standard.html">Blog Standard</a></li>
                <li><a href="blog-with-sidebar.html">Blog With Sidebar</a></li>
                <li><a href="blog-2-colum.html">Blog Grid Two Colum</a></li>
                <li><a href="blog-3-colum.html">Blog Grid Three Colum</a></li>
                <li><a href="blog-single.html">Blog Single</a></li>
                <li><a href="blog-single-with-sidebar.html">Blog Single With Sidebar</a></li>
            </ul>
        </li>
        <li>
            <a href="contact.html">contact</a>
        </li> -->



    </ul>
</div><!-- /.navbar-collapse -->