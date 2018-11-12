SET NAMES UTF8;
DROP DATABASE IF EXISTS mac;
CREATE DATABASE mac CHARSET=UTF8;
USE mac;

#轮播图
CREATE TABLE index_banner(
   id INT PRIMARY KEY AUTO_INCREMENT,
   img VARCHAR(255),
   url  VARCHAR(255)
);
INSERT INTO index_banner VALUES(NULL,"轮播1","http://127.0.0.1:3000/img/index/HP-Banner_NLD_PC-1600x470.jpg");
INSERT INTO index_banner VALUES(NULL,"轮播2","http://127.0.0.1:3000/img/index/HP-Banner-PC.jpg");
INSERT INTO index_banner VALUES(NULL,"轮播3","http://127.0.0.1:3000/img/index/HP-Banner-PC-1_1.jpg");

#SELECT id,img,url FROM index_banner;

#明星新品
CREATE TABLE index_new(
   id INT PRIMARY KEY AUTO_INCREMENT,
   img VARCHAR(255),
   img_url  VARCHAR(255)
);
INSERT INTO index_new VALUES(NULL,"图片1","http://127.0.0.1:3000/img/index/MG-BITCH-all-collections-640x640(2).jpg");
INSERT INTO index_new VALUES(NULL,"图片2","http://127.0.0.1:3000/img/index/extradimension_640X640(2).jpg");
INSERT INTO index_new VALUES(NULL,"图片3","http://127.0.0.1:3000/img/index/LR-AllCollection-640x640(2).jpg");
INSERT INTO index_new VALUES(NULL,"图片4","http://127.0.0.1:3000/img/index/SL_640x640.jpg");
INSERT INTO index_new VALUES(NULL,"图片5","http://127.0.0.1:3000/img/index/newhomepage_lipstick_cta_384x384.jpg");
INSERT INTO index_new VALUES(NULL,"图片6","http://127.0.0.1:3000/img/index/newhomepage_eyeshadow_CTA_384x483.jpg");
INSERT INTO index_new VALUES(NULL,"图片7","http://127.0.0.1:3000/img/index/newhomepage_skincare_cta_384x384.jpg");
INSERT INTO index_new VALUES(NULL,"图片8","http://127.0.0.1:3000/img/index/newhomepage_foundation_CTA_384x483.jpg");

#SELECT id,img,img_url FROM index_new;

#总分类
CREATE TABLE produdct_family(
   family_id INT PRIMARY KEY AUTO_INCREMENT,
   p_title VARCHAR(255)

);
INSERT INTO produdct_family VALUES(NULL,"唇部");
INSERT INTO produdct_family VALUES(NULL,"眼部");
INSERT INTO produdct_family VALUES(NULL,"脸部");



#唇部热卖
CREATE TABLE mouth_product_hot(
   pid INT PRIMARY KEY AUTO_INCREMENT,
   p_title VARCHAR(255),
   p_subtitle  VARCHAR(255),
   color VARCHAR(255),
   color_family VARCHAR(255),
   score VARCHAR(255),
   img_url VARCHAR(255),
   p_price VARCHAR(255),
   family_id VARCHAR(255)
);
INSERT INTO mouth_product_hot VALUES(NULL,"柔感哑光唇膏","MATTE LIPSTICK","CHILI|小辣椒","[柔感哑光]","95","http://127.0.0.1:3000/img/mouth/mac_sku_M2LP01_280x320_0.jpg","170",1);
INSERT INTO mouth_product_hot VALUES(NULL,"水漾润泽唇膏","Lustre Lipstick","Cockney|斩男水红色","[水漾润泽]","96","http://127.0.0.1:3000/img/mouth/mac_sku_M31AG7_280x320_0.jpg","170",1);
INSERT INTO mouth_product_hot VALUES(NULL,"水漾润泽唇膏","MATTE LIPSTICK","Lustre Lipstick","[水漾润泽]","90","http://127.0.0.1:3000/img/mouth/mac_sku_M31A14_280x320_0.jpg","170",1);
INSERT INTO mouth_product_hot VALUES(NULL,"哑光唇膏","Retro Matte Lipstick","Ruby Woo|雾面正红色","[复古哑光]","95","http://127.0.0.1:3000/img/mouth/mac_sku_M0N904_280x320_0.jpg","170",1);


