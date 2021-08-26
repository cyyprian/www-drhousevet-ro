<?php
$page_about = F1::getRowDataOfModel('page', 'despre'); ?>
<h4 class="widget-title">Despre noi</h4>
<p style="text-align:justify;"> {{ $page_about->excerpt }} </p>
<a class="btn btn-md left-icon btn-gradient" href="{{ url($page_about->slug) }}"><i class="fas fa-plus"></i>Afla mai mult</a>
