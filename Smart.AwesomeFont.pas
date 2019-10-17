unit Smart.AwesomeFont;

interface

uses
  Winapi.Windows,
  Winapi.GDIPAPI,
  Winapi.GDIPOBJ,
  System.SysUtils,
  System.Classes,
  Vcl.Graphics;

type
  TFontAwesome = class
  public
    {$REGION 'Awesome Font Index'}
    const
      fa_500px = $f26e;
      fa_address_book = $f2b9;
      fa_address_book_o = $f2ba;
      fa_address_card = $f2bb;
      fa_address_card_o = $f2bc;
      fa_adjust = $f042;
      fa_adn = $f170;
      fa_align_center = $f037;
      fa_align_justify = $f039;
      fa_align_left = $f036;
      fa_align_right = $f038;
      fa_amazon = $f270;
      fa_ambulance = $f0f9;
      fa_american_sign_language_interpreting = $f2a3;
      fa_anchor = $f13d;
      fa_android = $f17b;
      fa_angellist = $f209;
      fa_angle_double_down = $f103;
      fa_angle_double_left = $f100;
      fa_angle_double_right = $f101;
      fa_angle_double_up = $f102;
      fa_angle_down = $f107;
      fa_angle_left = $f104;
      fa_angle_right = $f105;
      fa_angle_up = $f106;
      fa_apple = $f179;
      fa_archive = $f187;
      fa_area_chart = $f1fe;
      fa_arrow_circle_down = $f0ab;
      fa_arrow_circle_left = $f0a8;
      fa_arrow_circle_o_down = $f01a;
      fa_arrow_circle_o_left = $f190;
      fa_arrow_circle_o_right = $f18e;
      fa_arrow_circle_o_up = $f01b;
      fa_arrow_circle_right = $f0a9;
      fa_arrow_circle_up = $f0aa;
      fa_arrow_down = $f063;
      fa_arrow_left = $f060;
      fa_arrow_right = $f061;
      fa_arrow_up = $f062;
      fa_arrows = $f047;
      fa_arrows_alt = $f0b2;
      fa_arrows_h = $f07e;
      fa_arrows_v = $f07d;
      fa_asl_interpreting = $f2a3;
      fa_assistive_listening_systems = $f2a2;
      fa_asterisk = $f069;
      fa_at = $f1fa;
      fa_audio_description = $f29e;
      fa_automobile = $f1b9;
      fa_backward = $f04a;
      fa_balance_scale = $f24e;
      fa_ban = $f05e;
      fa_bandcamp = $f2d5;
      fa_bank = $f19c;
      fa_bar_chart = $f080;
      fa_bar_chart_o = $f080;
      fa_barcode = $f02a;
      fa_bars = $f0c9;
      fa_bath = $f2cd;
      fa_bathtub = $f2cd;
      fa_battery = $f240;
      fa_battery_0 = $f244;
      fa_battery_1 = $f243;
      fa_battery_2 = $f242;
      fa_battery_3 = $f241;
      fa_battery_4 = $f240;
      fa_battery_empty = $f244;
      fa_battery_full = $f240;
      fa_battery_half = $f242;
      fa_battery_quarter = $f243;
      fa_battery_three_quarters = $f241;
      fa_bed = $f236;
      fa_beer = $f0fc;
      fa_behance = $f1b4;
      fa_behance_square = $f1b5;
      fa_bell = $f0f3;
      fa_bell_o = $f0a2;
      fa_bell_slash = $f1f6;
      fa_bell_slash_o = $f1f7;
      fa_bicycle = $f206;
      fa_binoculars = $f1e5;
      fa_birthday_cake = $f1fd;
      fa_bitbucket = $f171;
      fa_bitbucket_square = $f172;
      fa_bitcoin = $f15a;
      fa_black_tie = $f27e;
      fa_blind = $f29d;
      fa_bluetooth = $f293;
      fa_bluetooth_b = $f294;
      fa_bold = $f032;
      fa_bolt = $f0e7;
      fa_bomb = $f1e2;
      fa_book = $f02d;
      fa_bookmark = $f02e;
      fa_bookmark_o = $f097;
      fa_braille = $f2a1;
      fa_briefcase = $f0b1;
      fa_btc = $f15a;
      fa_bug = $f188;
      fa_building = $f1ad;
      fa_building_o = $f0f7;
      fa_bullhorn = $f0a1;
      fa_bullseye = $f140;
      fa_bus = $f207;
      fa_buysellads = $f20d;
      fa_cab = $f1ba;
      fa_calculator = $f1ec;
      fa_calendar = $f073;
      fa_calendar_check_o = $f274;
      fa_calendar_minus_o = $f272;
      fa_calendar_o = $f133;
      fa_calendar_plus_o = $f271;
      fa_calendar_times_o = $f273;
      fa_camera = $f030;
      fa_camera_retro = $f083;
      fa_car = $f1b9;
      fa_caret_down = $f0d7;
      fa_caret_left = $f0d9;
      fa_caret_right = $f0da;
      fa_caret_square_o_down = $f150;
      fa_caret_square_o_left = $f191;
      fa_caret_square_o_right = $f152;
      fa_caret_square_o_up = $f151;
      fa_caret_up = $f0d8;
      fa_cart_arrow_down = $f218;
      fa_cart_plus = $f217;
      fa_cc = $f20a;
      fa_cc_amex = $f1f3;
      fa_cc_diners_club = $f24c;
      fa_cc_discover = $f1f2;
      fa_cc_jcb = $f24b;
      fa_cc_mastercard = $f1f1;
      fa_cc_paypal = $f1f4;
      fa_cc_stripe = $f1f5;
      fa_cc_visa = $f1f0;
      fa_certificate = $f0a3;
      fa_chain = $f0c1;
      fa_chain_broken = $f127;
      fa_check = $f00c;
      fa_check_circle = $f058;
      fa_check_circle_o = $f05d;
      fa_check_square = $f14a;
      fa_check_square_o = $f046;
      fa_chevron_circle_down = $f13a;
      fa_chevron_circle_left = $f137;
      fa_chevron_circle_right = $f138;
      fa_chevron_circle_up = $f139;
      fa_chevron_down = $f078;
      fa_chevron_left = $f053;
      fa_chevron_right = $f054;
      fa_chevron_up = $f077;
      fa_child = $f1ae;
      fa_chrome = $f268;
      fa_circle = $f111;
      fa_circle_o = $f10c;
      fa_circle_o_notch = $f1ce;
      fa_circle_thin = $f1db;
      fa_clipboard = $f0ea;
      fa_clock_o = $f017;
      fa_clone = $f24d;
      fa_close = $f00d;
      fa_cloud = $f0c2;
      fa_cloud_download = $f0ed;
      fa_cloud_upload = $f0ee;
      fa_cny = $f157;
      fa_code = $f121;
      fa_code_fork = $f126;
      fa_codepen = $f1cb;
      fa_codiepie = $f284;
      fa_coffee = $f0f4;
      fa_cog = $f013;
      fa_cogs = $f085;
      fa_columns = $f0db;
      fa_comment = $f075;
      fa_comment_o = $f0e5;
      fa_commenting = $f27a;
      fa_commenting_o = $f27b;
      fa_comments = $f086;
      fa_comments_o = $f0e6;
      fa_compass = $f14e;
      fa_compress = $f066;
      fa_connectdevelop = $f20e;
      fa_contao = $f26d;
      fa_copy = $f0c5;
      fa_copyright = $f1f9;
      fa_creative_commons = $f25e;
      fa_credit_card = $f09d;
      fa_credit_card_alt = $f283;
      fa_crop = $f125;
      fa_crosshairs = $f05b;
      fa_css3 = $f13c;
      fa_cube = $f1b2;
      fa_cubes = $f1b3;
      fa_cut = $f0c4;
      fa_cutlery = $f0f5;
      fa_dashboard = $f0e4;
      fa_dashcube = $f210;
      fa_database = $f1c0;
      fa_deaf = $f2a4;
      fa_deafness = $f2a4;
      fa_dedent = $f03b;
      fa_delicious = $f1a5;
      fa_desktop = $f108;
      fa_deviantart = $f1bd;
      fa_diamond = $f219;
      fa_digg = $f1a6;
      fa_dollar = $f155;
      fa_dot_circle_o = $f192;
      fa_download = $f019;
      fa_dribbble = $f17d;
      fa_drivers_license = $f2c2;
      fa_drivers_license_o = $f2c3;
      fa_dropbox = $f16b;
      fa_drupal = $f1a9;
      fa_edge = $f282;
      fa_edit = $f044;
      fa_eercast = $f2da;
      fa_eject = $f052;
      fa_ellipsis_h = $f141;
      fa_ellipsis_v = $f142;
      fa_empire = $f1d1;
      fa_envelope = $f0e0;
      fa_envelope_o = $f003;
      fa_envelope_open = $f2b6;
      fa_envelope_open_o = $f2b7;
      fa_envelope_square = $f199;
      fa_envira = $f299;
      fa_eraser = $f12d;
      fa_etsy = $f2d7;
      fa_eur = $f153;
      fa_euro = $f153;
      fa_exchange = $f0ec;
      fa_exclamation = $f12a;
      fa_exclamation_circle = $f06a;
      fa_exclamation_triangle = $f071;
      fa_expand = $f065;
      fa_expeditedssl = $f23e;
      fa_external_link = $f08e;
      fa_external_link_square = $f14c;
      fa_eye = $f06e;
      fa_eye_slash = $f070;
      fa_eyedropper = $f1fb;
      fa_fa = $f2b4;
      fa_facebook = $f09a;
      fa_facebook_f = $f09a;
      fa_facebook_official = $f230;
      fa_facebook_square = $f082;
      fa_fast_backward = $f049;
      fa_fast_forward = $f050;
      fa_fax = $f1ac;
      fa_feed = $f09e;
      fa_female = $f182;
      fa_fighter_jet = $f0fb;
      fa_file = $f15b;
      fa_file_archive_o = $f1c6;
      fa_file_audio_o = $f1c7;
      fa_file_code_o = $f1c9;
      fa_file_excel_o = $f1c3;
      fa_file_image_o = $f1c5;
      fa_file_movie_o = $f1c8;
      fa_file_o = $f016;
      fa_file_pdf_o = $f1c1;
      fa_file_photo_o = $f1c5;
      fa_file_picture_o = $f1c5;
      fa_file_powerpoint_o = $f1c4;
      fa_file_sound_o = $f1c7;
      fa_file_text = $f15c;
      fa_file_text_o = $f0f6;
      fa_file_video_o = $f1c8;
      fa_file_word_o = $f1c2;
      fa_file_zip_o = $f1c6;
      fa_files_o = $f0c5;
      fa_film = $f008;
      fa_filter = $f0b0;
      fa_fire = $f06d;
      fa_fire_extinguisher = $f134;
      fa_firefox = $f269;
      fa_first_order = $f2b0;
      fa_flag = $f024;
      fa_flag_checkered = $f11e;
      fa_flag_o = $f11d;
      fa_flash = $f0e7;
      fa_flask = $f0c3;
      fa_flickr = $f16e;
      fa_floppy_o = $f0c7;
      fa_folder = $f07b;
      fa_folder_o = $f114;
      fa_folder_open = $f07c;
      fa_folder_open_o = $f115;
      fa_font = $f031;
      fa_font_awesome = $f2b4;
      fa_fonticons = $f280;
      fa_fort_awesome = $f286;
      fa_forumbee = $f211;
      fa_forward = $f04e;
      fa_foursquare = $f180;
      fa_free_code_camp = $f2c5;
      fa_frown_o = $f119;
      fa_futbol_o = $f1e3;
      fa_gamepad = $f11b;
      fa_gavel = $f0e3;
      fa_gbp = $f154;
      fa_ge = $f1d1;
      fa_gear = $f013;
      fa_gears = $f085;
      fa_genderless = $f22d;
      fa_get_pocket = $f265;
      fa_gg = $f260;
      fa_gg_circle = $f261;
      fa_gift = $f06b;
      fa_git = $f1d3;
      fa_git_square = $f1d2;
      fa_github = $f09b;
      fa_github_alt = $f113;
      fa_github_square = $f092;
      fa_gitlab = $f296;
      fa_gittip = $f184;
      fa_glass = $f000;
      fa_glide = $f2a5;
      fa_glide_g = $f2a6;
      fa_globe = $f0ac;
      fa_google = $f1a0;
      fa_google_plus = $f0d5;
      fa_google_plus_circle = $f2b3;
      fa_google_plus_official = $f2b3;
      fa_google_plus_square = $f0d4;
      fa_google_wallet = $f1ee;
      fa_graduation_cap = $f19d;
      fa_gratipay = $f184;
      fa_grav = $f2d6;
      fa_group = $f0c0;
      fa_h_square = $f0fd;
      fa_hacker_news = $f1d4;
      fa_hand_grab_o = $f255;
      fa_hand_lizard_o = $f258;
      fa_hand_o_down = $f0a7;
      fa_hand_o_left = $f0a5;
      fa_hand_o_right = $f0a4;
      fa_hand_o_up = $f0a6;
      fa_hand_paper_o = $f256;
      fa_hand_peace_o = $f25b;
      fa_hand_pointer_o = $f25a;
      fa_hand_rock_o = $f255;
      fa_hand_scissors_o = $f257;
      fa_hand_spock_o = $f259;
      fa_hand_stop_o = $f256;
      fa_handshake_o = $f2b5;
      fa_hard_of_hearing = $f2a4;
      fa_hashtag = $f292;
      fa_hdd_o = $f0a0;
      fa_header = $f1dc;
      fa_headphones = $f025;
      fa_heart = $f004;
      fa_heart_o = $f08a;
      fa_heartbeat = $f21e;
      fa_history = $f1da;
      fa_home = $f015;
      fa_hospital_o = $f0f8;
      fa_hotel = $f236;
      fa_hourglass = $f254;
      fa_hourglass_1 = $f251;
      fa_hourglass_2 = $f252;
      fa_hourglass_3 = $f253;
      fa_hourglass_end = $f253;
      fa_hourglass_half = $f252;
      fa_hourglass_o = $f250;
      fa_hourglass_start = $f251;
      fa_houzz = $f27c;
      fa_html5 = $f13b;
      fa_i_cursor = $f246;
      fa_id_badge = $f2c1;
      fa_id_card = $f2c2;
      fa_id_card_o = $f2c3;
      fa_ils = $f20b;
      fa_image = $f03e;
      fa_imdb = $f2d8;
      fa_inbox = $f01c;
      fa_indent = $f03c;
      fa_industry = $f275;
      fa_info = $f129;
      fa_info_circle = $f05a;
      fa_inr = $f156;
      fa_instagram = $f16d;
      fa_institution = $f19c;
      fa_internet_explorer = $f26b;
      fa_intersex = $f224;
      fa_ioxhost = $f208;
      fa_italic = $f033;
      fa_joomla = $f1aa;
      fa_jpy = $f157;
      fa_jsfiddle = $f1cc;
      fa_key = $f084;
      fa_keyboard_o = $f11c;
      fa_krw = $f159;
      fa_language = $f1ab;
      fa_laptop = $f109;
      fa_lastfm = $f202;
      fa_lastfm_square = $f203;
      fa_leaf = $f06c;
      fa_leanpub = $f212;
      fa_legal = $f0e3;
      fa_lemon_o = $f094;
      fa_level_down = $f149;
      fa_level_up = $f148;
      fa_life_bouy = $f1cd;
      fa_life_buoy = $f1cd;
      fa_life_ring = $f1cd;
      fa_life_saver = $f1cd;
      fa_lightbulb_o = $f0eb;
      fa_line_chart = $f201;
      fa_link = $f0c1;
      fa_linkedin = $f0e1;
      fa_linkedin_square = $f08c;
      fa_linode = $f2b8;
      fa_linux = $f17c;
      fa_list = $f03a;
      fa_list_alt = $f022;
      fa_list_ol = $f0cb;
      fa_list_ul = $f0ca;
      fa_location_arrow = $f124;
      fa_lock = $f023;
      fa_long_arrow_down = $f175;
      fa_long_arrow_left = $f177;
      fa_long_arrow_right = $f178;
      fa_long_arrow_up = $f176;
      fa_low_vision = $f2a8;
      fa_magic = $f0d0;
      fa_magnet = $f076;
      fa_mail_forward = $f064;
      fa_mail_reply = $f112;
      fa_mail_reply_all = $f122;
      fa_male = $f183;
      fa_map = $f279;
      fa_map_marker = $f041;
      fa_map_o = $f278;
      fa_map_pin = $f276;
      fa_map_signs = $f277;
      fa_mars = $f222;
      fa_mars_double = $f227;
      fa_mars_stroke = $f229;
      fa_mars_stroke_h = $f22b;
      fa_mars_stroke_v = $f22a;
      fa_maxcdn = $f136;
      fa_meanpath = $f20c;
      fa_medium = $f23a;
      fa_medkit = $f0fa;
      fa_meetup = $f2e0;
      fa_meh_o = $f11a;
      fa_mercury = $f223;
      fa_microchip = $f2db;
      fa_microphone = $f130;
      fa_microphone_slash = $f131;
      fa_minus = $f068;
      fa_minus_circle = $f056;
      fa_minus_square = $f146;
      fa_minus_square_o = $f147;
      fa_mixcloud = $f289;
      fa_mobile = $f10b;
      fa_mobile_phone = $f10b;
      fa_modx = $f285;
      fa_money = $f0d6;
      fa_moon_o = $f186;
      fa_mortar_board = $f19d;
      fa_motorcycle = $f21c;
      fa_mouse_pointer = $f245;
      fa_music = $f001;
      fa_navicon = $f0c9;
      fa_neuter = $f22c;
      fa_newspaper_o = $f1ea;
      fa_object_group = $f247;
      fa_object_ungroup = $f248;
      fa_odnoklassniki = $f263;
      fa_odnoklassniki_square = $f264;
      fa_opencart = $f23d;
      fa_openid = $f19b;
      fa_opera = $f26a;
      fa_optin_monster = $f23c;
      fa_outdent = $f03b;
      fa_pagelines = $f18c;
      fa_paint_brush = $f1fc;
      fa_paper_plane = $f1d8;
      fa_paper_plane_o = $f1d9;
      fa_paperclip = $f0c6;
      fa_paragraph = $f1dd;
      fa_paste = $f0ea;
      fa_pause = $f04c;
      fa_pause_circle = $f28b;
      fa_pause_circle_o = $f28c;
      fa_paw = $f1b0;
      fa_paypal = $f1ed;
      fa_pencil = $f040;
      fa_pencil_square = $f14b;
      fa_pencil_square_o = $f044;
      fa_percent = $f295;
      fa_phone = $f095;
      fa_phone_square = $f098;
      fa_photo = $f03e;
      fa_picture_o = $f03e;
      fa_pie_chart = $f200;
      fa_pied_piper = $f2ae;
      fa_pied_piper_alt = $f1a8;
      fa_pied_piper_pp = $f1a7;
      fa_pinterest = $f0d2;
      fa_pinterest_p = $f231;
      fa_pinterest_square = $f0d3;
      fa_plane = $f072;
      fa_play = $f04b;
      fa_play_circle = $f144;
      fa_play_circle_o = $f01d;
      fa_plug = $f1e6;
      fa_plus = $f067;
      fa_plus_circle = $f055;
      fa_plus_square = $f0fe;
      fa_plus_square_o = $f196;
      fa_podcast = $f2ce;
      fa_power_off = $f011;
      fa_print = $f02f;
      fa_product_hunt = $f288;
      fa_puzzle_piece = $f12e;
      fa_qq = $f1d6;
      fa_qrcode = $f029;
      fa_question = $f128;
      fa_question_circle = $f059;
      fa_question_circle_o = $f29c;
      fa_quora = $f2c4;
      fa_quote_left = $f10d;
      fa_quote_right = $f10e;
      fa_ra = $f1d0;
      fa_random = $f074;
      fa_ravelry = $f2d9;
      fa_rebel = $f1d0;
      fa_recycle = $f1b8;
      fa_reddit = $f1a1;
      fa_reddit_alien = $f281;
      fa_reddit_square = $f1a2;
      fa_refresh = $f021;
      fa_registered = $f25d;
      fa_remove = $f00d;
      fa_renren = $f18b;
      fa_reorder = $f0c9;
      fa_repeat = $f01e;
      fa_reply = $f112;
      fa_reply_all = $f122;
      fa_resistance = $f1d0;
      fa_retweet = $f079;
      fa_rmb = $f157;
      fa_road = $f018;
      fa_rocket = $f135;
      fa_rotate_left = $f0e2;
      fa_rotate_right = $f01e;
      fa_rouble = $f158;
      fa_rss = $f09e;
      fa_rss_square = $f143;
      fa_rub = $f158;
      fa_ruble = $f158;
      fa_rupee = $f156;
      fa_s15 = $f2cd;
      fa_safari = $f267;
      fa_save = $f0c7;
      fa_scissors = $f0c4;
      fa_scribd = $f28a;
      fa_search = $f002;
      fa_search_minus = $f010;
      fa_search_plus = $f00e;
      fa_sellsy = $f213;
      fa_send = $f1d8;
      fa_send_o = $f1d9;
      fa_server = $f233;
      fa_share = $f064;
      fa_share_alt = $f1e0;
      fa_share_alt_square = $f1e1;
      fa_share_square = $f14d;
      fa_share_square_o = $f045;
      fa_shekel = $f20b;
      fa_sheqel = $f20b;
      fa_shield = $f132;
      fa_ship = $f21a;
      fa_shirtsinbulk = $f214;
      fa_shopping_bag = $f290;
      fa_shopping_basket = $f291;
      fa_shopping_cart = $f07a;
      fa_shower = $f2cc;
      fa_sign_in = $f090;
      fa_sign_language = $f2a7;
      fa_sign_out = $f08b;
      fa_signal = $f012;
      fa_signing = $f2a7;
      fa_simplybuilt = $f215;
      fa_sitemap = $f0e8;
      fa_skyatlas = $f216;
      fa_skype = $f17e;
      fa_slack = $f198;
      fa_sliders = $f1de;
      fa_slideshare = $f1e7;
      fa_smile_o = $f118;
      fa_snapchat = $f2ab;
      fa_snapchat_ghost = $f2ac;
      fa_snapchat_square = $f2ad;
      fa_snowflake_o = $f2dc;
      fa_soccer_ball_o = $f1e3;
      fa_sort = $f0dc;
      fa_sort_alpha_asc = $f15d;
      fa_sort_alpha_desc = $f15e;
      fa_sort_amount_asc = $f160;
      fa_sort_amount_desc = $f161;
      fa_sort_asc = $f0de;
      fa_sort_desc = $f0dd;
      fa_sort_down = $f0dd;
      fa_sort_numeric_asc = $f162;
      fa_sort_numeric_desc = $f163;
      fa_sort_up = $f0de;
      fa_soundcloud = $f1be;
      fa_space_shuttle = $f197;
      fa_spinner = $f110;
      fa_spoon = $f1b1;
      fa_spotify = $f1bc;
      fa_square = $f0c8;
      fa_square_o = $f096;
      fa_stack_exchange = $f18d;
      fa_stack_overflow = $f16c;
      fa_star = $f005;
      fa_star_half = $f089;
      fa_star_half_empty = $f123;
      fa_star_half_full = $f123;
      fa_star_half_o = $f123;
      fa_star_o = $f006;
      fa_steam = $f1b6;
      fa_steam_square = $f1b7;
      fa_step_backward = $f048;
      fa_step_forward = $f051;
      fa_stethoscope = $f0f1;
      fa_sticky_note = $f249;
      fa_sticky_note_o = $f24a;
      fa_stop = $f04d;
      fa_stop_circle = $f28d;
      fa_stop_circle_o = $f28e;
      fa_street_view = $f21d;
      fa_strikethrough = $f0cc;
      fa_stumbleupon = $f1a4;
      fa_stumbleupon_circle = $f1a3;
      fa_subscript = $f12c;
      fa_subway = $f239;
      fa_suitcase = $f0f2;
      fa_sun_o = $f185;
      fa_superpowers = $f2dd;
      fa_superscript = $f12b;
      fa_support = $f1cd;
      fa_table = $f0ce;
      fa_tablet = $f10a;
      fa_tachometer = $f0e4;
      fa_tag = $f02b;
      fa_tags = $f02c;
      fa_tasks = $f0ae;
      fa_taxi = $f1ba;
      fa_telegram = $f2c6;
      fa_television = $f26c;
      fa_tencent_weibo = $f1d5;
      fa_terminal = $f120;
      fa_text_height = $f034;
      fa_text_width = $f035;
      fa_th = $f00a;
      fa_th_large = $f009;
      fa_th_list = $f00b;
      fa_themeisle = $f2b2;
      fa_thermometer = $f2c7;
      fa_thermometer_0 = $f2cb;
      fa_thermometer_1 = $f2ca;
      fa_thermometer_2 = $f2c9;
      fa_thermometer_3 = $f2c8;
      fa_thermometer_4 = $f2c7;
      fa_thermometer_empty = $f2cb;
      fa_thermometer_full = $f2c7;
      fa_thermometer_half = $f2c9;
      fa_thermometer_quarter = $f2ca;
      fa_thermometer_three_quarters = $f2c8;
      fa_thumb_tack = $f08d;
      fa_thumbs_down = $f165;
      fa_thumbs_o_down = $f088;
      fa_thumbs_o_up = $f087;
      fa_thumbs_up = $f164;
      fa_ticket = $f145;
      fa_times = $f00d;
      fa_times_circle = $f057;
      fa_times_circle_o = $f05c;
      fa_times_rectangle = $f2d3;
      fa_times_rectangle_o = $f2d4;
      fa_tint = $f043;
      fa_toggle_down = $f150;
      fa_toggle_left = $f191;
      fa_toggle_off = $f204;
      fa_toggle_on = $f205;
      fa_toggle_right = $f152;
      fa_toggle_up = $f151;
      fa_trademark = $f25c;
      fa_train = $f238;
      fa_transgender = $f224;
      fa_transgender_alt = $f225;
      fa_trash = $f1f8;
      fa_trash_o = $f014;
      fa_tree = $f1bb;
      fa_trello = $f181;
      fa_tripadvisor = $f262;
      fa_trophy = $f091;
      fa_truck = $f0d1;
      fa_try = $f195;
      fa_tty = $f1e4;
      fa_tumblr = $f173;
      fa_tumblr_square = $f174;
      fa_turkish_lira = $f195;
      fa_tv = $f26c;
      fa_twitch = $f1e8;
      fa_twitter = $f099;
      fa_twitter_square = $f081;
      fa_umbrella = $f0e9;
      fa_underline = $f0cd;
      fa_undo = $f0e2;
      fa_universal_access = $f29a;
      fa_university = $f19c;
      fa_unlink = $f127;
      fa_unlock = $f09c;
      fa_unlock_alt = $f13e;
      fa_unsorted = $f0dc;
      fa_upload = $f093;
      fa_usb = $f287;
      fa_usd = $f155;
      fa_user = $f007;
      fa_user_circle = $f2bd;
      fa_user_circle_o = $f2be;
      fa_user_md = $f0f0;
      fa_user_o = $f2c0;
      fa_user_plus = $f234;
      fa_user_secret = $f21b;
      fa_user_times = $f235;
      fa_users = $f0c0;
      fa_vcard = $f2bb;
      fa_vcard_o = $f2bc;
      fa_venus = $f221;
      fa_venus_double = $f226;
      fa_venus_mars = $f228;
      fa_viacoin = $f237;
      fa_viadeo = $f2a9;
      fa_viadeo_square = $f2aa;
      fa_video_camera = $f03d;
      fa_vimeo = $f27d;
      fa_vimeo_square = $f194;
      fa_vine = $f1ca;
      fa_vk = $f189;
      fa_volume_control_phone = $f2a0;
      fa_volume_down = $f027;
      fa_volume_off = $f026;
      fa_volume_up = $f028;
      fa_warning = $f071;
      fa_wechat = $f1d7;
      fa_weibo = $f18a;
      fa_weixin = $f1d7;
      fa_whatsapp = $f232;
      fa_wheelchair = $f193;
      fa_wheelchair_alt = $f29b;
      fa_wifi = $f1eb;
      fa_wikipedia_w = $f266;
      fa_window_close = $f2d3;
      fa_window_close_o = $f2d4;
      fa_window_maximize = $f2d0;
      fa_window_minimize = $f2d1;
      fa_window_restore = $f2d2;
      fa_windows = $f17a;
      fa_won = $f159;
      fa_wordpress = $f19a;
      fa_wpbeginner = $f297;
      fa_wpexplorer = $f2de;
      fa_wpforms = $f298;
      fa_wrench = $f0ad;
      fa_xing = $f168;
      fa_xing_square = $f169;
      fa_y_combinator = $f23b;
      fa_y_combinator_square = $f1d4;
      fa_yahoo = $f19e;
      fa_yc = $f23b;
      fa_yc_square = $f1d4;
      fa_yelp = $f1e9;
      fa_yen = $f157;
      fa_yoast = $f2b1;
      fa_youtube = $f167;
      fa_youtube_play = $f16a;
    {$ENDREGION 'Awesome Font Index'}
  strict private
    type
      TAwesomeFontInfo = record
        Code: WORD;
        Name: string;
      end;
    const
      MaxFontCount = 785;
      {$REGION 'AwesomeFontInfos'}
      AwesomeFontInfos: array[0..MaxFontCount-1] of TAwesomeFontInfo = (
        (code: fa_500px; name: '500px'),
        (code: fa_address_book; name: 'address_book'),
        (code: fa_address_book; name: 'address_book_o'),
        (code: fa_address_card; name: 'address_card'),
        (code: fa_address_card_o; name: 'address_card_o'),
        (code: fa_adjust; name: 'adjust'),
        (code: fa_adn; name: 'adn'),
        (code: fa_align_center; name: 'align_center'),
        (code: fa_align_justify; name: 'align_justify'),
        (code: fa_align_left; name: 'align_left'),
        (code: fa_align_right; name: 'align_right'),
        (code: fa_amazon; name: 'amazon'),
        (code: fa_ambulance; name: 'ambulance'),
        (code: fa_american_sign_language_interpreting; name: 'american_sign_language_interpreting'),
        (code: fa_anchor; name: 'anchor'),
        (code: fa_android; name: 'android'),
        (code: fa_angellist; name: 'angellist'),
        (code: fa_angle_double_down; name: 'angle_double_down'),
        (code: fa_angle_double_left; name: 'angle_double_left'),
        (code: fa_angle_double_right; name: 'angle_double_right'),
        (code: fa_angle_double_up; name: 'angle_double_up'),
        (code: fa_angle_down; name: 'angle_down'),
        (code: fa_angle_left; name: 'angle_left'),
        (code: fa_angle_right; name: 'angle_right'),
        (code: fa_angle_up; name: 'angle_up'),
        (code: fa_apple; name: 'apple'),
        (code: fa_archive; name: 'archive'),
        (code: fa_area_chart; name: 'area_chart'),
        (code: fa_arrow_circle_down; name: 'arrow_circle_down'),
        (code: fa_arrow_circle_left; name: 'arrow_circle_left'),
        (code: fa_arrow_circle_o_down; name: 'arrow_circle_o_down'),
        (code: fa_arrow_circle_o_left; name: 'arrow_circle_o_left'),
        (code: fa_arrow_circle_o_right; name: 'arrow_circle_o_right'),
        (code: fa_arrow_circle_o_up; name: 'arrow_circle_o_up'),
        (code: fa_arrow_circle_right; name: 'arrow_circle_right'),
        (code: fa_arrow_circle_up; name: 'arrow_circle_up'),
        (code: fa_arrow_down; name: 'arrow_down'),
        (code: fa_arrow_left; name: 'arrow_left'),
        (code: fa_arrow_right; name: 'arrow_right'),
        (code: fa_arrow_up; name: 'arrow_up'),
        (code: fa_arrows; name: 'arrows'),
        (code: fa_arrows_alt; name: 'arrows_alt'),
        (code: fa_arrows_h; name: 'arrows_h'),
        (code: fa_arrows_v; name: 'arrows_v'),
        (code: fa_asl_interpreting; name: 'asl_interpreting'),
        (code: fa_assistive_listening_systems; name: 'assistive_listening_systems'),
        (code: fa_asterisk; name: 'asterisk'),
        (code: fa_at; name: 'at'),
        (code: fa_audio_description; name: 'audio_description'),
        (code: fa_automobile; name: 'automobile'),
        (code: fa_backward; name: 'backward'),
        (code: fa_balance_scale; name: 'balance_scale'),
        (code: fa_ban; name: 'ban'),
        (code: fa_bandcamp; name: 'bandcamp'),
        (code: fa_bank; name: 'bank'),
        (code: fa_bar_chart; name: 'bar_chart'),
        (code: fa_bar_chart_o; name: 'bar_chart_o'),
        (code: fa_barcode; name: 'barcode'),
        (code: fa_bars; name: 'bars'),
        (code: fa_bath; name: 'bath'),
        (code: fa_bathtub; name: 'bathtub'),
        (code: fa_battery; name: 'battery'),
        (code: fa_battery_0; name: 'battery_0'),
        (code: fa_battery_1; name: 'battery_1'),
        (code: fa_battery_2; name: 'battery_2'),
        (code: fa_battery_3; name: 'battery_3'),
        (code: fa_battery_4; name: 'battery_4'),
        (code: fa_battery_empty; name: 'battery_empty'),
        (code: fa_battery_full; name: 'battery_full'),
        (code: fa_battery_half; name: 'battery_half'),
        (code: fa_battery_quarter; name: 'battery_quarter'),
        (code: fa_battery_three_quarters; name: 'battery_three_quarters'),
        (code: fa_bed; name: 'bed'),
        (code: fa_beer; name: 'beer'),
        (code: fa_behance; name: 'behance'),
        (code: fa_behance_square; name: 'behance_square'),
        (code: fa_bell; name: 'bell'),
        (code: fa_bell_o; name: 'bell_o'),
        (code: fa_bell_slash; name: 'bell_slash'),
        (code: fa_bell_slash_o; name: 'bell_slash_o'),
        (code: fa_bicycle; name: 'bicycle'),
        (code: fa_binoculars; name: 'binoculars'),
        (code: fa_birthday_cake; name: 'birthday_cake'),
        (code: fa_bitbucket; name: 'bitbucket'),
        (code: fa_bitbucket_square; name: 'bitbucket_square'),
        (code: fa_bitcoin; name: 'bitcoin'),
        (code: fa_black_tie; name: 'black_tie'),
        (code: fa_blind; name: 'blind'),
        (code: fa_bluetooth; name: 'bluetooth'),
        (code: fa_bluetooth_b; name: 'bluetooth_b'),
        (code: fa_bold; name: 'bold'),
        (code: fa_bolt; name: 'bolt'),
        (code: fa_bomb; name: 'bomb'),
        (code: fa_book; name: 'book'),
        (code: fa_bookmark; name: 'bookmark'),
        (code: fa_bookmark_o; name: 'bookmark_o'),
        (code: fa_braille; name: 'braille'),
        (code: fa_briefcase; name: 'briefcase'),
        (code: fa_btc; name: 'btc'),
        (code: fa_bug; name: 'bug'),
        (code: fa_building; name: 'building'),
        (code: fa_building_o; name: 'building_o'),
        (code: fa_bullhorn; name: 'bullhorn'),
        (code: fa_bullseye; name: 'bullseye'),
        (code: fa_bus; name: 'bus'),
        (code: fa_buysellads; name: 'buysellads'),
        (code: fa_cab; name: 'cab'),
        (code: fa_calculator; name: 'calculator'),
        (code: fa_calendar; name: 'calendar'),
        (code: fa_calendar_check_o; name: 'calendar_check_o'),
        (code: fa_calendar_minus_o; name: 'calendar_minus_o'),
        (code: fa_calendar_o; name: 'calendar_o'),
        (code: fa_calendar_plus_o; name: 'calendar_plus_o'),
        (code: fa_calendar_times_o; name: 'calendar_times_o'),
        (code: fa_camera; name: 'camera'),
        (code: fa_camera_retro; name: 'camera_retro'),
        (code: fa_car; name: 'car'),
        (code: fa_caret_down; name: 'caret_down'),
        (code: fa_caret_left; name: 'caret_left'),
        (code: fa_caret_right; name: 'caret_right'),
        (code: fa_caret_square_o_down; name: 'caret_square_o_down'),
        (code: fa_caret_square_o_left; name: 'caret_square_o_left'),
        (code: fa_caret_square_o_right; name: 'caret_square_o_right'),
        (code: fa_caret_square_o_up; name: 'caret_square_o_up'),
        (code: fa_caret_up; name: 'caret_up'),
        (code: fa_cart_arrow_down; name: 'cart_arrow_down'),
        (code: fa_cart_plus; name: 'cart_plus'),
        (code: fa_cc; name: 'cc'),
        (code: fa_cc_amex; name: 'cc_amex'),
        (code: fa_cc_diners_club; name: 'cc_diners_club'),
        (code: fa_cc_discover; name: 'cc_discover'),
        (code: fa_cc_jcb; name: 'cc_jcb'),
        (code: fa_cc_mastercard; name: 'cc_mastercard'),
        (code: fa_cc_paypal; name: 'cc_paypal'),
        (code: fa_cc_stripe; name: 'cc_stripe'),
        (code: fa_cc_visa; name: 'cc_visa'),
        (code: fa_certificate; name: 'certificate'),
        (code: fa_chain; name: 'chain'),
        (code: fa_chain_broken; name: 'chain_broken'),
        (code: fa_check; name: 'check'),
        (code: fa_check_circle; name: 'check_circle'),
        (code: fa_check_circle_o; name: 'check_circle_o'),
        (code: fa_check_square; name: 'check_square'),
        (code: fa_check_square_o; name: 'check_square_o'),
        (code: fa_chevron_circle_down; name: 'chevron_circle_down'),
        (code: fa_chevron_circle_left; name: 'chevron_circle_left'),
        (code: fa_chevron_circle_right; name: 'chevron_circle_right'),
        (code: fa_chevron_circle_up; name: 'chevron_circle_up'),
        (code: fa_chevron_down; name: 'chevron_down'),
        (code: fa_chevron_left; name: 'chevron_left'),
        (code: fa_chevron_right; name: 'chevron_right'),
        (code: fa_chevron_up; name: 'chevron_up'),
        (code: fa_child; name: 'child'),
        (code: fa_chrome; name: 'chrome'),
        (code: fa_circle; name: 'circle'),
        (code: fa_circle_o; name: 'circle_o'),
        (code: fa_circle_o_notch; name: 'circle_o_notch'),
        (code: fa_circle_thin; name: 'circle_thin'),
        (code: fa_clipboard; name: 'clipboard'),
        (code: fa_clock_o; name: 'clock_o'),
        (code: fa_clone; name: 'clone'),
        (code: fa_close; name: 'close'),
        (code: fa_cloud; name: 'cloud'),
        (code: fa_cloud_download; name: 'cloud_download'),
        (code: fa_cloud_upload; name: 'cloud_upload'),
        (code: fa_cny; name: 'cny'),
        (code: fa_code; name: 'code'),
        (code: fa_code_fork; name: 'code_fork'),
        (code: fa_codepen; name: 'codepen'),
        (code: fa_codiepie; name: 'codiepie'),
        (code: fa_coffee; name: 'coffee'),
        (code: fa_cog; name: 'cog'),
        (code: fa_cogs; name: 'cogs'),
        (code: fa_columns; name: 'columns'),
        (code: fa_comment; name: 'comment'),
        (code: fa_comment_o; name: 'comment_o'),
        (code: fa_commenting; name: 'commenting'),
        (code: fa_commenting_o; name: 'commenting_o'),
        (code: fa_comments; name: 'comments'),
        (code: fa_comments_o; name: 'comments_o'),
        (code: fa_compass; name: 'compass'),
        (code: fa_compress; name: 'compress'),
        (code: fa_connectdevelop; name: 'connectdevelop'),
        (code: fa_contao; name: 'contao'),
        (code: fa_copy; name: 'copy'),
        (code: fa_copyright; name: 'copyright'),
        (code: fa_creative_commons; name: 'creative_commons'),
        (code: fa_credit_card; name: 'credit_card'),
        (code: fa_credit_card_alt; name: 'credit_card_alt'),
        (code: fa_crop; name: 'crop'),
        (code: fa_crosshairs; name: 'crosshairs'),
        (code: fa_css3; name: 'css3'),
        (code: fa_cube; name: 'cube'),
        (code: fa_cubes; name: 'cubes'),
        (code: fa_cut; name: 'cut'),
        (code: fa_cutlery; name: 'cutlery'),
        (code: fa_dashboard; name: 'dashboard'),
        (code: fa_dashcube; name: 'dashcube'),
        (code: fa_database; name: 'database'),
        (code: fa_deaf; name: 'deaf'),
        (code: fa_deafness; name: 'deafness'),
        (code: fa_dedent; name: 'dedent'),
        (code: fa_delicious; name: 'delicious'),
        (code: fa_desktop; name: 'desktop'),
        (code: fa_deviantart; name: 'deviantart'),
        (code: fa_diamond; name: 'diamond'),
        (code: fa_digg; name: 'digg'),
        (code: fa_dollar; name: 'dollar'),
        (code: fa_dot_circle_o; name: 'dot_circle_o'),
        (code: fa_download; name: 'download'),
        (code: fa_dribbble; name: 'dribbble'),
        (code: fa_drivers_license; name: 'drivers_license'),
        (code: fa_drivers_license_o; name: 'drivers_license_o'),
        (code: fa_dropbox; name: 'dropbox'),
        (code: fa_drupal; name: 'drupal'),
        (code: fa_edge; name: 'edge'),
        (code: fa_edit; name: 'edit'),
        (code: fa_eercast; name: 'eercast'),
        (code: fa_eject; name: 'eject'),
        (code: fa_ellipsis_h; name: 'ellipsis_h'),
        (code: fa_ellipsis_v; name: 'ellipsis_v'),
        (code: fa_empire; name: 'empire'),
        (code: fa_envelope; name: 'envelope'),
        (code: fa_envelope_o; name: 'envelope_o'),
        (code: fa_envelope_open; name: 'envelope_open'),
        (code: fa_envelope_open_o; name: 'envelope_open_o'),
        (code: fa_envelope_square; name: 'envelope_square'),
        (code: fa_envira; name: 'envira'),
        (code: fa_eraser; name: 'eraser'),
        (code: fa_etsy; name: 'etsy'),
        (code: fa_eur; name: 'eur'),
        (code: fa_euro; name: 'euro'),
        (code: fa_exchange; name: 'exchange'),
        (code: fa_exclamation; name: 'exclamation'),
        (code: fa_exclamation_circle; name: 'exclamation_circle'),
        (code: fa_exclamation_triangle; name: 'exclamation_triangle'),
        (code: fa_expand; name: 'expand'),
        (code: fa_expeditedssl; name: 'expeditedssl'),
        (code: fa_external_link; name: 'external_link'),
        (code: fa_external_link_square; name: 'external_link_square'),
        (code: fa_eye; name: 'eye'),
        (code: fa_eye_slash; name: 'eye_slash'),
        (code: fa_eyedropper; name: 'eyedropper'),
        (code: fa_fa; name: 'fa'),
        (code: fa_facebook; name: 'facebook'),
        (code: fa_facebook_f; name: 'facebook_f'),
        (code: fa_facebook_official; name: 'facebook_official'),
        (code: fa_facebook_square; name: 'facebook_square'),
        (code: fa_fast_backward; name: 'fast_backward'),
        (code: fa_fast_forward; name: 'fast_forward'),
        (code: fa_fax; name: 'fax'),
        (code: fa_feed; name: 'feed'),
        (code: fa_female; name: 'female'),
        (code: fa_fighter_jet; name: 'fighter_jet'),
        (code: fa_file; name: 'file'),
        (code: fa_file_archive_o; name: 'file_archive_o'),
        (code: fa_file_audio_o; name: 'file_audio_o'),
        (code: fa_file_code_o; name: 'file_code_o'),
        (code: fa_file_excel_o; name: 'file_excel_o'),
        (code: fa_file_image_o; name: 'file_image_o'),
        (code: fa_file_movie_o; name: 'file_movie_o'),
        (code: fa_file_o; name: 'file_o'),
        (code: fa_file_pdf_o; name: 'file_pdf_o'),
        (code: fa_file_photo_o; name: 'file_photo_o'),
        (code: fa_file_picture_o; name: 'file_picture_o'),
        (code: fa_file_powerpoint_o; name: 'file_powerpoint_o'),
        (code: fa_file_sound_o; name: 'file_sound_o'),
        (code: fa_file_text; name: 'file_text'),
        (code: fa_file_text_o; name: 'file_text_o'),
        (code: fa_file_video_o; name: 'file_video_o'),
        (code: fa_file_word_o; name: 'file_word_o'),
        (code: fa_file_zip_o; name: 'file_zip_o'),
        (code: fa_files_o; name: 'files_o'),
        (code: fa_film; name: 'film'),
        (code: fa_filter; name: 'filter'),
        (code: fa_fire; name: 'fire'),
        (code: fa_fire_extinguisher; name: 'fire_extinguisher'),
        (code: fa_firefox; name: 'firefox'),
        (code: fa_first_order; name: 'first_order'),
        (code: fa_flag; name: 'flag'),
        (code: fa_flag_checkered; name: 'flag_checkered'),
        (code: fa_flag_o; name: 'flag_o'),
        (code: fa_flash; name: 'flash'),
        (code: fa_flask; name: 'flask'),
        (code: fa_flickr; name: 'flickr'),
        (code: fa_floppy_o; name: 'floppy_o'),
        (code: fa_folder; name: 'folder'),
        (code: fa_folder_o; name: 'folder_o'),
        (code: fa_folder_open; name: 'folder_open'),
        (code: fa_folder_open_o; name: 'folder_open_o'),
        (code: fa_font; name: 'font'),
        (code: fa_font_awesome; name: 'font_awesome'),
        (code: fa_fonticons; name: 'fonticons'),
        (code: fa_fort_awesome; name: 'fort_awesome'),
        (code: fa_forumbee; name: 'forumbee'),
        (code: fa_forward; name: 'forward'),
        (code: fa_foursquare; name: 'foursquare'),
        (code: fa_free_code_camp; name: 'free_code_camp'),
        (code: fa_frown_o; name: 'frown_o'),
        (code: fa_futbol_o; name: 'futbol_o'),
        (code: fa_gamepad; name: 'gamepad'),
        (code: fa_gavel; name: 'gavel'),
        (code: fa_gbp; name: 'gbp'),
        (code: fa_ge; name: 'ge'),
        (code: fa_gear; name: 'gear'),
        (code: fa_gears; name: 'gears'),
        (code: fa_genderless; name: 'genderless'),
        (code: fa_get_pocket; name: 'get_pocket'),
        (code: fa_gg; name: 'gg'),
        (code: fa_gg_circle; name: 'gg_circle'),
        (code: fa_gift; name: 'gift'),
        (code: fa_git; name: 'git'),
        (code: fa_git_square; name: 'git_square'),
        (code: fa_github; name: 'github'),
        (code: fa_github_alt; name: 'github_alt'),
        (code: fa_github_square; name: 'github_square'),
        (code: fa_gitlab; name: 'gitlab'),
        (code: fa_gittip; name: 'gittip'),
        (code: fa_glass; name: 'glass'),
        (code: fa_glide; name: 'glide'),
        (code: fa_glide_g; name: 'glide_g'),
        (code: fa_globe; name: 'globe'),
        (code: fa_google; name: 'google'),
        (code: fa_google_plus; name: 'google_plus'),
        (code: fa_google_plus_circle; name: 'google_plus_circle'),
        (code: fa_google_plus_official; name: 'google_plus_official'),
        (code: fa_google_plus_square; name: 'google_plus_square'),
        (code: fa_google_wallet; name: 'google_wallet'),
        (code: fa_graduation_cap; name: 'graduation_cap'),
        (code: fa_gratipay; name: 'gratipay'),
        (code: fa_grav; name: 'grav'),
        (code: fa_group; name: 'group'),
        (code: fa_h_square; name: 'h_square'),
        (code: fa_hacker_news; name: 'hacker_news'),
        (code: fa_hand_grab_o; name: 'hand_grab_o'),
        (code: fa_hand_lizard_o; name: 'hand_lizard_o'),
        (code: fa_hand_o_down; name: 'hand_o_down'),
        (code: fa_hand_o_left; name: 'hand_o_left'),
        (code: fa_hand_o_right; name: 'hand_o_right'),
        (code: fa_hand_o_up; name: 'hand_o_up'),
        (code: fa_hand_paper_o; name: 'hand_paper_o'),
        (code: fa_hand_peace_o; name: 'hand_peace_o'),
        (code: fa_hand_pointer_o; name: 'hand_pointer_o'),
        (code: fa_hand_rock_o; name: 'hand_rock_o'),
        (code: fa_hand_scissors_o; name: 'hand_scissors_o'),
        (code: fa_hand_spock_o; name: 'hand_spock_o'),
        (code: fa_hand_stop_o; name: 'hand_stop_o'),
        (code: fa_handshake_o; name: 'handshake_o'),
        (code: fa_hard_of_hearing; name: 'hard_of_hearing'),
        (code: fa_hashtag; name: 'hashtag'),
        (code: fa_hdd_o; name: 'hdd_o'),
        (code: fa_header; name: 'header'),
        (code: fa_headphones; name: 'headphones'),
        (code: fa_heart; name: 'heart'),
        (code: fa_heart_o; name: 'heart_o'),
        (code: fa_heartbeat; name: 'heartbeat'),
        (code: fa_history; name: 'history'),
        (code: fa_home; name: 'home'),
        (code: fa_hospital_o; name: 'hospital_o'),
        (code: fa_hotel; name: 'hotel'),
        (code: fa_hourglass; name: 'hourglass'),
        (code: fa_hourglass_1; name: 'hourglass_1'),
        (code: fa_hourglass_2; name: 'hourglass_2'),
        (code: fa_hourglass_3; name: 'hourglass_3'),
        (code: fa_hourglass_end; name: 'hourglass_end'),
        (code: fa_hourglass_half; name: 'hourglass_half'),
        (code: fa_hourglass_o; name: 'hourglass_o'),
        (code: fa_hourglass_start; name: 'hourglass_start'),
        (code: fa_houzz; name: 'houzz'),
        (code: fa_html5; name: 'html5'),
        (code: fa_i_cursor; name: 'i_cursor'),
        (code: fa_id_badge; name: 'id_badge'),
        (code: fa_id_card; name: 'id_card'),
        (code: fa_id_card_o; name: 'id_card_o'),
        (code: fa_ils; name: 'ils'),
        (code: fa_image; name: 'image'),
        (code: fa_imdb; name: 'imdb'),
        (code: fa_inbox; name: 'inbox'),
        (code: fa_indent; name: 'indent'),
        (code: fa_industry; name: 'industry'),
        (code: fa_info; name: 'info'),
        (code: fa_info_circle; name: 'info_circle'),
        (code: fa_inr; name: 'inr'),
        (code: fa_instagram; name: 'instagram'),
        (code: fa_institution; name: 'institution'),
        (code: fa_internet_explorer; name: 'internet_explorer'),
        (code: fa_intersex; name: 'intersex'),
        (code: fa_ioxhost; name: 'ioxhost'),
        (code: fa_italic; name: 'italic'),
        (code: fa_joomla; name: 'joomla'),
        (code: fa_jpy; name: 'jpy'),
        (code: fa_jsfiddle; name: 'jsfiddle'),
        (code: fa_key; name: 'key'),
        (code: fa_keyboard_o; name: 'keyboard_o'),
        (code: fa_krw; name: 'krw'),
        (code: fa_language; name: 'language'),
        (code: fa_laptop; name: 'laptop'),
        (code: fa_lastfm; name: 'lastfm'),
        (code: fa_lastfm_square; name: 'lastfm_square'),
        (code: fa_leaf; name: 'leaf'),
        (code: fa_leanpub; name: 'leanpub'),
        (code: fa_legal; name: 'legal'),
        (code: fa_lemon_o; name: 'lemon_o'),
        (code: fa_level_down; name: 'level_down'),
        (code: fa_level_up; name: 'level_up'),
        (code: fa_life_bouy; name: 'life_bouy'),
        (code: fa_life_buoy; name: 'life_buoy'),
        (code: fa_life_ring; name: 'life_ring'),
        (code: fa_life_saver; name: 'life_saver'),
        (code: fa_lightbulb_o; name: 'lightbulb_o'),
        (code: fa_line_chart; name: 'line_chart'),
        (code: fa_link; name: 'link'),
        (code: fa_linkedin; name: 'linkedin'),
        (code: fa_linkedin_square; name: 'linkedin_square'),
        (code: fa_linode; name: 'linode'),
        (code: fa_linux; name: 'linux'),
        (code: fa_list; name: 'list'),
        (code: fa_list_alt; name: 'list_alt'),
        (code: fa_list_ol; name: 'list_ol'),
        (code: fa_list_ul; name: 'list_ul'),
        (code: fa_location_arrow; name: 'location_arrow'),
        (code: fa_lock; name: 'lock'),
        (code: fa_long_arrow_down; name: 'long_arrow_down'),
        (code: fa_long_arrow_left; name: 'long_arrow_left'),
        (code: fa_long_arrow_right; name: 'long_arrow_right'),
        (code: fa_long_arrow_up; name: 'long_arrow_up'),
        (code: fa_low_vision; name: 'low_vision'),
        (code: fa_magic; name: 'magic'),
        (code: fa_magnet; name: 'magnet'),
        (code: fa_mail_forward; name: 'mail_forward'),
        (code: fa_mail_reply; name: 'mail_reply'),
        (code: fa_mail_reply_all; name: 'mail_reply_all'),
        (code: fa_male; name: 'male'),
        (code: fa_map; name: 'map'),
        (code: fa_map_marker; name: 'map_marker'),
        (code: fa_map_o; name: 'map_o'),
        (code: fa_map_pin; name: 'map_pin'),
        (code: fa_map_signs; name: 'map_signs'),
        (code: fa_mars; name: 'mars'),
        (code: fa_mars_double; name: 'mars_double'),
        (code: fa_mars_stroke; name: 'mars_stroke'),
        (code: fa_mars_stroke_h; name: 'mars_stroke_h'),
        (code: fa_mars_stroke_v; name: 'mars_stroke_v'),
        (code: fa_maxcdn; name: 'maxcdn'),
        (code: fa_meanpath; name: 'meanpath'),
        (code: fa_medium; name: 'medium'),
        (code: fa_medkit; name: 'medkit'),
        (code: fa_meetup; name: 'meetup'),
        (code: fa_meh_o; name: 'meh_o'),
        (code: fa_mercury; name: 'mercury'),
        (code: fa_microchip; name: 'microchip'),
        (code: fa_microphone; name: 'microphone'),
        (code: fa_microphone_slash; name: 'microphone_slash'),
        (code: fa_minus; name: 'minus'),
        (code: fa_minus_circle; name: 'minus_circle'),
        (code: fa_minus_square; name: 'minus_square'),
        (code: fa_minus_square_o; name: 'minus_square_o'),
        (code: fa_mixcloud; name: 'mixcloud'),
        (code: fa_mobile; name: 'mobile'),
        (code: fa_mobile_phone; name: 'mobile_phone'),
        (code: fa_modx; name: 'modx'),
        (code: fa_money; name: 'money'),
        (code: fa_moon_o; name: 'moon_o'),
        (code: fa_mortar_board; name: 'mortar_board'),
        (code: fa_motorcycle; name: 'motorcycle'),
        (code: fa_mouse_pointer; name: 'mouse_pointer'),
        (code: fa_music; name: 'music'),
        (code: fa_navicon; name: 'navicon'),
        (code: fa_neuter; name: 'neuter'),
        (code: fa_newspaper_o; name: 'newspaper_o'),
        (code: fa_object_group; name: 'object_group'),
        (code: fa_object_ungroup; name: 'object_ungroup'),
        (code: fa_odnoklassniki; name: 'odnoklassniki'),
        (code: fa_odnoklassniki_square; name: 'odnoklassniki_square'),
        (code: fa_opencart; name: 'opencart'),
        (code: fa_openid; name: 'openid'),
        (code: fa_opera; name: 'opera'),
        (code: fa_optin_monster; name: 'optin_monster'),
        (code: fa_outdent; name: 'outdent'),
        (code: fa_pagelines; name: 'pagelines'),
        (code: fa_paint_brush; name: 'paint_brush'),
        (code: fa_paper_plane; name: 'paper_plane'),
        (code: fa_paper_plane_o; name: 'paper_plane_o'),
        (code: fa_paperclip; name: 'paperclip'),
        (code: fa_paragraph; name: 'paragraph'),
        (code: fa_paste; name: 'paste'),
        (code: fa_pause; name: 'pause'),
        (code: fa_pause_circle; name: 'pause_circle'),
        (code: fa_pause_circle_o; name: 'pause_circle_o'),
        (code: fa_paw; name: 'paw'),
        (code: fa_paypal; name: 'paypal'),
        (code: fa_pencil; name: 'pencil'),
        (code: fa_pencil_square; name: 'pencil_square'),
        (code: fa_pencil_square_o; name: 'pencil_square_o'),
        (code: fa_percent; name: 'percent'),
        (code: fa_phone; name: 'phone'),
        (code: fa_phone_square; name: 'phone_square'),
        (code: fa_photo; name: 'photo'),
        (code: fa_picture_o; name: 'picture_o'),
        (code: fa_pie_chart; name: 'pie_chart'),
        (code: fa_pied_piper; name: 'pied_piper'),
        (code: fa_pied_piper_alt; name: 'pied_piper_alt'),
        (code: fa_pied_piper_pp; name: 'pied_piper_pp'),
        (code: fa_pinterest; name: 'pinterest'),
        (code: fa_pinterest_p; name: 'pinterest_p'),
        (code: fa_pinterest_square; name: 'pinterest_square'),
        (code: fa_plane; name: 'plane'),
        (code: fa_play; name: 'play'),
        (code: fa_play_circle; name: 'play_circle'),
        (code: fa_play_circle_o; name: 'play_circle_o'),
        (code: fa_plug; name: 'plug'),
        (code: fa_plus; name: 'plus'),
        (code: fa_plus_circle; name: 'plus_circle'),
        (code: fa_plus_square; name: 'plus_square'),
        (code: fa_plus_square_o; name: 'plus_square_o'),
        (code: fa_podcast; name: 'podcast'),
        (code: fa_power_off; name: 'power_off'),
        (code: fa_print; name: 'print'),
        (code: fa_product_hunt; name: 'product_hunt'),
        (code: fa_puzzle_piece; name: 'puzzle_piece'),
        (code: fa_qq; name: 'qq'),
        (code: fa_qrcode; name: 'qrcode'),
        (code: fa_question; name: 'question'),
        (code: fa_question_circle; name: 'question_circle'),
        (code: fa_question_circle_o; name: 'question_circle_o'),
        (code: fa_quora; name: 'quora'),
        (code: fa_quote_left; name: 'quote_left'),
        (code: fa_quote_right; name: 'quote_right'),
        (code: fa_ra; name: 'ra'),
        (code: fa_random; name: 'random'),
        (code: fa_ravelry; name: 'ravelry'),
        (code: fa_rebel; name: 'rebel'),
        (code: fa_recycle; name: 'recycle'),
        (code: fa_reddit; name: 'reddit'),
        (code: fa_reddit_alien; name: 'reddit_alien'),
        (code: fa_reddit_square; name: 'reddit_square'),
        (code: fa_refresh; name: 'refresh'),
        (code: fa_registered; name: 'registered'),
        (code: fa_remove; name: 'remove'),
        (code: fa_renren; name: 'renren'),
        (code: fa_reorder; name: 'reorder'),
        (code: fa_repeat; name: 'repeat'),
        (code: fa_reply; name: 'reply'),
        (code: fa_reply_all; name: 'reply_all'),
        (code: fa_resistance; name: 'resistance'),
        (code: fa_retweet; name: 'retweet'),
        (code: fa_rmb; name: 'rmb'),
        (code: fa_road; name: 'road'),
        (code: fa_rocket; name: 'rocket'),
        (code: fa_rotate_left; name: 'rotate_left'),
        (code: fa_rotate_right; name: 'rotate_right'),
        (code: fa_rouble; name: 'rouble'),
        (code: fa_rss; name: 'rss'),
        (code: fa_rss_square; name: 'rss_square'),
        (code: fa_rub; name: 'rub'),
        (code: fa_ruble; name: 'ruble'),
        (code: fa_rupee; name: 'rupee'),
        (code: fa_s15; name: 's15'),
        (code: fa_safari; name: 'safari'),
        (code: fa_save; name: 'save'),
        (code: fa_scissors; name: 'scissors'),
        (code: fa_scribd; name: 'scribd'),
        (code: fa_search; name: 'search'),
        (code: fa_search_minus; name: 'search_minus'),
        (code: fa_search_plus; name: 'search_plus'),
        (code: fa_sellsy; name: 'sellsy'),
        (code: fa_send; name: 'send'),
        (code: fa_send_o; name: 'send_o'),
        (code: fa_server; name: 'server'),
        (code: fa_share; name: 'share'),
        (code: fa_share_alt; name: 'share_alt'),
        (code: fa_share_alt_square; name: 'share_alt_square'),
        (code: fa_share_square; name: 'share_square'),
        (code: fa_share_square_o; name: 'share_square_o'),
        (code: fa_shekel; name: 'shekel'),
        (code: fa_sheqel; name: 'sheqel'),
        (code: fa_shield; name: 'shield'),
        (code: fa_ship; name: 'ship'),
        (code: fa_shirtsinbulk; name: 'shirtsinbulk'),
        (code: fa_shopping_bag; name: 'shopping_bag'),
        (code: fa_shopping_basket; name: 'shopping_basket'),
        (code: fa_shopping_cart; name: 'shopping_cart'),
        (code: fa_shower; name: 'shower'),
        (code: fa_sign_in; name: 'sign_in'),
        (code: fa_sign_language; name: 'sign_language'),
        (code: fa_sign_out; name: 'sign_out'),
        (code: fa_signal; name: 'signal'),
        (code: fa_signing; name: 'signing'),
        (code: fa_simplybuilt; name: 'simplybuilt'),
        (code: fa_sitemap; name: 'sitemap'),
        (code: fa_skyatlas; name: 'skyatlas'),
        (code: fa_skype; name: 'skype'),
        (code: fa_slack; name: 'slack'),
        (code: fa_sliders; name: 'sliders'),
        (code: fa_slideshare; name: 'slideshare'),
        (code: fa_smile_o; name: 'smile_o'),
        (code: fa_snapchat; name: 'snapchat'),
        (code: fa_snapchat_ghost; name: 'snapchat_ghost'),
        (code: fa_snapchat_square; name: 'snapchat_square'),
        (code: fa_snowflake_o; name: 'snowflake_o'),
        (code: fa_soccer_ball_o; name: 'soccer_ball_o'),
        (code: fa_sort; name: 'sort'),
        (code: fa_sort_alpha_asc; name: 'sort_alpha_asc'),
        (code: fa_sort_alpha_desc; name: 'sort_alpha_desc'),
        (code: fa_sort_amount_asc; name: 'sort_amount_asc'),
        (code: fa_sort_amount_desc; name: 'sort_amount_desc'),
        (code: fa_sort_asc; name: 'sort_asc'),
        (code: fa_sort_desc; name: 'sort_desc'),
        (code: fa_sort_down; name: 'sort_down'),
        (code: fa_sort_numeric_asc; name: 'sort_numeric_asc'),
        (code: fa_sort_numeric_desc; name: 'sort_numeric_desc'),
        (code: fa_sort_up; name: 'sort_up'),
        (code: fa_soundcloud; name: 'soundcloud'),
        (code: fa_space_shuttle; name: 'space_shuttle'),
        (code: fa_spinner; name: 'spinner'),
        (code: fa_spoon; name: 'spoon'),
        (code: fa_spotify; name: 'spotify'),
        (code: fa_square; name: 'square'),
        (code: fa_square_o; name: 'square_o'),
        (code: fa_stack_exchange; name: 'stack_exchange'),
        (code: fa_stack_overflow; name: 'stack_overflow'),
        (code: fa_star; name: 'star'),
        (code: fa_star_half; name: 'star_half'),
        (code: fa_star_half_empty; name: 'star_half_empty'),
        (code: fa_star_half_full; name: 'star_half_full'),
        (code: fa_star_half_o; name: 'star_half_o'),
        (code: fa_star_o; name: 'star_o'),
        (code: fa_steam; name: 'steam'),
        (code: fa_steam_square; name: 'steam_square'),
        (code: fa_step_backward; name: 'step_backward'),
        (code: fa_step_forward; name: 'step_forward'),
        (code: fa_stethoscope; name: 'stethoscope'),
        (code: fa_sticky_note; name: 'sticky_note'),
        (code: fa_sticky_note_o; name: 'sticky_note_o'),
        (code: fa_stop; name: 'stop'),
        (code: fa_stop_circle; name: 'stop_circle'),
        (code: fa_stop_circle_o; name: 'stop_circle_o'),
        (code: fa_street_view; name: 'street_view'),
        (code: fa_strikethrough; name: 'strikethrough'),
        (code: fa_stumbleupon; name: 'stumbleupon'),
        (code: fa_stumbleupon_circle; name: 'stumbleupon_circle'),
        (code: fa_subscript; name: 'subscript'),
        (code: fa_subway; name: 'subway'),
        (code: fa_suitcase; name: 'suitcase'),
        (code: fa_sun_o; name: 'sun_o'),
        (code: fa_superpowers; name: 'superpowers'),
        (code: fa_superscript; name: 'superscript'),
        (code: fa_support; name: 'support'),
        (code: fa_table; name: 'table'),
        (code: fa_tablet; name: 'tablet'),
        (code: fa_tachometer; name: 'tachometer'),
        (code: fa_tag; name: 'tag'),
        (code: fa_tags; name: 'tags'),
        (code: fa_tasks; name: 'tasks'),
        (code: fa_taxi; name: 'taxi'),
        (code: fa_telegram; name: 'telegram'),
        (code: fa_television; name: 'television'),
        (code: fa_tencent_weibo; name: 'tencent_weibo'),
        (code: fa_terminal; name: 'terminal'),
        (code: fa_text_height; name: 'text_height'),
        (code: fa_text_width; name: 'text_width'),
        (code: fa_th; name: 'th'),
        (code: fa_th_large; name: 'th_large'),
        (code: fa_th_list; name: 'th_list'),
        (code: fa_themeisle; name: 'themeisle'),
        (code: fa_thermometer; name: 'thermometer'),
        (code: fa_thermometer_0; name: 'thermometer_0'),
        (code: fa_thermometer_1; name: 'thermometer_1'),
        (code: fa_thermometer_2; name: 'thermometer_2'),
        (code: fa_thermometer_3; name: 'thermometer_3'),
        (code: fa_thermometer_4; name: 'thermometer_4'),
        (code: fa_thermometer_empty; name: 'thermometer_empty'),
        (code: fa_thermometer_full; name: 'thermometer_full'),
        (code: fa_thermometer_half; name: 'thermometer_half'),
        (code: fa_thermometer_quarter; name: 'thermometer_quarter'),
        (code: fa_thermometer_three_quarters; name: 'thermometer_three_quarters'),
        (code: fa_thumb_tack; name: 'thumb_tack'),
        (code: fa_thumbs_down; name: 'thumbs_down'),
        (code: fa_thumbs_o_down; name: 'thumbs_o_down'),
        (code: fa_thumbs_o_up; name: 'thumbs_o_up'),
        (code: fa_thumbs_up; name: 'thumbs_up'),
        (code: fa_ticket; name: 'ticket'),
        (code: fa_times; name: 'times'),
        (code: fa_times_circle; name: 'times_circle'),
        (code: fa_times_circle_o; name: 'times_circle_o'),
        (code: fa_times_rectangle; name: 'times_rectangle'),
        (code: fa_times_rectangle_o; name: 'times_rectangle_o'),
        (code: fa_tint; name: 'tint'),
        (code: fa_toggle_down; name: 'toggle_down'),
        (code: fa_toggle_left; name: 'toggle_left'),
        (code: fa_toggle_off; name: 'toggle_off'),
        (code: fa_toggle_on; name: 'toggle_on'),
        (code: fa_toggle_right; name: 'toggle_right'),
        (code: fa_toggle_up; name: 'toggle_up'),
        (code: fa_trademark; name: 'trademark'),
        (code: fa_train; name: 'train'),
        (code: fa_transgender; name: 'transgender'),
        (code: fa_transgender_alt; name: 'transgender_alt'),
        (code: fa_trash; name: 'trash'),
        (code: fa_trash_o; name: 'trash_o'),
        (code: fa_tree; name: 'tree'),
        (code: fa_trello; name: 'trello'),
        (code: fa_tripadvisor; name: 'tripadvisor'),
        (code: fa_trophy; name: 'trophy'),
        (code: fa_truck; name: 'truck'),
        (code: fa_try; name: 'try'),
        (code: fa_tty; name: 'tty'),
        (code: fa_tumblr; name: 'tumblr'),
        (code: fa_tumblr_square; name: 'tumblr_square'),
        (code: fa_turkish_lira; name: 'turkish_lira'),
        (code: fa_tv; name: 'tv'),
        (code: fa_twitch; name: 'twitch'),
        (code: fa_twitter; name: 'twitter'),
        (code: fa_twitter_square; name: 'twitter_square'),
        (code: fa_umbrella; name: 'umbrella'),
        (code: fa_underline; name: 'underline'),
        (code: fa_undo; name: 'undo'),
        (code: fa_universal_access; name: 'universal_access'),
        (code: fa_university; name: 'university'),
        (code: fa_unlink; name: 'unlink'),
        (code: fa_unlock; name: 'unlock'),
        (code: fa_unlock_alt; name: 'unlock_alt'),
        (code: fa_unsorted; name: 'unsorted'),
        (code: fa_upload; name: 'upload'),
        (code: fa_usb; name: 'usb'),
        (code: fa_usd; name: 'usd'),
        (code: fa_user; name: 'user'),
        (code: fa_user_circle; name: 'user_circle'),
        (code: fa_user_circle_o; name: 'user_circle_o'),
        (code: fa_user_md; name: 'user_md'),
        (code: fa_user_o; name: 'user_o'),
        (code: fa_user_plus; name: 'user_plus'),
        (code: fa_user_secret; name: 'user_secret'),
        (code: fa_user_times; name: 'user_times'),
        (code: fa_users; name: 'users'),
        (code: fa_vcard; name: 'vcard'),
        (code: fa_vcard_o; name: 'vcard_o'),
        (code: fa_venus; name: 'venus'),
        (code: fa_venus_double; name: 'venus_double'),
        (code: fa_venus_mars; name: 'venus_mars'),
        (code: fa_viacoin; name: 'viacoin'),
        (code: fa_viadeo; name: 'viadeo'),
        (code: fa_viadeo_square; name: 'viadeo_square'),
        (code: fa_video_camera; name: 'video_camera'),
        (code: fa_vimeo; name: 'vimeo'),
        (code: fa_vimeo_square; name: 'vimeo_square'),
        (code: fa_vine; name: 'vine'),
        (code: fa_vk; name: 'vk'),
        (code: fa_volume_control_phone; name: 'volume_control_phone'),
        (code: fa_volume_down; name: 'volume_down'),
        (code: fa_volume_off; name: 'volume_off'),
        (code: fa_volume_up; name: 'volume_up'),
        (code: fa_warning; name: 'warning'),
        (code: fa_wechat; name: 'wechat'),
        (code: fa_weibo; name: 'weibo'),
        (code: fa_weixin; name: 'weixin'),
        (code: fa_whatsapp; name: 'whatsapp'),
        (code: fa_wheelchair; name: 'wheelchair'),
        (code: fa_wheelchair_alt; name: 'wheelchair_alt'),
        (code: fa_wifi; name: 'wifi'),
        (code: fa_wikipedia_w; name: 'wikipedia_w'),
        (code: fa_window_close; name: 'window_close'),
        (code: fa_window_close_o; name: 'window_close_o'),
        (code: fa_window_maximize; name: 'window_maximize'),
        (code: fa_window_minimize; name: 'window_minimize'),
        (code: fa_window_restore; name: 'window_restore'),
        (code: fa_windows; name: 'windows'),
        (code: fa_won; name: 'won'),
        (code: fa_wordpress; name: 'wordpress'),
        (code: fa_wpbeginner; name: 'wpbeginner'),
        (code: fa_wpexplorer; name: 'wpexplorer'),
        (code: fa_wpforms; name: 'wpforms'),
        (code: fa_wrench; name: 'wrench'),
        (code: fa_xing; name: 'xing'),
        (code: fa_xing_square; name: 'xing_square'),
        (code: fa_y_combinator; name: 'y_combinator'),
        (code: fa_y_combinator_square; name: 'y_combinator_square'),
        (code: fa_yahoo; name: 'yahoo'),
        (code: fa_yc; name: 'yc'),
        (code: fa_yc_square; name: 'yc_square'),
        (code: fa_yelp; name: 'yelp'),
        (code: fa_yen; name: 'yen'),
        (code: fa_yoast; name: 'yoast'),
        (code: fa_youtube; name: 'youtube'),
        (code: fa_youtube_play; name: 'youtube_play')
      );
      {$ENDREGION 'AwesomeFontInfos'}
    class var
      FFontCollection: TGPPrivateFontCollection;

    class constructor Create;
    class destructor Destroy;

    class procedure LoadFromResource;
  private
    class function  ColorToGPColor(AColor: TColor; Alpha: Byte = 255): Cardinal;
    class function  GetFontCollection: TGPPrivateFontCollection; static;
    class function  RectToGPRect(ARect: TRect): TGPRectF;
  public
    class procedure Draw(ACanvas: TCanvas; AColor: TColor; AColorAlpha: Byte; ARect: TRect; AFontHeight: Integer; AIndex: Integer); overload;
    class procedure Draw(AGraphics: TGPGraphics; AColor: Cardinal; ARect: TGPRectF; AFontHeight: Integer; AIndex: Integer); overload;
    class function  FindByName(const AName: string): WORD;
    class function  GetFontNames: TStrings;

    class property FontCollection: TGPPrivateFontCollection read GetFontCollection;
  end;