#SELECT pid,p_title,p_subtitle,color,color_family,score,img_url,p_price FROM mouth_product_hot;


#眼部热卖
CREATE TABLE eye_product_hot(
   pid INT PRIMARY KEY AUTO_INCREMENT,
   p_title VARCHAR(255),
   p_subtitle  VARCHAR(255),
   color VARCHAR(255),
   color_family VARCHAR(255),
   score VARCHAR(255),
   img_url VARCHAR(255),
   p_price VARCHAR(255),
   family_id VARCHAR(255)
);
INSERT INTO eye_product_hot VALUES(NULL,"魅可个性眼彩盘","豹纹盘Mischief Minx","Dazzlelight","[Veluxe Pearl]","90","http://127.0.0.1:3000/img/index/mac_sku_S6HC04_280x320_0.jpg","170",2);
INSERT INTO eye_product_hot VALUES(NULL,"魅可个性眼彩盘","糖果盘|Prissy Princess","Dazzlelight","[Veluxe Pearl]","90","http://127.0.0.1:3000/img/index/mac_sku_S6HC06_280x320_0.jpg","170",2);
INSERT INTO eye_product_hot VALUES(NULL,"魅可时尚焦点小眼影","Eye Shadow","Dazzlelight","[Veluxe Pearl]","88","http://127.0.0.1:3000/img/index/mac_sku_MXER02_280x320_0.jpg","170",2);
INSERT INTO eye_product_hot VALUES(NULL,"魅可时尚焦点小眼影","Eye Shadow","Passionate","[Matte]","90","http://127.0.0.1:3000/img/index/mac_sku_M7J201_280x320_0.jpg","170",2);

#脸部热卖
CREATE TABLE face_product_hot(
   pid INT PRIMARY KEY AUTO_INCREMENT,
   p_title VARCHAR(255),
   p_subtitle  VARCHAR(255),
   color VARCHAR(255),
   color_family VARCHAR(255),
   score VARCHAR(255),
   img_url VARCHAR(255),
   p_price VARCHAR(255),
   family_id VARCHAR(255)
);
INSERT INTO face_product_hot VALUES(NULL,"魅可海洋亮白气垫霜","SPF50/PA++++ SPF 50/PA++++ ","Lightful C + Coral Grass","Cushion Compact","90","http://127.0.0.1:3000/img/index/mac_sku_S5JM04_280x320_0.jpg","320",3);
INSERT INTO face_product_hot VALUES(NULL,"魅可定制无瑕粉底液","Studio Fix Fluid SPF15/PA++","Foundation Skin","Balancing Complex","90","http://127.0.0.1:3000/img/index/mac_sku_MYH209_280x320_1_.jpg","320",3);
INSERT INTO face_product_hot VALUES(NULL,"魅可定制柔雾保湿粉饼","SPF15/PA+","Fortified Moisture","Fusion Complex","96","http://127.0.0.1:3000/img/index/mac_sku_MXER02_280x320_0.jpg","400",3);
INSERT INTO face_product_hot VALUES(NULL,"魅可定制水漾轻盈粉底液","SPF30/PA++","Studio Waterweight","SPF 30 Foundation","92","http://127.0.0.1:3000/img/index/mac_sku_MXCT03_280x320_0.jpg","400",3);



