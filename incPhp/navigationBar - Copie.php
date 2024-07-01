<?php
        include "admin/Sphp/conn.php";
        $pageDataAll = $pdo->query("SELECT pageData , (SELECT pageData  FROM pages WHERE pageId = 5 ) AS 'footer' , (SELECT pageData  FROM pages WHERE pageId = 4 ) AS 'contact' FROM pages WHERE pageId = 2")->fetch(PDO::FETCH_ASSOC); 
        $pageData = json_decode($pageDataAll["pageData"] , true);
        $pageFooter = json_decode($pageDataAll["footer"] , true);
        $pageFooterContact = json_decode($pageDataAll["contact"] , true);


        $services = $pdo->query("SELECT * FROM company_services WHERE shouldAppear = true ORDER BY serviceName ASC LIMIT 26 ")->fetchAll(PDO::FETCH_ASSOC);   
        $serviceList = array_slice($services , 0, 13);
        $homeServices = array_slice($services , 0, 8);
        $activitiesList = array_slice($services , 13 , 26);

        echo "<script>
            const favicon = document.getElementById('favicon');
            favicon.setAttribute('href' , 'images/logo/". $pageFooter["footer"]["logo"] ."')
        </script>";
?>

<div id="topTinyBarContainer">
    <div id="topTinyBarContactInfo"  >
        <!-- <span class="material-icons tineyTopBarIcons">alternate_email</span><span class="tineyTopBarIcon"><a href="email:">example@gmail.com</a> </span> -->
        <div id="topTinyBarContactInfoSec1">
            <span id="font_color_marg">Société de gardiennage Casablanca Maroc</span>
            <span class="material-icons tineyTopBarIcons" id="marg1">smartphone</span><a id="#text_derco" href="tel:<?php echo $pageFooterContact["mobile"] ?>" class="tineyTopBarIcon"><?php echo $pageFooterContact["mobile"] ?></a>
            <span class="material-icons tineyTopBarIcons" id="marg1">call</span><a id="#text_derco" href="tel:<?php echo $pageFooterContact["tel"] ?>" class="tineyTopBarIcon" id="#marg2"><?php echo $pageFooterContact["tel"] ?> &nbsp;</a>
            <a id="#text_derco" href="mailto:winbest.nettoyage.maroc@gmail.com" class="tineyTopBarIcon" id="#marg2"><img src="images/mail_winbest.PNG" alt="mail WINBEST NETTOYAGE"> </a>
        </div>
        <div id="topTinyBarContactInfoSec2">
            
                <?php echo $pageFooter["footer"]["socialMediaInfo"][0]["socialLink"] === "" ? "" : "<a style='text-decoration:none' href='". $pageFooter["footer"]["socialMediaInfo"][0]["socialLink"] ."' target='_blank'>  <i class='". $pageFooter["footer"]["socialMediaInfo"][0]["socialIcon"] ." socialMediaIcon'></i></a>" ?>
                <?php echo $pageFooter["footer"]["socialMediaInfo"][1]["socialLink"] === "" ? "" : "<a style='text-decoration:none' href='". $pageFooter["footer"]["socialMediaInfo"][1]["socialLink"] ."' target='_blank'>  <i class='". $pageFooter["footer"]["socialMediaInfo"][1]["socialIcon"] ." socialMediaIcon'></i></a>" ?>
                <?php echo $pageFooter["footer"]["socialMediaInfo"][2]["socialLink"] === "" ? "" : "<a style='text-decoration:none' href='". $pageFooter["footer"]["socialMediaInfo"][2]["socialLink"] ."' target='_blank'>  <i class='". $pageFooter["footer"]["socialMediaInfo"][2]["socialIcon"] ." socialMediaIcon'></i></a>" ?>
                <?php echo $pageFooter["footer"]["socialMediaInfo"][3]["socialLink"] === "" ? "" : "<a style='text-decoration:none' href='". $pageFooter["footer"]["socialMediaInfo"][3]["socialLink"] ."' target='_blank'>  <i class='". $pageFooter["footer"]["socialMediaInfo"][3]["socialIcon"] ." socialMediaIcon'></i></a>" ?>
                <?php echo $pageFooter["footer"]["socialMediaInfo"][4]["socialLink"] === "" ? "" : "<a style='text-decoration:none' href='". $pageFooter["footer"]["socialMediaInfo"][4]["socialLink"] ."' target='_blank'>  <i class='". $pageFooter["footer"]["socialMediaInfo"][4]["socialIcon"] ." socialMediaIcon'></i></a>" ?>
                <?php echo $pageFooter["footer"]["socialMediaInfo"][5]["socialLink"] === "" ? "" : "<a style='text-decoration:none' href='". $pageFooter["footer"]["socialMediaInfo"][5]["socialLink"] ."' target='_blank'>  <i class='". $pageFooter["footer"]["socialMediaInfo"][5]["socialIcon"] ." socialMediaIcon'></i></a>" ?>
            
        </div>
        
    </div>