implementation

uses
  System.Math;

{$R AwesomeFont.res}

{ TFontAwesome }

class constructor TFontAwesome.Create;
begin
  FFontCollection := TGPPrivateFontCollection.Create;

  LoadFromResource;
end;

class destructor TFontAwesome.Destroy;
begin
  FFontCollection.Free;
end;

class procedure TFontAwesome.Draw(AGraphics: TGPGraphics; AColor: Cardinal; ARect: TGPRectF; AFontHeight, AIndex: Integer);
var
  LFont: TGPFont;
  LBrush: TGPSolidBrush;
  LGPStringFormat: TGPStringFormat;
  LChar: Char;
begin
  if AFontHeight = 0 then
    AFontHeight := Trunc(Min(Trunc(ARect.Width), Trunc(ARect.Height)) * 0.9);

  AGraphics.SetTextRenderingHint(TextRenderingHintAntiAlias);
  LFont := TGPFont.Create('FontAwesome', AFontHeight, FontStyleRegular, UnitPixel, FFontCollection);
  try
    LBrush := TGPSolidBrush.Create(AColor);
    try
      LGPStringFormat := TGPStringFormat.Create;
      try
        LGPStringFormat.SetFormatFlags(StringFormatFlagsNoClip);
        LGPStringFormat.SetAlignment(StringAlignment.StringAlignmentCenter);

        ARect.Y := ARect.Y + (ARect.Height - AFontHeight) / 2;
        ARect.Height := AFontHeight;
        LChar := Chr(AIndex);

        AGraphics.DrawString(LChar, -1, LFont, ARect, LGPStringFormat, LBrush);
      finally
        LGPStringFormat.Free;
      end;
    finally
      LBrush.Free;
    end;
  finally
    LFont.Free;
  end;