#详情页表
CREATE TABLE lip_detail(
   pid INT PRIMARY KEY AUTO_INCREMENT,
   lip_color  VARCHAR(255),
   lip_color_title  VARCHAR(255),
   lip_sub_title VARCHAR(255),
   lip_img VARCHAR(255),
   lip_bigimg VARCHAR(255),
   color_img  VARCHAR(255)
);
INSERT INTO lip_detail VALUES(NULL," Outspoken pink[Lustre]","Lustering","Lustering","http://127.0.0.1:3000/img/detail/mac_sku_M31A04_640x600_0.jpg","http://127.0.0.1:3000/img/detail-big/mac_sku_M31A04_640x600_0.jpg","http://127.0.0.1:3000/img/detail/mac_smoosh_M31A04.jpg");
INSERT INTO lip_detail VALUES(NULL,"玫瑰紫红色","Plumful","Plumful","http://127.0.0.1:3000/img/detail/mac_sku_M31A01_640x600_0.jpg","http://127.0.0.1:3000/img/detail-big/mac_sku_M31A01_640x600_0.jpg","http://127.0.0.1:3000/img/detail/mac_smoosh_M31A01.jpg");

INSERT INTO lip_detail VALUES(NULL,"蜜桃肉桂色[水漾润泽]","Touch","Touch","http://127.0.0.1:3000/img/detail/mac_sku_M31A20_640x600_0.jpg","http://127.0.0.1:3000/img/detail-big/mac_sku_M31A20_640x600_0.jpg","http://127.0.0.1:3000/img/detail/mac_smoosh_M31A20.jpg");
INSERT INTO lip_detail VALUES(NULL,"元气番茄红[水漾润泽]","Lady Bug 元气番茄红","Lady Bug 元气番茄红","http://127.0.0.1:3000/img/detail/mac_sku_M31A12_640x600_0.jpg","http://127.0.0.1:3000/img/detail-big/mac_sku_M31A12_640x600_0.jpg","http://127.0.0.1:3000/img/detail/mac_smoosh_M31A12.jpg");
INSERT INTO lip_detail VALUES(NULL,"温热褐色浆果[Lustre]","Spice It Up!","Spice It Up!","http://127.0.0.1:3000/img/detail/mac_sku_M31A06_640x600_0.jpg","http://127.0.0.1:3000/img/detail-big/mac_sku_M31A06_640x600_0.jpg","http://127.0.0.1:3000/img/detail/mac_smoosh_M31A06.jpg");
INSERT INTO lip_detail VALUES(NULL,"粉红葡萄柚色[水漾润泽]","See Sheer 水漾西柚色","See Sheer 水漾西柚色","http://127.0.0.1:3000/img/detail/mac_sku_M31A14_640x600_0.jpg","http://127.0.0.1:3000/img/detail-big/mac_sku_M31A14_640x600_0.jpg","http://127.0.0.1:3000/img/detail/mac_smoosh_M31A14.jpg");
INSERT INTO lip_detail VALUES(NULL,"奶油咖啡色[水漾润泽]","Fresh Brew","Fresh Brew","http://127.0.0.1:3000/img/detail/mac_sku_M31A09_640x600_0.jpg","http://127.0.0.1:3000/img/detail-big/mac_sku_M31A09_640x600_0.jpg","http://127.0.0.1:3000/img/detail/mac_smoosh_M31A09.jpg");
INSERT INTO lip_detail VALUES(NULL,"带多重珠光的纯粹水红色","Cockney 斩男水红色","Cockney 斩男水红色","http://127.0.0.1:3000/img/detail/mac_sku_M31AG7_640x600_0.jpg","http://127.0.0.1:3000/img/detail-big/mac_sku_M31AG7_640x600_0.jpg","http://127.0.0.1:3000/img/detail/mac_smoosh_M31AG7.jpg");
INSERT INTO lip_detail VALUES(NULL,"幻想玫瑰紫红色","Capricious","Capricious","http://127.0.0.1:3000/img/detail/mac_sku_M31A21_640x600_0.jpg","http://127.0.0.1:3000/img/detail-big/mac_sku_M31A21_640x600_0.jpg","http://127.0.0.1:3000/img/detail/mac_smoosh_M31A21.jpg");