</div>
<nav id="navigation">
    <div id="logoAndSearchInputCon">
        <div id="logoAndSearchInputHolder">
            <div id="nav-logoContainer">
                <img id="point" src="images/logo/<?php echo $pageFooter["footer"]["logo"] ?>" alt="page logo" onclick="window.open('/' , '_Self')">
            </div>
            <!-- <div id="nav-searchInputCon">
                
                    <form action="">
                        <input type="text" placeholder="looking for">
                        <button><span class="material-icons">search</span></button>
                    </form>
                
            </div> -->
        </div>
    </div>
    <div id="mobile-showMenuBtnCon">
        <button id="mobile-showMenuBtn"><span class="material-icons">menu</span></button>
    </div>
    

    <!-- <div id="nav-searchBtnCon" >
        <button style="visibility:hidden" id="navSearchBtn"><span class="material-icons">search</span></button>
        <button id="closeNavSearchBtn"><span class="material-icons">close</span></button>
    </div> -->
   
    
    
    <div id="default-menu">
        <ul id="defaultMenuList">
            <li class="navHover"> <a class="navItem" href="/">ACCUEIL</a> </li>
            <li class="navHover"> <a class="navItem" href="a-propos-nous.html">A PROPOS </a> 
              <!--<ul class="defaultMenuSubList" >
                <li><a href="about.php">NOS VALEURS ET ENGAGEMENTS</a></li>
                <li><a href="about.php">POURQUOI NOUS CHOISIR</a></li>
              </ul>-->
            </li>
            <li class="navHover"> <a href="particuliers.html">PARTICULIERS</a></li>
            <li class="navHover"> <a href="professionels.html">PROFESSIONNELS</a></li>
            <li class="navHover"> <a class="navItem" href="#" id="point1">SERVICES</a><span class="material-icons">expand_more</span>
            <div class="defaultMenuSubListBig" >
                <?php foreach ($serviceList as $service): ?>
                    <a style="" class="servicesub" href="services/<?php echo $service["serviceUrl"]?>"><?php echo $service["serviceName"] ?></a> 
                <?php endforeach; ?>  
            </div>
            </li>
            <li class="navHover"> <a class="navItem" href="#" id="point1">ACTIVITIES</a><span class="material-icons">expand_more</span>
            <div class="defaultMenuSubListBig" >
                <?php foreach ($activitiesList as $activity): ?>
                    <a style="" class="servicesub" href="services/<?php echo $activity["serviceUrl"] ?>"><?php echo $activity["serviceName"] ?></a>
                <?php  endforeach; ?>  
            </div>
            </li>
            <li class="navHover"> <a class="navItem" href="nettoyage.html">BLOG</a></li>
            <li class="navHover"> <a class="navItem" href="contactez-societe-nettoyage.php">CONTACTEZ-NOUS</a></li>
            <li class=""> <a class="navItem"  href="devis-societe-nettoyage.php" id="backgrou">DEMANDEZ DEVIS</a></li>
        </ul>
        
        <!-- <button id="defaultMenuShowSearchBtn"><span class="material-icons">search</span></button> -->
    </div>
</nav>
<nav id="mobileNavCon">
    <div id="mobileNavImgCon">
        <button id="closeMobileNavBtn"><span class="material-icons">close</span></button>
    </div>
    <ul>
            <li><span class="material-icons mobileNavItemIcon">home</span><a href="">ACCUEIL</a></li>
            <li><span class="material-icons mobileNavItemIcon">info</span><a href="a-propos-nous.html">A PROPOS </a></li>
            <li><span class="material-icons mobileNavItemIcon">info</span><a href="particuliers.html">PARTICULIERS</a></li>
            <li> <span class="material-icons mobileNavItemIcon">info</span><a href="professionels.html">PROFESSIONNELS</a></li>
            <!-- <div class="mobileMenuToExpand">
                <ul>
                    <li> <span class="material-icons">verified</span> <a href="#">Nos valeurs et engagements</a></li>
                    <li> <span class="material-icons">tungsten</span> <a href="#">Pourquoi nous choisir</a></li>
                </ul>
            </div> -->
            <!-- <li><span class="material-icons mobileNavItemIcon">groups</span><a href="#">PROFESSIONNELS</a></li> -->
            <li><span class="material-icons mobileNavItemIcon">work</span><a href="#">SERVICES</a><span class="material-icons mobileExpanMoreMenu">expand_more</span></li>
            <div class="mobileMenuToExpand">
                <ul>
                    <?php 
                        foreach($services as $service):
                    ?>
                    <li><span class="material-icons">cleaning_services</span> <a href="services/<?php echo $service["serviceUrl"]?>"><?php echo $service["serviceName"] ?></a></li>
                   <?php endforeach; ?>
                </ul>
            </div>
            <li><span class="material-icons mobileNavItemIcon">engineering</span><a href="#">ACTIVITES</a><span class="material-icons mobileExpanMoreMenu">expand_more</span></li>
            <div class="mobileMenuToExpand">
                <ul>
                    <?php 
                        foreach($activitiesList as $activity):
                    ?>
                    <li> <span class="material-icons">cleaning_services</span> <a href="services/<?php echo $activity["serviceUrl"] ?>"><?php echo $activity["serviceName"] ?></a></li>
                   <?php endforeach; ?>
                    
                    
                </ul>
            </div>
            <li><span class="material-icons mobileNavItemIcon">grid_view</span><a href="nettoyage.html">BLOG</a></li>
            <li><span class="material-icons mobileNavItemIcon">call</span><a href="contactez-societe-nettoyage.php">CONTACTEZ-NOUS</a></li>
            <li><span class="material-icons-outlined">receipt_long</span><a href="devis-societe-nettoyage.php">DEVIS</a></li>
            
        </ul> 
</nav>
<div id="mobileNavShadow"></div>
<script type="text/javascript" src="js/navigation.js"></script>