end;

class procedure TFontAwesome.Draw(ACanvas: TCanvas; AColor: TColor; AColorAlpha: Byte; ARect: TRect; AFontHeight, AIndex: Integer);
var
  LGraphics: TGPGraphics;
  LRect: TGPRectF;
  LColor: Cardinal;
begin
  LGraphics := TGPGraphics.Create(ACanvas.Handle);
  try
    LGraphics.SetSmoothingMode(SmoothingModeHighQuality);
    LGraphics.SetPixelOffsetMode(PixelOffsetModeHalf);

    LColor := ColorToGPColor(AColor, AColorAlpha);
    LRect := RectToGPRect(ARect);

    Draw(LGraphics, LColor, LRect, AFontHeight, AIndex);
  finally
    LGraphics.Free;
  end;
end;

class function TFontAwesome.ColorToGPColor(AColor: TColor; Alpha: Byte): Cardinal;
var
  LColor: Cardinal;
begin
  if AColor = clNone then
  begin
    Result := MakeColor(0, 0, 0, 0);
  end
  else
  begin
    LColor := ColorToRGB(AColor);
    Result := ((LColor shl 16) and $00FF0000) or ((LColor shr 16) and $000000FF) or (LColor and $0000FF00) or (Alpha shl 24);
  end;
end;