CREATE TABLE allproduct(
   pid INT PRIMARY KEY AUTO_INCREMENT,
   p_title VARCHAR(255),
   p_subtitle  VARCHAR(255),
   p_color VARCHAR(255),
   color_family VARCHAR(255),
   img_url VARCHAR(255),
   p_price VARCHAR(255),
   color_id VARCHAR(255)
);
INSERT INTO allproduct VALUES(NULL," 限量迷你唇膏心机美盒","LOOK IN A BOX",NULL,NULL,"http://127.0.0.1:3000/img/mouth/mac_sku_S7GX01_280x320_0.jpg","550",1);
INSERT INTO allproduct VALUES(NULL,"魅可限量9色唇盘","LIP X 9: FUTURE EMOTIONS",NULL,NULL,"http://127.0.0.1:3000/img/mouth/mac_sku_S7C001_280x320_0.jpg","420",1);
INSERT INTO allproduct VALUES(NULL," 限量迷你唇膏心机美盒","LOOK IN A BOX",NULL,NULL,"http://127.0.0.1:3000/img/mouth/mac_sku_S7GX01_280x320_0.jpg","550",1);
INSERT INTO allproduct VALUES(NULL,"魅可限量9色唇盘","LIP X 9: FUTURE EMOTIONS",NULL,NULL,"http://127.0.0.1:3000/img/mouth/mac_sku_S7C001_280x320_0.jpg","420",1);
INSERT INTO allproduct VALUES(NULL," 限量迷你唇膏心机美盒","LOOK IN A BOX",NULL,NULL,"http://127.0.0.1:3000/img/mouth/mac_sku_S7GX01_280x320_0.jpg","550",1);
INSERT INTO allproduct VALUES(NULL,"魅可限量9色唇盘","LIP X 9: FUTURE EMOTIONS",NULL,NULL,"http://127.0.0.1:3000/img/mouth/mac_sku_S7C001_280x320_0.jpg","420",1);
INSERT INTO allproduct VALUES(NULL," 限量迷你唇膏心机美盒","LOOK IN A BOX",NULL,NULL,"http://127.0.0.1:3000/img/mouth/mac_sku_S7GX01_280x320_0.jpg","550",1);
INSERT INTO allproduct VALUES(NULL,"魅可限量9色唇盘","LIP X 9: FUTURE EMOTIONS",NULL,NULL,"http://127.0.0.1:3000/img/mouth/mac_sku_S7C001_280x320_0.jpg","420",1);

INSERT INTO allproduct VALUES(NULL,"柔感哑光唇膏","MATTE LIPSTICK","CHILI|小辣椒","[柔感哑光]","http://127.0.0.1:3000/img/mouth/mac_sku_M0N944_280x320_0.jpg","170",2);
INSERT INTO allproduct VALUES(NULL,"哑光唇膏","RETRO MATTE LIPSTICK","RUBY WOO|雾面正红色","[柔感哑光]","http://127.0.0.1:3000/img/mouth/mac_sku_M0N904_280x320_0.jpg","170",2);
INSERT INTO allproduct VALUES(NULL,"水漾润泽唇膏","LUSTRE LIPSTICK","COCKNEY|斩男水红色","[水漾润泽]","http://127.0.0.1:3000/img/mouth/mac_sku_M31AG7_280x320_0.jpg","170",2);
INSERT INTO allproduct VALUES(NULL,"柔感哑光唇膏","MATTE LIPSTICK","DIVA|姨妈色","[柔感哑光]","http://127.0.0.1:3000/img/mouth/mac_sku_M0N944_280x320_0.jpg","170",2);
INSERT INTO allproduct VALUES(NULL,"柔感哑光唇膏","RETRO MATTE LIPSTICK","LADY DANGER|血橙色","[柔感哑光]","http://127.0.0.1:3000/img/mouth/mac_sku_M2LP15_280x320_0.jpg","170",2);
INSERT INTO allproduct VALUES(NULL,"柔感哑光唇膏","LUSTRE LIPSTICK","D FOR DANGER","[柔感哑光]","http://127.0.0.1:3000/img/mouth/mac_sku_M2LP3R_280x320_0.jpg","170",2);
INSERT INTO allproduct VALUES(NULL,"润采诱光唇膏","CREMESHEEN LIPSTICK","DARE YOU|细闪红宝石","[润采诱光]","http://127.0.0.1:3000/img/mouth/mac_sku_MCF316_280x320_0.jpg","170",2);
INSERT INTO allproduct VALUES(NULL,"润采诱光唇膏","CREMESHEEN LIPSTICK","DOZEN CARNATIONS|锦鲤色","[润采诱光]","http://127.0.0.1:3000/img/mouth/mac_sku_MCF31A_280x320_0.jpg","170",2);
INSERT INTO allproduct VALUES(NULL,"水漾润泽唇膏","LUSTRE LIPSTICK","LADY BUG|元气番茄红","[水漾润泽]","http://127.0.0.1:3000/img/mouth/mac_sku_M31A12_280x320_0.jpg","170",2);
INSERT INTO allproduct VALUES(NULL,"水漾润泽唇膏","LUSTRE LIPSTICK","SPICE IT UP![LUSTRE]","[水漾润泽]","http://127.0.0.1:3000/img/mouth/mac_sku_M31A06_280x320_0.jpg","170",2);
INSERT INTO allproduct VALUES(NULL,"显色丰润唇膏","AMPLIFIED LIPSTICK","DUBONNET [AMPLIFIED CREME]","[显色丰润]","http://127.0.0.1:3000/img/mouth/mac_sku_M3LN11_280x320_0.jpg","170",2);
INSERT INTO allproduct VALUES(NULL,"柔感哑光唇膏","MATTE LIPSTICK","RUSSIAN RED|气质复古红","[柔感哑光]","http://127.0.0.1:3000/img/mouth/mac_sku_M2LP06_280x320_0.jpg","170",2);
INSERT INTO allproduct VALUES(NULL,"柔感哑光唇膏","MATTE LIPSTICK","CHILI|小辣椒","[柔感哑光]","http://127.0.0.1:3000/img/mouth/mac_sku_M0N944_280x320_0.jpg","170",2);
INSERT INTO allproduct VALUES(NULL,"哑光唇膏","RETRO MATTE LIPSTICK","RUBY WOO|雾面正红色","[柔感哑光]","http://127.0.0.1:3000/img/mouth/mac_sku_M0N904_280x320_0.jpg","170",2);
INSERT INTO allproduct VALUES(NULL,"水漾润泽唇膏","LUSTRE LIPSTICK","COCKNEY|斩男水红色","[水漾润泽]","http://127.0.0.1:3000/img/mouth/mac_sku_M31AG7_280x320_0.jpg","170",2);
INSERT INTO allproduct VALUES(NULL,"柔感哑光唇膏","MATTE LIPSTICK","DIVA|姨妈色","[柔感哑光]","http://127.0.0.1:3000/img/mouth/mac_sku_M0N944_280x320_0.jpg","170",2);
INSERT INTO allproduct VALUES(NULL,"柔感哑光唇膏","RETRO MATTE LIPSTICK","LADY DANGER|血橙色","[柔感哑光]","http://127.0.0.1:3000/img/mouth/mac_sku_M2LP15_280x320_0.jpg","170",2);
INSERT INTO allproduct VALUES(NULL,"柔感哑光唇膏","LUSTRE LIPSTICK","D FOR DANGER","[柔感哑光]","http://127.0.0.1:3000/img/mouth/mac_sku_M2LP3R_280x320_0.jpg","170",2);
INSERT INTO allproduct VALUES(NULL,"润采诱光唇膏","CREMESHEEN LIPSTICK","DARE YOU|细闪红宝石","[润采诱光]","http://127.0.0.1:3000/img/mouth/mac_sku_MCF316_280x320_0.jpg","170",2);
INSERT INTO allproduct VALUES(NULL,"润采诱光唇膏","CREMESHEEN LIPSTICK","DOZEN CARNATIONS|锦鲤色","[润采诱光]","http://127.0.0.1:3000/img/mouth/mac_sku_MCF31A_280x320_0.jpg","170",2);
INSERT INTO allproduct VALUES(NULL,"水漾润泽唇膏","LUSTRE LIPSTICK","LADY BUG|元气番茄红","[水漾润泽]","http://127.0.0.1:3000/img/mouth/mac_sku_M31A12_280x320_0.jpg","170",2);
INSERT INTO allproduct VALUES(NULL,"水漾润泽唇膏","LUSTRE LIPSTICK","SPICE IT UP![LUSTRE]","[水漾润泽]","http://127.0.0.1:3000/img/mouth/mac_sku_M31A06_280x320_0.jpg","170",2);
INSERT INTO allproduct VALUES(NULL,"显色丰润唇膏","AMPLIFIED LIPSTICK","DUBONNET [AMPLIFIED CREME]","[显色丰润]","http://127.0.0.1:3000/img/mouth/mac_sku_M3LN11_280x320_0.jpg","170",2);