class function TFontAwesome.FindByName(const AName: string): WORD;
var
  i: Integer;
begin
  Result := 0;
  for i := 0 to MaxFontCount-1 do
    if SameText(AName, AwesomeFontInfos[i].Name) then
    begin
      Result := AwesomeFontInfos[i].Code;
      Exit;
    end;
end;

class function TFontAwesome.GetFontCollection: TGPPrivateFontCollection;
begin
  Result := FFontCollection;
end;

class function TFontAwesome.GetFontNames: TStrings;
var
  i: Integer;
begin
  Result := TStringList.Create;
  for i := 0 to MaxFontCount-1 do
    Result.Add(AwesomeFontInfos[i].Name);
end;

class procedure TFontAwesome.LoadFromResource;
var
 LStream: TResourceStream;
 LStatus: TStatus;
 LFonts: DWord;
begin
  LStream := TResourceStream.Create(hInstance, 'fontawesome', RT_RCDATA);
  try
    LFonts := 0;
    AddFontMemResourceEx(LStream.Memory, Cardinal(LStream.Size), nil, @LFonts);

    LStatus := FFontCollection.AddMemoryFont(LStream.Memory, LStream.Size);
    if (LStatus <> Status.Ok) then
      RaiseLastOSError();
  finally
    LStream.Free;
  end;
end;

class function TFontAwesome.RectToGPRect(ARect: TRect): TGPRectF;
begin
  Result.X := ARect.Left;
  Result.Y := ARect.Top;
  Result.Width := ARect.Width;
  Result.Height := ARect.Height;
end;

end.