INSERT INTO allproduct VALUES(NULL,"哑光唇膏","RETRO MATTE LIPSTICK","DANGEROUS[RETRO MATTE]","[柔感哑光]","http://127.0.0.1:3000/img/mouth/mac_sku_M0N944_280x320_0.jpg","170",3);
INSERT INTO allproduct VALUES(NULL,"柔感哑光唇膏","LIPSTICK","SO CHAUD[MATTE]","[柔感哑光]","http://127.0.0.1:3000/img/mouth/mac_sku_M2LP08_280x320_0.jpg","170",3);
INSERT INTO allproduct VALUES(NULL,"柔感哑光唇膏","MATTE LIPSTICK","TROPIC TONIC|珊瑚橘色","[显色丰润]","http://127.0.0.1:3000/img/mouth/mac_sku_M2LP3L_280x320_0.jpg","170",3);
INSERT INTO allproduct VALUES(NULL,"水漾润泽唇膏","LUSTRE LIPSTICK","SEE SHEER|水漾西柚色","[水漾润泽]","http://127.0.0.1:3000/img/mouth/mac_sku_M31A14_280x320_0.jpg","170",3);
INSERT INTO allproduct VALUES(NULL,"显色丰润唇膏","AMPLIFIED LIPSTICK","VEGAS VOLT|粉橘色","[显色丰润]","http://127.0.0.1:3000/img/mouth/mac_sku_M3LN31_280x320_0.jpg","170",3);
INSERT INTO allproduct VALUES(NULL,"显色丰润唇膏","AMPLIFIED LIPSTICK","MORANGE|明亮橙红色","[显色丰润]","http://127.0.0.1:3000/img/mouth/mac_sku_M3LN20_280x320_0.jpg","170",3);
INSERT INTO allproduct VALUES(NULL,"闪亮星泽唇膏","FROST LIPSTICK","CB 96|人鱼姬色","[闪亮星泽]","http://127.0.0.1:3000/img/mouth/mac_sku_M3000F_280x320_0.jpg","170",3);
INSERT INTO allproduct VALUES(NULL,"水漾润泽唇膏","LUSTRE LIPSTICK","SEE SHEER|水漾西柚色","[水漾润泽]","http://127.0.0.1:3000/img/mouth/mac_sku_M31A14_280x320_0.jpg","170",3);
INSERT INTO allproduct VALUES(NULL,"哑光唇膏","RETRO MATTE LIPSTICK","DANGEROUS[RETRO MATTE]","[柔感哑光]","http://127.0.0.1:3000/img/mouth/mac_sku_M0N944_280x320_0.jpg","170",3);
INSERT INTO allproduct VALUES(NULL,"柔感哑光唇膏","LIPSTICK","SO CHAUD[MATTE]","[柔感哑光]","http://127.0.0.1:3000/img/mouth/mac_sku_M2LP08_280x320_0.jpg","170",3);
INSERT INTO allproduct VALUES(NULL,"柔感哑光唇膏","MATTE LIPSTICK","TROPIC TONIC|珊瑚橘色","[显色丰润]","http://127.0.0.1:3000/img/mouth/mac_sku_M2LP3L_280x320_0.jpg","170",3);
INSERT INTO allproduct VALUES(NULL,"水漾润泽唇膏","LUSTRE LIPSTICK","SEE SHEER|水漾西柚色","[水漾润泽]","http://127.0.0.1:3000/img/mouth/mac_sku_M31A14_280x320_0.jpg","170",3);
INSERT INTO allproduct VALUES(NULL,"哑光唇膏","RETRO MATTE LIPSTICK","DANGEROUS[RETRO MATTE]","[柔感哑光]","http://127.0.0.1:3000/img/mouth/mac_sku_M0N944_280x320_0.jpg","170",3);
INSERT INTO allproduct VALUES(NULL,"柔感哑光唇膏","LIPSTICK","SO CHAUD[MATTE]","[柔感哑光]","http://127.0.0.1:3000/img/mouth/mac_sku_M2LP08_280x320_0.jpg","170",3);
INSERT INTO allproduct VALUES(NULL,"柔感哑光唇膏","MATTE LIPSTICK","TROPIC TONIC|珊瑚橘色","[显色丰润]","http://127.0.0.1:3000/img/mouth/mac_sku_M2LP3L_280x320_0.jpg","170",3);
INSERT INTO allproduct VALUES(NULL,"水漾润泽唇膏","LUSTRE LIPSTICK","SEE SHEER|水漾西柚色","[水漾润泽]","http://127.0.0.1:3000/img/mouth/mac_sku_M31A14_280x320_0.jpg","170",3);
INSERT INTO allproduct VALUES(NULL,"哑光唇膏","RETRO MATTE LIPSTICK","DANGEROUS[RETRO MATTE]","[柔感哑光]","http://127.0.0.1:3000/img/mouth/mac_sku_M0N944_280x320_0.jpg","170",3);
INSERT INTO allproduct VALUES(NULL,"柔感哑光唇膏","LIPSTICK","SO CHAUD[MATTE]","[柔感哑光]","http://127.0.0.1:3000/img/mouth/mac_sku_M2LP08_280x320_0.jpg","170",3);
INSERT INTO allproduct VALUES(NULL,"柔感哑光唇膏","MATTE LIPSTICK","TROPIC TONIC|珊瑚橘色","[显色丰润]","http://127.0.0.1:3000/img/mouth/mac_sku_M2LP3L_280x320_0.jpg","170",3);
INSERT INTO allproduct VALUES(NULL,"水漾润泽唇膏","LUSTRE LIPSTICK","SEE SHEER|水漾西柚色","[水漾润泽]","http://127.0.0.1:3000/img/mouth/mac_sku_M31A14_280x320_0.jpg","170",3);



#用户表
CREATE TABLE users(
   uid INT PRIMARY KEY AUTO_INCREMENT,
   uname VARCHAR(255),
   upwd  INT(255),
   email VARCHAR(255)
);

INSERT INTO users VALUES(NULL,"dingding","123456","dingding@163.com");
INSERT INTO users VALUES(NULL,"dangdang","565656","dangdang@163.com");
INSERT INTO users VALUES(NULL,"mingming","212121","mingming@163.com");
INSERT INTO users VALUES(NULL,"honghong","131313","honghong@163.com");
INSERT INTO users VALUES(NULL,"zuozuo","987456","zuozuo@163.com");

#购物车表
CREATE TABLE lipcart(
   id INT PRIMARY KEY AUTO_INCREMENT,
   user_id INT,
   pro_id INT,
   count INT
);
INSERT INTO lipcart VALUES(NULL,"1","2","1");
INSERT INTO lipcart VALUES(NULL,"1","8","2");
INSERT INTO lipcart VALUES(NULL,"1","4","3");
INSERT INTO lipcart VALUES(NULL,"1","6","1");
INSERT INTO lipcart VALUES(NULL,"5","6","1");
INSERT INTO lipcart VALUES(NULL,"5","3","4");
INSERT INTO lipcart VALUES(NULL,"5","2","5");
INSERT INTO lipcart VALUES(NULL,"5","1","1");




