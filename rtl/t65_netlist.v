module t65_alu_Brtl
  (input  [1:0] mode,
   input  bcd_en,
   input  [4:0] op,
   input  [7:0] busa,
   input  [7:0] busb,
   input  [7:0] p_in,
   output [7:0] p_out,
   output [7:0] q);
  wire adc_z;
  wire adc_c;
  wire adc_v;
  wire adc_n;
  wire [7:0] adc_q;
  wire sbc_z;
  wire sbc_c;
  wire sbc_v;
  wire sbc_n;
  wire [7:0] sbc_q;
  wire [7:0] sbx_q;
  wire [3:0] n3197;
  wire n3198;
  wire [4:0] n3199;
  wire [6:0] n3200;
  wire [3:0] n3201;
  wire [4:0] n3203;
  wire [6:0] n3204;
  wire [6:0] n3205;
  wire [3:0] n3206;
  wire n3207;
  wire [4:0] n3208;
  wire [6:0] n3209;
  wire [3:0] n3210;
  wire [4:0] n3212;
  wire [6:0] n3213;
  wire [6:0] n3214;
  wire [3:0] n3215;
  wire n3217;
  wire [3:0] n3218;
  wire n3220;
  wire n3221;
  wire n3224;
  wire [4:0] n3225;
  wire n3227;
  wire n3228;
  wire n3229;
  wire n3230;
  wire [5:0] n3231;
  wire [5:0] n3233;
  wire [5:0] n3234;
  wire [5:0] n3235;
  wire n3236;
  wire [6:0] n3237;
  wire n3238;
  wire [6:0] n3239;
  wire n3240;
  wire n3241;
  wire [3:0] n3242;
  wire [4:0] n3243;
  wire [6:0] n3244;
  wire [3:0] n3245;
  wire [4:0] n3247;
  wire [6:0] n3248;
  wire [6:0] n3249;
  wire n3250;
  wire n3251;
  wire n3252;
  wire n3253;
  wire n3254;
  wire n3255;
  wire n3256;
  wire n3257;
  wire n3258;
  wire [4:0] n3259;
  wire n3261;
  wire n3262;
  wire n3263;
  wire n3264;
  wire [5:0] n3265;
  wire [5:0] n3267;
  wire [5:0] n3268;
  wire [5:0] n3269;
  wire n3270;
  wire [6:0] n3271;
  wire n3272;
  wire [6:0] n3273;
  wire n3274;
  wire n3275;
  wire [6:0] n3276;
  wire [3:0] n3277;
  wire [6:0] n3278;
  wire [3:0] n3279;
  wire [7:0] n3280;
  wire n3291;
  wire n3293;
  wire n3294;
  wire n3296;
  wire n3297;
  wire n3299;
  wire n3300;
  wire n3302;
  wire n3303;
  wire n3305;
  wire n3306;
  wire n3308;
  wire n3309;
  wire n3312;
  wire n3314;
  wire n3315;
  wire n3316;
  wire [3:0] n3317;
  wire [4:0] n3318;
  wire [6:0] n3319;
  wire [3:0] n3320;
  wire [4:0] n3322;
  wire [5:0] n3323;
  wire [6:0] n3324;
  wire [6:0] n3325;
  wire [3:0] n3326;
  wire [4:0] n3328;
  wire [5:0] n3329;
  wire [3:0] n3330;
  wire n3331;
  wire [4:0] n3332;
  wire [5:0] n3333;
  wire [5:0] n3334;
  wire [3:0] n3335;
  wire n3337;
  wire [3:0] n3338;
  wire n3340;
  wire n3341;
  wire n3344;
  wire n3345;
  wire n3346;
  wire n3347;
  wire n3348;
  wire n3349;
  wire n3350;
  wire n3351;
  wire n3352;
  wire n3353;
  wire n3354;
  wire [3:0] n3355;
  wire [3:0] n3356;
  wire [7:0] n3357;
  wire n3358;
  wire n3359;
  wire n3360;
  wire [4:0] n3361;
  wire [4:0] n3363;
  wire [4:0] n3364;
  wire [4:0] n3365;
  wire [3:0] n3366;
  wire [4:0] n3368;
  wire [5:0] n3369;
  wire [3:0] n3370;
  wire n3371;
  wire n3372;
  wire [6:0] n3373;
  wire n3374;
  wire [4:0] n3375;
  wire [5:0] n3376;
  wire [5:0] n3377;
  wire n3378;
  wire [4:0] n3379;
  wire [4:0] n3381;
  wire [4:0] n3382;
  wire [4:0] n3383;
  wire n3384;
  wire [4:0] n3385;
  wire [4:0] n3386;
  wire n3387;
  wire n3388;
  wire [5:0] n3389;
  wire [5:0] n3390;
  wire [3:0] n3391;
  wire [6:0] n3392;
  wire [3:0] n3393;
  wire [7:0] n3394;
  wire [7:0] n3401;
  wire n3403;
  wire [7:0] n3404;
  wire n3406;
  wire [7:0] n3407;
  wire n3409;
  wire n3411;
  wire n3413;
  wire n3415;
  wire n3417;
  wire [6:0] n3418;
  wire [7:0] n3420;
  wire n3421;
  wire n3423;
  wire [6:0] n3424;
  wire n3425;
  wire [7:0] n3426;
  wire n3427;
  wire n3429;
  wire [6:0] n3430;
  wire [7:0] n3432;
  wire n3433;
  wire n3435;
  wire n3436;
  wire [6:0] n3437;
  wire [7:0] n3438;
  wire n3439;
  wire n3441;
  wire n3442;
  wire [6:0] n3443;
  wire [6:0] n3444;
  wire [6:0] n3445;
  wire [7:0] n3446;
  wire n3447;
  wire n3448;
  wire n3449;
  wire n3450;
  wire n3451;
  wire [3:0] n3452;
  wire [3:0] n3453;
  wire [3:0] n3454;
  wire n3456;
  wire [3:0] n3457;
  wire [3:0] n3459;
  wire [3:0] n3460;
  wire [3:0] n3461;
  wire [3:0] n3462;
  wire [3:0] n3463;
  wire [3:0] n3464;
  wire n3466;
  wire [3:0] n3467;
  wire [3:0] n3469;
  wire n3472;
  wire [3:0] n3473;
  wire [3:0] n3474;
  wire n3475;
  wire n3476;
  wire [7:0] n3477;
  wire [7:0] n3478;
  wire n3480;
  wire n3481;
  wire n3483;
  wire [7:0] n3485;
  wire n3487;
  wire [7:0] n3489;
  wire n3491;
  wire [14:0] n3492;
  wire n3493;
  reg n3494;
  wire n3495;
  reg n3496;
  wire n3498;
  reg [7:0] n3500;
  reg [7:0] n3501;
  wire n3503;
  wire n3505;
  wire n3507;
  wire n3508;
  wire n3510;
  wire n3511;
  wire n3513;
  wire n3514;
  wire [7:0] n3515;
  wire n3517;
  wire n3520;
  wire n3522;
  wire n3523;
  wire n3524;
  wire n3526;
  wire n3529;
  wire n3531;
  wire n3532;
  wire n3534;
  wire n3537;
  wire [4:0] n3538;
  reg n3539;
  wire n3540;
  reg n3541;
  reg n3542;
  wire [3:0] n3543;
  wire n3545;
  wire [7:0] n3546;
  wire [7:0] n3548;
  assign p_out = n3548; //(module output)
  assign q = n3546; //(module output)
  /*# upstream/rtl/t65/T65_ALU.vhd:73:15 */
  assign adc_z = n3224; // (signal)
  /*# upstream/rtl/t65/T65_ALU.vhd:74:15 */
  assign adc_c = n3275; // (signal)
  /*# upstream/rtl/t65/T65_ALU.vhd:75:15 */
  assign adc_v = n3258; // (signal)
  /*# upstream/rtl/t65/T65_ALU.vhd:76:15 */
  assign adc_n = n3250; // (signal)
  /*# upstream/rtl/t65/T65_ALU.vhd:77:15 */
  assign adc_q = n3280; // (signal)
  /*# upstream/rtl/t65/T65_ALU.vhd:78:15 */
  assign sbc_z = n3344; // (signal)
  /*# upstream/rtl/t65/T65_ALU.vhd:79:15 */
  assign sbc_c = n3346; // (signal)
  /*# upstream/rtl/t65/T65_ALU.vhd:80:15 */
  assign sbc_v = n3353; // (signal)
  /*# upstream/rtl/t65/T65_ALU.vhd:81:15 */
  assign sbc_n = n3354; // (signal)
  /*# upstream/rtl/t65/T65_ALU.vhd:82:15 */
  assign sbc_q = n3394; // (signal)
  /*# upstream/rtl/t65/T65_ALU.vhd:83:15 */
  assign sbx_q = n3357; // (signal)
  /*# upstream/rtl/t65/T65_ALU.vhd:92:31 */
  assign n3197 = busa[3:0]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:92:50 */
  assign n3198 = p_in[0]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:92:44 */
  assign n3199 = {n3197, n3198};
  /*# upstream/rtl/t65/T65_ALU.vhd:92:11 */
  assign n3200 = {2'b0, n3199};  // uext
  /*# upstream/rtl/t65/T65_ALU.vhd:92:86 */
  assign n3201 = busb[3:0]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:92:99 */
  assign n3203 = {n3201, 1'b1};
  /*# upstream/rtl/t65/T65_ALU.vhd:92:66 */
  assign n3204 = {2'b0, n3203};  // uext
  /*# upstream/rtl/t65/T65_ALU.vhd:92:64 */
  assign n3205 = n3200 + n3204;
  /*# upstream/rtl/t65/T65_ALU.vhd:93:31 */
  assign n3206 = busa[7:4]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:93:48 */
  assign n3207 = n3205[5]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:93:44 */
  assign n3208 = {n3206, n3207};
  /*# upstream/rtl/t65/T65_ALU.vhd:93:11 */
  assign n3209 = {2'b0, n3208};  // uext
  /*# upstream/rtl/t65/T65_ALU.vhd:93:79 */
  assign n3210 = busb[7:4]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:93:92 */
  assign n3212 = {n3210, 1'b1};
  /*# upstream/rtl/t65/T65_ALU.vhd:93:59 */
  assign n3213 = {2'b0, n3212};  // uext
  /*# upstream/rtl/t65/T65_ALU.vhd:93:57 */
  assign n3214 = n3209 + n3213;
  /*# upstream/rtl/t65/T65_ALU.vhd:100:10 */
  assign n3215 = n3205[4:1]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:100:23 */
  assign n3217 = n3215 == 4'b0000;
  /*# upstream/rtl/t65/T65_ALU.vhd:100:33 */
  assign n3218 = n3214[4:1]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:100:46 */
  assign n3220 = n3218 == 4'b0000;
  /*# upstream/rtl/t65/T65_ALU.vhd:100:27 */
  assign n3221 = n3220 & n3217;
  /*# upstream/rtl/t65/T65_ALU.vhd:100:5 */
  assign n3224 = n3221 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_ALU.vhd:106:10 */
  assign n3225 = n3205[5:1]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:106:23 */
  assign n3227 = $unsigned(n3225) > $unsigned(5'b01001);
  /*# upstream/rtl/t65/T65_ALU.vhd:106:35 */
  assign n3228 = p_in[3]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:106:27 */
  assign n3229 = n3228 & n3227;
  /*# upstream/rtl/t65/T65_ALU.vhd:106:50 */
  assign n3230 = bcd_en & n3229;
  /*# upstream/rtl/t65/T65_ALU.vhd:107:27 */
  assign n3231 = n3205[6:1]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:107:40 */
  assign n3233 = n3231 + 6'b000110;
  /*# upstream/rtl/t65/T65_ALU.vhd:88:14 */
  assign n3234 = n3205[6:1]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:106:5 */
  assign n3235 = n3230 ? n3233 : n3234;
  /*# upstream/rtl/t65/T65_ALU.vhd:88:14 */
  assign n3236 = n3205[0]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:88:14 */
  assign n3237 = {n3235, n3236};
  /*# upstream/rtl/t65/T65_ALU.vhd:110:12 */
  assign n3238 = n3237[6]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:88:14 */
  assign n3239 = {n3235, n3236};
  /*# upstream/rtl/t65/T65_ALU.vhd:110:21 */
  assign n3240 = n3239[5]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:110:16 */
  assign n3241 = n3238 | n3240;
  /*# upstream/rtl/t65/T65_ALU.vhd:111:31 */
  assign n3242 = busa[7:4]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:111:44 */
  assign n3243 = {n3242, n3241};
  /*# upstream/rtl/t65/T65_ALU.vhd:111:11 */
  assign n3244 = {2'b0, n3243};  // uext
  /*# upstream/rtl/t65/T65_ALU.vhd:111:75 */
  assign n3245 = busb[7:4]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:111:88 */
  assign n3247 = {n3245, 1'b1};
  /*# upstream/rtl/t65/T65_ALU.vhd:111:55 */
  assign n3248 = {2'b0, n3247};  // uext
  /*# upstream/rtl/t65/T65_ALU.vhd:111:53 */
  assign n3249 = n3244 + n3248;
  /*# upstream/rtl/t65/T65_ALU.vhd:113:16 */
  assign n3250 = n3249[4]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:114:17 */
  assign n3251 = n3249[4]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:114:29 */
  assign n3252 = busa[7]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:114:21 */
  assign n3253 = n3251 ^ n3252;
  /*# upstream/rtl/t65/T65_ALU.vhd:114:47 */
  assign n3254 = busa[7]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:114:59 */
  assign n3255 = busb[7]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:114:51 */
  assign n3256 = n3254 ^ n3255;
  /*# upstream/rtl/t65/T65_ALU.vhd:114:38 */
  assign n3257 = ~n3256;
  /*# upstream/rtl/t65/T65_ALU.vhd:114:34 */
  assign n3258 = n3253 & n3257;
  /*# upstream/rtl/t65/T65_ALU.vhd:120:10 */
  assign n3259 = n3249[5:1]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:120:23 */
  assign n3261 = $unsigned(n3259) > $unsigned(5'b01001);
  /*# upstream/rtl/t65/T65_ALU.vhd:120:35 */
  assign n3262 = p_in[3]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:120:27 */
  assign n3263 = n3262 & n3261;
  /*# upstream/rtl/t65/T65_ALU.vhd:120:50 */
  assign n3264 = bcd_en & n3263;
  /*# upstream/rtl/t65/T65_ALU.vhd:121:27 */
  assign n3265 = n3249[6:1]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:121:40 */
  assign n3267 = n3265 + 6'b000110;
  /*# upstream/rtl/t65/T65_ALU.vhd:89:14 */
  assign n3268 = n3249[6:1]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:120:5 */
  assign n3269 = n3264 ? n3267 : n3268;
  /*# upstream/rtl/t65/T65_ALU.vhd:89:14 */
  assign n3270 = n3249[0]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:89:14 */
  assign n3271 = {n3269, n3270};
  /*# upstream/rtl/t65/T65_ALU.vhd:124:16 */
  assign n3272 = n3271[6]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:89:14 */
  assign n3273 = {n3269, n3270};
  /*# upstream/rtl/t65/T65_ALU.vhd:124:25 */
  assign n3274 = n3273[5]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:124:20 */
  assign n3275 = n3272 | n3274;
  /*# upstream/rtl/t65/T65_ALU.vhd:89:14 */
  assign n3276 = {n3269, n3270};
  /*# upstream/rtl/t65/T65_ALU.vhd:126:33 */
  assign n3277 = n3276[4:1]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:88:14 */
  assign n3278 = {n3235, n3236};
  /*# upstream/rtl/t65/T65_ALU.vhd:126:50 */
  assign n3279 = n3278[4:1]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:126:46 */
  assign n3280 = {n3277, n3279};
  /*# upstream/rtl/t65/T65_ALU.vhd:136:12 */
  assign n3291 = op == 5'b00001;
  /*# upstream/rtl/t65/T65_ALU.vhd:137:12 */
  assign n3293 = op == 5'b00011;
  /*# upstream/rtl/t65/T65_ALU.vhd:136:24 */
  assign n3294 = n3291 | n3293;
  /*# upstream/rtl/t65/T65_ALU.vhd:138:12 */
  assign n3296 = op == 5'b00101;
  /*# upstream/rtl/t65/T65_ALU.vhd:137:24 */
  assign n3297 = n3294 | n3296;
  /*# upstream/rtl/t65/T65_ALU.vhd:139:12 */
  assign n3299 = op == 5'b00111;
  /*# upstream/rtl/t65/T65_ALU.vhd:138:24 */
  assign n3300 = n3297 | n3299;
  /*# upstream/rtl/t65/T65_ALU.vhd:140:12 */
  assign n3302 = op == 5'b01001;
  /*# upstream/rtl/t65/T65_ALU.vhd:139:24 */
  assign n3303 = n3300 | n3302;
  /*# upstream/rtl/t65/T65_ALU.vhd:141:12 */
  assign n3305 = op == 5'b01011;
  /*# upstream/rtl/t65/T65_ALU.vhd:140:24 */
  assign n3306 = n3303 | n3305;
  /*# upstream/rtl/t65/T65_ALU.vhd:143:12 */
  assign n3308 = op == 5'b01110;
  /*# upstream/rtl/t65/T65_ALU.vhd:141:24 */
  assign n3309 = n3306 | n3308;
  /*# upstream/rtl/t65/T65_ALU.vhd:136:5 */
  assign n3312 = n3309 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_ALU.vhd:148:14 */
  assign n3314 = p_in[0]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:148:26 */
  assign n3315 = ~n3312;
  /*# upstream/rtl/t65/T65_ALU.vhd:148:23 */
  assign n3316 = n3314 | n3315;
  /*# upstream/rtl/t65/T65_ALU.vhd:149:31 */
  assign n3317 = busa[3:0]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:149:44 */
  assign n3318 = {n3317, n3316};
  /*# upstream/rtl/t65/T65_ALU.vhd:149:11 */
  assign n3319 = {2'b0, n3318};  // uext
  /*# upstream/rtl/t65/T65_ALU.vhd:149:75 */
  assign n3320 = busb[3:0]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:149:88 */
  assign n3322 = {n3320, 1'b1};
  /*# upstream/rtl/t65/T65_ALU.vhd:149:55 */
  assign n3323 = {1'b0, n3322};  // uext
  /*# upstream/rtl/t65/T65_ALU.vhd:149:53 */
  assign n3324 = {1'b0, n3323};  // uext
  /*# upstream/rtl/t65/T65_ALU.vhd:149:53 */
  assign n3325 = n3319 - n3324;
  /*# upstream/rtl/t65/T65_ALU.vhd:150:31 */
  assign n3326 = busa[7:4]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:150:44 */
  assign n3328 = {n3326, 1'b0};
  /*# upstream/rtl/t65/T65_ALU.vhd:150:11 */
  assign n3329 = {1'b0, n3328};  // uext
  /*# upstream/rtl/t65/T65_ALU.vhd:150:77 */
  assign n3330 = busb[7:4]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:150:94 */
  assign n3331 = n3325[5]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:150:90 */
  assign n3332 = {n3330, n3331};
  /*# upstream/rtl/t65/T65_ALU.vhd:150:57 */
  assign n3333 = {1'b0, n3332};  // uext
  /*# upstream/rtl/t65/T65_ALU.vhd:150:55 */
  assign n3334 = n3329 - n3333;
  /*# upstream/rtl/t65/T65_ALU.vhd:157:10 */
  assign n3335 = n3325[4:1]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:157:23 */
  assign n3337 = n3335 == 4'b0000;
  /*# upstream/rtl/t65/T65_ALU.vhd:157:33 */
  assign n3338 = n3334[4:1]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:157:46 */
  assign n3340 = n3338 == 4'b0000;
  /*# upstream/rtl/t65/T65_ALU.vhd:157:27 */
  assign n3341 = n3340 & n3337;
  /*# upstream/rtl/t65/T65_ALU.vhd:157:5 */
  assign n3344 = n3341 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_ALU.vhd:163:20 */
  assign n3345 = n3334[5]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:163:14 */
  assign n3346 = ~n3345;
  /*# upstream/rtl/t65/T65_ALU.vhd:164:17 */
  assign n3347 = n3334[4]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:164:29 */
  assign n3348 = busa[7]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:164:21 */
  assign n3349 = n3347 ^ n3348;
  /*# upstream/rtl/t65/T65_ALU.vhd:164:43 */
  assign n3350 = busa[7]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:164:55 */
  assign n3351 = busb[7]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:164:47 */
  assign n3352 = n3350 ^ n3351;
  /*# upstream/rtl/t65/T65_ALU.vhd:164:34 */
  assign n3353 = n3349 & n3352;
  /*# upstream/rtl/t65/T65_ALU.vhd:165:16 */
  assign n3354 = n3334[4]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:167:33 */
  assign n3355 = n3334[4:1]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:167:50 */
  assign n3356 = n3325[4:1]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:167:46 */
  assign n3357 = {n3355, n3356};
  /*# upstream/rtl/t65/T65_ALU.vhd:169:12 */
  assign n3358 = p_in[3]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:169:27 */
  assign n3359 = bcd_en & n3358;
  /*# upstream/rtl/t65/T65_ALU.vhd:170:12 */
  assign n3360 = n3325[5]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:171:29 */
  assign n3361 = n3325[5:1]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:171:42 */
  assign n3363 = n3361 - 5'b00110;
  /*# upstream/rtl/t65/T65_ALU.vhd:130:14 */
  assign n3364 = n3325[5:1]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:170:7 */
  assign n3365 = n3360 ? n3363 : n3364;
  /*# upstream/rtl/t65/T65_ALU.vhd:173:33 */
  assign n3366 = busa[7:4]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:173:46 */
  assign n3368 = {n3366, 1'b0};
  /*# upstream/rtl/t65/T65_ALU.vhd:173:13 */
  assign n3369 = {1'b0, n3368};  // uext
  /*# upstream/rtl/t65/T65_ALU.vhd:173:79 */
  assign n3370 = busb[7:4]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:130:14 */
  assign n3371 = n3325[0]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:130:14 */
  assign n3372 = n3325[6]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:130:14 */
  assign n3373 = {n3372, n3365, n3371};
  /*# upstream/rtl/t65/T65_ALU.vhd:173:96 */
  assign n3374 = n3373[6]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:173:92 */
  assign n3375 = {n3370, n3374};
  /*# upstream/rtl/t65/T65_ALU.vhd:173:59 */
  assign n3376 = {1'b0, n3375};  // uext
  /*# upstream/rtl/t65/T65_ALU.vhd:173:57 */
  assign n3377 = n3369 - n3376;
  /*# upstream/rtl/t65/T65_ALU.vhd:174:12 */
  assign n3378 = n3377[5]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:175:29 */
  assign n3379 = n3377[5:1]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:175:42 */
  assign n3381 = n3379 - 5'b00110;
  /*# upstream/rtl/t65/T65_ALU.vhd:131:14 */
  assign n3382 = n3377[5:1]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:174:7 */
  assign n3383 = n3378 ? n3381 : n3382;
  /*# upstream/rtl/t65/T65_ALU.vhd:131:14 */
  assign n3384 = n3377[0]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:130:14 */
  assign n3385 = n3325[5:1]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:169:5 */
  assign n3386 = n3359 ? n3365 : n3385;
  /*# upstream/rtl/t65/T65_ALU.vhd:130:14 */
  assign n3387 = n3325[6]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:130:14 */
  assign n3388 = n3325[0]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:169:5 */
  assign n3389 = {n3383, n3384};
  /*# upstream/rtl/t65/T65_ALU.vhd:169:5 */
  assign n3390 = n3359 ? n3389 : n3334;
  /*# upstream/rtl/t65/T65_ALU.vhd:179:33 */
  assign n3391 = n3390[4:1]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:130:14 */
  assign n3392 = {n3387, n3386, n3388};
  /*# upstream/rtl/t65/T65_ALU.vhd:179:50 */
  assign n3393 = n3392[4:1]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:179:46 */
  assign n3394 = {n3391, n3393};
  /*# upstream/rtl/t65/T65_ALU.vhd:196:21 */
  assign n3401 = busa | busb;
  /*# upstream/rtl/t65/T65_ALU.vhd:195:7 */
  assign n3403 = op == 5'b00000;
  /*# upstream/rtl/t65/T65_ALU.vhd:198:21 */
  assign n3404 = busa & busb;
  /*# upstream/rtl/t65/T65_ALU.vhd:197:7 */
  assign n3406 = op == 5'b00001;
  /*# upstream/rtl/t65/T65_ALU.vhd:200:21 */
  assign n3407 = busa ^ busb;
  /*# upstream/rtl/t65/T65_ALU.vhd:199:7 */
  assign n3409 = op == 5'b00010;
  /*# upstream/rtl/t65/T65_ALU.vhd:201:7 */
  assign n3411 = op == 5'b00011;
  /*# upstream/rtl/t65/T65_ALU.vhd:205:7 */
  assign n3413 = op == 5'b00110;
  /*# upstream/rtl/t65/T65_ALU.vhd:207:7 */
  assign n3415 = op == 5'b10001;
  /*# upstream/rtl/t65/T65_ALU.vhd:210:7 */
  assign n3417 = op == 5'b00111;
  /*# upstream/rtl/t65/T65_ALU.vhd:215:20 */
  assign n3418 = busa[6:0]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:215:33 */
  assign n3420 = {n3418, 1'b0};
  /*# upstream/rtl/t65/T65_ALU.vhd:216:30 */
  assign n3421 = busa[7]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:214:7 */
  assign n3423 = op == 5'b01000;
  /*# upstream/rtl/t65/T65_ALU.vhd:218:20 */
  assign n3424 = busa[6:0]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:218:39 */
  assign n3425 = p_in[0]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:218:33 */
  assign n3426 = {n3424, n3425};
  /*# upstream/rtl/t65/T65_ALU.vhd:219:30 */
  assign n3427 = busa[7]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:217:7 */
  assign n3429 = op == 5'b01001;
  /*# upstream/rtl/t65/T65_ALU.vhd:221:26 */
  assign n3430 = busa[7:1]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:221:20 */
  assign n3432 = {1'b0, n3430};
  /*# upstream/rtl/t65/T65_ALU.vhd:222:30 */
  assign n3433 = busa[0]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:220:7 */
  assign n3435 = op == 5'b01010;
  /*# upstream/rtl/t65/T65_ALU.vhd:224:20 */
  assign n3436 = p_in[0]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:224:35 */
  assign n3437 = busa[7:1]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:224:29 */
  assign n3438 = {n3436, n3437};
  /*# upstream/rtl/t65/T65_ALU.vhd:225:30 */
  assign n3439 = busa[0]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:223:7 */
  assign n3441 = op == 5'b01011;
  /*# upstream/rtl/t65/T65_ALU.vhd:227:20 */
  assign n3442 = p_in[0]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:227:36 */
  assign n3443 = busa[7:1]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:227:57 */
  assign n3444 = busb[7:1]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:227:49 */
  assign n3445 = n3443 & n3444;
  /*# upstream/rtl/t65/T65_ALU.vhd:227:29 */
  assign n3446 = {n3442, n3445};
  /*# upstream/rtl/t65/T65_ALU.vhd:228:29 */
  assign n3447 = n3446[5]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:228:40 */
  assign n3448 = n3446[6]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:228:33 */
  assign n3449 = n3447 ^ n3448;
  /*# upstream/rtl/t65/T65_ALU.vhd:230:16 */
  assign n3450 = p_in[3]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:230:29 */
  assign n3451 = bcd_en & n3450;
  /*# upstream/rtl/t65/T65_ALU.vhd:231:19 */
  assign n3452 = busa[3:0]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:231:40 */
  assign n3453 = busb[3:0]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:231:32 */
  assign n3454 = n3452 & n3453;
  /*# upstream/rtl/t65/T65_ALU.vhd:231:54 */
  assign n3456 = $unsigned(n3454) > $unsigned(4'b0100);
  /*# upstream/rtl/t65/T65_ALU.vhd:232:62 */
  assign n3457 = n3446[3:0]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:232:76 */
  assign n3459 = n3457 + 4'b0110;
  /*# upstream/rtl/t65/T65_ALU.vhd:187:14 */
  assign n3460 = n3446[3:0]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:231:11 */
  assign n3461 = n3456 ? n3459 : n3460;
  /*# upstream/rtl/t65/T65_ALU.vhd:234:19 */
  assign n3462 = busa[7:4]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:234:40 */
  assign n3463 = busb[7:4]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:234:32 */
  assign n3464 = n3462 & n3463;
  /*# upstream/rtl/t65/T65_ALU.vhd:234:54 */
  assign n3466 = $unsigned(n3464) > $unsigned(4'b0100);
  /*# upstream/rtl/t65/T65_ALU.vhd:235:62 */
  assign n3467 = n3446[7:4]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:235:76 */
  assign n3469 = n3467 + 4'b0110;
  /*# upstream/rtl/t65/T65_ALU.vhd:234:11 */
  assign n3472 = n3466 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_ALU.vhd:187:14 */
  assign n3473 = n3446[7:4]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:234:11 */
  assign n3474 = n3466 ? n3469 : n3473;
  /*# upstream/rtl/t65/T65_ALU.vhd:241:31 */
  assign n3475 = n3446[6]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:230:9 */
  assign n3476 = n3451 ? n3472 : n3475;
  /*# upstream/rtl/t65/T65_ALU.vhd:230:9 */
  assign n3477 = {n3474, n3461};
  /*# upstream/rtl/t65/T65_ALU.vhd:230:9 */
  assign n3478 = n3451 ? n3477 : n3446;
  /*# upstream/rtl/t65/T65_ALU.vhd:226:7 */
  assign n3480 = op == 5'b01111;
  /*# upstream/rtl/t65/T65_ALU.vhd:244:30 */
  assign n3481 = busb[6]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:243:7 */
  assign n3483 = op == 5'b01100;
  /*# upstream/rtl/t65/T65_ALU.vhd:246:48 */
  assign n3485 = busa - 8'b00000001;
  /*# upstream/rtl/t65/T65_ALU.vhd:245:7 */
  assign n3487 = op == 5'b01101;
  /*# upstream/rtl/t65/T65_ALU.vhd:248:48 */
  assign n3489 = busa + 8'b00000001;
  /*# upstream/rtl/t65/T65_ALU.vhd:247:7 */
  assign n3491 = op == 5'b01110;
  /*# upstream/rtl/t65/T65_ALU.vhd:194:5 */
  assign n3492 = {n3491, n3487, n3483, n3480, n3441, n3435, n3429, n3423, n3417, n3415, n3413, n3411, n3409, n3406, n3403};
  /*# upstream/rtl/t65/T65_ALU.vhd:65:5 */
  assign n3493 = p_in[0]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:194:5 */
  always @*
    case (n3492)
      15'b100000000000000: n3494 = n3493;
      15'b010000000000000: n3494 = n3493;
      15'b001000000000000: n3494 = n3493;
      15'b000100000000000: n3494 = n3476;
      15'b000010000000000: n3494 = n3439;
      15'b000001000000000: n3494 = n3433;
      15'b000000100000000: n3494 = n3427;
      15'b000000010000000: n3494 = n3421;
      15'b000000001000000: n3494 = sbc_c;
      15'b000000000100000: n3494 = sbc_c;
      15'b000000000010000: n3494 = sbc_c;
      15'b000000000001000: n3494 = adc_c;
      15'b000000000000100: n3494 = n3493;
      15'b000000000000010: n3494 = n3493;
      15'b000000000000001: n3494 = n3493;
      default: n3494 = n3493;
    endcase
  /*# upstream/rtl/t65/T65_ALU.vhd:65:5 */
  assign n3495 = p_in[6]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:194:5 */
  always @*
    case (n3492)
      15'b100000000000000: n3496 = n3495;
      15'b010000000000000: n3496 = n3495;
      15'b001000000000000: n3496 = n3481;
      15'b000100000000000: n3496 = n3449;
      15'b000010000000000: n3496 = n3495;
      15'b000001000000000: n3496 = n3495;
      15'b000000100000000: n3496 = n3495;
      15'b000000010000000: n3496 = n3495;
      15'b000000001000000: n3496 = sbc_v;
      15'b000000000100000: n3496 = n3495;
      15'b000000000010000: n3496 = n3495;
      15'b000000000001000: n3496 = adc_v;
      15'b000000000000100: n3496 = n3495;
      15'b000000000000010: n3496 = n3495;
      15'b000000000000001: n3496 = n3495;
      default: n3496 = n3495;
    endcase
  /*# upstream/rtl/t65/T65_ALU.vhd:65:5 */
  assign n3498 = p_in[7]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:194:5 */
  always @*
    case (n3492)
      15'b100000000000000: n3500 = n3489;
      15'b010000000000000: n3500 = n3485;
      15'b001000000000000: n3500 = busa;
      15'b000100000000000: n3500 = n3446;
      15'b000010000000000: n3500 = n3438;
      15'b000001000000000: n3500 = n3432;
      15'b000000100000000: n3500 = n3426;
      15'b000000010000000: n3500 = n3420;
      15'b000000001000000: n3500 = sbc_q;
      15'b000000000100000: n3500 = sbx_q;
      15'b000000000010000: n3500 = busa;
      15'b000000000001000: n3500 = adc_q;
      15'b000000000000100: n3500 = n3407;
      15'b000000000000010: n3500 = n3404;
      15'b000000000000001: n3500 = n3401;
      default: n3500 = busa;
    endcase
  /*# upstream/rtl/t65/T65_ALU.vhd:194:5 */
  always @*
    case (n3492)
      15'b100000000000000: n3501 = busa;
      15'b010000000000000: n3501 = busa;
      15'b001000000000000: n3501 = busa;
      15'b000100000000000: n3501 = n3478;
      15'b000010000000000: n3501 = busa;
      15'b000001000000000: n3501 = busa;
      15'b000000100000000: n3501 = busa;
      15'b000000010000000: n3501 = busa;
      15'b000000001000000: n3501 = busa;
      15'b000000000100000: n3501 = busa;
      15'b000000000010000: n3501 = busa;
      15'b000000000001000: n3501 = busa;
      15'b000000000000100: n3501 = busa;
      15'b000000000000010: n3501 = busa;
      15'b000000000000001: n3501 = busa;
      default: n3501 = busa;
    endcase
  /*# upstream/rtl/t65/T65_ALU.vhd:255:7 */
  assign n3503 = op == 5'b00011;
  /*# upstream/rtl/t65/T65_ALU.vhd:258:7 */
  assign n3505 = op == 5'b00110;
  /*# upstream/rtl/t65/T65_ALU.vhd:258:22 */
  assign n3507 = op == 5'b00111;
  /*# upstream/rtl/t65/T65_ALU.vhd:258:22 */
  assign n3508 = n3505 | n3507;
  /*# upstream/rtl/t65/T65_ALU.vhd:258:33 */
  assign n3510 = op == 5'b10001;
  /*# upstream/rtl/t65/T65_ALU.vhd:258:33 */
  assign n3511 = n3508 | n3510;
  /*# upstream/rtl/t65/T65_ALU.vhd:261:7 */
  assign n3513 = op == 5'b00100;
  /*# upstream/rtl/t65/T65_ALU.vhd:263:30 */
  assign n3514 = busb[7]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:264:18 */
  assign n3515 = busa & busb;
  /*# upstream/rtl/t65/T65_ALU.vhd:264:28 */
  assign n3517 = n3515 == 8'b00000000;
  /*# upstream/rtl/t65/T65_ALU.vhd:264:9 */
  assign n3520 = n3517 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_ALU.vhd:262:7 */
  assign n3522 = op == 5'b01100;
  /*# upstream/rtl/t65/T65_ALU.vhd:270:29 */
  assign n3523 = n3500[7]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:271:29 */
  assign n3524 = n3500[7]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:272:16 */
  assign n3526 = n3500 == 8'b00000000;
  /*# upstream/rtl/t65/T65_ALU.vhd:272:9 */
  assign n3529 = n3526 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_ALU.vhd:269:7 */
  assign n3531 = op == 5'b10000;
  /*# upstream/rtl/t65/T65_ALU.vhd:278:29 */
  assign n3532 = n3500[7]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:279:16 */
  assign n3534 = n3500 == 8'b00000000;
  /*# upstream/rtl/t65/T65_ALU.vhd:279:9 */
  assign n3537 = n3534 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_ALU.vhd:254:5 */
  assign n3538 = {n3531, n3522, n3513, n3511, n3503};
  /*# upstream/rtl/t65/T65_ALU.vhd:254:5 */
  always @*
    case (n3538)
      5'b10000: n3539 = n3524;
      5'b01000: n3539 = n3494;
      5'b00100: n3539 = n3494;
      5'b00010: n3539 = n3494;
      5'b00001: n3539 = n3494;
      default: n3539 = n3494;
    endcase
  /*# upstream/rtl/t65/T65_ALU.vhd:65:5 */
  assign n3540 = p_in[1]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:254:5 */
  always @*
    case (n3538)
      5'b10000: n3541 = n3529;
      5'b01000: n3541 = n3520;
      5'b00100: n3541 = n3540;
      5'b00010: n3541 = sbc_z;
      5'b00001: n3541 = adc_z;
      default: n3541 = n3537;
    endcase
  /*# upstream/rtl/t65/T65_ALU.vhd:254:5 */
  always @*
    case (n3538)
      5'b10000: n3542 = n3523;
      5'b01000: n3542 = n3514;
      5'b00100: n3542 = n3498;
      5'b00010: n3542 = sbc_n;
      5'b00001: n3542 = adc_n;
      default: n3542 = n3532;
    endcase
  /*# upstream/rtl/t65/T65_ALU.vhd:65:5 */
  assign n3543 = p_in[5:2]; // extract
  /*# upstream/rtl/t65/T65_ALU.vhd:286:10 */
  assign n3545 = op == 5'b01111;
  /*# upstream/rtl/t65/T65_ALU.vhd:286:5 */
  assign n3546 = n3545 ? n3501 : n3500;
  /*# upstream/rtl/t65/T65_ALU.vhd:65:5 */
  assign n3548 = {n3542, n3496, n3543, n3541, n3539};
endmodule

module t65_mcode_Brtl
  (input  [1:0] mode,
   input  bcd_en,
   input  [7:0] ir,
   input  [2:0] mcycle,
   input  [7:0] p,
   input  rdy_mod,
   output [2:0] lcycle,
   output [4:0] alu_op,
   output [3:0] set_busa_to,
   output [1:0] set_addr_to,
   output [3:0] write_data,
   output [1:0] jump,
   output [1:0] baadd,
   output [1:0] baquirk,
   output breakatna,
   output adadd,
   output addy,
   output pcadd,
   output inc_s,
   output dec_s,
   output lda,
   output ldp,
   output ldx,
   output ldy,
   output lds,
   output lddi,
   output ldalu,
   output ldad,
   output ldbal,
   output ldbah,
   output savep,
   output write);
  wire branch;
  wire alumore;
  wire [2:0] n990;
  wire n991;
  wire n992;
  wire n994;
  wire n995;
  wire n997;
  wire n998;
  wire n999;
  wire n1001;
  wire n1002;
  wire n1004;
  wire n1005;
  wire n1006;
  wire n1008;
  wire n1009;
  wire n1011;
  wire n1012;
  wire n1013;
  wire n1015;
  wire n1016;
  wire [6:0] n1017;
  reg n1018;
  wire [2:0] n1021;
  wire [1:0] n1022;
  wire [2:0] n1023;
  wire n1025;
  wire n1026;
  wire [3:0] n1029;
  wire [3:0] n1031;
  wire n1033;
  wire [2:0] n1034;
  wire n1036;
  wire n1037;
  wire [3:0] n1040;
  wire [3:0] n1042;
  wire n1044;
  wire [2:0] n1045;
  wire n1047;
  wire [3:0] n1050;
  wire n1053;
  wire [2:0] n1054;
  wire n1056;
  wire [2:0] n1057;
  wire n1059;
  wire n1060;
  wire [2:0] n1061;
  wire n1063;
  wire n1064;
  wire n1065;
  wire [3:0] n1068;
  wire [3:0] n1070;
  wire n1072;
  wire [2:0] n1073;
  reg [3:0] n1077;
  reg [3:0] n1079;
  reg n1081;
  wire n1083;
  wire [1:0] n1084;
  wire n1085;
  wire n1087;
  wire n1088;
  wire n1090;
  wire n1091;
  wire n1094;
  wire n1096;
  wire n1098;
  wire n1100;
  wire [2:0] n1101;
  wire n1103;
  wire [3:0] n1106;
  wire n1109;
  wire [2:0] n1110;
  reg [3:0] n1112;
  reg n1117;
  reg n1121;
  reg n1123;
  reg n1125;
  wire n1127;
  wire [1:0] n1128;
  wire n1129;
  wire n1130;
  wire n1133;
  wire n1135;
  reg [3:0] n1138;
  reg n1140;
  wire n1142;
  wire [1:0] n1143;
  wire n1144;
  wire n1145;
  wire n1148;
  wire n1150;
  reg [3:0] n1153;
  reg n1155;
  wire n1157;
  wire [3:0] n1158;
  reg [3:0] n1160;
  reg [3:0] n1163;
  reg n1166;
  reg n1169;
  reg n1172;
  reg n1175;
  wire [1:0] n1177;
  wire n1179;
  wire n1180;
  wire n1181;
  wire n1183;
  wire n1184;
  wire n1185;
  wire n1186;
  wire n1187;
  wire n1189;
  wire [3:0] n1192;
  wire [3:0] n1193;
  wire [4:0] n1194;
  wire n1196;
  wire n1198;
  wire n1200;
  wire n1202;
  wire n1204;
  wire n1206;
  wire [5:0] n1207;
  reg [1:0] n1214;
  reg [3:0] n1218;
  reg [1:0] n1221;
  reg n1226;
  reg n1229;
  reg n1234;
  wire n1236;
  wire n1238;
  wire n1240;
  wire n1242;
  wire n1244;
  wire n1246;
  wire [4:0] n1247;
  reg [1:0] n1252;
  reg [3:0] n1255;
  reg [1:0] n1259;
  reg n1263;
  reg n1266;
  reg n1270;
  wire n1272;
  wire n1274;
  wire n1276;
  wire n1278;
  wire n1280;
  wire n1282;
  wire [4:0] n1283;
  reg [3:0] n1285;
  reg [1:0] n1291;
  reg [1:0] n1294;
  reg n1299;
  reg n1302;
  reg n1305;
  wire n1307;
  wire n1309;
  wire n1311;
  wire n1313;
  wire n1315;
  wire n1317;
  wire [4:0] n1318;
  reg [1:0] n1323;
  reg [1:0] n1327;
  reg n1331;
  reg n1334;
  wire n1336;
  wire n1338;
  wire n1339;
  wire n1340;
  wire [2:0] n1343;
  wire n1346;
  wire n1347;
  wire n1348;
  wire n1349;
  wire [3:0] n1350;
  wire n1352;
  wire n1354;
  wire n1356;
  wire [3:0] n1358;
  wire n1361;
  wire n1363;
  wire n1365;
  wire [3:0] n1367;
  wire n1370;
  wire n1372;
  wire [3:0] n1373;
  reg [3:0] n1376;
  reg n1378;
  wire [1:0] n1382;
  wire [3:0] n1383;
  wire n1385;
  wire n1387;
  wire n1389;
  wire [1:0] n1390;
  reg [1:0] n1392;
  reg [3:0] n1393;
  reg n1396;
  reg n1398;
  wire n1400;
  wire n1402;
  wire n1403;
  wire n1405;
  wire n1406;
  wire n1408;
  wire n1409;
  wire n1411;
  wire n1412;
  wire n1413;
  wire [2:0] n1416;
  wire [3:0] n1418;
  wire n1420;
  wire n1422;
  wire n1424;
  wire n1426;
  wire n1428;
  wire n1430;
  wire n1432;
  wire n1434;
  wire [3:0] n1435;
  reg n1437;
  reg n1440;
  reg n1441;
  reg n1442;
  wire n1444;
  wire n1445;
  wire n1446;
  wire n1447;
  wire n1450;
  wire n1452;
  wire n1454;
  wire n1455;
  wire n1456;
  wire n1457;
  wire [1:0] n1460;
  wire n1462;
  wire n1464;
  wire n1466;
  wire n1468;
  wire [3:0] n1469;
  reg [3:0] n1471;
  reg [1:0] n1474;
  reg n1477;
  reg n1479;
  reg n1481;
  wire n1483;
  wire n1485;
  wire n1486;
  wire n1488;
  wire n1489;
  wire n1491;
  wire n1492;
  wire n1494;
  wire n1496;
  wire [1:0] n1497;
  reg [1:0] n1500;
  wire n1502;
  wire n1504;
  wire n1505;
  wire n1507;
  wire n1508;
  wire n1510;
  wire n1512;
  wire [1:0] n1513;
  reg [3:0] n1515;
  wire n1517;
  wire n1519;
  wire n1521;
  wire [1:0] n1522;
  reg [3:0] n1524;
  wire n1526;
  wire n1528;
  wire n1530;
  wire n1532;
  wire n1534;
  wire [1:0] n1535;
  reg [3:0] n1537;
  wire n1539;
  wire n1541;
  wire n1542;
  wire n1549;
  wire n1551;
  wire n1552;
  wire n1554;
  wire n1555;
  wire n1557;
  wire n1558;
  wire n1565;
  wire n1567;
  wire n1568;
  wire n1570;
  wire n1572;
  wire [1:0] n1573;
  reg [3:0] n1575;
  wire n1577;
  wire n1579;
  wire n1580;
  wire n1582;
  wire n1584;
  wire n1586;
  wire [1:0] n1587;
  reg [3:0] n1589;
  wire n1591;
  wire n1593;
  wire n1595;
  wire [1:0] n1596;
  reg [1:0] n1599;
  wire n1601;
  wire [15:0] n1604;
  reg [2:0] n1610;
  reg [3:0] n1612;
  reg [1:0] n1614;
  reg [3:0] n1615;
  reg [1:0] n1617;
  reg n1619;
  reg n1621;
  reg n1624;
  reg n1626;
  reg n1629;
  reg n1631;
  reg n1633;
  reg n1635;
  reg n1637;
  reg n1639;
  wire n1641;
  wire n1643;
  wire n1644;
  wire n1646;
  wire n1647;
  wire n1649;
  wire n1650;
  wire n1652;
  wire n1653;
  wire [1:0] n1654;
  wire n1656;
  wire n1658;
  wire n1659;
  wire n1660;
  wire [2:0] n1663;
  wire [2:0] n1665;
  wire n1668;
  wire n1670;
  wire n1672;
  wire n1674;
  wire [2:0] n1675;
  wire n1677;
  wire n1680;
  wire n1682;
  wire n1684;
  wire n1685;
  wire n1686;
  wire [1:0] n1687;
  wire n1689;
  wire n1690;
  wire [1:0] n1693;
  wire n1696;
  wire n1699;
  wire n1701;
  wire n1703;
  wire n1705;
  wire [6:0] n1706;
  reg [3:0] n1708;
  reg [1:0] n1715;
  reg [1:0] n1718;
  reg [1:0] n1721;
  reg n1724;
  reg n1726;
  reg n1729;
  reg n1732;
  reg n1735;
  reg n1738;
  reg n1741;
  reg n1744;
  reg n1747;
  wire n1749;
  wire n1751;
  wire n1752;
  wire [2:0] n1753;
  wire n1755;
  wire n1757;
  wire n1759;
  reg [1:0] n1762;
  wire n1764;
  wire n1766;
  wire [2:0] n1767;
  wire n1769;
  wire n1771;
  wire n1772;
  wire n1774;
  wire n1775;
  wire n1777;
  wire n1778;
  wire n1780;
  wire n1782;
  wire [3:0] n1785;
  wire n1787;
  wire [3:0] n1788;
  reg [3:0] n1792;
  reg n1797;
  reg n1799;
  wire n1801;
  reg [1:0] n1804;
  wire [3:0] n1805;
  wire [1:0] n1807;
  wire n1808;
  wire n1809;
  wire n1811;
  wire n1813;
  wire n1815;
  wire [3:0] n1816;
  wire n1818;
  wire [3:0] n1819;
  wire n1821;
  wire n1822;
  wire [3:0] n1823;
  wire n1825;
  wire n1826;
  wire [2:0] n1829;
  wire [1:0] n1832;
  wire [2:0] n1834;
  wire [1:0] n1836;
  wire n1838;
  wire n1840;
  wire [1:0] n1841;
  reg [2:0] n1843;
  reg [1:0] n1845;
  reg n1846;
  wire n1848;
  wire n1850;
  wire n1851;
  wire [2:0] n1852;
  wire n1854;
  wire n1857;
  wire n1859;
  wire [2:0] n1860;
  wire n1862;
  wire n1865;
  wire n1867;
  wire n1869;
  wire [2:0] n1870;
  reg [1:0] n1873;
  reg [1:0] n1876;
  reg n1879;
  reg n1881;
  reg n1883;
  wire n1885;
  wire [1:0] n1886;
  wire n1888;
  wire n1889;
  wire n1890;
  wire n1892;
  wire n1893;
  wire n1894;
  wire n1895;
  wire n1896;
  wire n1898;
  wire n1899;
  wire n1900;
  wire n1902;
  wire n1904;
  wire n1906;
  wire n1909;
  wire n1911;
  wire n1913;
  wire n1915;
  wire n1916;
  wire n1917;
  wire [3:0] n1919;
  wire n1922;
  wire n1925;
  wire n1927;
  wire [3:0] n1928;
  reg [3:0] n1929;
  reg [1:0] n1934;
  reg [1:0] n1937;
  reg n1940;
  reg n1943;
  reg n1946;
  reg n1949;
  reg n1952;
  reg n1954;
  wire [1:0] n1955;
  wire n1957;
  wire n1959;
  wire n1961;
  wire [2:0] n1962;
  wire n1964;
  wire n1967;
  wire n1969;
  wire n1971;
  wire [2:0] n1972;
  reg [1:0] n1975;
  reg [1:0] n1978;
  reg n1981;
  reg n1983;
  wire [2:0] n1986;
  wire [3:0] n1987;
  wire [1:0] n1988;
  wire [1:0] n1989;
  wire n1990;
  wire n1992;
  wire n1994;
  wire n1995;
  wire n1997;
  wire n1998;
  wire n2000;
  wire n2002;
  wire n2004;
  wire n2005;
  wire n2007;
  wire n2008;
  wire [1:0] n2009;
  wire n2011;
  wire [4:0] n2012;
  wire n2014;
  wire n2015;
  wire n2016;
  wire n2017;
  wire n2019;
  wire n2021;
  wire [1:0] n2022;
  reg [1:0] n2026;
  reg n2029;
  wire n2031;
  wire n2033;
  wire [1:0] n2036;
  wire n2038;
  wire [1:0] n2041;
  wire n2043;
  wire n2045;
  wire [1:0] n2048;
  wire [1:0] n2051;
  wire [1:0] n2054;
  wire n2056;
  wire n2058;
  wire [3:0] n2059;
  reg [1:0] n2061;
  reg [1:0] n2065;
  reg [1:0] n2067;
  reg n2071;
  reg n2074;
  reg n2077;
  wire [2:0] n2080;
  wire [1:0] n2082;
  wire [1:0] n2083;
  wire [1:0] n2085;
  wire n2086;
  wire n2088;
  wire n2090;
  wire [2:0] n2091;
  wire n2093;
  wire n2096;
  wire n2098;
  wire n2100;
  wire [2:0] n2101;
  wire n2103;
  wire n2106;
  wire n2108;
  wire n2110;
  wire [3:0] n2111;
  reg [1:0] n2114;
  reg [1:0] n2118;
  reg n2121;
  reg n2124;
  reg n2126;
  reg n2128;
  wire [2:0] n2130;
  wire [1:0] n2131;
  wire [1:0] n2132;
  wire [1:0] n2134;
  wire n2136;
  wire n2137;
  wire n2138;
  wire n2140;
  wire n2142;
  wire n2144;
  wire [1:0] n2145;
  wire n2147;
  wire n2148;
  wire n2149;
  wire n2151;
  wire n2152;
  wire n2153;
  wire n2154;
  wire n2155;
  wire n2157;
  wire n2158;
  wire n2159;
  wire n2161;
  wire n2163;
  wire n2165;
  wire n2167;
  wire n2170;
  wire n2172;
  wire n2174;
  wire n2176;
  wire n2177;
  wire n2178;
  wire [3:0] n2180;
  wire n2183;
  wire n2185;
  wire [4:0] n2186;
  reg [3:0] n2187;
  reg [1:0] n2192;
  reg [1:0] n2196;
  reg n2199;
  reg n2202;
  reg n2205;
  reg n2208;
  reg n2211;
  reg n2214;
  reg n2216;
  wire [1:0] n2217;
  wire n2219;
  wire n2221;
  wire n2223;
  wire n2225;
  wire [2:0] n2226;
  wire n2228;
  wire n2231;
  wire n2233;
  wire n2235;
  wire [3:0] n2236;
  reg [1:0] n2239;
  reg [1:0] n2243;
  reg n2246;
  reg n2249;
  reg n2251;
  wire [2:0] n2254;
  wire [3:0] n2255;
  wire [1:0] n2256;
  wire [1:0] n2257;
  wire n2258;
  wire n2260;
  wire n2262;
  wire n2263;
  wire n2264;
  wire n2266;
  wire n2267;
  wire n2269;
  wire n2271;
  wire n2273;
  wire n2274;
  wire n2276;
  wire n2277;
  wire [2:0] n2280;
  wire n2282;
  wire n2284;
  wire n2286;
  wire [2:0] n2287;
  reg [1:0] n2291;
  reg n2294;
  reg n2297;
  wire n2299;
  wire [1:0] n2300;
  wire n2302;
  wire n2304;
  wire n2305;
  wire n2306;
  wire [2:0] n2309;
  wire [2:0] n2311;
  wire n2314;
  wire n2316;
  wire n2318;
  wire n2320;
  wire [2:0] n2321;
  wire n2323;
  wire [3:0] n2324;
  wire n2326;
  wire [1:0] n2329;
  wire n2330;
  wire n2331;
  wire n2333;
  wire n2334;
  wire n2337;
  wire [1:0] n2339;
  wire n2341;
  wire n2344;
  wire n2346;
  wire n2348;
  wire n2349;
  wire n2350;
  wire [1:0] n2351;
  wire n2353;
  wire n2354;
  wire [1:0] n2357;
  wire n2360;
  wire n2363;
  wire n2365;
  wire n2367;
  wire n2369;
  wire [6:0] n2370;
  reg [3:0] n2373;
  reg [1:0] n2380;
  reg [1:0] n2383;
  reg [1:0] n2388;
  reg [1:0] n2390;
  reg n2392;
  reg n2394;
  reg n2397;
  reg n2400;
  reg n2403;
  reg n2406;
  reg n2409;
  reg n2412;
  reg n2415;
  wire n2417;
  wire n2419;
  wire n2420;
  wire [1:0] n2421;
  wire n2423;
  wire n2424;
  wire n2425;
  wire n2427;
  wire n2428;
  wire n2429;
  wire n2430;
  wire n2431;
  wire n2433;
  wire n2434;
  wire n2435;
  wire n2437;
  wire n2439;
  wire n2441;
  wire n2443;
  wire n2446;
  wire n2448;
  wire n2450;
  wire n2451;
  wire n2452;
  wire n2455;
  wire n2457;
  wire n2459;
  wire n2460;
  wire n2461;
  wire [3:0] n2463;
  wire n2466;
  wire n2468;
  wire [4:0] n2469;
  reg [3:0] n2470;
  reg [1:0] n2476;
  reg [1:0] n2479;
  reg n2482;
  reg n2485;
  reg n2488;
  reg n2491;
  reg n2494;
  reg n2497;
  reg n2499;
  wire [1:0] n2500;
  wire n2502;
  wire n2503;
  wire n2504;
  wire n2506;
  wire n2508;
  wire n2510;
  wire [2:0] n2511;
  wire n2513;
  wire n2516;
  wire [2:0] n2517;
  wire n2519;
  wire n2522;
  wire n2524;
  wire n2526;
  wire [3:0] n2527;
  reg [1:0] n2531;
  reg [1:0] n2534;
  reg n2537;
  reg n2539;
  reg n2542;
  reg n2544;
  wire [2:0] n2547;
  wire [3:0] n2548;
  wire [1:0] n2549;
  wire [1:0] n2550;
  wire n2551;
  wire n2553;
  wire n2554;
  wire n2556;
  wire n2558;
  wire n2559;
  wire n2561;
  wire n2562;
  wire n2564;
  wire n2566;
  wire n2568;
  wire n2569;
  wire n2571;
  wire n2572;
  wire n2574;
  wire n2575;
  wire [1:0] n2576;
  wire n2578;
  wire n2580;
  wire n2581;
  wire n2582;
  wire [2:0] n2585;
  wire [2:0] n2587;
  wire n2590;
  wire n2592;
  wire n2594;
  wire [2:0] n2595;
  wire n2597;
  wire [3:0] n2598;
  wire n2600;
  wire [1:0] n2603;
  wire n2604;
  wire n2605;
  wire n2607;
  wire n2608;
  wire n2611;
  wire [1:0] n2613;
  wire n2615;
  wire n2618;
  wire n2620;
  wire n2622;
  wire n2623;
  wire n2624;
  wire [1:0] n2625;
  wire n2627;
  wire n2628;
  wire [1:0] n2631;
  wire n2634;
  wire n2637;
  wire n2639;
  wire n2641;
  wire n2643;
  wire [5:0] n2644;
  reg [3:0] n2647;
  reg [1:0] n2652;
  reg [1:0] n2656;
  reg [1:0] n2660;
  reg [1:0] n2662;
  reg n2664;
  reg n2666;
  reg n2669;
  reg n2672;
  reg n2675;
  reg n2678;
  reg n2681;
  reg n2684;
  wire n2686;
  wire n2688;
  wire n2689;
  wire [1:0] n2690;
  wire n2692;
  wire n2693;
  wire n2694;
  wire n2696;
  wire n2697;
  wire n2698;
  wire n2699;
  wire n2700;
  wire n2702;
  wire n2703;
  wire n2704;
  wire n2706;
  wire n2708;
  wire n2710;
  wire n2712;
  wire n2714;
  wire n2717;
  wire n2719;
  wire n2721;
  wire n2723;
  wire n2724;
  wire n2725;
  wire [3:0] n2727;
  wire n2730;
  wire n2732;
  wire [5:0] n2733;
  reg [3:0] n2735;
  reg [1:0] n2741;
  reg [1:0] n2745;
  reg [1:0] n2749;
  reg n2752;
  reg n2755;
  reg n2758;
  reg n2761;
  reg n2764;
  reg n2767;
  reg n2769;
  wire [1:0] n2770;
  wire n2772;
  wire n2774;
  wire n2775;
  wire n2776;
  wire n2777;
  wire [1:0] n2778;
  wire n2780;
  wire n2781;
  wire n2783;
  wire n2784;
  wire n2786;
  wire n2788;
  wire [1:0] n2789;
  wire n2791;
  wire [3:0] n2792;
  wire n2794;
  wire n2795;
  wire [3:0] n2798;
  wire n2800;
  wire [2:0] n2801;
  wire n2803;
  wire [1:0] n2804;
  wire n2806;
  wire n2808;
  wire n2809;
  wire n2811;
  wire [1:0] n2812;
  reg [1:0] n2816;
  wire [1:0] n2818;
  wire n2821;
  wire n2824;
  wire n2826;
  wire n2828;
  wire [4:0] n2829;
  reg [3:0] n2830;
  reg [1:0] n2834;
  reg [1:0] n2838;
  reg [1:0] n2842;
  reg [1:0] n2844;
  reg n2846;
  reg n2849;
  reg n2852;
  reg n2854;
  wire [2:0] n2857;
  wire [3:0] n2858;
  wire [1:0] n2859;
  wire [1:0] n2860;
  wire [1:0] n2861;
  wire [1:0] n2863;
  wire n2865;
  wire n2866;
  wire n2868;
  wire n2870;
  wire n2871;
  wire n2872;
  wire n2874;
  wire n2875;
  wire n2877;
  wire n2879;
  wire n2881;
  wire n2882;
  wire n2884;
  wire n2885;
  wire n2887;
  wire n2888;
  wire [13:0] n2889;
  reg [2:0] n2892;
  reg [3:0] n2894;
  reg [1:0] n2896;
  reg [3:0] n2898;
  reg [1:0] n2900;
  reg [1:0] n2903;
  reg [1:0] n2906;
  reg n2909;
  reg n2912;
  reg n2915;
  reg n2918;
  reg n2921;
  reg n2924;
  reg n2926;
  reg n2928;
  reg n2930;
  reg n2931;
  reg n2932;
  reg n2934;
  reg n2937;
  reg n2940;
  reg n2943;
  reg n2946;
  reg n2949;
  reg n2952;
  reg n2955;
  wire [1:0] n2960;
  wire [2:0] n2961;
  wire [2:0] n2962;
  wire n2964;
  wire n2966;
  wire n2967;
  wire n2969;
  wire n2971;
  wire [2:0] n2972;
  reg [4:0] n2977;
  wire n2979;
  wire n2981;
  wire n2982;
  wire n2984;
  wire n2985;
  wire [2:0] n2986;
  wire n2988;
  wire n2990;
  wire n2991;
  wire n2993;
  wire [1:0] n2994;
  reg [4:0] n2998;
  wire n3000;
  wire [2:0] n3001;
  wire n3003;
  reg [4:0] n3006;
  wire n3008;
  wire [2:0] n3009;
  wire n3011;
  reg [4:0] n3014;
  wire [2:0] n3015;
  reg [4:0] n3016;
  wire n3018;
  wire [2:0] n3019;
  wire [30:0] n3020;
  wire n3022;
  wire n3024;
  wire n3026;
  wire n3028;
  wire n3030;
  wire n3032;
  wire n3034;
  wire [6:0] n3035;
  reg [4:0] n3044;
  wire n3046;
  wire [2:0] n3047;
  wire [30:0] n3048;
  wire [2:0] n3049;
  wire n3051;
  wire n3053;
  wire n3054;
  wire [4:0] n3057;
  wire n3060;
  wire [2:0] n3061;
  wire n3063;
  wire n3065;
  wire n3066;
  wire [4:0] n3069;
  wire n3072;
  wire n3074;
  wire n3076;
  wire [2:0] n3077;
  wire n3079;
  wire [4:0] n3082;
  wire n3085;
  wire n3087;
  wire n3089;
  wire [6:0] n3090;
  reg [4:0] n3096;
  wire n3098;
  wire [2:0] n3099;
  wire [30:0] n3100;
  wire n3102;
  wire [4:0] n3105;
  wire n3107;
  wire n3109;
  wire n3111;
  wire n3113;
  wire n3115;
  wire n3116;
  wire n3118;
  wire [2:0] n3119;
  wire [30:0] n3120;
  wire n3122;
  wire n3124;
  wire n3126;
  wire n3128;
  wire n3130;
  wire n3132;
  wire n3134;
  wire [6:0] n3135;
  reg [4:0] n3144;
  wire [2:0] n3145;
  wire [30:0] n3146;
  wire n3148;
  wire n3150;
  wire n3152;
  wire n3154;
  wire n3156;
  wire n3158;
  wire [2:0] n3159;
  wire n3161;
  wire [4:0] n3164;
  wire n3167;
  wire [6:0] n3168;
  reg [4:0] n3176;
  wire [4:0] n3177;
  wire [4:0] n3179;
  wire [4:0] n3181;
  wire [4:0] n3183;
  wire [4:0] n3185;
  reg [4:0] n3186;
  wire [2:0] n3187;
  reg [4:0] n3188;
  assign lcycle = n2892; //(module output)
  assign alu_op = n3188; //(module output)
  assign set_busa_to = n2894; //(module output)
  assign set_addr_to = n2896; //(module output)
  assign write_data = n2898; //(module output)
  assign jump = n2900; //(module output)
  assign baadd = n2903; //(module output)
  assign baquirk = n2906; //(module output)
  assign breakatna = n2909; //(module output)
  assign adadd = n2912; //(module output)
  assign addy = n2915; //(module output)
  assign pcadd = n2918; //(module output)
  assign inc_s = n2921; //(module output)
  assign dec_s = n2924; //(module output)
  assign lda = n2926; //(module output)
  assign ldp = n2928; //(module output)
  assign ldx = n2930; //(module output)
  assign ldy = n2931; //(module output)
  assign lds = n2932; //(module output)
  assign lddi = n2934; //(module output)
  assign ldalu = n2937; //(module output)
  assign ldad = n2940; //(module output)
  assign ldbal = n2943; //(module output)
  assign ldbah = n2946; //(module output)
  assign savep = n2949; //(module output)
  assign write = n2952; //(module output)
  /*# upstream/rtl/t65/T65_MCode.vhd:97:10 */
  assign branch = n1018; // (signal)
  /*# upstream/rtl/t65/T65_MCode.vhd:98:10 */
  assign alumore = n2955; // (signal)
  /*# upstream/rtl/t65/T65_MCode.vhd:102:10 */
  assign n990 = ir[7:5]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:103:20 */
  assign n991 = p[7]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:103:15 */
  assign n992 = ~n991;
  /*# upstream/rtl/t65/T65_MCode.vhd:103:29 */
  assign n994 = n990 == 3'b000;
  /*# upstream/rtl/t65/T65_MCode.vhd:104:20 */
  assign n995 = p[7]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:104:29 */
  assign n997 = n990 == 3'b001;
  /*# upstream/rtl/t65/T65_MCode.vhd:105:20 */
  assign n998 = p[6]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:105:15 */
  assign n999 = ~n998;
  /*# upstream/rtl/t65/T65_MCode.vhd:105:29 */
  assign n1001 = n990 == 3'b010;
  /*# upstream/rtl/t65/T65_MCode.vhd:106:20 */
  assign n1002 = p[6]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:106:29 */
  assign n1004 = n990 == 3'b011;
  /*# upstream/rtl/t65/T65_MCode.vhd:107:20 */
  assign n1005 = p[0]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:107:15 */
  assign n1006 = ~n1005;
  /*# upstream/rtl/t65/T65_MCode.vhd:107:29 */
  assign n1008 = n990 == 3'b100;
  /*# upstream/rtl/t65/T65_MCode.vhd:108:20 */
  assign n1009 = p[0]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:108:29 */
  assign n1011 = n990 == 3'b101;
  /*# upstream/rtl/t65/T65_MCode.vhd:109:20 */
  assign n1012 = p[1]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:109:15 */
  assign n1013 = ~n1012;
  /*# upstream/rtl/t65/T65_MCode.vhd:109:29 */
  assign n1015 = n990 == 3'b110;
  /*# upstream/rtl/t65/T65_MCode.vhd:110:20 */
  assign n1016 = p[1]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:102:3 */
  assign n1017 = {n1015, n1011, n1008, n1004, n1001, n997, n994};
  /*# upstream/rtl/t65/T65_MCode.vhd:102:3 */
  always @*
    case (n1017)
      7'b1000000: n1018 = n1013;
      7'b0100000: n1018 = n1009;
      7'b0010000: n1018 = n1006;
      7'b0001000: n1018 = n1002;
      7'b0000100: n1018 = n999;
      7'b0000010: n1018 = n995;
      7'b0000001: n1018 = n992;
      default: n1018 = n1016;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:141:12 */
  assign n1021 = ir[7:5]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:143:16 */
  assign n1022 = ir[1:0]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:146:18 */
  assign n1023 = ir[4:2]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:146:30 */
  assign n1025 = n1023 == 3'b111;
  /*# upstream/rtl/t65/T65_MCode.vhd:147:26 */
  assign n1026 = ~rdy_mod;
  /*# upstream/rtl/t65/T65_MCode.vhd:147:15 */
  assign n1029 = n1026 ? 4'b1011 : 4'b0011;
  /*# upstream/rtl/t65/T65_MCode.vhd:146:13 */
  assign n1031 = n1025 ? n1029 : 4'b0011;
  /*# upstream/rtl/t65/T65_MCode.vhd:144:11 */
  assign n1033 = n1022 == 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:157:18 */
  assign n1034 = ir[4:2]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:157:30 */
  assign n1036 = n1034 == 3'b111;
  /*# upstream/rtl/t65/T65_MCode.vhd:158:26 */
  assign n1037 = ~rdy_mod;
  /*# upstream/rtl/t65/T65_MCode.vhd:158:15 */
  assign n1040 = n1037 ? 4'b1010 : 4'b0010;
  /*# upstream/rtl/t65/T65_MCode.vhd:157:13 */
  assign n1042 = n1036 ? n1040 : 4'b0010;
  /*# upstream/rtl/t65/T65_MCode.vhd:155:11 */
  assign n1044 = n1022 == 2'b10;
  /*# upstream/rtl/t65/T65_MCode.vhd:167:18 */
  assign n1045 = ir[4:2]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:167:30 */
  assign n1047 = n1045 == 3'b110;
  /*# upstream/rtl/t65/T65_MCode.vhd:167:13 */
  assign n1050 = n1047 ? 4'b1001 : 4'b0001;
  /*# upstream/rtl/t65/T65_MCode.vhd:167:13 */
  assign n1053 = n1047 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:173:18 */
  assign n1054 = ir[4:2]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:173:30 */
  assign n1056 = n1054 == 3'b111;
  /*# upstream/rtl/t65/T65_MCode.vhd:173:42 */
  assign n1057 = ir[4:2]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:173:54 */
  assign n1059 = n1057 == 3'b110;
  /*# upstream/rtl/t65/T65_MCode.vhd:173:37 */
  assign n1060 = n1056 | n1059;
  /*# upstream/rtl/t65/T65_MCode.vhd:173:66 */
  assign n1061 = ir[4:2]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:173:78 */
  assign n1063 = n1061 == 3'b100;
  /*# upstream/rtl/t65/T65_MCode.vhd:173:61 */
  assign n1064 = n1060 | n1063;
  /*# upstream/rtl/t65/T65_MCode.vhd:174:26 */
  assign n1065 = ~rdy_mod;
  /*# upstream/rtl/t65/T65_MCode.vhd:174:15 */
  assign n1068 = n1065 ? 4'b1001 : 4'b1000;
  /*# upstream/rtl/t65/T65_MCode.vhd:173:13 */
  assign n1070 = n1064 ? n1068 : 4'b1000;
  /*# upstream/rtl/t65/T65_MCode.vhd:166:11 */
  assign n1072 = n1022 == 2'b11;
  /*# upstream/rtl/t65/T65_MCode.vhd:143:9 */
  assign n1073 = {n1072, n1044, n1033};
  /*# upstream/rtl/t65/T65_MCode.vhd:143:9 */
  always @*
    case (n1073)
      3'b100: n1077 = n1050;
      3'b010: n1077 = 4'b0010;
      3'b001: n1077 = 4'b0011;
      default: n1077 = 4'b0001;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:143:9 */
  always @*
    case (n1073)
      3'b100: n1079 = n1070;
      3'b010: n1079 = n1042;
      3'b001: n1079 = n1031;
      default: n1079 = 4'b0001;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:143:9 */
  always @*
    case (n1073)
      3'b100: n1081 = n1053;
      3'b010: n1081 = 1'b0;
      3'b001: n1081 = 1'b0;
      default: n1081 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:142:7 */
  assign n1083 = n1021 == 3'b100;
  /*# upstream/rtl/t65/T65_MCode.vhd:187:16 */
  assign n1084 = ir[1:0]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:189:18 */
  assign n1085 = ir[4]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:189:22 */
  assign n1087 = n1085 != 1'b1;
  /*# upstream/rtl/t65/T65_MCode.vhd:189:34 */
  assign n1088 = ir[2]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:189:38 */
  assign n1090 = n1088 != 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:189:29 */
  assign n1091 = n1087 | n1090;
  /*# upstream/rtl/t65/T65_MCode.vhd:189:13 */
  assign n1094 = n1091 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:188:11 */
  assign n1096 = n1084 == 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:192:11 */
  assign n1098 = n1084 == 2'b01;
  /*# upstream/rtl/t65/T65_MCode.vhd:194:11 */
  assign n1100 = n1084 == 2'b10;
  /*# upstream/rtl/t65/T65_MCode.vhd:199:18 */
  assign n1101 = ir[4:2]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:199:30 */
  assign n1103 = n1101 == 3'b110;
  /*# upstream/rtl/t65/T65_MCode.vhd:199:13 */
  assign n1106 = n1103 ? 4'b0100 : 4'b0000;
  /*# upstream/rtl/t65/T65_MCode.vhd:199:13 */
  assign n1109 = n1103 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:187:9 */
  assign n1110 = {n1100, n1098, n1096};
  /*# upstream/rtl/t65/T65_MCode.vhd:187:9 */
  always @*
    case (n1110)
      3'b100: n1112 = 4'b0000;
      3'b010: n1112 = 4'b0000;
      3'b001: n1112 = 4'b0000;
      default: n1112 = n1106;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:187:9 */
  always @*
    case (n1110)
      3'b100: n1117 = 1'b0;
      3'b010: n1117 = 1'b1;
      3'b001: n1117 = 1'b0;
      default: n1117 = 1'b1;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:187:9 */
  always @*
    case (n1110)
      3'b100: n1121 = 1'b1;
      3'b010: n1121 = 1'b0;
      3'b001: n1121 = 1'b0;
      default: n1121 = 1'b1;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:187:9 */
  always @*
    case (n1110)
      3'b100: n1123 = 1'b0;
      3'b010: n1123 = 1'b0;
      3'b001: n1123 = n1094;
      default: n1123 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:187:9 */
  always @*
    case (n1110)
      3'b100: n1125 = 1'b0;
      3'b010: n1125 = 1'b0;
      3'b001: n1125 = 1'b0;
      default: n1125 = n1109;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:185:7 */
  assign n1127 = n1021 == 3'b101;
  /*# upstream/rtl/t65/T65_MCode.vhd:205:16 */
  assign n1128 = ir[1:0]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:207:18 */
  assign n1129 = ir[4]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:207:22 */
  assign n1130 = ~n1129;
  /*# upstream/rtl/t65/T65_MCode.vhd:207:13 */
  assign n1133 = n1130 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:206:11 */
  assign n1135 = n1128 == 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:205:9 */
  always @*
    case (n1135)
      1'b1: n1138 = 4'b0011;
      default: n1138 = 4'b0001;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:205:9 */
  always @*
    case (n1135)
      1'b1: n1140 = n1133;
      default: n1140 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:204:7 */
  assign n1142 = n1021 == 3'b110;
  /*# upstream/rtl/t65/T65_MCode.vhd:215:16 */
  assign n1143 = ir[1:0]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:217:16 */
  assign n1144 = ir[4]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:217:20 */
  assign n1145 = ~n1144;
  /*# upstream/rtl/t65/T65_MCode.vhd:217:11 */
  assign n1148 = n1145 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:216:9 */
  assign n1150 = n1143 == 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:215:9 */
  always @*
    case (n1150)
      1'b1: n1153 = 4'b0010;
      default: n1153 = 4'b0001;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:215:9 */
  always @*
    case (n1150)
      1'b1: n1155 = n1148;
      default: n1155 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:214:7 */
  assign n1157 = n1021 == 3'b111;
  /*# upstream/rtl/t65/T65_MCode.vhd:141:5 */
  assign n1158 = {n1157, n1142, n1127, n1083};
  /*# upstream/rtl/t65/T65_MCode.vhd:141:5 */
  always @*
    case (n1158)
      4'b1000: n1160 = n1153;
      4'b0100: n1160 = n1138;
      4'b0010: n1160 = n1112;
      4'b0001: n1160 = n1077;
      default: n1160 = 4'b0001;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:141:5 */
  always @*
    case (n1158)
      4'b1000: n1163 = 4'b0000;
      4'b0100: n1163 = 4'b0000;
      4'b0010: n1163 = 4'b0000;
      4'b0001: n1163 = n1079;
      default: n1163 = 4'b0000;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:141:5 */
  always @*
    case (n1158)
      4'b1000: n1166 = 1'b0;
      4'b0100: n1166 = 1'b0;
      4'b0010: n1166 = n1117;
      4'b0001: n1166 = 1'b0;
      default: n1166 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:141:5 */
  always @*
    case (n1158)
      4'b1000: n1169 = n1155;
      4'b0100: n1169 = 1'b0;
      4'b0010: n1169 = n1121;
      4'b0001: n1169 = 1'b0;
      default: n1169 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:141:5 */
  always @*
    case (n1158)
      4'b1000: n1172 = 1'b0;
      4'b0100: n1172 = n1140;
      4'b0010: n1172 = n1123;
      4'b0001: n1172 = 1'b0;
      default: n1172 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:141:5 */
  always @*
    case (n1158)
      4'b1000: n1175 = 1'b0;
      4'b0100: n1175 = 1'b0;
      4'b0010: n1175 = n1125;
      4'b0001: n1175 = n1081;
      default: n1175 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:227:10 */
  assign n1177 = ir[7:6]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:227:23 */
  assign n1179 = n1177 != 2'b10;
  /*# upstream/rtl/t65/T65_MCode.vhd:227:37 */
  assign n1180 = ir[1]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:227:31 */
  assign n1181 = n1180 & n1179;
  /*# upstream/rtl/t65/T65_MCode.vhd:227:56 */
  assign n1183 = mode == 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:227:67 */
  assign n1184 = ir[0]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:227:70 */
  assign n1185 = ~n1184;
  /*# upstream/rtl/t65/T65_MCode.vhd:227:62 */
  assign n1186 = n1183 | n1185;
  /*# upstream/rtl/t65/T65_MCode.vhd:227:47 */
  assign n1187 = n1186 & n1181;
  /*# upstream/rtl/t65/T65_MCode.vhd:228:12 */
  assign n1189 = ir == 8'b11101011;
  /*# upstream/rtl/t65/T65_MCode.vhd:228:7 */
  assign n1192 = n1189 ? 4'b0001 : 4'b0000;
  /*# upstream/rtl/t65/T65_MCode.vhd:227:5 */
  assign n1193 = n1187 ? n1192 : n1160;
  /*# upstream/rtl/t65/T65_MCode.vhd:235:12 */
  assign n1194 = ir[4:0]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:248:15 */
  assign n1196 = mcycle == 3'b001;
  /*# upstream/rtl/t65/T65_MCode.vhd:252:15 */
  assign n1198 = mcycle == 3'b010;
  /*# upstream/rtl/t65/T65_MCode.vhd:257:15 */
  assign n1200 = mcycle == 3'b011;
  /*# upstream/rtl/t65/T65_MCode.vhd:262:15 */
  assign n1202 = mcycle == 3'b100;
  /*# upstream/rtl/t65/T65_MCode.vhd:265:15 */
  assign n1204 = mcycle == 3'b101;
  /*# upstream/rtl/t65/T65_MCode.vhd:268:15 */
  assign n1206 = mcycle == 3'b110;
  /*# upstream/rtl/t65/T65_MCode.vhd:247:13 */
  assign n1207 = {n1206, n1204, n1202, n1200, n1198, n1196};
  /*# upstream/rtl/t65/T65_MCode.vhd:247:13 */
  always @*
    case (n1207)
      6'b100000: n1214 = 2'b00;
      6'b010000: n1214 = 2'b11;
      6'b001000: n1214 = 2'b11;
      6'b000100: n1214 = 2'b01;
      6'b000010: n1214 = 2'b01;
      6'b000001: n1214 = 2'b01;
      default: n1214 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:247:13 */
  always @*
    case (n1207)
      6'b100000: n1218 = n1163;
      6'b010000: n1218 = n1163;
      6'b001000: n1218 = n1163;
      6'b000100: n1218 = 4'b0101;
      6'b000010: n1218 = 4'b0110;
      6'b000001: n1218 = 4'b0111;
      default: n1218 = n1163;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:247:13 */
  always @*
    case (n1207)
      6'b100000: n1221 = 2'b10;
      6'b010000: n1221 = 2'b00;
      6'b001000: n1221 = 2'b00;
      6'b000100: n1221 = 2'b00;
      6'b000010: n1221 = 2'b00;
      6'b000001: n1221 = 2'b00;
      default: n1221 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:247:13 */
  always @*
    case (n1207)
      6'b100000: n1226 = 1'b0;
      6'b010000: n1226 = 1'b0;
      6'b001000: n1226 = 1'b1;
      6'b000100: n1226 = 1'b1;
      6'b000010: n1226 = 1'b1;
      6'b000001: n1226 = 1'b0;
      default: n1226 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:247:13 */
  always @*
    case (n1207)
      6'b100000: n1229 = 1'b0;
      6'b010000: n1229 = 1'b1;
      6'b001000: n1229 = 1'b0;
      6'b000100: n1229 = 1'b0;
      6'b000010: n1229 = 1'b0;
      6'b000001: n1229 = 1'b0;
      default: n1229 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:247:13 */
  always @*
    case (n1207)
      6'b100000: n1234 = 1'b0;
      6'b010000: n1234 = 1'b0;
      6'b001000: n1234 = 1'b0;
      6'b000100: n1234 = 1'b1;
      6'b000010: n1234 = 1'b1;
      6'b000001: n1234 = 1'b1;
      default: n1234 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:244:11 */
  assign n1236 = ir == 8'b00000000;
  /*# upstream/rtl/t65/T65_MCode.vhd:275:15 */
  assign n1238 = mcycle == 3'b001;
  /*# upstream/rtl/t65/T65_MCode.vhd:279:15 */
  assign n1240 = mcycle == 3'b010;
  /*# upstream/rtl/t65/T65_MCode.vhd:283:15 */
  assign n1242 = mcycle == 3'b011;
  /*# upstream/rtl/t65/T65_MCode.vhd:288:15 */
  assign n1244 = mcycle == 3'b100;
  /*# upstream/rtl/t65/T65_MCode.vhd:290:15 */
  assign n1246 = mcycle == 3'b101;
  /*# upstream/rtl/t65/T65_MCode.vhd:274:13 */
  assign n1247 = {n1246, n1244, n1242, n1240, n1238};
  /*# upstream/rtl/t65/T65_MCode.vhd:274:13 */
  always @*
    case (n1247)
      5'b10000: n1252 = 2'b00;
      5'b01000: n1252 = 2'b00;
      5'b00100: n1252 = 2'b01;
      5'b00010: n1252 = 2'b01;
      5'b00001: n1252 = 2'b01;
      default: n1252 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:274:13 */
  always @*
    case (n1247)
      5'b10000: n1255 = n1163;
      5'b01000: n1255 = n1163;
      5'b00100: n1255 = 4'b0110;
      5'b00010: n1255 = 4'b0111;
      5'b00001: n1255 = n1163;
      default: n1255 = n1163;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:274:13 */
  always @*
    case (n1247)
      5'b10000: n1259 = 2'b10;
      5'b01000: n1259 = 2'b00;
      5'b00100: n1259 = 2'b00;
      5'b00010: n1259 = 2'b00;
      5'b00001: n1259 = 2'b01;
      default: n1259 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:274:13 */
  always @*
    case (n1247)
      5'b10000: n1263 = 1'b0;
      5'b01000: n1263 = 1'b1;
      5'b00100: n1263 = 1'b1;
      5'b00010: n1263 = 1'b0;
      5'b00001: n1263 = 1'b0;
      default: n1263 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:274:13 */
  always @*
    case (n1247)
      5'b10000: n1266 = 1'b0;
      5'b01000: n1266 = 1'b0;
      5'b00100: n1266 = 1'b0;
      5'b00010: n1266 = 1'b0;
      5'b00001: n1266 = 1'b1;
      default: n1266 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:274:13 */
  always @*
    case (n1247)
      5'b10000: n1270 = 1'b0;
      5'b01000: n1270 = 1'b0;
      5'b00100: n1270 = 1'b1;
      5'b00010: n1270 = 1'b1;
      5'b00001: n1270 = 1'b0;
      default: n1270 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:272:11 */
  assign n1272 = ir == 8'b00100000;
  /*# upstream/rtl/t65/T65_MCode.vhd:297:15 */
  assign n1274 = mcycle == 3'b001;
  /*# upstream/rtl/t65/T65_MCode.vhd:299:15 */
  assign n1276 = mcycle == 3'b010;
  /*# upstream/rtl/t65/T65_MCode.vhd:302:15 */
  assign n1278 = mcycle == 3'b011;
  /*# upstream/rtl/t65/T65_MCode.vhd:306:15 */
  assign n1280 = mcycle == 3'b100;
  /*# upstream/rtl/t65/T65_MCode.vhd:311:15 */
  assign n1282 = mcycle == 3'b101;
  /*# upstream/rtl/t65/T65_MCode.vhd:296:15 */
  assign n1283 = {n1282, n1280, n1278, n1276, n1274};
  /*# upstream/rtl/t65/T65_MCode.vhd:296:15 */
  always @*
    case (n1283)
      5'b10000: n1285 = n1193;
      5'b01000: n1285 = n1193;
      5'b00100: n1285 = 4'b0000;
      5'b00010: n1285 = n1193;
      5'b00001: n1285 = n1193;
      default: n1285 = n1193;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:296:15 */
  always @*
    case (n1283)
      5'b10000: n1291 = 2'b00;
      5'b01000: n1291 = 2'b01;
      5'b00100: n1291 = 2'b01;
      5'b00010: n1291 = 2'b01;
      5'b00001: n1291 = 2'b01;
      default: n1291 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:296:15 */
  always @*
    case (n1283)
      5'b10000: n1294 = 2'b10;
      5'b01000: n1294 = 2'b00;
      5'b00100: n1294 = 2'b00;
      5'b00010: n1294 = 2'b00;
      5'b00001: n1294 = 2'b00;
      default: n1294 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:296:15 */
  always @*
    case (n1283)
      5'b10000: n1299 = 1'b0;
      5'b01000: n1299 = 1'b1;
      5'b00100: n1299 = 1'b1;
      5'b00010: n1299 = 1'b1;
      5'b00001: n1299 = 1'b0;
      default: n1299 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:296:15 */
  always @*
    case (n1283)
      5'b10000: n1302 = 1'b0;
      5'b01000: n1302 = 1'b1;
      5'b00100: n1302 = 1'b0;
      5'b00010: n1302 = 1'b0;
      5'b00001: n1302 = 1'b0;
      default: n1302 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:296:15 */
  always @*
    case (n1283)
      5'b10000: n1305 = 1'b0;
      5'b01000: n1305 = 1'b1;
      5'b00100: n1305 = 1'b0;
      5'b00010: n1305 = 1'b0;
      5'b00001: n1305 = 1'b0;
      default: n1305 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:294:13 */
  assign n1307 = ir == 8'b01000000;
  /*# upstream/rtl/t65/T65_MCode.vhd:318:15 */
  assign n1309 = mcycle == 3'b001;
  /*# upstream/rtl/t65/T65_MCode.vhd:320:15 */
  assign n1311 = mcycle == 3'b010;
  /*# upstream/rtl/t65/T65_MCode.vhd:323:15 */
  assign n1313 = mcycle == 3'b011;
  /*# upstream/rtl/t65/T65_MCode.vhd:327:15 */
  assign n1315 = mcycle == 3'b100;
  /*# upstream/rtl/t65/T65_MCode.vhd:329:15 */
  assign n1317 = mcycle == 3'b101;
  /*# upstream/rtl/t65/T65_MCode.vhd:317:13 */
  assign n1318 = {n1317, n1315, n1313, n1311, n1309};
  /*# upstream/rtl/t65/T65_MCode.vhd:317:13 */
  always @*
    case (n1318)
      5'b10000: n1323 = 2'b00;
      5'b01000: n1323 = 2'b00;
      5'b00100: n1323 = 2'b01;
      5'b00010: n1323 = 2'b01;
      5'b00001: n1323 = 2'b01;
      default: n1323 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:317:13 */
  always @*
    case (n1318)
      5'b10000: n1327 = 2'b01;
      5'b01000: n1327 = 2'b10;
      5'b00100: n1327 = 2'b00;
      5'b00010: n1327 = 2'b00;
      5'b00001: n1327 = 2'b00;
      default: n1327 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:317:13 */
  always @*
    case (n1318)
      5'b10000: n1331 = 1'b0;
      5'b01000: n1331 = 1'b0;
      5'b00100: n1331 = 1'b1;
      5'b00010: n1331 = 1'b1;
      5'b00001: n1331 = 1'b0;
      default: n1331 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:317:13 */
  always @*
    case (n1318)
      5'b10000: n1334 = 1'b0;
      5'b01000: n1334 = 1'b0;
      5'b00100: n1334 = 1'b1;
      5'b00010: n1334 = 1'b0;
      5'b00001: n1334 = 1'b0;
      default: n1334 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:315:11 */
  assign n1336 = ir == 8'b01100000;
  /*# upstream/rtl/t65/T65_MCode.vhd:335:23 */
  assign n1338 = mode == 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:335:36 */
  assign n1339 = ir[1]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:335:30 */
  assign n1340 = n1339 & n1338;
  /*# upstream/rtl/t65/T65_MCode.vhd:335:15 */
  assign n1343 = n1340 ? 3'b001 : 3'b010;
  /*# upstream/rtl/t65/T65_MCode.vhd:340:24 */
  assign n1346 = mode != 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:340:36 */
  assign n1347 = ir[1]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:340:39 */
  assign n1348 = ~n1347;
  /*# upstream/rtl/t65/T65_MCode.vhd:340:31 */
  assign n1349 = n1346 | n1348;
  /*# upstream/rtl/t65/T65_MCode.vhd:342:26 */
  assign n1350 = ir[7:4]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:343:19 */
  assign n1352 = n1350 == 4'b0000;
  /*# upstream/rtl/t65/T65_MCode.vhd:345:19 */
  assign n1354 = n1350 == 4'b0100;
  /*# upstream/rtl/t65/T65_MCode.vhd:348:29 */
  assign n1356 = mode != 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:348:21 */
  assign n1358 = n1356 ? 4'b0011 : n1163;
  /*# upstream/rtl/t65/T65_MCode.vhd:348:21 */
  assign n1361 = n1356 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:347:19 */
  assign n1363 = n1350 == 4'b0101;
  /*# upstream/rtl/t65/T65_MCode.vhd:354:29 */
  assign n1365 = mode != 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:354:21 */
  assign n1367 = n1365 ? 4'b0010 : n1163;
  /*# upstream/rtl/t65/T65_MCode.vhd:354:21 */
  assign n1370 = n1365 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:353:19 */
  assign n1372 = n1350 == 4'b1101;
  /*# upstream/rtl/t65/T65_MCode.vhd:342:19 */
  assign n1373 = {n1372, n1363, n1354, n1352};
  /*# upstream/rtl/t65/T65_MCode.vhd:342:19 */
  always @*
    case (n1373)
      4'b1000: n1376 = n1367;
      4'b0100: n1376 = n1358;
      4'b0010: n1376 = 4'b0001;
      4'b0001: n1376 = 4'b0101;
      default: n1376 = n1163;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:342:19 */
  always @*
    case (n1373)
      4'b1000: n1378 = n1370;
      4'b0100: n1378 = n1361;
      4'b0010: n1378 = 1'b1;
      4'b0001: n1378 = 1'b1;
      default: n1378 = 1'b1;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:340:17 */
  assign n1382 = n1349 ? 2'b01 : 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:340:17 */
  assign n1383 = n1349 ? n1376 : n1163;
  /*# upstream/rtl/t65/T65_MCode.vhd:340:17 */
  assign n1385 = n1349 ? n1378 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:339:15 */
  assign n1387 = mcycle == 3'b001;
  /*# upstream/rtl/t65/T65_MCode.vhd:363:15 */
  assign n1389 = mcycle == 3'b010;
  /*# upstream/rtl/t65/T65_MCode.vhd:338:15 */
  assign n1390 = {n1389, n1387};
  /*# upstream/rtl/t65/T65_MCode.vhd:338:15 */
  always @*
    case (n1390)
      2'b10: n1392 = 2'b00;
      2'b01: n1392 = n1382;
      default: n1392 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:338:15 */
  always @*
    case (n1390)
      2'b10: n1393 = n1163;
      2'b01: n1393 = n1383;
      default: n1393 = n1163;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:338:15 */
  always @*
    case (n1390)
      2'b10: n1396 = 1'b1;
      2'b01: n1396 = 1'b0;
      default: n1396 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:338:15 */
  always @*
    case (n1390)
      2'b10: n1398 = 1'b0;
      2'b01: n1398 = n1385;
      default: n1398 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:333:13 */
  assign n1400 = ir == 8'b00001000;
  /*# upstream/rtl/t65/T65_MCode.vhd:333:24 */
  assign n1402 = ir == 8'b01001000;
  /*# upstream/rtl/t65/T65_MCode.vhd:333:24 */
  assign n1403 = n1400 | n1402;
  /*# upstream/rtl/t65/T65_MCode.vhd:333:32 */
  assign n1405 = ir == 8'b01011010;
  /*# upstream/rtl/t65/T65_MCode.vhd:333:32 */
  assign n1406 = n1403 | n1405;
  /*# upstream/rtl/t65/T65_MCode.vhd:333:40 */
  assign n1408 = ir == 8'b11011010;
  /*# upstream/rtl/t65/T65_MCode.vhd:333:40 */
  assign n1409 = n1406 | n1408;
  /*# upstream/rtl/t65/T65_MCode.vhd:369:21 */
  assign n1411 = mode == 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:369:34 */
  assign n1412 = ir[1]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:369:28 */
  assign n1413 = n1412 & n1411;
  /*# upstream/rtl/t65/T65_MCode.vhd:369:13 */
  assign n1416 = n1413 ? 3'b001 : 3'b011;
  /*# upstream/rtl/t65/T65_MCode.vhd:372:20 */
  assign n1418 = ir[7:4]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:373:15 */
  assign n1420 = n1418 == 4'b0010;
  /*# upstream/rtl/t65/T65_MCode.vhd:375:15 */
  assign n1422 = n1418 == 4'b0110;
  /*# upstream/rtl/t65/T65_MCode.vhd:378:25 */
  assign n1424 = mode != 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:378:17 */
  assign n1426 = n1424 ? 1'b1 : n1172;
  /*# upstream/rtl/t65/T65_MCode.vhd:377:15 */
  assign n1428 = n1418 == 4'b0111;
  /*# upstream/rtl/t65/T65_MCode.vhd:382:25 */
  assign n1430 = mode != 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:382:17 */
  assign n1432 = n1430 ? 1'b1 : n1169;
  /*# upstream/rtl/t65/T65_MCode.vhd:381:15 */
  assign n1434 = n1418 == 4'b1111;
  /*# upstream/rtl/t65/T65_MCode.vhd:372:13 */
  assign n1435 = {n1434, n1428, n1422, n1420};
  /*# upstream/rtl/t65/T65_MCode.vhd:372:13 */
  always @*
    case (n1435)
      4'b1000: n1437 = n1166;
      4'b0100: n1437 = n1166;
      4'b0010: n1437 = 1'b1;
      4'b0001: n1437 = n1166;
      default: n1437 = n1166;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:372:13 */
  always @*
    case (n1435)
      4'b1000: n1440 = 1'b0;
      4'b0100: n1440 = 1'b0;
      4'b0010: n1440 = 1'b0;
      4'b0001: n1440 = 1'b1;
      default: n1440 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:372:13 */
  always @*
    case (n1435)
      4'b1000: n1441 = n1432;
      4'b0100: n1441 = n1169;
      4'b0010: n1441 = n1169;
      4'b0001: n1441 = n1169;
      default: n1441 = n1169;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:372:13 */
  always @*
    case (n1435)
      4'b1000: n1442 = n1172;
      4'b0100: n1442 = n1426;
      4'b0010: n1442 = n1172;
      4'b0001: n1442 = n1172;
      default: n1442 = n1172;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:389:25 */
  assign n1444 = mode != 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:389:38 */
  assign n1445 = ir[1]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:389:42 */
  assign n1446 = ~n1445;
  /*# upstream/rtl/t65/T65_MCode.vhd:389:33 */
  assign n1447 = n1444 | n1446;
  /*# upstream/rtl/t65/T65_MCode.vhd:389:17 */
  assign n1450 = n1447 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:388:15 */
  assign n1452 = mcycle == 3'b000;
  /*# upstream/rtl/t65/T65_MCode.vhd:393:25 */
  assign n1454 = mode != 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:393:38 */
  assign n1455 = ir[1]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:393:42 */
  assign n1456 = ~n1455;
  /*# upstream/rtl/t65/T65_MCode.vhd:393:33 */
  assign n1457 = n1454 | n1456;
  /*# upstream/rtl/t65/T65_MCode.vhd:393:17 */
  assign n1460 = n1457 ? 2'b01 : 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:393:17 */
  assign n1462 = n1457 ? 1'b0 : n1440;
  /*# upstream/rtl/t65/T65_MCode.vhd:392:15 */
  assign n1464 = mcycle == 3'b001;
  /*# upstream/rtl/t65/T65_MCode.vhd:397:15 */
  assign n1466 = mcycle == 3'b010;
  /*# upstream/rtl/t65/T65_MCode.vhd:401:15 */
  assign n1468 = mcycle == 3'b011;
  /*# upstream/rtl/t65/T65_MCode.vhd:387:13 */
  assign n1469 = {n1468, n1466, n1464, n1452};
  /*# upstream/rtl/t65/T65_MCode.vhd:387:13 */
  always @*
    case (n1469)
      4'b1000: n1471 = 4'b0000;
      4'b0100: n1471 = n1193;
      4'b0010: n1471 = n1193;
      4'b0001: n1471 = n1193;
      default: n1471 = n1193;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:387:13 */
  always @*
    case (n1469)
      4'b1000: n1474 = 2'b00;
      4'b0100: n1474 = 2'b01;
      4'b0010: n1474 = n1460;
      4'b0001: n1474 = 2'b00;
      default: n1474 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:387:13 */
  always @*
    case (n1469)
      4'b1000: n1477 = 1'b0;
      4'b0100: n1477 = 1'b1;
      4'b0010: n1477 = 1'b0;
      4'b0001: n1477 = 1'b0;
      default: n1477 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:387:13 */
  always @*
    case (n1469)
      4'b1000: n1479 = n1440;
      4'b0100: n1479 = 1'b0;
      4'b0010: n1479 = n1462;
      4'b0001: n1479 = n1440;
      default: n1479 = n1440;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:387:13 */
  always @*
    case (n1469)
      4'b1000: n1481 = 1'b0;
      4'b0100: n1481 = 1'b0;
      4'b0010: n1481 = 1'b0;
      4'b0001: n1481 = n1450;
      default: n1481 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:367:11 */
  assign n1483 = ir == 8'b00101000;
  /*# upstream/rtl/t65/T65_MCode.vhd:367:23 */
  assign n1485 = ir == 8'b01101000;
  /*# upstream/rtl/t65/T65_MCode.vhd:367:23 */
  assign n1486 = n1483 | n1485;
  /*# upstream/rtl/t65/T65_MCode.vhd:367:31 */
  assign n1488 = ir == 8'b01111010;
  /*# upstream/rtl/t65/T65_MCode.vhd:367:31 */
  assign n1489 = n1486 | n1488;
  /*# upstream/rtl/t65/T65_MCode.vhd:367:39 */
  assign n1491 = ir == 8'b11111010;
  /*# upstream/rtl/t65/T65_MCode.vhd:367:39 */
  assign n1492 = n1489 | n1491;
  /*# upstream/rtl/t65/T65_MCode.vhd:408:15 */
  assign n1494 = mcycle == 3'b000;
  /*# upstream/rtl/t65/T65_MCode.vhd:409:15 */
  assign n1496 = mcycle == 3'b001;
  /*# upstream/rtl/t65/T65_MCode.vhd:407:13 */
  assign n1497 = {n1496, n1494};
  /*# upstream/rtl/t65/T65_MCode.vhd:407:13 */
  always @*
    case (n1497)
      2'b10: n1500 = 2'b01;
      2'b01: n1500 = 2'b00;
      default: n1500 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:405:11 */
  assign n1502 = ir == 8'b10100000;
  /*# upstream/rtl/t65/T65_MCode.vhd:405:22 */
  assign n1504 = ir == 8'b11000000;
  /*# upstream/rtl/t65/T65_MCode.vhd:405:22 */
  assign n1505 = n1502 | n1504;
  /*# upstream/rtl/t65/T65_MCode.vhd:405:30 */
  assign n1507 = ir == 8'b11100000;
  /*# upstream/rtl/t65/T65_MCode.vhd:405:30 */
  assign n1508 = n1505 | n1507;
  /*# upstream/rtl/t65/T65_MCode.vhd:416:15 */
  assign n1510 = mcycle == 3'b000;
  /*# upstream/rtl/t65/T65_MCode.vhd:417:15 */
  assign n1512 = mcycle == 3'b001;
  /*# upstream/rtl/t65/T65_MCode.vhd:415:13 */
  assign n1513 = {n1512, n1510};
  /*# upstream/rtl/t65/T65_MCode.vhd:415:13 */
  always @*
    case (n1513)
      2'b10: n1515 = 4'b0011;
      2'b01: n1515 = n1193;
      default: n1515 = n1193;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:413:11 */
  assign n1517 = ir == 8'b10001000;
  /*# upstream/rtl/t65/T65_MCode.vhd:424:15 */
  assign n1519 = mcycle == 3'b000;
  /*# upstream/rtl/t65/T65_MCode.vhd:425:15 */
  assign n1521 = mcycle == 3'b001;
  /*# upstream/rtl/t65/T65_MCode.vhd:423:13 */
  assign n1522 = {n1521, n1519};
  /*# upstream/rtl/t65/T65_MCode.vhd:423:13 */
  always @*
    case (n1522)
      2'b10: n1524 = 4'b0010;
      2'b01: n1524 = n1193;
      default: n1524 = n1193;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:421:11 */
  assign n1526 = ir == 8'b11001010;
  /*# upstream/rtl/t65/T65_MCode.vhd:430:21 */
  assign n1528 = mode != 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:430:13 */
  assign n1530 = n1528 ? 1'b1 : n1166;
  /*# upstream/rtl/t65/T65_MCode.vhd:436:15 */
  assign n1532 = mcycle == 3'b000;
  /*# upstream/rtl/t65/T65_MCode.vhd:437:15 */
  assign n1534 = mcycle == 3'b001;
  /*# upstream/rtl/t65/T65_MCode.vhd:435:13 */
  assign n1535 = {n1534, n1532};
  /*# upstream/rtl/t65/T65_MCode.vhd:435:13 */
  always @*
    case (n1535)
      2'b10: n1537 = 4'b0100;
      2'b01: n1537 = n1193;
      default: n1537 = n1193;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:429:11 */
  assign n1539 = ir == 8'b00011010;
  /*# upstream/rtl/t65/T65_MCode.vhd:429:22 */
  assign n1541 = ir == 8'b00111010;
  /*# upstream/rtl/t65/T65_MCode.vhd:429:22 */
  assign n1542 = n1539 | n1541;
  /*# upstream/rtl/t65/T65_MCode.vhd:441:11 */
  assign n1549 = ir == 8'b00001010;
  /*# upstream/rtl/t65/T65_MCode.vhd:441:22 */
  assign n1551 = ir == 8'b00101010;
  /*# upstream/rtl/t65/T65_MCode.vhd:441:22 */
  assign n1552 = n1549 | n1551;
  /*# upstream/rtl/t65/T65_MCode.vhd:441:30 */
  assign n1554 = ir == 8'b01001010;
  /*# upstream/rtl/t65/T65_MCode.vhd:441:30 */
  assign n1555 = n1552 | n1554;
  /*# upstream/rtl/t65/T65_MCode.vhd:441:38 */
  assign n1557 = ir == 8'b01101010;
  /*# upstream/rtl/t65/T65_MCode.vhd:441:38 */
  assign n1558 = n1555 | n1557;
  /*# upstream/rtl/t65/T65_MCode.vhd:449:11 */
  assign n1565 = ir == 8'b10001010;
  /*# upstream/rtl/t65/T65_MCode.vhd:449:22 */
  assign n1567 = ir == 8'b10011000;
  /*# upstream/rtl/t65/T65_MCode.vhd:449:22 */
  assign n1568 = n1565 | n1567;
  /*# upstream/rtl/t65/T65_MCode.vhd:458:15 */
  assign n1570 = mcycle == 3'b000;
  /*# upstream/rtl/t65/T65_MCode.vhd:459:15 */
  assign n1572 = mcycle == 3'b001;
  /*# upstream/rtl/t65/T65_MCode.vhd:457:13 */
  assign n1573 = {n1572, n1570};
  /*# upstream/rtl/t65/T65_MCode.vhd:457:13 */
  always @*
    case (n1573)
      2'b10: n1575 = 4'b0001;
      2'b01: n1575 = n1193;
      default: n1575 = n1193;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:456:11 */
  assign n1577 = ir == 8'b10101010;
  /*# upstream/rtl/t65/T65_MCode.vhd:456:22 */
  assign n1579 = ir == 8'b10101000;
  /*# upstream/rtl/t65/T65_MCode.vhd:456:22 */
  assign n1580 = n1577 | n1579;
  /*# upstream/rtl/t65/T65_MCode.vhd:463:11 */
  assign n1582 = ir == 8'b10011010;
  /*# upstream/rtl/t65/T65_MCode.vhd:468:15 */
  assign n1584 = mcycle == 3'b000;
  /*# upstream/rtl/t65/T65_MCode.vhd:469:15 */
  assign n1586 = mcycle == 3'b001;
  /*# upstream/rtl/t65/T65_MCode.vhd:467:13 */
  assign n1587 = {n1586, n1584};
  /*# upstream/rtl/t65/T65_MCode.vhd:467:13 */
  always @*
    case (n1587)
      2'b10: n1589 = 4'b0100;
      2'b01: n1589 = n1193;
      default: n1589 = n1193;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:465:11 */
  assign n1591 = ir == 8'b10111010;
  /*# upstream/rtl/t65/T65_MCode.vhd:475:15 */
  assign n1593 = mcycle == 3'b000;
  /*# upstream/rtl/t65/T65_MCode.vhd:476:15 */
  assign n1595 = mcycle == 3'b001;
  /*# upstream/rtl/t65/T65_MCode.vhd:474:13 */
  assign n1596 = {n1595, n1593};
  /*# upstream/rtl/t65/T65_MCode.vhd:474:13 */
  always @*
    case (n1596)
      2'b10: n1599 = 2'b01;
      2'b01: n1599 = 2'b00;
      default: n1599 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:473:11 */
  assign n1601 = ir == 8'b10000000;
  /*# upstream/rtl/t65/T65_MCode.vhd:243:9 */
  assign n1604 = {n1601, n1591, n1582, n1580, n1568, n1558, n1542, n1526, n1517, n1508, n1492, n1409, n1336, n1307, n1272, n1236};
  /*# upstream/rtl/t65/T65_MCode.vhd:243:9 */
  always @*
    case (n1604)
      16'b1000000000000000: n1610 = 3'b001;
      16'b0100000000000000: n1610 = 3'b001;
      16'b0010000000000000: n1610 = 3'b001;
      16'b0001000000000000: n1610 = 3'b001;
      16'b0000100000000000: n1610 = 3'b001;
      16'b0000010000000000: n1610 = 3'b001;
      16'b0000001000000000: n1610 = 3'b001;
      16'b0000000100000000: n1610 = 3'b001;
      16'b0000000010000000: n1610 = 3'b001;
      16'b0000000001000000: n1610 = 3'b001;
      16'b0000000000100000: n1610 = n1416;
      16'b0000000000010000: n1610 = n1343;
      16'b0000000000001000: n1610 = 3'b101;
      16'b0000000000000100: n1610 = 3'b101;
      16'b0000000000000010: n1610 = 3'b101;
      16'b0000000000000001: n1610 = 3'b110;
      default: n1610 = 3'b001;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:243:9 */
  always @*
    case (n1604)
      16'b1000000000000000: n1612 = n1193;
      16'b0100000000000000: n1612 = n1589;
      16'b0010000000000000: n1612 = n1193;
      16'b0001000000000000: n1612 = n1575;
      16'b0000100000000000: n1612 = n1193;
      16'b0000010000000000: n1612 = 4'b0001;
      16'b0000001000000000: n1612 = n1537;
      16'b0000000100000000: n1612 = n1524;
      16'b0000000010000000: n1612 = n1515;
      16'b0000000001000000: n1612 = n1193;
      16'b0000000000100000: n1612 = n1471;
      16'b0000000000010000: n1612 = n1193;
      16'b0000000000001000: n1612 = n1193;
      16'b0000000000000100: n1612 = n1285;
      16'b0000000000000010: n1612 = n1193;
      16'b0000000000000001: n1612 = n1193;
      default: n1612 = n1193;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:243:9 */
  always @*
    case (n1604)
      16'b1000000000000000: n1614 = 2'b00;
      16'b0100000000000000: n1614 = 2'b00;
      16'b0010000000000000: n1614 = 2'b00;
      16'b0001000000000000: n1614 = 2'b00;
      16'b0000100000000000: n1614 = 2'b00;
      16'b0000010000000000: n1614 = 2'b00;
      16'b0000001000000000: n1614 = 2'b00;
      16'b0000000100000000: n1614 = 2'b00;
      16'b0000000010000000: n1614 = 2'b00;
      16'b0000000001000000: n1614 = 2'b00;
      16'b0000000000100000: n1614 = n1474;
      16'b0000000000010000: n1614 = n1392;
      16'b0000000000001000: n1614 = n1323;
      16'b0000000000000100: n1614 = n1291;
      16'b0000000000000010: n1614 = n1252;
      16'b0000000000000001: n1614 = n1214;
      default: n1614 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:243:9 */
  always @*
    case (n1604)
      16'b1000000000000000: n1615 = n1163;
      16'b0100000000000000: n1615 = n1163;
      16'b0010000000000000: n1615 = n1163;
      16'b0001000000000000: n1615 = n1163;
      16'b0000100000000000: n1615 = n1163;
      16'b0000010000000000: n1615 = n1163;
      16'b0000001000000000: n1615 = n1163;
      16'b0000000100000000: n1615 = n1163;
      16'b0000000010000000: n1615 = n1163;
      16'b0000000001000000: n1615 = n1163;
      16'b0000000000100000: n1615 = n1163;
      16'b0000000000010000: n1615 = n1393;
      16'b0000000000001000: n1615 = n1163;
      16'b0000000000000100: n1615 = n1163;
      16'b0000000000000010: n1615 = n1255;
      16'b0000000000000001: n1615 = n1218;
      default: n1615 = n1163;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:243:9 */
  always @*
    case (n1604)
      16'b1000000000000000: n1617 = n1599;
      16'b0100000000000000: n1617 = 2'b00;
      16'b0010000000000000: n1617 = 2'b00;
      16'b0001000000000000: n1617 = 2'b00;
      16'b0000100000000000: n1617 = 2'b00;
      16'b0000010000000000: n1617 = 2'b00;
      16'b0000001000000000: n1617 = 2'b00;
      16'b0000000100000000: n1617 = 2'b00;
      16'b0000000010000000: n1617 = 2'b00;
      16'b0000000001000000: n1617 = n1500;
      16'b0000000000100000: n1617 = 2'b00;
      16'b0000000000010000: n1617 = 2'b00;
      16'b0000000000001000: n1617 = n1327;
      16'b0000000000000100: n1617 = n1294;
      16'b0000000000000010: n1617 = n1259;
      16'b0000000000000001: n1617 = n1221;
      default: n1617 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:243:9 */
  always @*
    case (n1604)
      16'b1000000000000000: n1619 = 1'b0;
      16'b0100000000000000: n1619 = 1'b0;
      16'b0010000000000000: n1619 = 1'b0;
      16'b0001000000000000: n1619 = 1'b0;
      16'b0000100000000000: n1619 = 1'b0;
      16'b0000010000000000: n1619 = 1'b0;
      16'b0000001000000000: n1619 = 1'b0;
      16'b0000000100000000: n1619 = 1'b0;
      16'b0000000010000000: n1619 = 1'b0;
      16'b0000000001000000: n1619 = 1'b0;
      16'b0000000000100000: n1619 = n1477;
      16'b0000000000010000: n1619 = 1'b0;
      16'b0000000000001000: n1619 = n1331;
      16'b0000000000000100: n1619 = n1299;
      16'b0000000000000010: n1619 = 1'b0;
      16'b0000000000000001: n1619 = 1'b0;
      default: n1619 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:243:9 */
  always @*
    case (n1604)
      16'b1000000000000000: n1621 = 1'b0;
      16'b0100000000000000: n1621 = 1'b0;
      16'b0010000000000000: n1621 = 1'b0;
      16'b0001000000000000: n1621 = 1'b0;
      16'b0000100000000000: n1621 = 1'b0;
      16'b0000010000000000: n1621 = 1'b0;
      16'b0000001000000000: n1621 = 1'b0;
      16'b0000000100000000: n1621 = 1'b0;
      16'b0000000010000000: n1621 = 1'b0;
      16'b0000000001000000: n1621 = 1'b0;
      16'b0000000000100000: n1621 = 1'b0;
      16'b0000000000010000: n1621 = n1396;
      16'b0000000000001000: n1621 = 1'b0;
      16'b0000000000000100: n1621 = 1'b0;
      16'b0000000000000010: n1621 = n1263;
      16'b0000000000000001: n1621 = n1226;
      default: n1621 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:243:9 */
  always @*
    case (n1604)
      16'b1000000000000000: n1624 = n1166;
      16'b0100000000000000: n1624 = n1166;
      16'b0010000000000000: n1624 = n1166;
      16'b0001000000000000: n1624 = n1166;
      16'b0000100000000000: n1624 = 1'b1;
      16'b0000010000000000: n1624 = 1'b1;
      16'b0000001000000000: n1624 = n1530;
      16'b0000000100000000: n1624 = n1166;
      16'b0000000010000000: n1624 = n1166;
      16'b0000000001000000: n1624 = n1166;
      16'b0000000000100000: n1624 = n1437;
      16'b0000000000010000: n1624 = n1166;
      16'b0000000000001000: n1624 = n1166;
      16'b0000000000000100: n1624 = n1166;
      16'b0000000000000010: n1624 = n1166;
      16'b0000000000000001: n1624 = n1166;
      default: n1624 = n1166;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:243:9 */
  always @*
    case (n1604)
      16'b1000000000000000: n1626 = 1'b0;
      16'b0100000000000000: n1626 = 1'b0;
      16'b0010000000000000: n1626 = 1'b0;
      16'b0001000000000000: n1626 = 1'b0;
      16'b0000100000000000: n1626 = 1'b0;
      16'b0000010000000000: n1626 = 1'b0;
      16'b0000001000000000: n1626 = 1'b0;
      16'b0000000100000000: n1626 = 1'b0;
      16'b0000000010000000: n1626 = 1'b0;
      16'b0000000001000000: n1626 = 1'b0;
      16'b0000000000100000: n1626 = n1479;
      16'b0000000000010000: n1626 = 1'b0;
      16'b0000000000001000: n1626 = 1'b0;
      16'b0000000000000100: n1626 = n1302;
      16'b0000000000000010: n1626 = 1'b0;
      16'b0000000000000001: n1626 = 1'b0;
      default: n1626 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:243:9 */
  always @*
    case (n1604)
      16'b1000000000000000: n1629 = n1169;
      16'b0100000000000000: n1629 = 1'b1;
      16'b0010000000000000: n1629 = n1169;
      16'b0001000000000000: n1629 = n1169;
      16'b0000100000000000: n1629 = n1169;
      16'b0000010000000000: n1629 = n1169;
      16'b0000001000000000: n1629 = n1169;
      16'b0000000100000000: n1629 = 1'b1;
      16'b0000000010000000: n1629 = n1169;
      16'b0000000001000000: n1629 = n1169;
      16'b0000000000100000: n1629 = n1441;
      16'b0000000000010000: n1629 = n1169;
      16'b0000000000001000: n1629 = n1169;
      16'b0000000000000100: n1629 = n1169;
      16'b0000000000000010: n1629 = n1169;
      16'b0000000000000001: n1629 = n1169;
      default: n1629 = n1169;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:243:9 */
  always @*
    case (n1604)
      16'b1000000000000000: n1631 = n1172;
      16'b0100000000000000: n1631 = n1172;
      16'b0010000000000000: n1631 = n1172;
      16'b0001000000000000: n1631 = n1172;
      16'b0000100000000000: n1631 = n1172;
      16'b0000010000000000: n1631 = n1172;
      16'b0000001000000000: n1631 = n1172;
      16'b0000000100000000: n1631 = n1172;
      16'b0000000010000000: n1631 = 1'b1;
      16'b0000000001000000: n1631 = n1172;
      16'b0000000000100000: n1631 = n1442;
      16'b0000000000010000: n1631 = n1172;
      16'b0000000000001000: n1631 = n1172;
      16'b0000000000000100: n1631 = n1172;
      16'b0000000000000010: n1631 = n1172;
      16'b0000000000000001: n1631 = n1172;
      default: n1631 = n1172;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:243:9 */
  always @*
    case (n1604)
      16'b1000000000000000: n1633 = n1175;
      16'b0100000000000000: n1633 = n1175;
      16'b0010000000000000: n1633 = 1'b1;
      16'b0001000000000000: n1633 = n1175;
      16'b0000100000000000: n1633 = n1175;
      16'b0000010000000000: n1633 = n1175;
      16'b0000001000000000: n1633 = n1175;
      16'b0000000100000000: n1633 = n1175;
      16'b0000000010000000: n1633 = n1175;
      16'b0000000001000000: n1633 = n1175;
      16'b0000000000100000: n1633 = n1175;
      16'b0000000000010000: n1633 = n1175;
      16'b0000000000001000: n1633 = n1175;
      16'b0000000000000100: n1633 = n1175;
      16'b0000000000000010: n1633 = n1175;
      16'b0000000000000001: n1633 = n1175;
      default: n1633 = n1175;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:243:9 */
  always @*
    case (n1604)
      16'b1000000000000000: n1635 = 1'b0;
      16'b0100000000000000: n1635 = 1'b0;
      16'b0010000000000000: n1635 = 1'b0;
      16'b0001000000000000: n1635 = 1'b0;
      16'b0000100000000000: n1635 = 1'b0;
      16'b0000010000000000: n1635 = 1'b0;
      16'b0000001000000000: n1635 = 1'b0;
      16'b0000000100000000: n1635 = 1'b0;
      16'b0000000010000000: n1635 = 1'b0;
      16'b0000000001000000: n1635 = 1'b0;
      16'b0000000000100000: n1635 = 1'b0;
      16'b0000000000010000: n1635 = 1'b0;
      16'b0000000000001000: n1635 = n1334;
      16'b0000000000000100: n1635 = n1305;
      16'b0000000000000010: n1635 = n1266;
      16'b0000000000000001: n1635 = n1229;
      default: n1635 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:243:9 */
  always @*
    case (n1604)
      16'b1000000000000000: n1637 = 1'b0;
      16'b0100000000000000: n1637 = 1'b0;
      16'b0010000000000000: n1637 = 1'b0;
      16'b0001000000000000: n1637 = 1'b0;
      16'b0000100000000000: n1637 = 1'b0;
      16'b0000010000000000: n1637 = 1'b0;
      16'b0000001000000000: n1637 = 1'b0;
      16'b0000000100000000: n1637 = 1'b0;
      16'b0000000010000000: n1637 = 1'b0;
      16'b0000000001000000: n1637 = 1'b0;
      16'b0000000000100000: n1637 = n1481;
      16'b0000000000010000: n1637 = 1'b0;
      16'b0000000000001000: n1637 = 1'b0;
      16'b0000000000000100: n1637 = 1'b0;
      16'b0000000000000010: n1637 = 1'b0;
      16'b0000000000000001: n1637 = 1'b0;
      default: n1637 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:243:9 */
  always @*
    case (n1604)
      16'b1000000000000000: n1639 = 1'b0;
      16'b0100000000000000: n1639 = 1'b0;
      16'b0010000000000000: n1639 = 1'b0;
      16'b0001000000000000: n1639 = 1'b0;
      16'b0000100000000000: n1639 = 1'b0;
      16'b0000010000000000: n1639 = 1'b0;
      16'b0000001000000000: n1639 = 1'b0;
      16'b0000000100000000: n1639 = 1'b0;
      16'b0000000010000000: n1639 = 1'b0;
      16'b0000000001000000: n1639 = 1'b0;
      16'b0000000000100000: n1639 = 1'b0;
      16'b0000000000010000: n1639 = n1398;
      16'b0000000000001000: n1639 = 1'b0;
      16'b0000000000000100: n1639 = 1'b0;
      16'b0000000000000010: n1639 = n1270;
      16'b0000000000000001: n1639 = n1234;
      default: n1639 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:241:7 */
  assign n1641 = n1194 == 5'b00000;
  /*# upstream/rtl/t65/T65_MCode.vhd:241:20 */
  assign n1643 = n1194 == 5'b01000;
  /*# upstream/rtl/t65/T65_MCode.vhd:241:20 */
  assign n1644 = n1641 | n1643;
  /*# upstream/rtl/t65/T65_MCode.vhd:241:30 */
  assign n1646 = n1194 == 5'b01010;
  /*# upstream/rtl/t65/T65_MCode.vhd:241:30 */
  assign n1647 = n1644 | n1646;
  /*# upstream/rtl/t65/T65_MCode.vhd:241:40 */
  assign n1649 = n1194 == 5'b11000;
  /*# upstream/rtl/t65/T65_MCode.vhd:241:40 */
  assign n1650 = n1647 | n1649;
  /*# upstream/rtl/t65/T65_MCode.vhd:241:50 */
  assign n1652 = n1194 == 5'b11010;
  /*# upstream/rtl/t65/T65_MCode.vhd:241:50 */
  assign n1653 = n1650 | n1652;
  /*# upstream/rtl/t65/T65_MCode.vhd:492:14 */
  assign n1654 = ir[7:6]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:492:27 */
  assign n1656 = n1654 != 2'b10;
  /*# upstream/rtl/t65/T65_MCode.vhd:494:18 */
  assign n1658 = mode == 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:494:30 */
  assign n1659 = ir[1]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:494:24 */
  assign n1660 = n1659 & n1658;
  /*# upstream/rtl/t65/T65_MCode.vhd:494:11 */
  assign n1663 = n1660 ? 3'b111 : 3'b101;
  /*# upstream/rtl/t65/T65_MCode.vhd:492:9 */
  assign n1665 = n1656 ? n1663 : 3'b101;
  /*# upstream/rtl/t65/T65_MCode.vhd:492:9 */
  assign n1668 = n1656 ? 1'b1 : n1166;
  /*# upstream/rtl/t65/T65_MCode.vhd:499:11 */
  assign n1670 = mcycle == 3'b001;
  /*# upstream/rtl/t65/T65_MCode.vhd:503:11 */
  assign n1672 = mcycle == 3'b010;
  /*# upstream/rtl/t65/T65_MCode.vhd:506:11 */
  assign n1674 = mcycle == 3'b011;
  /*# upstream/rtl/t65/T65_MCode.vhd:512:18 */
  assign n1675 = ir[7:5]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:512:31 */
  assign n1677 = n1675 == 3'b100;
  /*# upstream/rtl/t65/T65_MCode.vhd:512:13 */
  assign n1680 = n1677 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:510:11 */
  assign n1682 = mcycle == 3'b100;
  /*# upstream/rtl/t65/T65_MCode.vhd:517:20 */
  assign n1684 = mode == 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:517:32 */
  assign n1685 = ir[1]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:517:26 */
  assign n1686 = n1685 & n1684;
  /*# upstream/rtl/t65/T65_MCode.vhd:517:46 */
  assign n1687 = ir[7:6]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:517:58 */
  assign n1689 = n1687 != 2'b10;
  /*# upstream/rtl/t65/T65_MCode.vhd:517:40 */
  assign n1690 = n1689 & n1686;
  /*# upstream/rtl/t65/T65_MCode.vhd:517:13 */
  assign n1693 = n1690 ? 2'b11 : 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:517:13 */
  assign n1696 = n1690 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:517:13 */
  assign n1699 = n1690 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:516:11 */
  assign n1701 = mcycle == 3'b101;
  /*# upstream/rtl/t65/T65_MCode.vhd:522:11 */
  assign n1703 = mcycle == 3'b110;
  /*# upstream/rtl/t65/T65_MCode.vhd:527:11 */
  assign n1705 = mcycle == 3'b111;
  /*# upstream/rtl/t65/T65_MCode.vhd:498:9 */
  assign n1706 = {n1705, n1703, n1701, n1682, n1674, n1672, n1670};
  /*# upstream/rtl/t65/T65_MCode.vhd:498:9 */
  always @*
    case (n1706)
      7'b1000000: n1708 = 4'b0001;
      7'b0100000: n1708 = n1193;
      7'b0010000: n1708 = n1193;
      7'b0001000: n1708 = n1193;
      7'b0000100: n1708 = n1193;
      7'b0000010: n1708 = n1193;
      7'b0000001: n1708 = n1193;
      default: n1708 = n1193;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:498:9 */
  always @*
    case (n1706)
      7'b1000000: n1715 = 2'b00;
      7'b0100000: n1715 = 2'b11;
      7'b0010000: n1715 = n1693;
      7'b0001000: n1715 = 2'b11;
      7'b0000100: n1715 = 2'b10;
      7'b0000010: n1715 = 2'b10;
      7'b0000001: n1715 = 2'b10;
      default: n1715 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:498:9 */
  always @*
    case (n1706)
      7'b1000000: n1718 = 2'b00;
      7'b0100000: n1718 = 2'b00;
      7'b0010000: n1718 = 2'b00;
      7'b0001000: n1718 = 2'b00;
      7'b0000100: n1718 = 2'b00;
      7'b0000010: n1718 = 2'b00;
      7'b0000001: n1718 = 2'b01;
      default: n1718 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:498:9 */
  always @*
    case (n1706)
      7'b1000000: n1721 = 2'b00;
      7'b0100000: n1721 = 2'b00;
      7'b0010000: n1721 = 2'b00;
      7'b0001000: n1721 = 2'b00;
      7'b0000100: n1721 = 2'b01;
      7'b0000010: n1721 = 2'b00;
      7'b0000001: n1721 = 2'b00;
      default: n1721 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:498:9 */
  always @*
    case (n1706)
      7'b1000000: n1724 = 1'b0;
      7'b0100000: n1724 = 1'b0;
      7'b0010000: n1724 = 1'b0;
      7'b0001000: n1724 = 1'b0;
      7'b0000100: n1724 = 1'b0;
      7'b0000010: n1724 = 1'b1;
      7'b0000001: n1724 = 1'b0;
      default: n1724 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:498:9 */
  always @*
    case (n1706)
      7'b1000000: n1726 = 1'b0;
      7'b0100000: n1726 = 1'b0;
      7'b0010000: n1726 = n1696;
      7'b0001000: n1726 = 1'b0;
      7'b0000100: n1726 = 1'b0;
      7'b0000010: n1726 = 1'b0;
      7'b0000001: n1726 = 1'b0;
      default: n1726 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:498:9 */
  always @*
    case (n1706)
      7'b1000000: n1729 = 1'b0;
      7'b0100000: n1729 = 1'b1;
      7'b0010000: n1729 = 1'b0;
      7'b0001000: n1729 = 1'b0;
      7'b0000100: n1729 = 1'b0;
      7'b0000010: n1729 = 1'b0;
      7'b0000001: n1729 = 1'b0;
      default: n1729 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:498:9 */
  always @*
    case (n1706)
      7'b1000000: n1732 = 1'b0;
      7'b0100000: n1732 = 1'b0;
      7'b0010000: n1732 = 1'b0;
      7'b0001000: n1732 = 1'b0;
      7'b0000100: n1732 = 1'b0;
      7'b0000010: n1732 = 1'b0;
      7'b0000001: n1732 = 1'b1;
      default: n1732 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:498:9 */
  always @*
    case (n1706)
      7'b1000000: n1735 = 1'b0;
      7'b0100000: n1735 = 1'b0;
      7'b0010000: n1735 = 1'b0;
      7'b0001000: n1735 = 1'b0;
      7'b0000100: n1735 = 1'b1;
      7'b0000010: n1735 = 1'b0;
      7'b0000001: n1735 = 1'b0;
      default: n1735 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:498:9 */
  always @*
    case (n1706)
      7'b1000000: n1738 = 1'b0;
      7'b0100000: n1738 = 1'b0;
      7'b0010000: n1738 = 1'b0;
      7'b0001000: n1738 = 1'b1;
      7'b0000100: n1738 = 1'b0;
      7'b0000010: n1738 = 1'b0;
      7'b0000001: n1738 = 1'b0;
      default: n1738 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:498:9 */
  always @*
    case (n1706)
      7'b1000000: n1741 = 1'b0;
      7'b0100000: n1741 = 1'b1;
      7'b0010000: n1741 = 1'b0;
      7'b0001000: n1741 = 1'b0;
      7'b0000100: n1741 = 1'b0;
      7'b0000010: n1741 = 1'b0;
      7'b0000001: n1741 = 1'b0;
      default: n1741 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:498:9 */
  always @*
    case (n1706)
      7'b1000000: n1744 = 1'b0;
      7'b0100000: n1744 = 1'b1;
      7'b0010000: n1744 = n1699;
      7'b0001000: n1744 = n1680;
      7'b0000100: n1744 = 1'b0;
      7'b0000010: n1744 = 1'b0;
      7'b0000001: n1744 = 1'b0;
      default: n1744 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:498:9 */
  always @*
    case (n1706)
      7'b1000000: n1747 = 1'b1;
      7'b0100000: n1747 = 1'b0;
      7'b0010000: n1747 = 1'b0;
      7'b0001000: n1747 = 1'b0;
      7'b0000100: n1747 = 1'b0;
      7'b0000010: n1747 = 1'b0;
      7'b0000001: n1747 = 1'b0;
      default: n1747 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:489:7 */
  assign n1749 = n1194 == 5'b00001;
  /*# upstream/rtl/t65/T65_MCode.vhd:489:20 */
  assign n1751 = n1194 == 5'b00011;
  /*# upstream/rtl/t65/T65_MCode.vhd:489:20 */
  assign n1752 = n1749 | n1751;
  /*# upstream/rtl/t65/T65_MCode.vhd:536:14 */
  assign n1753 = ir[7:5]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:536:26 */
  assign n1755 = n1753 != 3'b100;
  /*# upstream/rtl/t65/T65_MCode.vhd:536:9 */
  assign n1757 = n1755 ? 1'b1 : n1166;
  /*# upstream/rtl/t65/T65_MCode.vhd:540:11 */
  assign n1759 = mcycle == 3'b001;
  /*# upstream/rtl/t65/T65_MCode.vhd:539:9 */
  always @*
    case (n1759)
      1'b1: n1762 = 2'b01;
      default: n1762 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:534:7 */
  assign n1764 = n1194 == 5'b01001;
  /*# upstream/rtl/t65/T65_MCode.vhd:547:16 */
  assign n1766 = mode == 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:549:18 */
  assign n1767 = ir[7:5]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:550:13 */
  assign n1769 = n1767 == 3'b010;
  /*# upstream/rtl/t65/T65_MCode.vhd:550:23 */
  assign n1771 = n1767 == 3'b011;
  /*# upstream/rtl/t65/T65_MCode.vhd:550:23 */
  assign n1772 = n1769 | n1771;
  /*# upstream/rtl/t65/T65_MCode.vhd:550:29 */
  assign n1774 = n1767 == 3'b000;
  /*# upstream/rtl/t65/T65_MCode.vhd:550:29 */
  assign n1775 = n1772 | n1774;
  /*# upstream/rtl/t65/T65_MCode.vhd:550:35 */
  assign n1777 = n1767 == 3'b001;
  /*# upstream/rtl/t65/T65_MCode.vhd:550:35 */
  assign n1778 = n1775 | n1777;
  /*# upstream/rtl/t65/T65_MCode.vhd:553:13 */
  assign n1780 = n1767 == 3'b100;
  /*# upstream/rtl/t65/T65_MCode.vhd:556:13 */
  assign n1782 = n1767 == 3'b110;
  /*# upstream/rtl/t65/T65_MCode.vhd:560:15 */
  assign n1785 = bcd_en ? 4'b0111 : 4'b0000;
  /*# upstream/rtl/t65/T65_MCode.vhd:559:13 */
  assign n1787 = n1767 == 3'b101;
  /*# upstream/rtl/t65/T65_MCode.vhd:549:11 */
  assign n1788 = {n1787, n1782, n1780, n1778};
  /*# upstream/rtl/t65/T65_MCode.vhd:549:11 */
  always @*
    case (n1788)
      4'b1000: n1792 = n1785;
      4'b0100: n1792 = 4'b1001;
      4'b0010: n1792 = 4'b1000;
      4'b0001: n1792 = 4'b0110;
      default: n1792 = n1193;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:549:11 */
  always @*
    case (n1788)
      4'b1000: n1797 = 1'b1;
      4'b0100: n1797 = n1166;
      4'b0010: n1797 = 1'b1;
      4'b0001: n1797 = 1'b1;
      default: n1797 = 1'b1;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:549:11 */
  always @*
    case (n1788)
      4'b1000: n1799 = n1169;
      4'b0100: n1799 = 1'b1;
      4'b0010: n1799 = n1169;
      4'b0001: n1799 = n1169;
      default: n1799 = n1169;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:570:13 */
  assign n1801 = mcycle == 3'b001;
  /*# upstream/rtl/t65/T65_MCode.vhd:569:11 */
  always @*
    case (n1801)
      1'b1: n1804 = 2'b01;
      default: n1804 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:547:9 */
  assign n1805 = n1766 ? n1792 : n1193;
  /*# upstream/rtl/t65/T65_MCode.vhd:547:9 */
  assign n1807 = n1766 ? n1804 : 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:547:9 */
  assign n1808 = n1766 ? n1797 : n1166;
  /*# upstream/rtl/t65/T65_MCode.vhd:547:9 */
  assign n1809 = n1766 ? n1799 : n1169;
  /*# upstream/rtl/t65/T65_MCode.vhd:546:7 */
  assign n1811 = n1194 == 5'b01011;
  /*# upstream/rtl/t65/T65_MCode.vhd:581:11 */
  assign n1813 = mcycle == 3'b000;
  /*# upstream/rtl/t65/T65_MCode.vhd:583:19 */
  assign n1815 = ir == 8'b10100010;
  /*# upstream/rtl/t65/T65_MCode.vhd:587:21 */
  assign n1816 = ir[7:4]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:587:33 */
  assign n1818 = n1816 == 4'b1000;
  /*# upstream/rtl/t65/T65_MCode.vhd:587:46 */
  assign n1819 = ir[7:4]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:587:58 */
  assign n1821 = n1819 == 4'b1100;
  /*# upstream/rtl/t65/T65_MCode.vhd:587:41 */
  assign n1822 = n1818 | n1821;
  /*# upstream/rtl/t65/T65_MCode.vhd:587:71 */
  assign n1823 = ir[7:4]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:587:83 */
  assign n1825 = n1823 == 4'b1110;
  /*# upstream/rtl/t65/T65_MCode.vhd:587:66 */
  assign n1826 = n1822 | n1825;
  /*# upstream/rtl/t65/T65_MCode.vhd:587:13 */
  assign n1829 = n1826 ? 3'b001 : 3'b000;
  /*# upstream/rtl/t65/T65_MCode.vhd:587:13 */
  assign n1832 = n1826 ? 2'b01 : 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:583:13 */
  assign n1834 = n1815 ? 3'b001 : n1829;
  /*# upstream/rtl/t65/T65_MCode.vhd:583:13 */
  assign n1836 = n1815 ? 2'b01 : n1832;
  /*# upstream/rtl/t65/T65_MCode.vhd:583:13 */
  assign n1838 = n1815 ? 1'b1 : n1169;
  /*# upstream/rtl/t65/T65_MCode.vhd:582:11 */
  assign n1840 = mcycle == 3'b001;
  /*# upstream/rtl/t65/T65_MCode.vhd:580:9 */
  assign n1841 = {n1840, n1813};
  /*# upstream/rtl/t65/T65_MCode.vhd:580:9 */
  always @*
    case (n1841)
      2'b10: n1843 = n1834;
      2'b01: n1843 = 3'b001;
      default: n1843 = 3'b001;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:580:9 */
  always @*
    case (n1841)
      2'b10: n1845 = n1836;
      2'b01: n1845 = 2'b00;
      default: n1845 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:580:9 */
  always @*
    case (n1841)
      2'b10: n1846 = n1838;
      2'b01: n1846 = n1169;
      default: n1846 = n1169;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:578:7 */
  assign n1848 = n1194 == 5'b00010;
  /*# upstream/rtl/t65/T65_MCode.vhd:578:20 */
  assign n1850 = n1194 == 5'b10010;
  /*# upstream/rtl/t65/T65_MCode.vhd:578:20 */
  assign n1851 = n1848 | n1850;
  /*# upstream/rtl/t65/T65_MCode.vhd:603:18 */
  assign n1852 = ir[7:5]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:603:31 */
  assign n1854 = n1852 == 3'b001;
  /*# upstream/rtl/t65/T65_MCode.vhd:603:13 */
  assign n1857 = n1854 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:602:11 */
  assign n1859 = mcycle == 3'b000;
  /*# upstream/rtl/t65/T65_MCode.vhd:609:18 */
  assign n1860 = ir[7:5]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:609:31 */
  assign n1862 = n1860 == 3'b100;
  /*# upstream/rtl/t65/T65_MCode.vhd:609:13 */
  assign n1865 = n1862 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:606:11 */
  assign n1867 = mcycle == 3'b001;
  /*# upstream/rtl/t65/T65_MCode.vhd:613:11 */
  assign n1869 = mcycle == 3'b010;
  /*# upstream/rtl/t65/T65_MCode.vhd:601:9 */
  assign n1870 = {n1869, n1867, n1859};
  /*# upstream/rtl/t65/T65_MCode.vhd:601:9 */
  always @*
    case (n1870)
      3'b100: n1873 = 2'b00;
      3'b010: n1873 = 2'b10;
      3'b001: n1873 = 2'b00;
      default: n1873 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:601:9 */
  always @*
    case (n1870)
      3'b100: n1876 = 2'b00;
      3'b010: n1876 = 2'b01;
      3'b001: n1876 = 2'b00;
      default: n1876 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:601:9 */
  always @*
    case (n1870)
      3'b100: n1879 = 1'b0;
      3'b010: n1879 = 1'b1;
      3'b001: n1879 = 1'b0;
      default: n1879 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:601:9 */
  always @*
    case (n1870)
      3'b100: n1881 = 1'b0;
      3'b010: n1881 = 1'b0;
      3'b001: n1881 = n1857;
      default: n1881 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:601:9 */
  always @*
    case (n1870)
      3'b100: n1883 = 1'b0;
      3'b010: n1883 = n1865;
      3'b001: n1883 = 1'b0;
      default: n1883 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:598:7 */
  assign n1885 = n1194 == 5'b00100;
  /*# upstream/rtl/t65/T65_MCode.vhd:622:14 */
  assign n1886 = ir[7:6]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:622:27 */
  assign n1888 = n1886 != 2'b10;
  /*# upstream/rtl/t65/T65_MCode.vhd:622:41 */
  assign n1889 = ir[1]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:622:35 */
  assign n1890 = n1889 & n1888;
  /*# upstream/rtl/t65/T65_MCode.vhd:622:60 */
  assign n1892 = mode == 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:622:71 */
  assign n1893 = ir[0]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:622:74 */
  assign n1894 = ~n1893;
  /*# upstream/rtl/t65/T65_MCode.vhd:622:66 */
  assign n1895 = n1892 | n1894;
  /*# upstream/rtl/t65/T65_MCode.vhd:622:51 */
  assign n1896 = n1895 & n1890;
  /*# upstream/rtl/t65/T65_MCode.vhd:625:18 */
  assign n1898 = mode == 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:625:30 */
  assign n1899 = ir[0]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:625:24 */
  assign n1900 = n1899 & n1898;
  /*# upstream/rtl/t65/T65_MCode.vhd:625:11 */
  assign n1902 = n1900 ? 1'b1 : n1166;
  /*# upstream/rtl/t65/T65_MCode.vhd:629:13 */
  assign n1904 = mcycle == 3'b001;
  /*# upstream/rtl/t65/T65_MCode.vhd:635:22 */
  assign n1906 = mode == 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:635:15 */
  assign n1909 = n1906 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:633:13 */
  assign n1911 = mcycle == 3'b010;
  /*# upstream/rtl/t65/T65_MCode.vhd:639:13 */
  assign n1913 = mcycle == 3'b011;
  /*# upstream/rtl/t65/T65_MCode.vhd:645:22 */
  assign n1915 = mode == 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:645:34 */
  assign n1916 = ir[0]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:645:28 */
  assign n1917 = n1916 & n1915;
  /*# upstream/rtl/t65/T65_MCode.vhd:645:15 */
  assign n1919 = n1917 ? 4'b0001 : n1193;
  /*# upstream/rtl/t65/T65_MCode.vhd:645:15 */
  assign n1922 = n1917 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:645:15 */
  assign n1925 = n1917 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:644:13 */
  assign n1927 = mcycle == 3'b100;
  /*# upstream/rtl/t65/T65_MCode.vhd:628:11 */
  assign n1928 = {n1927, n1913, n1911, n1904};
  /*# upstream/rtl/t65/T65_MCode.vhd:628:11 */
  always @*
    case (n1928)
      4'b1000: n1929 = n1919;
      4'b0100: n1929 = n1193;
      4'b0010: n1929 = n1193;
      4'b0001: n1929 = n1193;
      default: n1929 = n1193;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:628:11 */
  always @*
    case (n1928)
      4'b1000: n1934 = 2'b00;
      4'b0100: n1934 = 2'b10;
      4'b0010: n1934 = 2'b10;
      4'b0001: n1934 = 2'b10;
      default: n1934 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:628:11 */
  always @*
    case (n1928)
      4'b1000: n1937 = 2'b00;
      4'b0100: n1937 = 2'b00;
      4'b0010: n1937 = 2'b00;
      4'b0001: n1937 = 2'b01;
      default: n1937 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:628:11 */
  always @*
    case (n1928)
      4'b1000: n1940 = n1922;
      4'b0100: n1940 = 1'b0;
      4'b0010: n1940 = 1'b1;
      4'b0001: n1940 = 1'b0;
      default: n1940 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:628:11 */
  always @*
    case (n1928)
      4'b1000: n1943 = 1'b0;
      4'b0100: n1943 = 1'b1;
      4'b0010: n1943 = 1'b0;
      4'b0001: n1943 = 1'b0;
      default: n1943 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:628:11 */
  always @*
    case (n1928)
      4'b1000: n1946 = 1'b0;
      4'b0100: n1946 = 1'b0;
      4'b0010: n1946 = 1'b0;
      4'b0001: n1946 = 1'b1;
      default: n1946 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:628:11 */
  always @*
    case (n1928)
      4'b1000: n1949 = 1'b0;
      4'b0100: n1949 = 1'b1;
      4'b0010: n1949 = 1'b0;
      4'b0001: n1949 = 1'b0;
      default: n1949 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:628:11 */
  always @*
    case (n1928)
      4'b1000: n1952 = 1'b0;
      4'b0100: n1952 = 1'b1;
      4'b0010: n1952 = n1909;
      4'b0001: n1952 = 1'b0;
      default: n1952 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:628:11 */
  always @*
    case (n1928)
      4'b1000: n1954 = n1925;
      4'b0100: n1954 = 1'b0;
      4'b0010: n1954 = 1'b0;
      4'b0001: n1954 = 1'b0;
      default: n1954 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:654:16 */
  assign n1955 = ir[7:6]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:654:29 */
  assign n1957 = n1955 != 2'b10;
  /*# upstream/rtl/t65/T65_MCode.vhd:654:11 */
  assign n1959 = n1957 ? 1'b1 : n1166;
  /*# upstream/rtl/t65/T65_MCode.vhd:658:13 */
  assign n1961 = mcycle == 3'b000;
  /*# upstream/rtl/t65/T65_MCode.vhd:662:20 */
  assign n1962 = ir[7:5]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:662:33 */
  assign n1964 = n1962 == 3'b100;
  /*# upstream/rtl/t65/T65_MCode.vhd:662:15 */
  assign n1967 = n1964 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:659:13 */
  assign n1969 = mcycle == 3'b001;
  /*# upstream/rtl/t65/T65_MCode.vhd:666:13 */
  assign n1971 = mcycle == 3'b010;
  /*# upstream/rtl/t65/T65_MCode.vhd:657:11 */
  assign n1972 = {n1971, n1969, n1961};
  /*# upstream/rtl/t65/T65_MCode.vhd:657:11 */
  always @*
    case (n1972)
      3'b100: n1975 = 2'b00;
      3'b010: n1975 = 2'b10;
      3'b001: n1975 = 2'b00;
      default: n1975 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:657:11 */
  always @*
    case (n1972)
      3'b100: n1978 = 2'b00;
      3'b010: n1978 = 2'b01;
      3'b001: n1978 = 2'b00;
      default: n1978 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:657:11 */
  always @*
    case (n1972)
      3'b100: n1981 = 1'b0;
      3'b010: n1981 = 1'b1;
      3'b001: n1981 = 1'b0;
      default: n1981 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:657:11 */
  always @*
    case (n1972)
      3'b100: n1983 = 1'b0;
      3'b010: n1983 = n1967;
      3'b001: n1983 = 1'b0;
      default: n1983 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:622:9 */
  assign n1986 = n1896 ? 3'b100 : 3'b010;
  /*# upstream/rtl/t65/T65_MCode.vhd:622:9 */
  assign n1987 = n1896 ? n1929 : n1193;
  /*# upstream/rtl/t65/T65_MCode.vhd:622:9 */
  assign n1988 = n1896 ? n1934 : n1975;
  /*# upstream/rtl/t65/T65_MCode.vhd:622:9 */
  assign n1989 = n1896 ? n1937 : n1978;
  /*# upstream/rtl/t65/T65_MCode.vhd:622:9 */
  assign n1990 = n1896 ? n1902 : n1959;
  /*# upstream/rtl/t65/T65_MCode.vhd:622:9 */
  assign n1992 = n1896 ? n1940 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:622:9 */
  assign n1994 = n1896 ? n1943 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:622:9 */
  assign n1995 = n1896 ? n1946 : n1981;
  /*# upstream/rtl/t65/T65_MCode.vhd:622:9 */
  assign n1997 = n1896 ? n1949 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:622:9 */
  assign n1998 = n1896 ? n1952 : n1983;
  /*# upstream/rtl/t65/T65_MCode.vhd:622:9 */
  assign n2000 = n1896 ? n1954 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:620:7 */
  assign n2002 = n1194 == 5'b00101;
  /*# upstream/rtl/t65/T65_MCode.vhd:620:20 */
  assign n2004 = n1194 == 5'b00110;
  /*# upstream/rtl/t65/T65_MCode.vhd:620:20 */
  assign n2005 = n2002 | n2004;
  /*# upstream/rtl/t65/T65_MCode.vhd:620:30 */
  assign n2007 = n1194 == 5'b00111;
  /*# upstream/rtl/t65/T65_MCode.vhd:620:30 */
  assign n2008 = n2005 | n2007;
  /*# upstream/rtl/t65/T65_MCode.vhd:674:14 */
  assign n2009 = ir[7:6]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:674:27 */
  assign n2011 = n2009 == 2'b01;
  /*# upstream/rtl/t65/T65_MCode.vhd:674:40 */
  assign n2012 = ir[4:0]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:674:53 */
  assign n2014 = n2012 == 5'b01100;
  /*# upstream/rtl/t65/T65_MCode.vhd:674:34 */
  assign n2015 = n2014 & n2011;
  /*# upstream/rtl/t65/T65_MCode.vhd:675:16 */
  assign n2016 = ir[5]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:675:20 */
  assign n2017 = ~n2016;
  /*# upstream/rtl/t65/T65_MCode.vhd:678:15 */
  assign n2019 = mcycle == 3'b001;
  /*# upstream/rtl/t65/T65_MCode.vhd:681:15 */
  assign n2021 = mcycle == 3'b010;
  /*# upstream/rtl/t65/T65_MCode.vhd:677:13 */
  assign n2022 = {n2021, n2019};
  /*# upstream/rtl/t65/T65_MCode.vhd:677:13 */
  always @*
    case (n2022)
      2'b10: n2026 = 2'b10;
      2'b01: n2026 = 2'b01;
      default: n2026 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:677:13 */
  always @*
    case (n2022)
      2'b10: n2029 = 1'b0;
      2'b01: n2029 = 1'b1;
      default: n2029 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:688:15 */
  assign n2031 = mcycle == 3'b001;
  /*# upstream/rtl/t65/T65_MCode.vhd:694:25 */
  assign n2033 = mode != 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:694:17 */
  assign n2036 = n2033 ? 2'b10 : 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:697:25 */
  assign n2038 = mode == 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:697:17 */
  assign n2041 = n2038 ? 2'b11 : 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:692:15 */
  assign n2043 = mcycle == 3'b010;
  /*# upstream/rtl/t65/T65_MCode.vhd:702:25 */
  assign n2045 = mode == 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:702:17 */
  assign n2048 = n2045 ? 2'b11 : 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:702:17 */
  assign n2051 = n2045 ? 2'b00 : 2'b01;
  /*# upstream/rtl/t65/T65_MCode.vhd:702:17 */
  assign n2054 = n2045 ? 2'b01 : 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:700:15 */
  assign n2056 = mcycle == 3'b011;
  /*# upstream/rtl/t65/T65_MCode.vhd:708:15 */
  assign n2058 = mcycle == 3'b100;
  /*# upstream/rtl/t65/T65_MCode.vhd:687:13 */
  assign n2059 = {n2058, n2056, n2043, n2031};
  /*# upstream/rtl/t65/T65_MCode.vhd:687:13 */
  always @*
    case (n2059)
      4'b1000: n2061 = 2'b00;
      4'b0100: n2061 = n2048;
      4'b0010: n2061 = n2041;
      4'b0001: n2061 = 2'b00;
      default: n2061 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:687:13 */
  always @*
    case (n2059)
      4'b1000: n2065 = 2'b10;
      4'b0100: n2065 = n2051;
      4'b0010: n2065 = n2036;
      4'b0001: n2065 = 2'b01;
      default: n2065 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:687:13 */
  always @*
    case (n2059)
      4'b1000: n2067 = 2'b00;
      4'b0100: n2067 = n2054;
      4'b0010: n2067 = 2'b00;
      4'b0001: n2067 = 2'b00;
      default: n2067 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:687:13 */
  always @*
    case (n2059)
      4'b1000: n2071 = 1'b0;
      4'b0100: n2071 = 1'b1;
      4'b0010: n2071 = 1'b0;
      4'b0001: n2071 = 1'b1;
      default: n2071 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:687:13 */
  always @*
    case (n2059)
      4'b1000: n2074 = 1'b0;
      4'b0100: n2074 = 1'b0;
      4'b0010: n2074 = 1'b0;
      4'b0001: n2074 = 1'b1;
      default: n2074 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:687:13 */
  always @*
    case (n2059)
      4'b1000: n2077 = 1'b0;
      4'b0100: n2077 = 1'b0;
      4'b0010: n2077 = 1'b1;
      4'b0001: n2077 = 1'b0;
      default: n2077 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:675:11 */
  assign n2080 = n2017 ? 3'b010 : 3'b100;
  /*# upstream/rtl/t65/T65_MCode.vhd:675:11 */
  assign n2082 = n2017 ? 2'b00 : n2061;
  /*# upstream/rtl/t65/T65_MCode.vhd:675:11 */
  assign n2083 = n2017 ? n2026 : n2065;
  /*# upstream/rtl/t65/T65_MCode.vhd:675:11 */
  assign n2085 = n2017 ? 2'b00 : n2067;
  /*# upstream/rtl/t65/T65_MCode.vhd:675:11 */
  assign n2086 = n2017 ? n2029 : n2071;
  /*# upstream/rtl/t65/T65_MCode.vhd:675:11 */
  assign n2088 = n2017 ? 1'b0 : n2074;
  /*# upstream/rtl/t65/T65_MCode.vhd:675:11 */
  assign n2090 = n2017 ? 1'b0 : n2077;
  /*# upstream/rtl/t65/T65_MCode.vhd:717:20 */
  assign n2091 = ir[7:5]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:717:33 */
  assign n2093 = n2091 == 3'b001;
  /*# upstream/rtl/t65/T65_MCode.vhd:717:15 */
  assign n2096 = n2093 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:716:13 */
  assign n2098 = mcycle == 3'b000;
  /*# upstream/rtl/t65/T65_MCode.vhd:720:13 */
  assign n2100 = mcycle == 3'b001;
  /*# upstream/rtl/t65/T65_MCode.vhd:726:20 */
  assign n2101 = ir[7:5]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:726:33 */
  assign n2103 = n2101 == 3'b100;
  /*# upstream/rtl/t65/T65_MCode.vhd:726:15 */
  assign n2106 = n2103 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:723:13 */
  assign n2108 = mcycle == 3'b010;
  /*# upstream/rtl/t65/T65_MCode.vhd:730:13 */
  assign n2110 = mcycle == 3'b011;
  /*# upstream/rtl/t65/T65_MCode.vhd:715:11 */
  assign n2111 = {n2110, n2108, n2100, n2098};
  /*# upstream/rtl/t65/T65_MCode.vhd:715:11 */
  always @*
    case (n2111)
      4'b1000: n2114 = 2'b00;
      4'b0100: n2114 = 2'b11;
      4'b0010: n2114 = 2'b00;
      4'b0001: n2114 = 2'b00;
      default: n2114 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:715:11 */
  always @*
    case (n2111)
      4'b1000: n2118 = 2'b00;
      4'b0100: n2118 = 2'b01;
      4'b0010: n2118 = 2'b01;
      4'b0001: n2118 = 2'b00;
      default: n2118 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:715:11 */
  always @*
    case (n2111)
      4'b1000: n2121 = 1'b0;
      4'b0100: n2121 = 1'b0;
      4'b0010: n2121 = 1'b1;
      4'b0001: n2121 = 1'b0;
      default: n2121 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:715:11 */
  always @*
    case (n2111)
      4'b1000: n2124 = 1'b0;
      4'b0100: n2124 = 1'b1;
      4'b0010: n2124 = 1'b0;
      4'b0001: n2124 = 1'b0;
      default: n2124 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:715:11 */
  always @*
    case (n2111)
      4'b1000: n2126 = 1'b0;
      4'b0100: n2126 = 1'b0;
      4'b0010: n2126 = 1'b0;
      4'b0001: n2126 = n2096;
      default: n2126 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:715:11 */
  always @*
    case (n2111)
      4'b1000: n2128 = 1'b0;
      4'b0100: n2128 = n2106;
      4'b0010: n2128 = 1'b0;
      4'b0001: n2128 = 1'b0;
      default: n2128 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:674:9 */
  assign n2130 = n2015 ? n2080 : 3'b011;
  /*# upstream/rtl/t65/T65_MCode.vhd:674:9 */
  assign n2131 = n2015 ? n2082 : n2114;
  /*# upstream/rtl/t65/T65_MCode.vhd:674:9 */
  assign n2132 = n2015 ? n2083 : n2118;
  /*# upstream/rtl/t65/T65_MCode.vhd:674:9 */
  assign n2134 = n2015 ? n2085 : 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:674:9 */
  assign n2136 = n2015 ? n2086 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:674:9 */
  assign n2137 = n2015 ? n2088 : n2121;
  /*# upstream/rtl/t65/T65_MCode.vhd:674:9 */
  assign n2138 = n2015 ? n2090 : n2124;
  /*# upstream/rtl/t65/T65_MCode.vhd:674:9 */
  assign n2140 = n2015 ? 1'b0 : n2126;
  /*# upstream/rtl/t65/T65_MCode.vhd:674:9 */
  assign n2142 = n2015 ? 1'b0 : n2128;
  /*# upstream/rtl/t65/T65_MCode.vhd:672:7 */
  assign n2144 = n1194 == 5'b01100;
  /*# upstream/rtl/t65/T65_MCode.vhd:740:14 */
  assign n2145 = ir[7:6]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:740:27 */
  assign n2147 = n2145 != 2'b10;
  /*# upstream/rtl/t65/T65_MCode.vhd:740:41 */
  assign n2148 = ir[1]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:740:35 */
  assign n2149 = n2148 & n2147;
  /*# upstream/rtl/t65/T65_MCode.vhd:740:60 */
  assign n2151 = mode == 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:740:71 */
  assign n2152 = ir[0]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:740:74 */
  assign n2153 = ~n2152;
  /*# upstream/rtl/t65/T65_MCode.vhd:740:66 */
  assign n2154 = n2151 | n2153;
  /*# upstream/rtl/t65/T65_MCode.vhd:740:51 */
  assign n2155 = n2154 & n2149;
  /*# upstream/rtl/t65/T65_MCode.vhd:743:18 */
  assign n2157 = mode == 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:743:30 */
  assign n2158 = ir[0]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:743:24 */
  assign n2159 = n2158 & n2157;
  /*# upstream/rtl/t65/T65_MCode.vhd:743:11 */
  assign n2161 = n2159 ? 1'b1 : n1166;
  /*# upstream/rtl/t65/T65_MCode.vhd:747:13 */
  assign n2163 = mcycle == 3'b001;
  /*# upstream/rtl/t65/T65_MCode.vhd:750:13 */
  assign n2165 = mcycle == 3'b010;
  /*# upstream/rtl/t65/T65_MCode.vhd:756:22 */
  assign n2167 = mode == 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:756:15 */
  assign n2170 = n2167 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:754:13 */
  assign n2172 = mcycle == 3'b011;
  /*# upstream/rtl/t65/T65_MCode.vhd:760:13 */
  assign n2174 = mcycle == 3'b100;
  /*# upstream/rtl/t65/T65_MCode.vhd:766:22 */
  assign n2176 = mode == 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:766:34 */
  assign n2177 = ir[0]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:766:28 */
  assign n2178 = n2177 & n2176;
  /*# upstream/rtl/t65/T65_MCode.vhd:766:15 */
  assign n2180 = n2178 ? 4'b0001 : n1193;
  /*# upstream/rtl/t65/T65_MCode.vhd:766:15 */
  assign n2183 = n2178 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:765:13 */
  assign n2185 = mcycle == 3'b101;
  /*# upstream/rtl/t65/T65_MCode.vhd:746:11 */
  assign n2186 = {n2185, n2174, n2172, n2165, n2163};
  /*# upstream/rtl/t65/T65_MCode.vhd:746:11 */
  always @*
    case (n2186)
      5'b10000: n2187 = n2180;
      5'b01000: n2187 = n1193;
      5'b00100: n2187 = n1193;
      5'b00010: n2187 = n1193;
      5'b00001: n2187 = n1193;
      default: n2187 = n1193;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:746:11 */
  always @*
    case (n2186)
      5'b10000: n2192 = 2'b00;
      5'b01000: n2192 = 2'b11;
      5'b00100: n2192 = 2'b11;
      5'b00010: n2192 = 2'b11;
      5'b00001: n2192 = 2'b00;
      default: n2192 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:746:11 */
  always @*
    case (n2186)
      5'b10000: n2196 = 2'b00;
      5'b01000: n2196 = 2'b00;
      5'b00100: n2196 = 2'b00;
      5'b00010: n2196 = 2'b01;
      5'b00001: n2196 = 2'b01;
      default: n2196 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:746:11 */
  always @*
    case (n2186)
      5'b10000: n2199 = 1'b0;
      5'b01000: n2199 = 1'b0;
      5'b00100: n2199 = 1'b1;
      5'b00010: n2199 = 1'b0;
      5'b00001: n2199 = 1'b0;
      default: n2199 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:746:11 */
  always @*
    case (n2186)
      5'b10000: n2202 = 1'b0;
      5'b01000: n2202 = 1'b1;
      5'b00100: n2202 = 1'b0;
      5'b00010: n2202 = 1'b0;
      5'b00001: n2202 = 1'b0;
      default: n2202 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:746:11 */
  always @*
    case (n2186)
      5'b10000: n2205 = 1'b0;
      5'b01000: n2205 = 1'b0;
      5'b00100: n2205 = 1'b0;
      5'b00010: n2205 = 1'b0;
      5'b00001: n2205 = 1'b1;
      default: n2205 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:746:11 */
  always @*
    case (n2186)
      5'b10000: n2208 = 1'b0;
      5'b01000: n2208 = 1'b0;
      5'b00100: n2208 = 1'b0;
      5'b00010: n2208 = 1'b1;
      5'b00001: n2208 = 1'b0;
      default: n2208 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:746:11 */
  always @*
    case (n2186)
      5'b10000: n2211 = 1'b0;
      5'b01000: n2211 = 1'b1;
      5'b00100: n2211 = 1'b0;
      5'b00010: n2211 = 1'b0;
      5'b00001: n2211 = 1'b0;
      default: n2211 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:746:11 */
  always @*
    case (n2186)
      5'b10000: n2214 = 1'b0;
      5'b01000: n2214 = 1'b1;
      5'b00100: n2214 = n2170;
      5'b00010: n2214 = 1'b0;
      5'b00001: n2214 = 1'b0;
      default: n2214 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:746:11 */
  always @*
    case (n2186)
      5'b10000: n2216 = n2183;
      5'b01000: n2216 = 1'b0;
      5'b00100: n2216 = 1'b0;
      5'b00010: n2216 = 1'b0;
      5'b00001: n2216 = 1'b0;
      default: n2216 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:774:16 */
  assign n2217 = ir[7:6]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:774:29 */
  assign n2219 = n2217 != 2'b10;
  /*# upstream/rtl/t65/T65_MCode.vhd:774:11 */
  assign n2221 = n2219 ? 1'b1 : n1166;
  /*# upstream/rtl/t65/T65_MCode.vhd:778:13 */
  assign n2223 = mcycle == 3'b000;
  /*# upstream/rtl/t65/T65_MCode.vhd:779:13 */
  assign n2225 = mcycle == 3'b001;
  /*# upstream/rtl/t65/T65_MCode.vhd:785:20 */
  assign n2226 = ir[7:5]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:785:33 */
  assign n2228 = n2226 == 3'b100;
  /*# upstream/rtl/t65/T65_MCode.vhd:785:15 */
  assign n2231 = n2228 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:782:13 */
  assign n2233 = mcycle == 3'b010;
  /*# upstream/rtl/t65/T65_MCode.vhd:789:13 */
  assign n2235 = mcycle == 3'b011;
  /*# upstream/rtl/t65/T65_MCode.vhd:777:11 */
  assign n2236 = {n2235, n2233, n2225, n2223};
  /*# upstream/rtl/t65/T65_MCode.vhd:777:11 */
  always @*
    case (n2236)
      4'b1000: n2239 = 2'b00;
      4'b0100: n2239 = 2'b11;
      4'b0010: n2239 = 2'b00;
      4'b0001: n2239 = 2'b00;
      default: n2239 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:777:11 */
  always @*
    case (n2236)
      4'b1000: n2243 = 2'b00;
      4'b0100: n2243 = 2'b01;
      4'b0010: n2243 = 2'b01;
      4'b0001: n2243 = 2'b00;
      default: n2243 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:777:11 */
  always @*
    case (n2236)
      4'b1000: n2246 = 1'b0;
      4'b0100: n2246 = 1'b0;
      4'b0010: n2246 = 1'b1;
      4'b0001: n2246 = 1'b0;
      default: n2246 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:777:11 */
  always @*
    case (n2236)
      4'b1000: n2249 = 1'b0;
      4'b0100: n2249 = 1'b1;
      4'b0010: n2249 = 1'b0;
      4'b0001: n2249 = 1'b0;
      default: n2249 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:777:11 */
  always @*
    case (n2236)
      4'b1000: n2251 = 1'b0;
      4'b0100: n2251 = n2231;
      4'b0010: n2251 = 1'b0;
      4'b0001: n2251 = 1'b0;
      default: n2251 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:740:9 */
  assign n2254 = n2155 ? 3'b101 : 3'b011;
  /*# upstream/rtl/t65/T65_MCode.vhd:740:9 */
  assign n2255 = n2155 ? n2187 : n1193;
  /*# upstream/rtl/t65/T65_MCode.vhd:740:9 */
  assign n2256 = n2155 ? n2192 : n2239;
  /*# upstream/rtl/t65/T65_MCode.vhd:740:9 */
  assign n2257 = n2155 ? n2196 : n2243;
  /*# upstream/rtl/t65/T65_MCode.vhd:740:9 */
  assign n2258 = n2155 ? n2161 : n2221;
  /*# upstream/rtl/t65/T65_MCode.vhd:740:9 */
  assign n2260 = n2155 ? n2199 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:740:9 */
  assign n2262 = n2155 ? n2202 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:740:9 */
  assign n2263 = n2155 ? n2205 : n2246;
  /*# upstream/rtl/t65/T65_MCode.vhd:740:9 */
  assign n2264 = n2155 ? n2208 : n2249;
  /*# upstream/rtl/t65/T65_MCode.vhd:740:9 */
  assign n2266 = n2155 ? n2211 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:740:9 */
  assign n2267 = n2155 ? n2214 : n2251;
  /*# upstream/rtl/t65/T65_MCode.vhd:740:9 */
  assign n2269 = n2155 ? n2216 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:738:7 */
  assign n2271 = n1194 == 5'b01101;
  /*# upstream/rtl/t65/T65_MCode.vhd:738:20 */
  assign n2273 = n1194 == 5'b01110;
  /*# upstream/rtl/t65/T65_MCode.vhd:738:20 */
  assign n2274 = n2271 | n2273;
  /*# upstream/rtl/t65/T65_MCode.vhd:738:30 */
  assign n2276 = n1194 == 5'b01111;
  /*# upstream/rtl/t65/T65_MCode.vhd:738:30 */
  assign n2277 = n2274 | n2276;
  /*# upstream/rtl/t65/T65_MCode.vhd:801:9 */
  assign n2280 = branch ? 3'b011 : 3'b001;
  /*# upstream/rtl/t65/T65_MCode.vhd:815:11 */
  assign n2282 = mcycle == 3'b001;
  /*# upstream/rtl/t65/T65_MCode.vhd:826:11 */
  assign n2284 = mcycle == 3'b010;
  /*# upstream/rtl/t65/T65_MCode.vhd:835:11 */
  assign n2286 = mcycle == 3'b011;
  /*# upstream/rtl/t65/T65_MCode.vhd:810:9 */
  assign n2287 = {n2286, n2284, n2282};
  /*# upstream/rtl/t65/T65_MCode.vhd:810:9 */
  always @*
    case (n2287)
      3'b100: n2291 = 2'b00;
      3'b010: n2291 = 2'b11;
      3'b001: n2291 = 2'b01;
      default: n2291 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:810:9 */
  always @*
    case (n2287)
      3'b100: n2294 = 1'b0;
      3'b010: n2294 = 1'b1;
      3'b001: n2294 = 1'b0;
      default: n2294 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:810:9 */
  always @*
    case (n2287)
      3'b100: n2297 = 1'b0;
      3'b010: n2297 = 1'b0;
      3'b001: n2297 = 1'b1;
      default: n2297 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:795:7 */
  assign n2299 = n1194 == 5'b10000;
  /*# upstream/rtl/t65/T65_MCode.vhd:843:14 */
  assign n2300 = ir[7:6]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:843:27 */
  assign n2302 = n2300 != 2'b10;
  /*# upstream/rtl/t65/T65_MCode.vhd:845:18 */
  assign n2304 = mode == 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:845:30 */
  assign n2305 = ir[1]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:845:24 */
  assign n2306 = n2305 & n2304;
  /*# upstream/rtl/t65/T65_MCode.vhd:845:11 */
  assign n2309 = n2306 ? 3'b111 : 3'b101;
  /*# upstream/rtl/t65/T65_MCode.vhd:843:9 */
  assign n2311 = n2302 ? n2309 : 3'b101;
  /*# upstream/rtl/t65/T65_MCode.vhd:843:9 */
  assign n2314 = n2302 ? 1'b1 : n1166;
  /*# upstream/rtl/t65/T65_MCode.vhd:850:11 */
  assign n2316 = mcycle == 3'b001;
  /*# upstream/rtl/t65/T65_MCode.vhd:854:11 */
  assign n2318 = mcycle == 3'b010;
  /*# upstream/rtl/t65/T65_MCode.vhd:858:11 */
  assign n2320 = mcycle == 3'b011;
  /*# upstream/rtl/t65/T65_MCode.vhd:865:18 */
  assign n2321 = ir[7:5]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:865:31 */
  assign n2323 = n2321 == 3'b100;
  /*# upstream/rtl/t65/T65_MCode.vhd:867:20 */
  assign n2324 = ir[3:0]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:867:33 */
  assign n2326 = n2324 == 4'b0011;
  /*# upstream/rtl/t65/T65_MCode.vhd:867:15 */
  assign n2329 = n2326 ? 2'b10 : 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:870:21 */
  assign n2330 = ir[1]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:870:24 */
  assign n2331 = ~n2330;
  /*# upstream/rtl/t65/T65_MCode.vhd:870:34 */
  assign n2333 = ir == 8'b10110011;
  /*# upstream/rtl/t65/T65_MCode.vhd:870:29 */
  assign n2334 = n2331 | n2333;
  /*# upstream/rtl/t65/T65_MCode.vhd:870:13 */
  assign n2337 = n2334 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:865:13 */
  assign n2339 = n2323 ? n2329 : 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:865:13 */
  assign n2341 = n2323 ? 1'b0 : n2337;
  /*# upstream/rtl/t65/T65_MCode.vhd:865:13 */
  assign n2344 = n2323 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:863:11 */
  assign n2346 = mcycle == 3'b100;
  /*# upstream/rtl/t65/T65_MCode.vhd:875:20 */
  assign n2348 = mode == 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:875:32 */
  assign n2349 = ir[1]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:875:26 */
  assign n2350 = n2349 & n2348;
  /*# upstream/rtl/t65/T65_MCode.vhd:875:46 */
  assign n2351 = ir[7:6]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:875:58 */
  assign n2353 = n2351 != 2'b10;
  /*# upstream/rtl/t65/T65_MCode.vhd:875:40 */
  assign n2354 = n2353 & n2350;
  /*# upstream/rtl/t65/T65_MCode.vhd:875:13 */
  assign n2357 = n2354 ? 2'b11 : 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:875:13 */
  assign n2360 = n2354 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:875:13 */
  assign n2363 = n2354 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:874:11 */
  assign n2365 = mcycle == 3'b101;
  /*# upstream/rtl/t65/T65_MCode.vhd:880:11 */
  assign n2367 = mcycle == 3'b110;
  /*# upstream/rtl/t65/T65_MCode.vhd:885:11 */
  assign n2369 = mcycle == 3'b111;
  /*# upstream/rtl/t65/T65_MCode.vhd:849:9 */
  assign n2370 = {n2369, n2367, n2365, n2346, n2320, n2318, n2316};
  /*# upstream/rtl/t65/T65_MCode.vhd:849:9 */
  always @*
    case (n2370)
      7'b1000000: n2373 = 4'b0001;
      7'b0100000: n2373 = n1193;
      7'b0010000: n2373 = n1193;
      7'b0001000: n2373 = n1193;
      7'b0000100: n2373 = 4'b0011;
      7'b0000010: n2373 = n1193;
      7'b0000001: n2373 = n1193;
      default: n2373 = n1193;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:849:9 */
  always @*
    case (n2370)
      7'b1000000: n2380 = 2'b00;
      7'b0100000: n2380 = 2'b11;
      7'b0010000: n2380 = n2357;
      7'b0001000: n2380 = 2'b11;
      7'b0000100: n2380 = 2'b11;
      7'b0000010: n2380 = 2'b10;
      7'b0000001: n2380 = 2'b10;
      default: n2380 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:849:9 */
  always @*
    case (n2370)
      7'b1000000: n2383 = 2'b00;
      7'b0100000: n2383 = 2'b00;
      7'b0010000: n2383 = 2'b00;
      7'b0001000: n2383 = 2'b00;
      7'b0000100: n2383 = 2'b00;
      7'b0000010: n2383 = 2'b00;
      7'b0000001: n2383 = 2'b01;
      default: n2383 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:849:9 */
  always @*
    case (n2370)
      7'b1000000: n2388 = 2'b00;
      7'b0100000: n2388 = 2'b00;
      7'b0010000: n2388 = 2'b00;
      7'b0001000: n2388 = 2'b11;
      7'b0000100: n2388 = 2'b10;
      7'b0000010: n2388 = 2'b01;
      7'b0000001: n2388 = 2'b00;
      default: n2388 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:849:9 */
  always @*
    case (n2370)
      7'b1000000: n2390 = 2'b00;
      7'b0100000: n2390 = 2'b00;
      7'b0010000: n2390 = 2'b00;
      7'b0001000: n2390 = n2339;
      7'b0000100: n2390 = 2'b00;
      7'b0000010: n2390 = 2'b00;
      7'b0000001: n2390 = 2'b00;
      default: n2390 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:849:9 */
  always @*
    case (n2370)
      7'b1000000: n2392 = 1'b0;
      7'b0100000: n2392 = 1'b0;
      7'b0010000: n2392 = 1'b0;
      7'b0001000: n2392 = n2341;
      7'b0000100: n2392 = 1'b0;
      7'b0000010: n2392 = 1'b0;
      7'b0000001: n2392 = 1'b0;
      default: n2392 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:849:9 */
  always @*
    case (n2370)
      7'b1000000: n2394 = 1'b0;
      7'b0100000: n2394 = 1'b0;
      7'b0010000: n2394 = n2360;
      7'b0001000: n2394 = 1'b0;
      7'b0000100: n2394 = 1'b0;
      7'b0000010: n2394 = 1'b0;
      7'b0000001: n2394 = 1'b0;
      default: n2394 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:849:9 */
  always @*
    case (n2370)
      7'b1000000: n2397 = 1'b0;
      7'b0100000: n2397 = 1'b1;
      7'b0010000: n2397 = 1'b0;
      7'b0001000: n2397 = 1'b0;
      7'b0000100: n2397 = 1'b0;
      7'b0000010: n2397 = 1'b0;
      7'b0000001: n2397 = 1'b0;
      default: n2397 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:849:9 */
  always @*
    case (n2370)
      7'b1000000: n2400 = 1'b0;
      7'b0100000: n2400 = 1'b0;
      7'b0010000: n2400 = 1'b0;
      7'b0001000: n2400 = 1'b0;
      7'b0000100: n2400 = 1'b0;
      7'b0000010: n2400 = 1'b0;
      7'b0000001: n2400 = 1'b1;
      default: n2400 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:849:9 */
  always @*
    case (n2370)
      7'b1000000: n2403 = 1'b0;
      7'b0100000: n2403 = 1'b0;
      7'b0010000: n2403 = 1'b0;
      7'b0001000: n2403 = 1'b0;
      7'b0000100: n2403 = 1'b0;
      7'b0000010: n2403 = 1'b1;
      7'b0000001: n2403 = 1'b0;
      default: n2403 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:849:9 */
  always @*
    case (n2370)
      7'b1000000: n2406 = 1'b0;
      7'b0100000: n2406 = 1'b0;
      7'b0010000: n2406 = 1'b0;
      7'b0001000: n2406 = 1'b0;
      7'b0000100: n2406 = 1'b1;
      7'b0000010: n2406 = 1'b0;
      7'b0000001: n2406 = 1'b0;
      default: n2406 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:849:9 */
  always @*
    case (n2370)
      7'b1000000: n2409 = 1'b0;
      7'b0100000: n2409 = 1'b1;
      7'b0010000: n2409 = 1'b0;
      7'b0001000: n2409 = 1'b0;
      7'b0000100: n2409 = 1'b0;
      7'b0000010: n2409 = 1'b0;
      7'b0000001: n2409 = 1'b0;
      default: n2409 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:849:9 */
  always @*
    case (n2370)
      7'b1000000: n2412 = 1'b0;
      7'b0100000: n2412 = 1'b1;
      7'b0010000: n2412 = n2363;
      7'b0001000: n2412 = n2344;
      7'b0000100: n2412 = 1'b0;
      7'b0000010: n2412 = 1'b0;
      7'b0000001: n2412 = 1'b0;
      default: n2412 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:849:9 */
  always @*
    case (n2370)
      7'b1000000: n2415 = 1'b1;
      7'b0100000: n2415 = 1'b0;
      7'b0010000: n2415 = 1'b0;
      7'b0001000: n2415 = 1'b0;
      7'b0000100: n2415 = 1'b0;
      7'b0000010: n2415 = 1'b0;
      7'b0000001: n2415 = 1'b0;
      default: n2415 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:841:7 */
  assign n2417 = n1194 == 5'b10001;
  /*# upstream/rtl/t65/T65_MCode.vhd:841:20 */
  assign n2419 = n1194 == 5'b10011;
  /*# upstream/rtl/t65/T65_MCode.vhd:841:20 */
  assign n2420 = n2417 | n2419;
  /*# upstream/rtl/t65/T65_MCode.vhd:897:14 */
  assign n2421 = ir[7:6]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:897:27 */
  assign n2423 = n2421 != 2'b10;
  /*# upstream/rtl/t65/T65_MCode.vhd:897:41 */
  assign n2424 = ir[1]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:897:35 */
  assign n2425 = n2424 & n2423;
  /*# upstream/rtl/t65/T65_MCode.vhd:897:60 */
  assign n2427 = mode == 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:897:71 */
  assign n2428 = ir[0]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:897:74 */
  assign n2429 = ~n2428;
  /*# upstream/rtl/t65/T65_MCode.vhd:897:66 */
  assign n2430 = n2427 | n2429;
  /*# upstream/rtl/t65/T65_MCode.vhd:897:51 */
  assign n2431 = n2430 & n2425;
  /*# upstream/rtl/t65/T65_MCode.vhd:899:18 */
  assign n2433 = mode == 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:899:30 */
  assign n2434 = ir[0]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:899:24 */
  assign n2435 = n2434 & n2433;
  /*# upstream/rtl/t65/T65_MCode.vhd:899:11 */
  assign n2437 = n2435 ? 1'b1 : n1166;
  /*# upstream/rtl/t65/T65_MCode.vhd:904:13 */
  assign n2439 = mcycle == 3'b001;
  /*# upstream/rtl/t65/T65_MCode.vhd:908:13 */
  assign n2441 = mcycle == 3'b010;
  /*# upstream/rtl/t65/T65_MCode.vhd:913:22 */
  assign n2443 = mode == 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:913:15 */
  assign n2446 = n2443 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:911:13 */
  assign n2448 = mcycle == 3'b011;
  /*# upstream/rtl/t65/T65_MCode.vhd:922:22 */
  assign n2450 = mode == 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:922:34 */
  assign n2451 = ir[0]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:922:28 */
  assign n2452 = n2451 & n2450;
  /*# upstream/rtl/t65/T65_MCode.vhd:922:15 */
  assign n2455 = n2452 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:917:13 */
  assign n2457 = mcycle == 3'b100;
  /*# upstream/rtl/t65/T65_MCode.vhd:926:22 */
  assign n2459 = mode == 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:926:34 */
  assign n2460 = ir[0]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:926:28 */
  assign n2461 = n2460 & n2459;
  /*# upstream/rtl/t65/T65_MCode.vhd:926:15 */
  assign n2463 = n2461 ? 4'b0001 : n1193;
  /*# upstream/rtl/t65/T65_MCode.vhd:926:15 */
  assign n2466 = n2461 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:925:13 */
  assign n2468 = mcycle == 3'b101;
  /*# upstream/rtl/t65/T65_MCode.vhd:903:11 */
  assign n2469 = {n2468, n2457, n2448, n2441, n2439};
  /*# upstream/rtl/t65/T65_MCode.vhd:903:11 */
  always @*
    case (n2469)
      5'b10000: n2470 = n2463;
      5'b01000: n2470 = n1193;
      5'b00100: n2470 = n1193;
      5'b00010: n2470 = n1193;
      5'b00001: n2470 = n1193;
      default: n2470 = n1193;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:903:11 */
  always @*
    case (n2469)
      5'b10000: n2476 = 2'b00;
      5'b01000: n2476 = 2'b10;
      5'b00100: n2476 = 2'b10;
      5'b00010: n2476 = 2'b10;
      5'b00001: n2476 = 2'b10;
      default: n2476 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:903:11 */
  always @*
    case (n2469)
      5'b10000: n2479 = 2'b00;
      5'b01000: n2479 = 2'b00;
      5'b00100: n2479 = 2'b00;
      5'b00010: n2479 = 2'b00;
      5'b00001: n2479 = 2'b01;
      default: n2479 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:903:11 */
  always @*
    case (n2469)
      5'b10000: n2482 = 1'b0;
      5'b01000: n2482 = 1'b0;
      5'b00100: n2482 = 1'b0;
      5'b00010: n2482 = 1'b1;
      5'b00001: n2482 = 1'b0;
      default: n2482 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:903:11 */
  always @*
    case (n2469)
      5'b10000: n2485 = 1'b0;
      5'b01000: n2485 = n2455;
      5'b00100: n2485 = 1'b1;
      5'b00010: n2485 = 1'b0;
      5'b00001: n2485 = 1'b0;
      default: n2485 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:903:11 */
  always @*
    case (n2469)
      5'b10000: n2488 = 1'b0;
      5'b01000: n2488 = 1'b1;
      5'b00100: n2488 = 1'b0;
      5'b00010: n2488 = 1'b0;
      5'b00001: n2488 = 1'b0;
      default: n2488 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:903:11 */
  always @*
    case (n2469)
      5'b10000: n2491 = 1'b0;
      5'b01000: n2491 = 1'b0;
      5'b00100: n2491 = 1'b0;
      5'b00010: n2491 = 1'b0;
      5'b00001: n2491 = 1'b1;
      default: n2491 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:903:11 */
  always @*
    case (n2469)
      5'b10000: n2494 = 1'b0;
      5'b01000: n2494 = 1'b1;
      5'b00100: n2494 = 1'b0;
      5'b00010: n2494 = 1'b0;
      5'b00001: n2494 = 1'b0;
      default: n2494 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:903:11 */
  always @*
    case (n2469)
      5'b10000: n2497 = 1'b0;
      5'b01000: n2497 = 1'b1;
      5'b00100: n2497 = n2446;
      5'b00010: n2497 = 1'b0;
      5'b00001: n2497 = 1'b0;
      default: n2497 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:903:11 */
  always @*
    case (n2469)
      5'b10000: n2499 = n2466;
      5'b01000: n2499 = 1'b0;
      5'b00100: n2499 = 1'b0;
      5'b00010: n2499 = 1'b0;
      5'b00001: n2499 = 1'b0;
      default: n2499 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:934:16 */
  assign n2500 = ir[7:6]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:934:29 */
  assign n2502 = n2500 != 2'b10;
  /*# upstream/rtl/t65/T65_MCode.vhd:934:43 */
  assign n2503 = ir[0]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:934:37 */
  assign n2504 = n2503 & n2502;
  /*# upstream/rtl/t65/T65_MCode.vhd:934:11 */
  assign n2506 = n2504 ? 1'b1 : n1166;
  /*# upstream/rtl/t65/T65_MCode.vhd:938:13 */
  assign n2508 = mcycle == 3'b000;
  /*# upstream/rtl/t65/T65_MCode.vhd:939:13 */
  assign n2510 = mcycle == 3'b001;
  /*# upstream/rtl/t65/T65_MCode.vhd:946:21 */
  assign n2511 = ir[3:1]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:946:34 */
  assign n2513 = n2511 == 3'b011;
  /*# upstream/rtl/t65/T65_MCode.vhd:946:15 */
  assign n2516 = n2513 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:949:20 */
  assign n2517 = ir[7:5]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:949:33 */
  assign n2519 = n2517 == 3'b100;
  /*# upstream/rtl/t65/T65_MCode.vhd:949:15 */
  assign n2522 = n2519 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:943:13 */
  assign n2524 = mcycle == 3'b010;
  /*# upstream/rtl/t65/T65_MCode.vhd:953:13 */
  assign n2526 = mcycle == 3'b011;
  /*# upstream/rtl/t65/T65_MCode.vhd:937:11 */
  assign n2527 = {n2526, n2524, n2510, n2508};
  /*# upstream/rtl/t65/T65_MCode.vhd:937:11 */
  always @*
    case (n2527)
      4'b1000: n2531 = 2'b00;
      4'b0100: n2531 = 2'b10;
      4'b0010: n2531 = 2'b10;
      4'b0001: n2531 = 2'b00;
      default: n2531 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:937:11 */
  always @*
    case (n2527)
      4'b1000: n2534 = 2'b00;
      4'b0100: n2534 = 2'b00;
      4'b0010: n2534 = 2'b01;
      4'b0001: n2534 = 2'b00;
      default: n2534 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:937:11 */
  always @*
    case (n2527)
      4'b1000: n2537 = 1'b0;
      4'b0100: n2537 = 1'b1;
      4'b0010: n2537 = 1'b0;
      4'b0001: n2537 = 1'b0;
      default: n2537 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:937:11 */
  always @*
    case (n2527)
      4'b1000: n2539 = 1'b0;
      4'b0100: n2539 = n2516;
      4'b0010: n2539 = 1'b0;
      4'b0001: n2539 = 1'b0;
      default: n2539 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:937:11 */
  always @*
    case (n2527)
      4'b1000: n2542 = 1'b0;
      4'b0100: n2542 = 1'b0;
      4'b0010: n2542 = 1'b1;
      4'b0001: n2542 = 1'b0;
      default: n2542 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:937:11 */
  always @*
    case (n2527)
      4'b1000: n2544 = 1'b0;
      4'b0100: n2544 = n2522;
      4'b0010: n2544 = 1'b0;
      4'b0001: n2544 = 1'b0;
      default: n2544 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:897:9 */
  assign n2547 = n2431 ? 3'b101 : 3'b011;
  /*# upstream/rtl/t65/T65_MCode.vhd:897:9 */
  assign n2548 = n2431 ? n2470 : n1193;
  /*# upstream/rtl/t65/T65_MCode.vhd:897:9 */
  assign n2549 = n2431 ? n2476 : n2531;
  /*# upstream/rtl/t65/T65_MCode.vhd:897:9 */
  assign n2550 = n2431 ? n2479 : n2534;
  /*# upstream/rtl/t65/T65_MCode.vhd:897:9 */
  assign n2551 = n2431 ? n2482 : n2537;
  /*# upstream/rtl/t65/T65_MCode.vhd:897:9 */
  assign n2553 = n2431 ? 1'b0 : n2539;
  /*# upstream/rtl/t65/T65_MCode.vhd:897:9 */
  assign n2554 = n2431 ? n2437 : n2506;
  /*# upstream/rtl/t65/T65_MCode.vhd:897:9 */
  assign n2556 = n2431 ? n2485 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:897:9 */
  assign n2558 = n2431 ? n2488 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:897:9 */
  assign n2559 = n2431 ? n2491 : n2542;
  /*# upstream/rtl/t65/T65_MCode.vhd:897:9 */
  assign n2561 = n2431 ? n2494 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:897:9 */
  assign n2562 = n2431 ? n2497 : n2544;
  /*# upstream/rtl/t65/T65_MCode.vhd:897:9 */
  assign n2564 = n2431 ? n2499 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:895:7 */
  assign n2566 = n1194 == 5'b10100;
  /*# upstream/rtl/t65/T65_MCode.vhd:895:20 */
  assign n2568 = n1194 == 5'b10101;
  /*# upstream/rtl/t65/T65_MCode.vhd:895:20 */
  assign n2569 = n2566 | n2568;
  /*# upstream/rtl/t65/T65_MCode.vhd:895:30 */
  assign n2571 = n1194 == 5'b10110;
  /*# upstream/rtl/t65/T65_MCode.vhd:895:30 */
  assign n2572 = n2569 | n2571;
  /*# upstream/rtl/t65/T65_MCode.vhd:895:40 */
  assign n2574 = n1194 == 5'b10111;
  /*# upstream/rtl/t65/T65_MCode.vhd:895:40 */
  assign n2575 = n2572 | n2574;
  /*# upstream/rtl/t65/T65_MCode.vhd:963:14 */
  assign n2576 = ir[7:6]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:963:27 */
  assign n2578 = n2576 != 2'b10;
  /*# upstream/rtl/t65/T65_MCode.vhd:965:18 */
  assign n2580 = mode == 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:965:30 */
  assign n2581 = ir[1]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:965:24 */
  assign n2582 = n2581 & n2580;
  /*# upstream/rtl/t65/T65_MCode.vhd:965:11 */
  assign n2585 = n2582 ? 3'b110 : 3'b100;
  /*# upstream/rtl/t65/T65_MCode.vhd:963:9 */
  assign n2587 = n2578 ? n2585 : 3'b100;
  /*# upstream/rtl/t65/T65_MCode.vhd:963:9 */
  assign n2590 = n2578 ? 1'b1 : n1166;
  /*# upstream/rtl/t65/T65_MCode.vhd:970:11 */
  assign n2592 = mcycle == 3'b001;
  /*# upstream/rtl/t65/T65_MCode.vhd:973:11 */
  assign n2594 = mcycle == 3'b010;
  /*# upstream/rtl/t65/T65_MCode.vhd:981:18 */
  assign n2595 = ir[7:5]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:981:31 */
  assign n2597 = n2595 == 3'b100;
  /*# upstream/rtl/t65/T65_MCode.vhd:983:20 */
  assign n2598 = ir[3:0]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:983:33 */
  assign n2600 = n2598 == 4'b1011;
  /*# upstream/rtl/t65/T65_MCode.vhd:983:15 */
  assign n2603 = n2600 ? 2'b01 : 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:986:21 */
  assign n2604 = ir[1]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:986:24 */
  assign n2605 = ~n2604;
  /*# upstream/rtl/t65/T65_MCode.vhd:986:34 */
  assign n2607 = ir == 8'b10111011;
  /*# upstream/rtl/t65/T65_MCode.vhd:986:29 */
  assign n2608 = n2605 | n2607;
  /*# upstream/rtl/t65/T65_MCode.vhd:986:13 */
  assign n2611 = n2608 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:981:13 */
  assign n2613 = n2597 ? n2603 : 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:981:13 */
  assign n2615 = n2597 ? 1'b0 : n2611;
  /*# upstream/rtl/t65/T65_MCode.vhd:981:13 */
  assign n2618 = n2597 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:979:11 */
  assign n2620 = mcycle == 3'b011;
  /*# upstream/rtl/t65/T65_MCode.vhd:991:20 */
  assign n2622 = mode == 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:991:32 */
  assign n2623 = ir[1]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:991:26 */
  assign n2624 = n2623 & n2622;
  /*# upstream/rtl/t65/T65_MCode.vhd:991:46 */
  assign n2625 = ir[7:6]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:991:58 */
  assign n2627 = n2625 != 2'b10;
  /*# upstream/rtl/t65/T65_MCode.vhd:991:40 */
  assign n2628 = n2627 & n2624;
  /*# upstream/rtl/t65/T65_MCode.vhd:991:13 */
  assign n2631 = n2628 ? 2'b11 : 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:991:13 */
  assign n2634 = n2628 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:991:13 */
  assign n2637 = n2628 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:990:11 */
  assign n2639 = mcycle == 3'b100;
  /*# upstream/rtl/t65/T65_MCode.vhd:996:11 */
  assign n2641 = mcycle == 3'b101;
  /*# upstream/rtl/t65/T65_MCode.vhd:1001:11 */
  assign n2643 = mcycle == 3'b110;
  /*# upstream/rtl/t65/T65_MCode.vhd:969:9 */
  assign n2644 = {n2643, n2641, n2639, n2620, n2594, n2592};
  /*# upstream/rtl/t65/T65_MCode.vhd:969:9 */
  always @*
    case (n2644)
      6'b100000: n2647 = 4'b0001;
      6'b010000: n2647 = n1193;
      6'b001000: n2647 = n1193;
      6'b000100: n2647 = n1193;
      6'b000010: n2647 = 4'b0011;
      6'b000001: n2647 = n1193;
      default: n2647 = n1193;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:969:9 */
  always @*
    case (n2644)
      6'b100000: n2652 = 2'b00;
      6'b010000: n2652 = 2'b11;
      6'b001000: n2652 = n2631;
      6'b000100: n2652 = 2'b11;
      6'b000010: n2652 = 2'b11;
      6'b000001: n2652 = 2'b00;
      default: n2652 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:969:9 */
  always @*
    case (n2644)
      6'b100000: n2656 = 2'b00;
      6'b010000: n2656 = 2'b00;
      6'b001000: n2656 = 2'b00;
      6'b000100: n2656 = 2'b00;
      6'b000010: n2656 = 2'b01;
      6'b000001: n2656 = 2'b01;
      default: n2656 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:969:9 */
  always @*
    case (n2644)
      6'b100000: n2660 = 2'b00;
      6'b010000: n2660 = 2'b00;
      6'b001000: n2660 = 2'b00;
      6'b000100: n2660 = 2'b11;
      6'b000010: n2660 = 2'b10;
      6'b000001: n2660 = 2'b00;
      default: n2660 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:969:9 */
  always @*
    case (n2644)
      6'b100000: n2662 = 2'b00;
      6'b010000: n2662 = 2'b00;
      6'b001000: n2662 = 2'b00;
      6'b000100: n2662 = n2613;
      6'b000010: n2662 = 2'b00;
      6'b000001: n2662 = 2'b00;
      default: n2662 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:969:9 */
  always @*
    case (n2644)
      6'b100000: n2664 = 1'b0;
      6'b010000: n2664 = 1'b0;
      6'b001000: n2664 = 1'b0;
      6'b000100: n2664 = n2615;
      6'b000010: n2664 = 1'b0;
      6'b000001: n2664 = 1'b0;
      default: n2664 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:969:9 */
  always @*
    case (n2644)
      6'b100000: n2666 = 1'b0;
      6'b010000: n2666 = 1'b0;
      6'b001000: n2666 = n2634;
      6'b000100: n2666 = 1'b0;
      6'b000010: n2666 = 1'b0;
      6'b000001: n2666 = 1'b0;
      default: n2666 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:969:9 */
  always @*
    case (n2644)
      6'b100000: n2669 = 1'b0;
      6'b010000: n2669 = 1'b1;
      6'b001000: n2669 = 1'b0;
      6'b000100: n2669 = 1'b0;
      6'b000010: n2669 = 1'b0;
      6'b000001: n2669 = 1'b0;
      default: n2669 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:969:9 */
  always @*
    case (n2644)
      6'b100000: n2672 = 1'b0;
      6'b010000: n2672 = 1'b0;
      6'b001000: n2672 = 1'b0;
      6'b000100: n2672 = 1'b0;
      6'b000010: n2672 = 1'b0;
      6'b000001: n2672 = 1'b1;
      default: n2672 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:969:9 */
  always @*
    case (n2644)
      6'b100000: n2675 = 1'b0;
      6'b010000: n2675 = 1'b0;
      6'b001000: n2675 = 1'b0;
      6'b000100: n2675 = 1'b0;
      6'b000010: n2675 = 1'b1;
      6'b000001: n2675 = 1'b0;
      default: n2675 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:969:9 */
  always @*
    case (n2644)
      6'b100000: n2678 = 1'b0;
      6'b010000: n2678 = 1'b1;
      6'b001000: n2678 = 1'b0;
      6'b000100: n2678 = 1'b0;
      6'b000010: n2678 = 1'b0;
      6'b000001: n2678 = 1'b0;
      default: n2678 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:969:9 */
  always @*
    case (n2644)
      6'b100000: n2681 = 1'b0;
      6'b010000: n2681 = 1'b1;
      6'b001000: n2681 = n2637;
      6'b000100: n2681 = n2618;
      6'b000010: n2681 = 1'b0;
      6'b000001: n2681 = 1'b0;
      default: n2681 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:969:9 */
  always @*
    case (n2644)
      6'b100000: n2684 = 1'b1;
      6'b010000: n2684 = 1'b0;
      6'b001000: n2684 = 1'b0;
      6'b000100: n2684 = 1'b0;
      6'b000010: n2684 = 1'b0;
      6'b000001: n2684 = 1'b0;
      default: n2684 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:960:7 */
  assign n2686 = n1194 == 5'b11001;
  /*# upstream/rtl/t65/T65_MCode.vhd:960:20 */
  assign n2688 = n1194 == 5'b11011;
  /*# upstream/rtl/t65/T65_MCode.vhd:960:20 */
  assign n2689 = n2686 | n2688;
  /*# upstream/rtl/t65/T65_MCode.vhd:1013:14 */
  assign n2690 = ir[7:6]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:1013:27 */
  assign n2692 = n2690 != 2'b10;
  /*# upstream/rtl/t65/T65_MCode.vhd:1013:41 */
  assign n2693 = ir[1]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:1013:35 */
  assign n2694 = n2693 & n2692;
  /*# upstream/rtl/t65/T65_MCode.vhd:1013:60 */
  assign n2696 = mode == 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:1013:71 */
  assign n2697 = ir[0]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:1013:74 */
  assign n2698 = ~n2697;
  /*# upstream/rtl/t65/T65_MCode.vhd:1013:66 */
  assign n2699 = n2696 | n2698;
  /*# upstream/rtl/t65/T65_MCode.vhd:1013:51 */
  assign n2700 = n2699 & n2694;
  /*# upstream/rtl/t65/T65_MCode.vhd:1016:18 */
  assign n2702 = mode == 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:1016:30 */
  assign n2703 = ir[0]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:1016:24 */
  assign n2704 = n2703 & n2702;
  /*# upstream/rtl/t65/T65_MCode.vhd:1016:11 */
  assign n2706 = n2704 ? 1'b1 : n1166;
  /*# upstream/rtl/t65/T65_MCode.vhd:1020:13 */
  assign n2708 = mcycle == 3'b001;
  /*# upstream/rtl/t65/T65_MCode.vhd:1023:13 */
  assign n2710 = mcycle == 3'b010;
  /*# upstream/rtl/t65/T65_MCode.vhd:1029:13 */
  assign n2712 = mcycle == 3'b011;
  /*# upstream/rtl/t65/T65_MCode.vhd:1034:22 */
  assign n2714 = mode == 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:1034:15 */
  assign n2717 = n2714 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:1032:13 */
  assign n2719 = mcycle == 3'b100;
  /*# upstream/rtl/t65/T65_MCode.vhd:1038:13 */
  assign n2721 = mcycle == 3'b101;
  /*# upstream/rtl/t65/T65_MCode.vhd:1044:22 */
  assign n2723 = mode == 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:1044:34 */
  assign n2724 = ir[0]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:1044:28 */
  assign n2725 = n2724 & n2723;
  /*# upstream/rtl/t65/T65_MCode.vhd:1044:15 */
  assign n2727 = n2725 ? 4'b0001 : n1193;
  /*# upstream/rtl/t65/T65_MCode.vhd:1044:15 */
  assign n2730 = n2725 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:1043:13 */
  assign n2732 = mcycle == 3'b110;
  /*# upstream/rtl/t65/T65_MCode.vhd:1019:11 */
  assign n2733 = {n2732, n2721, n2719, n2712, n2710, n2708};
  /*# upstream/rtl/t65/T65_MCode.vhd:1019:11 */
  always @*
    case (n2733)
      6'b100000: n2735 = n2727;
      6'b010000: n2735 = n1193;
      6'b001000: n2735 = n1193;
      6'b000100: n2735 = n1193;
      6'b000010: n2735 = 4'b0010;
      6'b000001: n2735 = n1193;
      default: n2735 = n1193;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:1019:11 */
  always @*
    case (n2733)
      6'b100000: n2741 = 2'b00;
      6'b010000: n2741 = 2'b11;
      6'b001000: n2741 = 2'b11;
      6'b000100: n2741 = 2'b11;
      6'b000010: n2741 = 2'b11;
      6'b000001: n2741 = 2'b00;
      default: n2741 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:1019:11 */
  always @*
    case (n2733)
      6'b100000: n2745 = 2'b00;
      6'b010000: n2745 = 2'b00;
      6'b001000: n2745 = 2'b00;
      6'b000100: n2745 = 2'b00;
      6'b000010: n2745 = 2'b01;
      6'b000001: n2745 = 2'b01;
      default: n2745 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:1019:11 */
  always @*
    case (n2733)
      6'b100000: n2749 = 2'b00;
      6'b010000: n2749 = 2'b00;
      6'b001000: n2749 = 2'b00;
      6'b000100: n2749 = 2'b11;
      6'b000010: n2749 = 2'b10;
      6'b000001: n2749 = 2'b00;
      default: n2749 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:1019:11 */
  always @*
    case (n2733)
      6'b100000: n2752 = 1'b0;
      6'b010000: n2752 = 1'b0;
      6'b001000: n2752 = 1'b1;
      6'b000100: n2752 = 1'b0;
      6'b000010: n2752 = 1'b0;
      6'b000001: n2752 = 1'b0;
      default: n2752 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:1019:11 */
  always @*
    case (n2733)
      6'b100000: n2755 = 1'b0;
      6'b010000: n2755 = 1'b1;
      6'b001000: n2755 = 1'b0;
      6'b000100: n2755 = 1'b0;
      6'b000010: n2755 = 1'b0;
      6'b000001: n2755 = 1'b0;
      default: n2755 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:1019:11 */
  always @*
    case (n2733)
      6'b100000: n2758 = 1'b0;
      6'b010000: n2758 = 1'b0;
      6'b001000: n2758 = 1'b0;
      6'b000100: n2758 = 1'b0;
      6'b000010: n2758 = 1'b0;
      6'b000001: n2758 = 1'b1;
      default: n2758 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:1019:11 */
  always @*
    case (n2733)
      6'b100000: n2761 = 1'b0;
      6'b010000: n2761 = 1'b0;
      6'b001000: n2761 = 1'b0;
      6'b000100: n2761 = 1'b0;
      6'b000010: n2761 = 1'b1;
      6'b000001: n2761 = 1'b0;
      default: n2761 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:1019:11 */
  always @*
    case (n2733)
      6'b100000: n2764 = 1'b0;
      6'b010000: n2764 = 1'b1;
      6'b001000: n2764 = 1'b0;
      6'b000100: n2764 = 1'b0;
      6'b000010: n2764 = 1'b0;
      6'b000001: n2764 = 1'b0;
      default: n2764 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:1019:11 */
  always @*
    case (n2733)
      6'b100000: n2767 = 1'b0;
      6'b010000: n2767 = 1'b1;
      6'b001000: n2767 = n2717;
      6'b000100: n2767 = 1'b0;
      6'b000010: n2767 = 1'b0;
      6'b000001: n2767 = 1'b0;
      default: n2767 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:1019:11 */
  always @*
    case (n2733)
      6'b100000: n2769 = n2730;
      6'b010000: n2769 = 1'b0;
      6'b001000: n2769 = 1'b0;
      6'b000100: n2769 = 1'b0;
      6'b000010: n2769 = 1'b0;
      6'b000001: n2769 = 1'b0;
      default: n2769 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:1052:16 */
  assign n2770 = ir[7:6]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:1052:29 */
  assign n2772 = n2770 != 2'b10;
  /*# upstream/rtl/t65/T65_MCode.vhd:1053:20 */
  assign n2774 = mode != 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:1053:32 */
  assign n2775 = ir[4]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:1053:35 */
  assign n2776 = ~n2775;
  /*# upstream/rtl/t65/T65_MCode.vhd:1053:27 */
  assign n2777 = n2774 | n2776;
  /*# upstream/rtl/t65/T65_MCode.vhd:1053:45 */
  assign n2778 = ir[1:0]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:1053:57 */
  assign n2780 = n2778 != 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:1053:40 */
  assign n2781 = n2777 | n2780;
  /*# upstream/rtl/t65/T65_MCode.vhd:1052:11 */
  assign n2783 = n2784 ? 1'b1 : n1166;
  /*# upstream/rtl/t65/T65_MCode.vhd:1052:11 */
  assign n2784 = n2781 & n2772;
  /*# upstream/rtl/t65/T65_MCode.vhd:1058:13 */
  assign n2786 = mcycle == 3'b000;
  /*# upstream/rtl/t65/T65_MCode.vhd:1059:13 */
  assign n2788 = mcycle == 3'b001;
  /*# upstream/rtl/t65/T65_MCode.vhd:1065:20 */
  assign n2789 = ir[7:6]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:1065:32 */
  assign n2791 = n2789 == 2'b10;
  /*# upstream/rtl/t65/T65_MCode.vhd:1065:44 */
  assign n2792 = ir[4:1]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:1065:56 */
  assign n2794 = n2792 == 4'b1111;
  /*# upstream/rtl/t65/T65_MCode.vhd:1065:38 */
  assign n2795 = n2794 & n2791;
  /*# upstream/rtl/t65/T65_MCode.vhd:1065:15 */
  assign n2798 = n2795 ? 4'b0011 : 4'b0010;
  /*# upstream/rtl/t65/T65_MCode.vhd:1062:13 */
  assign n2800 = mcycle == 3'b010;
  /*# upstream/rtl/t65/T65_MCode.vhd:1075:20 */
  assign n2801 = ir[7:5]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:1075:33 */
  assign n2803 = n2801 == 3'b100;
  /*# upstream/rtl/t65/T65_MCode.vhd:1077:24 */
  assign n2804 = ir[1:0]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:1078:17 */
  assign n2806 = n2804 == 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:1078:26 */
  assign n2808 = n2804 == 2'b10;
  /*# upstream/rtl/t65/T65_MCode.vhd:1078:26 */
  assign n2809 = n2806 | n2808;
  /*# upstream/rtl/t65/T65_MCode.vhd:1079:17 */
  assign n2811 = n2804 == 2'b11;
  /*# upstream/rtl/t65/T65_MCode.vhd:1077:17 */
  assign n2812 = {n2811, n2809};
  /*# upstream/rtl/t65/T65_MCode.vhd:1077:17 */
  always @*
    case (n2812)
      2'b10: n2816 = 2'b10;
      2'b01: n2816 = 2'b01;
      default: n2816 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:1075:15 */
  assign n2818 = n2803 ? n2816 : 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:1075:15 */
  assign n2821 = n2803 ? 1'b0 : 1'b1;
  /*# upstream/rtl/t65/T65_MCode.vhd:1075:15 */
  assign n2824 = n2803 ? 1'b1 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:1073:13 */
  assign n2826 = mcycle == 3'b011;
  /*# upstream/rtl/t65/T65_MCode.vhd:1086:13 */
  assign n2828 = mcycle == 3'b100;
  /*# upstream/rtl/t65/T65_MCode.vhd:1057:11 */
  assign n2829 = {n2828, n2826, n2800, n2788, n2786};
  /*# upstream/rtl/t65/T65_MCode.vhd:1057:11 */
  always @*
    case (n2829)
      5'b10000: n2830 = n1193;
      5'b01000: n2830 = n1193;
      5'b00100: n2830 = n2798;
      5'b00010: n2830 = n1193;
      5'b00001: n2830 = n1193;
      default: n2830 = n1193;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:1057:11 */
  always @*
    case (n2829)
      5'b10000: n2834 = 2'b00;
      5'b01000: n2834 = 2'b11;
      5'b00100: n2834 = 2'b11;
      5'b00010: n2834 = 2'b00;
      5'b00001: n2834 = 2'b00;
      default: n2834 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:1057:11 */
  always @*
    case (n2829)
      5'b10000: n2838 = 2'b00;
      5'b01000: n2838 = 2'b00;
      5'b00100: n2838 = 2'b01;
      5'b00010: n2838 = 2'b01;
      5'b00001: n2838 = 2'b00;
      default: n2838 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:1057:11 */
  always @*
    case (n2829)
      5'b10000: n2842 = 2'b00;
      5'b01000: n2842 = 2'b11;
      5'b00100: n2842 = 2'b10;
      5'b00010: n2842 = 2'b00;
      5'b00001: n2842 = 2'b00;
      default: n2842 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:1057:11 */
  always @*
    case (n2829)
      5'b10000: n2844 = 2'b00;
      5'b01000: n2844 = n2818;
      5'b00100: n2844 = 2'b00;
      5'b00010: n2844 = 2'b00;
      5'b00001: n2844 = 2'b00;
      default: n2844 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:1057:11 */
  always @*
    case (n2829)
      5'b10000: n2846 = 1'b0;
      5'b01000: n2846 = n2821;
      5'b00100: n2846 = 1'b0;
      5'b00010: n2846 = 1'b0;
      5'b00001: n2846 = 1'b0;
      default: n2846 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:1057:11 */
  always @*
    case (n2829)
      5'b10000: n2849 = 1'b0;
      5'b01000: n2849 = 1'b0;
      5'b00100: n2849 = 1'b0;
      5'b00010: n2849 = 1'b1;
      5'b00001: n2849 = 1'b0;
      default: n2849 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:1057:11 */
  always @*
    case (n2829)
      5'b10000: n2852 = 1'b0;
      5'b01000: n2852 = 1'b0;
      5'b00100: n2852 = 1'b1;
      5'b00010: n2852 = 1'b0;
      5'b00001: n2852 = 1'b0;
      default: n2852 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:1057:11 */
  always @*
    case (n2829)
      5'b10000: n2854 = 1'b0;
      5'b01000: n2854 = n2824;
      5'b00100: n2854 = 1'b0;
      5'b00010: n2854 = 1'b0;
      5'b00001: n2854 = 1'b0;
      default: n2854 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:1013:9 */
  assign n2857 = n2700 ? 3'b110 : 3'b100;
  /*# upstream/rtl/t65/T65_MCode.vhd:1013:9 */
  assign n2858 = n2700 ? n2735 : n2830;
  /*# upstream/rtl/t65/T65_MCode.vhd:1013:9 */
  assign n2859 = n2700 ? n2741 : n2834;
  /*# upstream/rtl/t65/T65_MCode.vhd:1013:9 */
  assign n2860 = n2700 ? n2745 : n2838;
  /*# upstream/rtl/t65/T65_MCode.vhd:1013:9 */
  assign n2861 = n2700 ? n2749 : n2842;
  /*# upstream/rtl/t65/T65_MCode.vhd:1013:9 */
  assign n2863 = n2700 ? 2'b00 : n2844;
  /*# upstream/rtl/t65/T65_MCode.vhd:1013:9 */
  assign n2865 = n2700 ? 1'b0 : n2846;
  /*# upstream/rtl/t65/T65_MCode.vhd:1013:9 */
  assign n2866 = n2700 ? n2706 : n2783;
  /*# upstream/rtl/t65/T65_MCode.vhd:1013:9 */
  assign n2868 = n2700 ? n2752 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:1013:9 */
  assign n2870 = n2700 ? n2755 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:1013:9 */
  assign n2871 = n2700 ? n2758 : n2849;
  /*# upstream/rtl/t65/T65_MCode.vhd:1013:9 */
  assign n2872 = n2700 ? n2761 : n2852;
  /*# upstream/rtl/t65/T65_MCode.vhd:1013:9 */
  assign n2874 = n2700 ? n2764 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:1013:9 */
  assign n2875 = n2700 ? n2767 : n2854;
  /*# upstream/rtl/t65/T65_MCode.vhd:1013:9 */
  assign n2877 = n2700 ? n2769 : 1'b0;
  /*# upstream/rtl/t65/T65_MCode.vhd:1011:7 */
  assign n2879 = n1194 == 5'b11100;
  /*# upstream/rtl/t65/T65_MCode.vhd:1011:20 */
  assign n2881 = n1194 == 5'b11101;
  /*# upstream/rtl/t65/T65_MCode.vhd:1011:20 */
  assign n2882 = n2879 | n2881;
  /*# upstream/rtl/t65/T65_MCode.vhd:1011:30 */
  assign n2884 = n1194 == 5'b11110;
  /*# upstream/rtl/t65/T65_MCode.vhd:1011:30 */
  assign n2885 = n2882 | n2884;
  /*# upstream/rtl/t65/T65_MCode.vhd:1011:40 */
  assign n2887 = n1194 == 5'b11111;
  /*# upstream/rtl/t65/T65_MCode.vhd:1011:40 */
  assign n2888 = n2885 | n2887;
  /*# upstream/rtl/t65/T65_MCode.vhd:235:5 */
  assign n2889 = {n2888, n2689, n2575, n2420, n2299, n2277, n2144, n2008, n1885, n1851, n1811, n1764, n1752, n1653};
  /*# upstream/rtl/t65/T65_MCode.vhd:235:5 */
  always @*
    case (n2889)
      14'b10000000000000: n2892 = n2857;
      14'b01000000000000: n2892 = n2587;
      14'b00100000000000: n2892 = n2547;
      14'b00010000000000: n2892 = n2311;
      14'b00001000000000: n2892 = n2280;
      14'b00000100000000: n2892 = n2254;
      14'b00000010000000: n2892 = n2130;
      14'b00000001000000: n2892 = n1986;
      14'b00000000100000: n2892 = 3'b010;
      14'b00000000010000: n2892 = n1843;
      14'b00000000001000: n2892 = 3'b001;
      14'b00000000000100: n2892 = 3'b001;
      14'b00000000000010: n2892 = n1665;
      14'b00000000000001: n2892 = n1610;
      default: n2892 = 3'b001;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:235:5 */
  always @*
    case (n2889)
      14'b10000000000000: n2894 = n2858;
      14'b01000000000000: n2894 = n2647;
      14'b00100000000000: n2894 = n2548;
      14'b00010000000000: n2894 = n2373;
      14'b00001000000000: n2894 = n1193;
      14'b00000100000000: n2894 = n2255;
      14'b00000010000000: n2894 = n1193;
      14'b00000001000000: n2894 = n1987;
      14'b00000000100000: n2894 = n1193;
      14'b00000000010000: n2894 = n1193;
      14'b00000000001000: n2894 = n1805;
      14'b00000000000100: n2894 = n1193;
      14'b00000000000010: n2894 = n1708;
      14'b00000000000001: n2894 = n1612;
      default: n2894 = n1193;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:235:5 */
  always @*
    case (n2889)
      14'b10000000000000: n2896 = n2859;
      14'b01000000000000: n2896 = n2652;
      14'b00100000000000: n2896 = n2549;
      14'b00010000000000: n2896 = n2380;
      14'b00001000000000: n2896 = 2'b00;
      14'b00000100000000: n2896 = n2256;
      14'b00000010000000: n2896 = n2131;
      14'b00000001000000: n2896 = n1988;
      14'b00000000100000: n2896 = n1873;
      14'b00000000010000: n2896 = 2'b00;
      14'b00000000001000: n2896 = 2'b00;
      14'b00000000000100: n2896 = 2'b00;
      14'b00000000000010: n2896 = n1715;
      14'b00000000000001: n2896 = n1614;
      default: n2896 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:235:5 */
  always @*
    case (n2889)
      14'b10000000000000: n2898 = n1163;
      14'b01000000000000: n2898 = n1163;
      14'b00100000000000: n2898 = n1163;
      14'b00010000000000: n2898 = n1163;
      14'b00001000000000: n2898 = n1163;
      14'b00000100000000: n2898 = n1163;
      14'b00000010000000: n2898 = n1163;
      14'b00000001000000: n2898 = n1163;
      14'b00000000100000: n2898 = n1163;
      14'b00000000010000: n2898 = n1163;
      14'b00000000001000: n2898 = n1163;
      14'b00000000000100: n2898 = n1163;
      14'b00000000000010: n2898 = n1163;
      14'b00000000000001: n2898 = n1615;
      default: n2898 = n1163;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:235:5 */
  always @*
    case (n2889)
      14'b10000000000000: n2900 = n2860;
      14'b01000000000000: n2900 = n2656;
      14'b00100000000000: n2900 = n2550;
      14'b00010000000000: n2900 = n2383;
      14'b00001000000000: n2900 = n2291;
      14'b00000100000000: n2900 = n2257;
      14'b00000010000000: n2900 = n2132;
      14'b00000001000000: n2900 = n1989;
      14'b00000000100000: n2900 = n1876;
      14'b00000000010000: n2900 = n1845;
      14'b00000000001000: n2900 = n1807;
      14'b00000000000100: n2900 = n1762;
      14'b00000000000010: n2900 = n1718;
      14'b00000000000001: n2900 = n1617;
      default: n2900 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:235:5 */
  always @*
    case (n2889)
      14'b10000000000000: n2903 = n2861;
      14'b01000000000000: n2903 = n2660;
      14'b00100000000000: n2903 = 2'b00;
      14'b00010000000000: n2903 = n2388;
      14'b00001000000000: n2903 = 2'b00;
      14'b00000100000000: n2903 = 2'b00;
      14'b00000010000000: n2903 = n2134;
      14'b00000001000000: n2903 = 2'b00;
      14'b00000000100000: n2903 = 2'b00;
      14'b00000000010000: n2903 = 2'b00;
      14'b00000000001000: n2903 = 2'b00;
      14'b00000000000100: n2903 = 2'b00;
      14'b00000000000010: n2903 = n1721;
      14'b00000000000001: n2903 = 2'b00;
      default: n2903 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:235:5 */
  always @*
    case (n2889)
      14'b10000000000000: n2906 = n2863;
      14'b01000000000000: n2906 = n2662;
      14'b00100000000000: n2906 = 2'b00;
      14'b00010000000000: n2906 = n2390;
      14'b00001000000000: n2906 = 2'b00;
      14'b00000100000000: n2906 = 2'b00;
      14'b00000010000000: n2906 = 2'b00;
      14'b00000001000000: n2906 = 2'b00;
      14'b00000000100000: n2906 = 2'b00;
      14'b00000000010000: n2906 = 2'b00;
      14'b00000000001000: n2906 = 2'b00;
      14'b00000000000100: n2906 = 2'b00;
      14'b00000000000010: n2906 = 2'b00;
      14'b00000000000001: n2906 = 2'b00;
      default: n2906 = 2'b00;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:235:5 */
  always @*
    case (n2889)
      14'b10000000000000: n2909 = n2865;
      14'b01000000000000: n2909 = n2664;
      14'b00100000000000: n2909 = 1'b0;
      14'b00010000000000: n2909 = n2392;
      14'b00001000000000: n2909 = 1'b0;
      14'b00000100000000: n2909 = 1'b0;
      14'b00000010000000: n2909 = 1'b0;
      14'b00000001000000: n2909 = 1'b0;
      14'b00000000100000: n2909 = 1'b0;
      14'b00000000010000: n2909 = 1'b0;
      14'b00000000001000: n2909 = 1'b0;
      14'b00000000000100: n2909 = 1'b0;
      14'b00000000000010: n2909 = 1'b0;
      14'b00000000000001: n2909 = 1'b0;
      default: n2909 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:235:5 */
  always @*
    case (n2889)
      14'b10000000000000: n2912 = 1'b0;
      14'b01000000000000: n2912 = 1'b0;
      14'b00100000000000: n2912 = n2551;
      14'b00010000000000: n2912 = 1'b0;
      14'b00001000000000: n2912 = 1'b0;
      14'b00000100000000: n2912 = 1'b0;
      14'b00000010000000: n2912 = 1'b0;
      14'b00000001000000: n2912 = 1'b0;
      14'b00000000100000: n2912 = 1'b0;
      14'b00000000010000: n2912 = 1'b0;
      14'b00000000001000: n2912 = 1'b0;
      14'b00000000000100: n2912 = 1'b0;
      14'b00000000000010: n2912 = n1724;
      14'b00000000000001: n2912 = 1'b0;
      default: n2912 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:235:5 */
  always @*
    case (n2889)
      14'b10000000000000: n2915 = 1'b0;
      14'b01000000000000: n2915 = 1'b0;
      14'b00100000000000: n2915 = n2553;
      14'b00010000000000: n2915 = 1'b0;
      14'b00001000000000: n2915 = 1'b0;
      14'b00000100000000: n2915 = 1'b0;
      14'b00000010000000: n2915 = 1'b0;
      14'b00000001000000: n2915 = 1'b0;
      14'b00000000100000: n2915 = 1'b0;
      14'b00000000010000: n2915 = 1'b0;
      14'b00000000001000: n2915 = 1'b0;
      14'b00000000000100: n2915 = 1'b0;
      14'b00000000000010: n2915 = 1'b0;
      14'b00000000000001: n2915 = 1'b0;
      default: n2915 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:235:5 */
  always @*
    case (n2889)
      14'b10000000000000: n2918 = 1'b0;
      14'b01000000000000: n2918 = 1'b0;
      14'b00100000000000: n2918 = 1'b0;
      14'b00010000000000: n2918 = 1'b0;
      14'b00001000000000: n2918 = n2294;
      14'b00000100000000: n2918 = 1'b0;
      14'b00000010000000: n2918 = 1'b0;
      14'b00000001000000: n2918 = 1'b0;
      14'b00000000100000: n2918 = 1'b0;
      14'b00000000010000: n2918 = 1'b0;
      14'b00000000001000: n2918 = 1'b0;
      14'b00000000000100: n2918 = 1'b0;
      14'b00000000000010: n2918 = 1'b0;
      14'b00000000000001: n2918 = 1'b0;
      default: n2918 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:235:5 */
  always @*
    case (n2889)
      14'b10000000000000: n2921 = 1'b0;
      14'b01000000000000: n2921 = 1'b0;
      14'b00100000000000: n2921 = 1'b0;
      14'b00010000000000: n2921 = 1'b0;
      14'b00001000000000: n2921 = 1'b0;
      14'b00000100000000: n2921 = 1'b0;
      14'b00000010000000: n2921 = 1'b0;
      14'b00000001000000: n2921 = 1'b0;
      14'b00000000100000: n2921 = 1'b0;
      14'b00000000010000: n2921 = 1'b0;
      14'b00000000001000: n2921 = 1'b0;
      14'b00000000000100: n2921 = 1'b0;
      14'b00000000000010: n2921 = 1'b0;
      14'b00000000000001: n2921 = n1619;
      default: n2921 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:235:5 */
  always @*
    case (n2889)
      14'b10000000000000: n2924 = 1'b0;
      14'b01000000000000: n2924 = 1'b0;
      14'b00100000000000: n2924 = 1'b0;
      14'b00010000000000: n2924 = 1'b0;
      14'b00001000000000: n2924 = 1'b0;
      14'b00000100000000: n2924 = 1'b0;
      14'b00000010000000: n2924 = 1'b0;
      14'b00000001000000: n2924 = 1'b0;
      14'b00000000100000: n2924 = 1'b0;
      14'b00000000010000: n2924 = 1'b0;
      14'b00000000001000: n2924 = 1'b0;
      14'b00000000000100: n2924 = 1'b0;
      14'b00000000000010: n2924 = 1'b0;
      14'b00000000000001: n2924 = n1621;
      default: n2924 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:235:5 */
  always @*
    case (n2889)
      14'b10000000000000: n2926 = n2866;
      14'b01000000000000: n2926 = n2590;
      14'b00100000000000: n2926 = n2554;
      14'b00010000000000: n2926 = n2314;
      14'b00001000000000: n2926 = n1166;
      14'b00000100000000: n2926 = n2258;
      14'b00000010000000: n2926 = n1166;
      14'b00000001000000: n2926 = n1990;
      14'b00000000100000: n2926 = n1166;
      14'b00000000010000: n2926 = n1166;
      14'b00000000001000: n2926 = n1808;
      14'b00000000000100: n2926 = n1757;
      14'b00000000000010: n2926 = n1668;
      14'b00000000000001: n2926 = n1624;
      default: n2926 = n1166;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:235:5 */
  always @*
    case (n2889)
      14'b10000000000000: n2928 = 1'b0;
      14'b01000000000000: n2928 = 1'b0;
      14'b00100000000000: n2928 = 1'b0;
      14'b00010000000000: n2928 = 1'b0;
      14'b00001000000000: n2928 = 1'b0;
      14'b00000100000000: n2928 = 1'b0;
      14'b00000010000000: n2928 = 1'b0;
      14'b00000001000000: n2928 = 1'b0;
      14'b00000000100000: n2928 = 1'b0;
      14'b00000000010000: n2928 = 1'b0;
      14'b00000000001000: n2928 = 1'b0;
      14'b00000000000100: n2928 = 1'b0;
      14'b00000000000010: n2928 = 1'b0;
      14'b00000000000001: n2928 = n1626;
      default: n2928 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:235:5 */
  always @*
    case (n2889)
      14'b10000000000000: n2930 = n1169;
      14'b01000000000000: n2930 = n1169;
      14'b00100000000000: n2930 = n1169;
      14'b00010000000000: n2930 = n1169;
      14'b00001000000000: n2930 = n1169;
      14'b00000100000000: n2930 = n1169;
      14'b00000010000000: n2930 = n1169;
      14'b00000001000000: n2930 = n1169;
      14'b00000000100000: n2930 = n1169;
      14'b00000000010000: n2930 = n1846;
      14'b00000000001000: n2930 = n1809;
      14'b00000000000100: n2930 = n1169;
      14'b00000000000010: n2930 = n1169;
      14'b00000000000001: n2930 = n1629;
      default: n2930 = n1169;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:235:5 */
  always @*
    case (n2889)
      14'b10000000000000: n2931 = n1172;
      14'b01000000000000: n2931 = n1172;
      14'b00100000000000: n2931 = n1172;
      14'b00010000000000: n2931 = n1172;
      14'b00001000000000: n2931 = n1172;
      14'b00000100000000: n2931 = n1172;
      14'b00000010000000: n2931 = n1172;
      14'b00000001000000: n2931 = n1172;
      14'b00000000100000: n2931 = n1172;
      14'b00000000010000: n2931 = n1172;
      14'b00000000001000: n2931 = n1172;
      14'b00000000000100: n2931 = n1172;
      14'b00000000000010: n2931 = n1172;
      14'b00000000000001: n2931 = n1631;
      default: n2931 = n1172;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:235:5 */
  always @*
    case (n2889)
      14'b10000000000000: n2932 = n1175;
      14'b01000000000000: n2932 = n1175;
      14'b00100000000000: n2932 = n1175;
      14'b00010000000000: n2932 = n1175;
      14'b00001000000000: n2932 = n1175;
      14'b00000100000000: n2932 = n1175;
      14'b00000010000000: n2932 = n1175;
      14'b00000001000000: n2932 = n1175;
      14'b00000000100000: n2932 = n1175;
      14'b00000000010000: n2932 = n1175;
      14'b00000000001000: n2932 = n1175;
      14'b00000000000100: n2932 = n1175;
      14'b00000000000010: n2932 = n1175;
      14'b00000000000001: n2932 = n1633;
      default: n2932 = n1175;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:235:5 */
  always @*
    case (n2889)
      14'b10000000000000: n2934 = n2868;
      14'b01000000000000: n2934 = n2666;
      14'b00100000000000: n2934 = n2556;
      14'b00010000000000: n2934 = n2394;
      14'b00001000000000: n2934 = n2297;
      14'b00000100000000: n2934 = n2260;
      14'b00000010000000: n2934 = n2136;
      14'b00000001000000: n2934 = n1992;
      14'b00000000100000: n2934 = 1'b0;
      14'b00000000010000: n2934 = 1'b0;
      14'b00000000001000: n2934 = 1'b0;
      14'b00000000000100: n2934 = 1'b0;
      14'b00000000000010: n2934 = n1726;
      14'b00000000000001: n2934 = n1635;
      default: n2934 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:235:5 */
  always @*
    case (n2889)
      14'b10000000000000: n2937 = n2870;
      14'b01000000000000: n2937 = n2669;
      14'b00100000000000: n2937 = n2558;
      14'b00010000000000: n2937 = n2397;
      14'b00001000000000: n2937 = 1'b0;
      14'b00000100000000: n2937 = n2262;
      14'b00000010000000: n2937 = 1'b0;
      14'b00000001000000: n2937 = n1994;
      14'b00000000100000: n2937 = 1'b0;
      14'b00000000010000: n2937 = 1'b0;
      14'b00000000001000: n2937 = 1'b0;
      14'b00000000000100: n2937 = 1'b0;
      14'b00000000000010: n2937 = n1729;
      14'b00000000000001: n2937 = 1'b0;
      default: n2937 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:235:5 */
  always @*
    case (n2889)
      14'b10000000000000: n2940 = 1'b0;
      14'b01000000000000: n2940 = 1'b0;
      14'b00100000000000: n2940 = n2559;
      14'b00010000000000: n2940 = n2400;
      14'b00001000000000: n2940 = 1'b0;
      14'b00000100000000: n2940 = 1'b0;
      14'b00000010000000: n2940 = 1'b0;
      14'b00000001000000: n2940 = n1995;
      14'b00000000100000: n2940 = n1879;
      14'b00000000010000: n2940 = 1'b0;
      14'b00000000001000: n2940 = 1'b0;
      14'b00000000000100: n2940 = 1'b0;
      14'b00000000000010: n2940 = n1732;
      14'b00000000000001: n2940 = 1'b0;
      default: n2940 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:235:5 */
  always @*
    case (n2889)
      14'b10000000000000: n2943 = n2871;
      14'b01000000000000: n2943 = n2672;
      14'b00100000000000: n2943 = 1'b0;
      14'b00010000000000: n2943 = n2403;
      14'b00001000000000: n2943 = 1'b0;
      14'b00000100000000: n2943 = n2263;
      14'b00000010000000: n2943 = n2137;
      14'b00000001000000: n2943 = 1'b0;
      14'b00000000100000: n2943 = 1'b0;
      14'b00000000010000: n2943 = 1'b0;
      14'b00000000001000: n2943 = 1'b0;
      14'b00000000000100: n2943 = 1'b0;
      14'b00000000000010: n2943 = n1735;
      14'b00000000000001: n2943 = 1'b0;
      default: n2943 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:235:5 */
  always @*
    case (n2889)
      14'b10000000000000: n2946 = n2872;
      14'b01000000000000: n2946 = n2675;
      14'b00100000000000: n2946 = 1'b0;
      14'b00010000000000: n2946 = n2406;
      14'b00001000000000: n2946 = 1'b0;
      14'b00000100000000: n2946 = n2264;
      14'b00000010000000: n2946 = n2138;
      14'b00000001000000: n2946 = 1'b0;
      14'b00000000100000: n2946 = 1'b0;
      14'b00000000010000: n2946 = 1'b0;
      14'b00000000001000: n2946 = 1'b0;
      14'b00000000000100: n2946 = 1'b0;
      14'b00000000000010: n2946 = n1738;
      14'b00000000000001: n2946 = 1'b0;
      default: n2946 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:235:5 */
  always @*
    case (n2889)
      14'b10000000000000: n2949 = n2874;
      14'b01000000000000: n2949 = n2678;
      14'b00100000000000: n2949 = n2561;
      14'b00010000000000: n2949 = n2409;
      14'b00001000000000: n2949 = 1'b0;
      14'b00000100000000: n2949 = n2266;
      14'b00000010000000: n2949 = n2140;
      14'b00000001000000: n2949 = n1997;
      14'b00000000100000: n2949 = n1881;
      14'b00000000010000: n2949 = 1'b0;
      14'b00000000001000: n2949 = 1'b0;
      14'b00000000000100: n2949 = 1'b0;
      14'b00000000000010: n2949 = n1741;
      14'b00000000000001: n2949 = n1637;
      default: n2949 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:235:5 */
  always @*
    case (n2889)
      14'b10000000000000: n2952 = n2875;
      14'b01000000000000: n2952 = n2681;
      14'b00100000000000: n2952 = n2562;
      14'b00010000000000: n2952 = n2412;
      14'b00001000000000: n2952 = 1'b0;
      14'b00000100000000: n2952 = n2267;
      14'b00000010000000: n2952 = n2142;
      14'b00000001000000: n2952 = n1998;
      14'b00000000100000: n2952 = n1883;
      14'b00000000010000: n2952 = 1'b0;
      14'b00000000001000: n2952 = 1'b0;
      14'b00000000000100: n2952 = 1'b0;
      14'b00000000000010: n2952 = n1744;
      14'b00000000000001: n2952 = n1639;
      default: n2952 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:235:5 */
  always @*
    case (n2889)
      14'b10000000000000: n2955 = n2877;
      14'b01000000000000: n2955 = n2684;
      14'b00100000000000: n2955 = n2564;
      14'b00010000000000: n2955 = n2415;
      14'b00001000000000: n2955 = 1'b0;
      14'b00000100000000: n2955 = n2269;
      14'b00000010000000: n2955 = 1'b0;
      14'b00000001000000: n2955 = n2000;
      14'b00000000100000: n2955 = 1'b0;
      14'b00000000010000: n2955 = 1'b0;
      14'b00000000001000: n2955 = 1'b0;
      14'b00000000000100: n2955 = 1'b0;
      14'b00000000000010: n2955 = n1747;
      14'b00000000000001: n2955 = 1'b0;
      default: n2955 = 1'b0;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:1098:12 */
  assign n2960 = ir[1:0]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:1100:16 */
  assign n2961 = ir[4:2]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:1105:18 */
  assign n2962 = ir[7:5]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:1106:13 */
  assign n2964 = n2962 == 3'b110;
  /*# upstream/rtl/t65/T65_MCode.vhd:1106:24 */
  assign n2966 = n2962 == 3'b111;
  /*# upstream/rtl/t65/T65_MCode.vhd:1106:24 */
  assign n2967 = n2964 | n2966;
  /*# upstream/rtl/t65/T65_MCode.vhd:1108:13 */
  assign n2969 = n2962 == 3'b101;
  /*# upstream/rtl/t65/T65_MCode.vhd:1110:13 */
  assign n2971 = n2962 == 3'b001;
  /*# upstream/rtl/t65/T65_MCode.vhd:1105:11 */
  assign n2972 = {n2971, n2969, n2967};
  /*# upstream/rtl/t65/T65_MCode.vhd:1105:11 */
  always @*
    case (n2972)
      3'b100: n2977 = 5'b01100;
      3'b010: n2977 = 5'b00101;
      3'b001: n2977 = 5'b00110;
      default: n2977 = 5'b00100;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:1104:9 */
  assign n2979 = n2961 == 3'b000;
  /*# upstream/rtl/t65/T65_MCode.vhd:1104:20 */
  assign n2981 = n2961 == 3'b001;
  /*# upstream/rtl/t65/T65_MCode.vhd:1104:20 */
  assign n2982 = n2979 | n2981;
  /*# upstream/rtl/t65/T65_MCode.vhd:1104:28 */
  assign n2984 = n2961 == 3'b011;
  /*# upstream/rtl/t65/T65_MCode.vhd:1104:28 */
  assign n2985 = n2982 | n2984;
  /*# upstream/rtl/t65/T65_MCode.vhd:1118:18 */
  assign n2986 = ir[7:5]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:1119:13 */
  assign n2988 = n2986 == 3'b111;
  /*# upstream/rtl/t65/T65_MCode.vhd:1119:24 */
  assign n2990 = n2986 == 3'b110;
  /*# upstream/rtl/t65/T65_MCode.vhd:1119:24 */
  assign n2991 = n2988 | n2990;
  /*# upstream/rtl/t65/T65_MCode.vhd:1121:13 */
  assign n2993 = n2986 == 3'b100;
  /*# upstream/rtl/t65/T65_MCode.vhd:1118:11 */
  assign n2994 = {n2993, n2991};
  /*# upstream/rtl/t65/T65_MCode.vhd:1118:11 */
  always @*
    case (n2994)
      2'b10: n2998 = 5'b01101;
      2'b01: n2998 = 5'b01110;
      default: n2998 = 5'b00101;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:1117:9 */
  assign n3000 = n2961 == 3'b010;
  /*# upstream/rtl/t65/T65_MCode.vhd:1129:18 */
  assign n3001 = ir[7:5]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:1130:13 */
  assign n3003 = n3001 == 3'b100;
  /*# upstream/rtl/t65/T65_MCode.vhd:1129:11 */
  always @*
    case (n3003)
      1'b1: n3006 = 5'b00101;
      default: n3006 = 5'b00100;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:1128:9 */
  assign n3008 = n2961 == 3'b110;
  /*# upstream/rtl/t65/T65_MCode.vhd:1140:18 */
  assign n3009 = ir[7:5]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:1141:13 */
  assign n3011 = n3009 == 3'b101;
  /*# upstream/rtl/t65/T65_MCode.vhd:1140:11 */
  always @*
    case (n3011)
      1'b1: n3014 = 5'b00101;
      default: n3014 = 5'b00100;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:1100:9 */
  assign n3015 = {n3008, n3000, n2985};
  /*# upstream/rtl/t65/T65_MCode.vhd:1100:9 */
  always @*
    case (n3015)
      3'b100: n3016 = n3006;
      3'b010: n3016 = n2998;
      3'b001: n3016 = n2977;
      default: n3016 = n3014;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:1099:7 */
  assign n3018 = n2960 == 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:1149:36 */
  assign n3019 = ir[7:5]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:1149:14 */
  assign n3020 = {28'b0, n3019};  // uext
  /*# upstream/rtl/t65/T65_MCode.vhd:1150:11 */
  assign n3022 = n3020 == 31'b0000000000000000000000000000000;
  /*# upstream/rtl/t65/T65_MCode.vhd:1152:11 */
  assign n3024 = n3020 == 31'b0000000000000000000000000000001;
  /*# upstream/rtl/t65/T65_MCode.vhd:1154:11 */
  assign n3026 = n3020 == 31'b0000000000000000000000000000010;
  /*# upstream/rtl/t65/T65_MCode.vhd:1156:11 */
  assign n3028 = n3020 == 31'b0000000000000000000000000000011;
  /*# upstream/rtl/t65/T65_MCode.vhd:1158:11 */
  assign n3030 = n3020 == 31'b0000000000000000000000000000100;
  /*# upstream/rtl/t65/T65_MCode.vhd:1160:11 */
  assign n3032 = n3020 == 31'b0000000000000000000000000000101;
  /*# upstream/rtl/t65/T65_MCode.vhd:1162:11 */
  assign n3034 = n3020 == 31'b0000000000000000000000000000110;
  /*# upstream/rtl/t65/T65_MCode.vhd:1149:9 */
  assign n3035 = {n3034, n3032, n3030, n3028, n3026, n3024, n3022};
  /*# upstream/rtl/t65/T65_MCode.vhd:1149:9 */
  always @*
    case (n3035)
      7'b1000000: n3044 = 5'b00110;
      7'b0100000: n3044 = 5'b00101;
      7'b0010000: n3044 = 5'b00100;
      7'b0001000: n3044 = 5'b00011;
      7'b0000100: n3044 = 5'b00010;
      7'b0000010: n3044 = 5'b00001;
      7'b0000001: n3044 = 5'b00000;
      default: n3044 = 5'b00111;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:1148:7 */
  assign n3046 = n2960 == 2'b01;
  /*# upstream/rtl/t65/T65_MCode.vhd:1169:36 */
  assign n3047 = ir[7:5]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:1169:14 */
  assign n3048 = {28'b0, n3047};  // uext
  /*# upstream/rtl/t65/T65_MCode.vhd:1172:18 */
  assign n3049 = ir[4:2]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:1172:31 */
  assign n3051 = n3049 == 3'b110;
  /*# upstream/rtl/t65/T65_MCode.vhd:1172:47 */
  assign n3053 = mode != 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:1172:39 */
  assign n3054 = n3053 & n3051;
  /*# upstream/rtl/t65/T65_MCode.vhd:1172:13 */
  assign n3057 = n3054 ? 5'b01110 : 5'b01000;
  /*# upstream/rtl/t65/T65_MCode.vhd:1170:11 */
  assign n3060 = n3048 == 31'b0000000000000000000000000000000;
  /*# upstream/rtl/t65/T65_MCode.vhd:1177:18 */
  assign n3061 = ir[4:2]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:1177:31 */
  assign n3063 = n3061 == 3'b110;
  /*# upstream/rtl/t65/T65_MCode.vhd:1177:47 */
  assign n3065 = mode != 2'b00;
  /*# upstream/rtl/t65/T65_MCode.vhd:1177:39 */
  assign n3066 = n3065 & n3063;
  /*# upstream/rtl/t65/T65_MCode.vhd:1177:13 */
  assign n3069 = n3066 ? 5'b01101 : 5'b01001;
  /*# upstream/rtl/t65/T65_MCode.vhd:1175:11 */
  assign n3072 = n3048 == 31'b0000000000000000000000000000001;
  /*# upstream/rtl/t65/T65_MCode.vhd:1180:11 */
  assign n3074 = n3048 == 31'b0000000000000000000000000000010;
  /*# upstream/rtl/t65/T65_MCode.vhd:1182:11 */
  assign n3076 = n3048 == 31'b0000000000000000000000000000011;
  /*# upstream/rtl/t65/T65_MCode.vhd:1186:18 */
  assign n3077 = ir[4:2]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:1186:31 */
  assign n3079 = n3077 == 3'b010;
  /*# upstream/rtl/t65/T65_MCode.vhd:1186:13 */
  assign n3082 = n3079 ? 5'b00101 : 5'b00100;
  /*# upstream/rtl/t65/T65_MCode.vhd:1184:11 */
  assign n3085 = n3048 == 31'b0000000000000000000000000000100;
  /*# upstream/rtl/t65/T65_MCode.vhd:1191:11 */
  assign n3087 = n3048 == 31'b0000000000000000000000000000101;
  /*# upstream/rtl/t65/T65_MCode.vhd:1193:11 */
  assign n3089 = n3048 == 31'b0000000000000000000000000000110;
  /*# upstream/rtl/t65/T65_MCode.vhd:1169:9 */
  assign n3090 = {n3089, n3087, n3085, n3076, n3074, n3072, n3060};
  /*# upstream/rtl/t65/T65_MCode.vhd:1169:9 */
  always @*
    case (n3090)
      7'b1000000: n3096 = 5'b01101;
      7'b0100000: n3096 = 5'b00101;
      7'b0010000: n3096 = n3082;
      7'b0001000: n3096 = 5'b01011;
      7'b0000100: n3096 = 5'b01010;
      7'b0000010: n3096 = n3069;
      7'b0000001: n3096 = n3057;
      default: n3096 = 5'b01110;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:1168:7 */
  assign n3098 = n2960 == 2'b10;
  /*# upstream/rtl/t65/T65_MCode.vhd:1200:36 */
  assign n3099 = ir[7:5]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:1200:14 */
  assign n3100 = {28'b0, n3099};  // uext
  /*# upstream/rtl/t65/T65_MCode.vhd:1203:18 */
  assign n3102 = ir == 8'b10111011;
  /*# upstream/rtl/t65/T65_MCode.vhd:1203:13 */
  assign n3105 = n3102 ? 5'b00001 : 5'b00101;
  /*# upstream/rtl/t65/T65_MCode.vhd:1202:11 */
  assign n3107 = n3100 == 31'b0000000000000000000000000000101;
  /*# upstream/rtl/t65/T65_MCode.vhd:1217:18 */
  assign n3109 = ir == 8'b01101011;
  /*# upstream/rtl/t65/T65_MCode.vhd:1219:21 */
  assign n3111 = ir == 8'b10001011;
  /*# upstream/rtl/t65/T65_MCode.vhd:1221:21 */
  assign n3113 = ir == 8'b00001011;
  /*# upstream/rtl/t65/T65_MCode.vhd:1221:33 */
  assign n3115 = ir == 8'b00101011;
  /*# upstream/rtl/t65/T65_MCode.vhd:1221:28 */
  assign n3116 = n3113 | n3115;
  /*# upstream/rtl/t65/T65_MCode.vhd:1223:21 */
  assign n3118 = ir == 8'b11101011;
  /*# upstream/rtl/t65/T65_MCode.vhd:1226:42 */
  assign n3119 = ir[7:5]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:1226:20 */
  assign n3120 = {28'b0, n3119};  // uext
  /*# upstream/rtl/t65/T65_MCode.vhd:1227:17 */
  assign n3122 = n3120 == 31'b0000000000000000000000000000000;
  /*# upstream/rtl/t65/T65_MCode.vhd:1229:17 */
  assign n3124 = n3120 == 31'b0000000000000000000000000000001;
  /*# upstream/rtl/t65/T65_MCode.vhd:1231:17 */
  assign n3126 = n3120 == 31'b0000000000000000000000000000010;
  /*# upstream/rtl/t65/T65_MCode.vhd:1233:17 */
  assign n3128 = n3120 == 31'b0000000000000000000000000000011;
  /*# upstream/rtl/t65/T65_MCode.vhd:1235:17 */
  assign n3130 = n3120 == 31'b0000000000000000000000000000100;
  /*# upstream/rtl/t65/T65_MCode.vhd:1237:17 */
  assign n3132 = n3120 == 31'b0000000000000000000000000000101;
  /*# upstream/rtl/t65/T65_MCode.vhd:1239:17 */
  assign n3134 = n3120 == 31'b0000000000000000000000000000110;
  /*# upstream/rtl/t65/T65_MCode.vhd:1226:15 */
  assign n3135 = {n3134, n3132, n3130, n3128, n3126, n3124, n3122};
  /*# upstream/rtl/t65/T65_MCode.vhd:1226:15 */
  always @*
    case (n3135)
      7'b1000000: n3144 = 5'b00110;
      7'b0100000: n3144 = 5'b00101;
      7'b0010000: n3144 = 5'b00100;
      7'b0001000: n3144 = 5'b00011;
      7'b0000100: n3144 = 5'b00010;
      7'b0000010: n3144 = 5'b00001;
      7'b0000001: n3144 = 5'b00000;
      default: n3144 = 5'b00111;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:1245:42 */
  assign n3145 = ir[7:5]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:1245:20 */
  assign n3146 = {28'b0, n3145};  // uext
  /*# upstream/rtl/t65/T65_MCode.vhd:1246:17 */
  assign n3148 = n3146 == 31'b0000000000000000000000000000000;
  /*# upstream/rtl/t65/T65_MCode.vhd:1248:17 */
  assign n3150 = n3146 == 31'b0000000000000000000000000000001;
  /*# upstream/rtl/t65/T65_MCode.vhd:1250:17 */
  assign n3152 = n3146 == 31'b0000000000000000000000000000010;
  /*# upstream/rtl/t65/T65_MCode.vhd:1252:17 */
  assign n3154 = n3146 == 31'b0000000000000000000000000000011;
  /*# upstream/rtl/t65/T65_MCode.vhd:1254:17 */
  assign n3156 = n3146 == 31'b0000000000000000000000000000100;
  /*# upstream/rtl/t65/T65_MCode.vhd:1256:17 */
  assign n3158 = n3146 == 31'b0000000000000000000000000000101;
  /*# upstream/rtl/t65/T65_MCode.vhd:1260:24 */
  assign n3159 = ir[4:2]; // extract
  /*# upstream/rtl/t65/T65_MCode.vhd:1260:36 */
  assign n3161 = n3159 == 3'b010;
  /*# upstream/rtl/t65/T65_MCode.vhd:1260:19 */
  assign n3164 = n3161 ? 5'b10001 : 5'b01101;
  /*# upstream/rtl/t65/T65_MCode.vhd:1258:17 */
  assign n3167 = n3146 == 31'b0000000000000000000000000000110;
  /*# upstream/rtl/t65/T65_MCode.vhd:1245:15 */
  assign n3168 = {n3167, n3158, n3156, n3154, n3152, n3150, n3148};
  /*# upstream/rtl/t65/T65_MCode.vhd:1245:15 */
  always @*
    case (n3168)
      7'b1000000: n3176 = n3164;
      7'b0100000: n3176 = 5'b00101;
      7'b0010000: n3176 = 5'b01100;
      7'b0001000: n3176 = 5'b01011;
      7'b0000100: n3176 = 5'b01010;
      7'b0000010: n3176 = 5'b01001;
      7'b0000001: n3176 = 5'b01000;
      default: n3176 = 5'b01110;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:1225:13 */
  assign n3177 = alumore ? n3144 : n3176;
  /*# upstream/rtl/t65/T65_MCode.vhd:1223:13 */
  assign n3179 = n3118 ? 5'b00111 : n3177;
  /*# upstream/rtl/t65/T65_MCode.vhd:1221:13 */
  assign n3181 = n3116 ? 5'b10000 : n3179;
  /*# upstream/rtl/t65/T65_MCode.vhd:1219:13 */
  assign n3183 = n3111 ? 5'b10010 : n3181;
  /*# upstream/rtl/t65/T65_MCode.vhd:1217:13 */
  assign n3185 = n3109 ? 5'b01111 : n3183;
  /*# upstream/rtl/t65/T65_MCode.vhd:1200:9 */
  always @*
    case (n3107)
      1'b1: n3186 = n3105;
      default: n3186 = n3185;
    endcase
  /*# upstream/rtl/t65/T65_MCode.vhd:1098:5 */
  assign n3187 = {n3098, n3046, n3018};
  /*# upstream/rtl/t65/T65_MCode.vhd:1098:5 */
  always @*
    case (n3187)
      3'b100: n3188 = n3096;
      3'b010: n3188 = n3044;
      3'b001: n3188 = n3016;
      default: n3188 = n3186;
    endcase
endmodule

module ereg_t65_Ba_2_cf0b42666ef5e37edea0ab8e173e42c196d03814
  (input  clk,
   input  [63:0] bus_din,
   input  [9:0] bus_adr,
   input  bus_wren,
   input  bus_rst,
   output [63:0] bus_dout,
   input  [63:0] din,
   output [63:0] dout);
  localparam [63:0] n962 = 64'b0000000000000000000000000000000000000000000000000000000000000000;
  localparam [63:0] n963 = 64'b0000000000000000000000000000000000000000000000000000000000000000;
  assign bus_dout = n962; //(module output)
  assign dout = n963; //(module output)
endmodule

module ereg_t65_Ba_1_7876e57a072db7a67dd670b2ded8b40f739ebe8e
  (input  clk,
   input  [63:0] bus_din,
   input  [9:0] bus_adr,
   input  bus_wren,
   input  bus_rst,
   output [63:0] bus_dout,
   input  [63:0] din,
   output [63:0] dout);
  localparam [63:0] n958 = 64'b0000000000000000000000000000000000000000000000000000000000000000;
  localparam [63:0] n959 = 64'b0000000000000000000000010010000000000000000000000000000000000001;
  assign bus_dout = n958; //(module output)
  assign dout = n959; //(module output)
endmodule

module ereg_t65_Ba_0_3b2d7860d419a2b3f606def2876bd0546a4c34f6
  (input  clk,
   input  [63:0] bus_din,
   input  [9:0] bus_adr,
   input  bus_wren,
   input  bus_rst,
   output [63:0] bus_dout,
   input  [63:0] din,
   output [63:0] dout);
  localparam [63:0] n954 = 64'b0000000000000000000000000000000000000000000000000000000000000000;
  localparam [63:0] n955 = 64'b1110000001100100000000000000000000000000000000000000000000000000;
  assign bus_dout = n954; //(module output)
  assign dout = n955; //(module output)
endmodule

module T65_core
  (input  [1:0] Mode,
   input  BCD_en,
   input  Res_n,
   input  Pwr_n,
   input  Enable,
   input  Clk,
   input  Rdy,
   input  Abort_n,
   input  IRQ_n,
   input  NMI_n,
   input  SO_n,
   output R_W_n,
   output Sync,
   output EF,
   output MF,
   output XF,
   output ML_n,
   output VP_n,
   output VDA,
   output VPA,
   output [23:0] A,
   input  [7:0] DI,
   output [7:0] DO,
   output [63:0] Regs,
   output [7:0] \DEBUG[I] ,
   output [7:0] \DEBUG[A] ,
   output [7:0] \DEBUG[X] ,
   output [7:0] \DEBUG[Y] ,
   output [7:0] \DEBUG[S] ,
   output [7:0] \DEBUG[P] ,
   output NMI_ack,
   output Instrnew,
   input  [63:0] SaveStateBus_Din,
   input  [9:0] SaveStateBus_Adr,
   input  SaveStateBus_wren,
   input  SaveStateBus_rst,
   input  SaveStateBus_load,
   output [63:0] SaveStateBus_Dout);
  wire [7:0] n13;
  wire [7:0] n14;
  wire [7:0] n15;
  wire [7:0] n16;
  wire [7:0] n17;
  wire [7:0] n18;
  wire [15:0] abc;
  wire [15:0] x;
  wire [15:0] y;
  reg [7:0] p;
  reg [7:0] ad;
  reg [7:0] dl;
  wire [7:0] pwithb;
  wire [7:0] bah;
  wire [8:0] bal;
  wire [7:0] pbr;
  wire [7:0] dbr;
  wire [15:0] pc;
  wire [15:0] s;
  wire ef_i;
  wire mf_i;
  wire xf_i;
  wire [7:0] ir;
  wire [2:0] mcycle;
  wire [7:0] do_r;
  wire [1:0] mode_r;
  wire bcd_en_r;
  wire [4:0] alu_op_r;
  wire [3:0] write_data_r;
  wire [1:0] set_addr_to_r;
  wire [8:0] pcadder;
  wire rstcycle;
  wire irqcycle;
  wire nmicycle;
  wire so_n_o;
  wire irq_n_o;
  wire nmi_n_o;
  wire nmiact;
  wire break_s;
  wire [7:0] busa;
  wire [7:0] busa_r;
  wire [7:0] busb;
  wire [7:0] busb_r;
  wire [7:0] alu_q;
  wire [7:0] p_out;
  wire [2:0] lcycle;
  wire [4:0] alu_op;
  wire [3:0] set_busa_to;
  wire [1:0] set_addr_to;
  wire [3:0] write_data;
  wire [1:0] jump;
  wire [1:0] baadd;
  wire [1:0] baquirk;
  wire breakatna;
  wire adadd;
  wire addy;
  wire pcadd;
  wire inc_s;
  wire dec_s;
  wire lda;
  wire ldp;
  wire ldx;
  wire ldy;
  wire lds;
  wire lddi;
  wire ldalu;
  wire ldad;
  wire ldbal;
  wire ldbah;
  wire savep;
  wire write;
  wire res_n_i;
  wire res_n_d;
  wire rdy_mod;
  wire really_rdy;
  wire wrn_i;
  wire nmi_entered;
  wire [63:0] reg_wired_or_0;
  wire [63:0] reg_wired_or_1;
  wire [63:0] reg_wired_or_2;
  wire [63:0] ss_1;
  wire [63:0] ss_1_back;
  wire [63:0] ss_2;
  wire [63:0] ss_2_back;
  wire [63:0] ss_3;
  wire [63:0] ss_3_back;
  wire [63:0] n31;
  wire [63:0] n32;
  wire n33;
  wire n34;
  wire n37;
  wire n38;
  wire [1:0] n41;
  wire n43;
  wire [1:0] n44;
  wire n46;
  wire n47;
  wire [1:0] n48;
  wire n50;
  wire n51;
  wire n52;
  wire n56;
  wire n58;
  wire n59;
  wire n60;
  wire n61;
  wire n65;
  wire n66;
  wire n69;
  wire n70;
  wire n71;
  wire [7:0] n73;
  wire [7:0] n74;
  wire [7:0] n75;
  wire [7:0] n76;
  wire [31:0] n77;
  wire [39:0] n78;
  wire [7:0] n79;
  wire [47:0] n80;
  wire [7:0] n81;
  wire [55:0] n82;
  wire [7:0] n83;
  wire [63:0] n84;
  wire n115;
  wire [7:0] n126;
  wire [3:0] n129;
  wire n137;
  wire n138;
  wire [15:0] n139;
  wire [7:0] n140;
  wire [7:0] n141;
  wire [7:0] n142;
  wire [1:0] n143;
  wire n144;
  wire [3:0] n145;
  wire [4:0] n147;
  wire [3:0] n148;
  wire [1:0] n150;
  wire n152;
  wire n153;
  wire n154;
  wire n155;
  wire [7:0] n157;
  wire n158;
  wire n160;
  wire n162;
  wire n164;
  wire n165;
  wire n167;
  wire n169;
  wire n170;
  wire n171;
  wire n172;
  wire n173;
  wire n175;
  wire n177;
  wire n178;
  wire n179;
  wire n181;
  wire n182;
  wire n183;
  wire n184;
  wire [15:0] n186;
  wire [15:0] n187;
  wire n188;
  wire [7:0] n190;
  wire [7:0] n191;
  wire [7:0] n192;
  wire n193;
  wire n195;
  wire [7:0] n196;
  wire [1:0] n197;
  wire n198;
  wire [1:0] n200;
  wire [15:0] n202;
  wire [7:0] n203;
  wire [15:0] n204;
  wire [15:0] n205;
  wire n206;
  wire n208;
  wire n209;
  wire n210;
  wire [15:0] n212;
  wire [15:0] n213;
  wire n215;
  wire n217;
  wire n218;
  wire n219;
  wire n220;
  wire n221;
  wire n222;
  wire [15:0] n224;
  wire [15:0] n225;
  wire [15:0] n227;
  wire n229;
  wire [15:0] n230;
  wire n232;
  wire n233;
  wire n234;
  wire n235;
  wire [7:0] n236;
  wire [7:0] n238;
  wire [7:0] n239;
  wire [7:0] n241;
  wire [7:0] n242;
  wire [7:0] n243;
  wire [7:0] n244;
  wire [7:0] n245;
  wire n247;
  wire [2:0] n248;
  wire [7:0] n249;
  wire [7:0] n250;
  wire [7:0] n251;
  reg [7:0] n252;
  wire [7:0] n253;
  wire [7:0] n254;
  wire [7:0] n255;
  reg [7:0] n256;
  wire [7:0] n259;
  wire [7:0] n261;
  wire [15:0] n262;
  wire [15:0] n263;
  wire [15:0] n264;
  wire n266;
  wire n268;
  wire n270;
  wire n271;
  wire n272;
  wire n273;
  wire [4:0] n274;
  wire [3:0] n275;
  wire [1:0] n276;
  wire n277;
  wire n278;
  wire n279;
  wire n280;
  wire n281;
  wire n282;
  wire n283;
  wire n284;
  wire n285;
  wire n286;
  wire n287;
  wire n288;
  wire n289;
  wire n290;
  wire n291;
  wire n292;
  wire [7:0] n293;
  wire [7:0] n294;
  wire [15:0] n295;
  wire [15:0] n296;
  wire [15:0] n297;
  wire n298;
  wire n299;
  wire n300;
  wire [7:0] n301;
  wire [1:0] n302;
  wire n303;
  wire [4:0] n304;
  wire [3:0] n305;
  wire [1:0] n306;
  wire n307;
  wire n308;
  wire [7:0] n309;
  wire [7:0] n310;
  wire [15:0] n311;
  wire [15:0] n312;
  wire n313;
  wire n314;
  wire n315;
  wire [7:0] n316;
  wire [1:0] n317;
  wire n318;
  wire [4:0] n319;
  wire [3:0] n320;
  wire [1:0] n321;
  wire n322;
  wire n323;
  wire [7:0] n324;
  wire [7:0] n325;
  wire [15:0] n326;
  wire [15:0] n328;
  wire n329;
  wire n330;
  wire n331;
  wire [7:0] n332;
  wire [1:0] n333;
  wire n334;
  wire [4:0] n335;
  wire [3:0] n336;
  wire [1:0] n337;
  wire n338;
  wire n339;
  wire [7:0] n356;
  wire [8:0] n357;
  wire n358;
  wire [8:0] n359;
  wire [8:0] n360;
  wire [8:0] n361;
  wire [7:0] n362;
  wire [8:0] n364;
  wire [7:0] n365;
  wire [7:0] n366;
  wire [7:0] n367;
  wire n372;
  wire [7:0] n373;
  wire [7:0] n374;
  wire [7:0] n375;
  wire [7:0] n376;
  wire n377;
  wire n378;
  wire n381;
  wire [7:0] n382;
  wire [7:0] n383;
  wire [7:0] n384;
  wire [7:0] n385;
  wire [7:0] n386;
  wire [7:0] n387;
  wire n388;
  wire n389;
  wire [7:0] n390;
  wire n392;
  wire n394;
  wire n396;
  wire n397;
  wire [7:0] n398;
  wire [7:0] n399;
  wire [4:0] n400;
  wire n402;
  wire [2:0] n403;
  wire n406;
  wire n409;
  wire n412;
  wire n415;
  wire n418;
  wire n421;
  wire n424;
  wire [6:0] n425;
  wire n426;
  reg n427;
  wire n428;
  reg n429;
  wire n430;
  reg n431;
  wire n432;
  reg n433;
  wire [1:0] n434;
  wire n435;
  wire n436;
  wire [1:0] n437;
  wire [1:0] n438;
  wire n439;
  wire n440;
  wire n443;
  wire n444;
  wire n449;
  wire n451;
  wire n452;
  wire n453;
  wire n454;
  wire n456;
  wire n457;
  wire n458;
  wire n461;
  wire n463;
  wire [1:0] n464;
  wire [1:0] n465;
  wire [1:0] n466;
  wire [7:0] n468;
  wire n470;
  wire n472;
  wire n474;
  wire [7:0] n475;
  wire [4:0] n478;
  wire n480;
  wire n482;
  wire n483;
  wire n484;
  wire n485;
  wire n486;
  wire [4:0] n487;
  wire n489;
  wire n491;
  wire n492;
  wire n493;
  wire n495;
  wire n497;
  wire n499;
  wire n500;
  wire n501;
  wire n502;
  wire [7:0] n504;
  wire [7:0] n505;
  wire [7:0] n506;
  wire [7:0] n507;
  wire n509;
  wire n510;
  wire [7:0] n513;
  wire [7:0] n515;
  wire [7:0] n516;
  wire [7:0] n518;
  wire [7:0] n520;
  wire [7:0] n521;
  wire [7:0] n523;
  wire [7:0] n525;
  wire [7:0] n526;
  wire [7:0] n528;
  wire n530;
  wire n531;
  wire n533;
  wire n534;
  wire n536;
  wire n537;
  wire n538;
  wire [5:0] n539;
  wire [15:0] n540;
  wire [15:0] n542;
  wire [15:0] n544;
  wire [7:0] n546;
  wire n557;
  wire [7:0] n558;
  wire [7:0] n559;
  wire [7:0] n560;
  wire [7:0] n561;
  wire [8:0] n562;
  wire [7:0] n563;
  wire [7:0] n564;
  wire n565;
  wire n567;
  wire n569;
  wire n570;
  wire [7:0] n572;
  wire [7:0] n573;
  wire [7:0] n575;
  wire [8:0] n577;
  wire n579;
  wire [7:0] n580;
  wire [8:0] n581;
  wire [8:0] n582;
  wire [8:0] n583;
  wire n585;
  wire n586;
  wire [7:0] n588;
  wire n590;
  wire [7:0] n592;
  wire [7:0] n593;
  wire n595;
  wire n597;
  wire [2:0] n598;
  reg [7:0] n599;
  wire [7:0] n600;
  wire n602;
  wire [2:0] n603;
  reg [7:0] n604;
  reg [7:0] n605;
  reg [8:0] n606;
  wire [7:0] n607;
  wire [7:0] n608;
  wire [7:0] n609;
  wire [7:0] n610;
  wire [7:0] n611;
  wire [7:0] n612;
  wire n614;
  wire n617;
  wire n618;
  wire n619;
  wire n620;
  wire n623;
  wire n626;
  wire [2:0] n628;
  wire n630;
  wire [2:0] n631;
  localparam [8:0] n632 = 9'b111111111;
  wire [5:0] n633;
  wire n635;
  wire n637;
  wire n639;
  wire n640;
  wire [1:0] n641;
  wire [7:0] n643;
  wire [8:0] n644;
  wire [8:0] n645;
  wire n647;
  wire [7:0] n649;
  wire [7:0] n650;
  wire [7:0] n651;
  wire [7:0] n652;
  wire [7:0] n653;
  wire n654;
  wire [7:0] n655;
  wire [7:0] n656;
  wire [7:0] n657;
  wire [7:0] n658;
  wire [8:0] n659;
  wire [8:0] n660;
  wire [7:0] n661;
  wire [7:0] n662;
  wire n663;
  wire n664;
  wire n665;
  wire n666;
  wire n667;
  wire n668;
  wire n669;
  wire n670;
  wire n671;
  wire n672;
  wire [7:0] n673;
  wire [7:0] n674;
  wire [7:0] n675;
  wire [8:0] n676;
  wire [7:0] n677;
  wire [7:0] n678;
  wire [7:0] n679;
  wire n680;
  wire [7:0] n681;
  wire [7:0] n682;
  wire [7:0] n683;
  wire [8:0] n684;
  wire [7:0] n685;
  wire [7:0] n686;
  wire [7:0] n687;
  wire n688;
  wire n698;
  wire n699;
  wire n700;
  wire n701;
  wire n702;
  wire n703;
  wire n704;
  wire n706;
  wire [7:0] n707;
  wire n709;
  wire [7:0] n710;
  wire n712;
  wire [7:0] n713;
  wire n715;
  wire [7:0] n716;
  wire n718;
  wire n720;
  wire [7:0] n721;
  wire [7:0] n722;
  wire n724;
  wire [7:0] n725;
  wire [7:0] n727;
  wire [7:0] n728;
  wire n730;
  wire [7:0] n731;
  wire [7:0] n733;
  wire [7:0] n734;
  wire [7:0] n735;
  wire [7:0] n736;
  wire n738;
  wire [7:0] n739;
  wire [7:0] n740;
  wire [7:0] n741;
  wire n743;
  wire n746;
  wire [10:0] n747;
  reg [7:0] n749;
  wire [7:0] n750;
  wire [23:0] n752;
  wire n754;
  wire [15:0] n756;
  wire [23:0] n757;
  wire n759;
  wire [15:0] n761;
  wire [7:0] n762;
  wire [23:0] n763;
  wire n765;
  wire [7:0] n766;
  wire [15:0] n767;
  wire [7:0] n768;
  wire [23:0] n769;
  wire n771;
  wire [3:0] n772;
  reg [23:0] n774;
  wire [7:0] n776;
  wire n777;
  wire [7:0] n778;
  wire n780;
  wire [7:0] n781;
  wire n783;
  wire [7:0] n784;
  wire n786;
  wire [7:0] n787;
  wire n789;
  wire [7:0] n790;
  wire n792;
  wire n794;
  wire [7:0] n795;
  wire n797;
  wire [7:0] n798;
  wire n800;
  wire [7:0] n801;
  wire [7:0] n802;
  wire [7:0] n803;
  wire n805;
  wire [7:0] n806;
  wire [7:0] n807;
  wire [7:0] n808;
  wire [7:0] n809;
  wire n811;
  wire [7:0] n812;
  wire [7:0] n813;
  wire n815;
  wire [7:0] n816;
  wire [7:0] n817;
  wire n819;
  wire n822;
  wire [12:0] n823;
  reg [7:0] n825;
  wire n828;
  wire n829;
  wire n830;
  wire n831;
  wire n836;
  wire [2:0] n837;
  wire n838;
  wire n839;
  wire n840;
  wire n841;
  wire n842;
  wire n843;
  wire n845;
  wire n846;
  wire n847;
  wire n848;
  wire n849;
  wire n850;
  wire n853;
  wire n855;
  wire n859;
  wire n862;
  wire n864;
  wire [2:0] n866;
  wire [2:0] n867;
  wire [2:0] n869;
  wire n871;
  wire n872;
  wire n873;
  wire n874;
  wire [2:0] n875;
  wire n876;
  wire n877;
  wire n878;
  wire n879;
  wire n880;
  wire [4:0] n881;
  wire n883;
  wire n885;
  wire n886;
  wire n887;
  wire n888;
  wire n890;
  wire n892;
  wire n893;
  wire n894;
  wire n895;
  wire n896;
  wire n897;
  wire [2:0] n898;
  wire n899;
  wire n900;
  wire n901;
  wire n902;
  wire [63:0] n909;
  wire [63:0] n910;
  wire [63:0] n911;
  wire [47:0] n912;
  reg [15:0] n913;
  reg [15:0] n914;
  reg [15:0] n915;
  reg [7:0] n916;
  reg [7:0] n917;
  reg [7:0] n918;
  reg [7:0] n919;
  reg [8:0] n920;
  reg [7:0] n921;
  reg [7:0] n922;
  reg [15:0] n923;
  reg [15:0] n924;
  reg n925;
  reg n926;
  reg n927;
  reg [7:0] n928;
  reg [2:0] n929;
  reg [1:0] n930;
  reg n931;
  reg [4:0] n932;
  reg [3:0] n933;
  reg [1:0] n934;
  reg n935;
  reg n936;
  reg n937;
  reg n938;
  reg n939;
  reg n940;
  reg n941;
  reg [7:0] n942;
  reg [7:0] n943;
  reg [7:0] n944;
  wire n945;
  reg n946;
  wire n947;
  reg n948;
  reg n949;
  reg n950;
  reg n951;
  assign R_W_n = wrn_i; //(module output)
  assign Sync = n38; //(module output)
  assign EF = ef_i; //(module output)
  assign MF = mf_i; //(module output)
  assign XF = xf_i; //(module output)
  assign ML_n = n52; //(module output)
  assign VP_n = n61; //(module output)
  assign VDA = n66; //(module output)
  assign VPA = n71; //(module output)
  assign A = n774; //(module output)
  assign DO = do_r; //(module output)
  assign Regs = n84; //(module output)
  assign \DEBUG[I]  = n13; //(module output)
  assign \DEBUG[A]  = n14; //(module output)
  assign \DEBUG[X]  = n15; //(module output)
  assign \DEBUG[Y]  = n16; //(module output)
  assign \DEBUG[S]  = n17; //(module output)
  assign \DEBUG[P]  = n18; //(module output)
  assign NMI_ack = nmiact; //(module output)
  assign Instrnew = n831; //(module output)
  assign SaveStateBus_Dout = n32; //(module output)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:136:8 */
  assign n13 = n912[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:136:8 */
  assign n14 = n912[15:8]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:136:8 */
  assign n15 = n912[23:16]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:136:8 */
  assign n16 = n912[31:24]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:136:8 */
  assign n17 = n912[39:32]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:136:8 */
  assign n18 = n912[47:40]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:180:10 */
  assign abc = n913; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:180:15 */
  assign x = n914; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:180:18 */
  assign y = n915; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:181:10 */
  always @*
    p = n916; // (isignal)
  initial
    p = 8'b00000000;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:181:13 */
  always @*
    ad = n917; // (isignal)
  initial
    ad = 8'b00000000;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:181:17 */
  always @*
    dl = n918; // (isignal)
  initial
    dl = 8'b00000000;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:182:10 */
  assign pwithb = n778; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:183:10 */
  assign bah = n919; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:184:10 */
  assign bal = n920; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:185:10 */
  assign pbr = n921; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:186:10 */
  assign dbr = n922; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:187:10 */
  assign pc = n923; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:188:10 */
  assign s = n924; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:189:10 */
  assign ef_i = n925; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:190:10 */
  assign mf_i = n926; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:191:10 */
  assign xf_i = n927; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:193:10 */
  assign ir = n928; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:194:10 */
  assign mcycle = n929; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:196:10 */
  assign do_r = n825; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:198:10 */
  assign mode_r = n930; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:199:10 */
  assign bcd_en_r = n931; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:200:10 */
  assign alu_op_r = n932; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:201:10 */
  assign write_data_r = n933; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:202:10 */
  assign set_addr_to_r = n934; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:203:10 */
  assign pcadder = n361; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:205:10 */
  assign rstcycle = n935; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:206:10 */
  assign irqcycle = n936; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:207:10 */
  assign nmicycle = n937; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:209:10 */
  assign so_n_o = n938; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:210:10 */
  assign irq_n_o = n939; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:211:10 */
  assign nmi_n_o = n940; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:212:10 */
  assign nmiact = n941; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:214:10 */
  assign break_s = n704; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:217:10 */
  assign busa = n749; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:218:10 */
  assign busa_r = n942; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:219:10 */
  assign busb = n943; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:220:10 */
  assign busb_r = n944; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:252:10 */
  assign res_n_i = n946; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:253:10 */
  assign res_n_d = n948; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:255:10 */
  assign rdy_mod = n949; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:256:10 */
  assign really_rdy = n34; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:257:10 */
  assign wrn_i = n950; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:259:10 */
  assign nmi_entered = n951; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:267:16 */
  assign ss_1_back = n909; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:269:16 */
  assign ss_2_back = n910; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:271:16 */
  assign ss_3_back = n911; // (signal)
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:275:3 */
  ereg_t65_Ba_0_3b2d7860d419a2b3f606def2876bd0546a4c34f6 ireg_savestate_t80_1 (
    .clk(Clk),
    .bus_din(SaveStateBus_Din),
    .bus_adr(SaveStateBus_Adr),
    .bus_wren(SaveStateBus_wren),
    .bus_rst(SaveStateBus_rst),
    .din(ss_1_back),
    .bus_dout(reg_wired_or_0),
    .dout(ss_1));
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:276:3 */
  ereg_t65_Ba_1_7876e57a072db7a67dd670b2ded8b40f739ebe8e ireg_savestate_t80_2 (
    .clk(Clk),
    .bus_din(SaveStateBus_Din),
    .bus_adr(SaveStateBus_Adr),
    .bus_wren(SaveStateBus_wren),
    .bus_rst(SaveStateBus_rst),
    .din(ss_2_back),
    .bus_dout(reg_wired_or_1),
    .dout(ss_2));
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:277:3 */
  ereg_t65_Ba_2_cf0b42666ef5e37edea0ab8e173e42c196d03814 ireg_savestate_t80_3 (
    .clk(Clk),
    .bus_din(SaveStateBus_Din),
    .bus_adr(SaveStateBus_Adr),
    .bus_wren(SaveStateBus_wren),
    .bus_rst(SaveStateBus_rst),
    .din(ss_3_back),
    .bus_dout(reg_wired_or_2),
    .dout(ss_3));
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:278:39 */
  assign n31 = reg_wired_or_0 | reg_wired_or_1;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:278:57 */
  assign n32 = n31 | reg_wired_or_2;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:284:24 */
  assign n33 = ~wrn_i;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:284:21 */
  assign n34 = Rdy | n33;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:285:27 */
  assign n37 = mcycle == 3'b000;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:285:15 */
  assign n38 = n37 ? 1'b1 : 1'b0;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:290:22 */
  assign n41 = ir[7:6]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:290:35 */
  assign n43 = n41 != 2'b10;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:290:49 */
  assign n44 = ir[2:1]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:290:62 */
  assign n46 = n44 == 2'b11;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:290:43 */
  assign n47 = n46 & n43;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:290:79 */
  assign n48 = mcycle[2:1]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:290:92 */
  assign n50 = n48 != 2'b00;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:290:69 */
  assign n51 = n50 & n47;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:290:15 */
  assign n52 = n51 ? 1'b0 : 1'b1;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:291:47 */
  assign n56 = mcycle == 3'b101;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:291:65 */
  assign n58 = mcycle == 3'b110;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:291:55 */
  assign n59 = n56 | n58;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:291:35 */
  assign n60 = n59 & irqcycle;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:291:15 */
  assign n61 = n60 ? 1'b0 : 1'b1;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:292:33 */
  assign n65 = set_addr_to_r != 2'b00;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:292:14 */
  assign n66 = n65 ? 1'b1 : 1'b0;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:293:23 */
  assign n69 = jump[1]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:293:27 */
  assign n70 = ~n69;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:293:14 */
  assign n71 = n70 ? 1'b1 : 1'b0;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:297:17 */
  assign n73 = abc[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:298:15 */
  assign n74 = x[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:299:15 */
  assign n75 = y[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:300:32 */
  assign n76 = s[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:303:32 */
  assign n77 = {pc, s};
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:303:53 */
  assign n78 = {n77, p};
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:303:60 */
  assign n79 = y[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:303:57 */
  assign n80 = {n78, n79};
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:303:76 */
  assign n81 = x[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:303:73 */
  assign n82 = {n80, n81};
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:303:94 */
  assign n83 = abc[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:303:89 */
  assign n84 = {n82, n83};
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:305:3 */
  t65_mcode_Brtl mcode (
    .mode(mode_r),
    .bcd_en(bcd_en_r),
    .ir(ir),
    .mcycle(mcycle),
    .p(p),
    .rdy_mod(rdy_mod),
    .lcycle(lcycle),
    .alu_op(alu_op),
    .set_busa_to(set_busa_to),
    .set_addr_to(set_addr_to),
    .write_data(write_data),
    .jump(jump),
    .baadd(baadd),
    .baquirk(baquirk),
    .breakatna(breakatna),
    .adadd(adadd),
    .addy(addy),
    .pcadd(pcadd),
    .inc_s(inc_s),
    .dec_s(dec_s),
    .lda(lda),
    .ldp(ldp),
    .ldx(ldx),
    .ldy(ldy),
    .lds(lds),
    .lddi(lddi),
    .ldalu(ldalu),
    .ldad(ldad),
    .ldbal(ldbal),
    .ldbah(ldbah),
    .savep(savep),
    .write(write));
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:343:3 */
  t65_alu_Brtl alu (
    .mode(mode_r),
    .bcd_en(bcd_en_r),
    .op(alu_op_r),
    .busa(busa_r),
    .busb(busb),
    .p_in(p),
    .p_out(p_out),
    .q(alu_q));
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:359:14 */
  assign n115 = ~Res_n;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:371:48 */
  assign n126 = s[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:376:47 */
  assign n129 = alu_op_r[3:0];  // trunc
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:388:16 */
  assign n137 = ~Pwr_n;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:390:21 */
  assign n138 = ~res_n_i;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:391:40 */
  assign n139 = ss_1[15:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:392:31 */
  assign n140 = ss_1[23:16]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:393:31 */
  assign n141 = ss_1[39:32]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:394:31 */
  assign n142 = ss_1[47:40]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:395:31 */
  assign n143 = ss_1[49:48]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:396:31 */
  assign n144 = ss_1[50]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:397:64 */
  assign n145 = ss_1[54:51]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:397:36 */
  assign n147 = {1'b0, n145};  // uext
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:398:68 */
  assign n148 = ss_1[58:55]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:399:69 */
  assign n150 = ss_1[60:59]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:400:31 */
  assign n152 = ss_1[61]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:401:31 */
  assign n153 = ss_1[62]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:402:31 */
  assign n154 = ss_1[63]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:403:31 */
  assign n155 = ss_2[0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:407:40 */
  assign n157 = ss_1[31:24]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:408:24 */
  assign n158 = ss_2[1]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:412:20 */
  assign n160 = mcycle == 3'b000;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:414:24 */
  assign n162 = mcycle == 3'b011;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:414:39 */
  assign n164 = ir != 8'b10010011;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:414:32 */
  assign n165 = n164 & n162;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:414:60 */
  assign n167 = mcycle == 3'b100;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:414:75 */
  assign n169 = ir == 8'b10010011;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:414:68 */
  assign n170 = n169 & n167;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:414:49 */
  assign n171 = n165 | n170;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:414:93 */
  assign n172 = ~Rdy;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:414:85 */
  assign n173 = n172 & n171;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:414:9 */
  assign n175 = n173 ? 1'b1 : rdy_mod;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:412:9 */
  assign n177 = n160 ? 1'b0 : n175;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:419:20 */
  assign n178 = ~write;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:419:30 */
  assign n179 = n178 | rstcycle;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:427:22 */
  assign n181 = mcycle == 3'b000;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:431:25 */
  assign n182 = ~irqcycle;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:431:44 */
  assign n183 = ~nmicycle;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:431:31 */
  assign n184 = n183 & n182;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:432:24 */
  assign n186 = pc + 16'b0000000000000001;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:427:11 */
  assign n187 = n193 ? n186 : pc;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:435:31 */
  assign n188 = irqcycle | nmicycle;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:435:13 */
  assign n190 = n188 ? 8'b00000000 : DI;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:188:10 */
  assign n191 = s[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:427:11 */
  assign n192 = n195 ? alu_q : n191;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:427:11 */
  assign n193 = n184 & n181;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:427:11 */
  assign n195 = lds & n181;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:410:7 */
  assign n196 = n285 ? n190 : ir;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:410:7 */
  assign n197 = n286 ? Mode : mode_r;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:410:7 */
  assign n198 = n287 ? BCD_en : bcd_en_r;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:448:11 */
  assign n200 = break_s ? 2'b00 : set_addr_to;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:455:20 */
  assign n202 = s + 16'b0000000000000001;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:188:10 */
  assign n203 = s[15:8]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:188:10 */
  assign n204 = {n203, n192};
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:454:11 */
  assign n205 = inc_s ? n202 : n204;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:457:40 */
  assign n206 = ~rstcycle;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:457:53 */
  assign n208 = Mode == 2'b00;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:457:46 */
  assign n209 = n206 | n208;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:457:26 */
  assign n210 = n209 & dec_s;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:458:20 */
  assign n212 = s - 16'b0000000000000001;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:457:11 */
  assign n213 = n210 ? n212 : n205;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:461:17 */
  assign n215 = ir == 8'b00000000;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:461:41 */
  assign n217 = mcycle == 3'b001;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:461:30 */
  assign n218 = n217 & n215;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:461:62 */
  assign n219 = ~irqcycle;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:461:49 */
  assign n220 = n219 & n218;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:461:81 */
  assign n221 = ~nmicycle;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:461:68 */
  assign n222 = n221 & n220;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:462:22 */
  assign n224 = pc + 16'b0000000000000001;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:461:11 */
  assign n225 = n222 ? n224 : n187;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:469:24 */
  assign n227 = pc + 16'b0000000000000001;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:468:13 */
  assign n229 = jump == 2'b01;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:471:33 */
  assign n230 = {DI, dl};
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:470:13 */
  assign n232 = jump == 2'b10;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:473:25 */
  assign n233 = pcadder[8]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:474:22 */
  assign n234 = dl[7]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:474:26 */
  assign n235 = ~n234;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:475:40 */
  assign n236 = pc[15:8]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:475:54 */
  assign n238 = n236 + 8'b00000001;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:477:40 */
  assign n239 = pc[15:8]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:477:54 */
  assign n241 = n239 - 8'b00000001;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:474:17 */
  assign n242 = n235 ? n238 : n241;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:187:10 */
  assign n243 = n225[15:8]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:473:15 */
  assign n244 = n233 ? n242 : n243;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:480:40 */
  assign n245 = pcadder[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:472:13 */
  assign n247 = jump == 2'b11;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:467:11 */
  assign n248 = {n247, n232, n229};
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:469:24 */
  assign n249 = n227[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:471:33 */
  assign n250 = n230[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:187:10 */
  assign n251 = n225[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:467:11 */
  always @*
    case (n248)
      3'b100: n252 = n245;
      3'b010: n252 = n250;
      3'b001: n252 = n249;
      default: n252 = n251;
    endcase
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:469:24 */
  assign n253 = n227[15:8]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:471:33 */
  assign n254 = n230[15:8]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:187:10 */
  assign n255 = n225[15:8]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:467:11 */
  always @*
    case (n248)
      3'b100: n256 = n244;
      3'b010: n256 = n254;
      3'b001: n256 = n253;
      default: n256 = n255;
    endcase
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:410:7 */
  assign n259 = n278 ? 8'b11111111 : pbr;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:410:7 */
  assign n261 = n279 ? 8'b11111111 : dbr;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:418:9 */
  assign n262 = {n256, n252};
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:410:7 */
  assign n263 = n280 ? n262 : pc;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:410:7 */
  assign n264 = n281 ? n213 : s;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:410:7 */
  assign n266 = n282 ? 1'b0 : ef_i;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:410:7 */
  assign n268 = n283 ? 1'b0 : mf_i;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:410:7 */
  assign n270 = n284 ? 1'b0 : xf_i;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:418:9 */
  assign n271 = n181 & really_rdy;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:418:9 */
  assign n272 = n181 & really_rdy;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:418:9 */
  assign n273 = n181 & really_rdy;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:410:7 */
  assign n274 = n288 ? alu_op : alu_op_r;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:410:7 */
  assign n275 = n289 ? write_data : write_data_r;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:410:7 */
  assign n276 = n290 ? n200 : set_addr_to_r;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:410:7 */
  assign n277 = n292 ? n179 : wrn_i;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:410:7 */
  assign n278 = really_rdy & Enable;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:410:7 */
  assign n279 = really_rdy & Enable;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:410:7 */
  assign n280 = really_rdy & Enable;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:410:7 */
  assign n281 = really_rdy & Enable;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:410:7 */
  assign n282 = really_rdy & Enable;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:410:7 */
  assign n283 = really_rdy & Enable;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:410:7 */
  assign n284 = really_rdy & Enable;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:410:7 */
  assign n285 = n271 & Enable;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:410:7 */
  assign n286 = n272 & Enable;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:410:7 */
  assign n287 = n273 & Enable;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:410:7 */
  assign n288 = really_rdy & Enable;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:410:7 */
  assign n289 = really_rdy & Enable;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:410:7 */
  assign n290 = really_rdy & Enable;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:410:7 */
  assign n291 = Enable ? n177 : rdy_mod;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:410:7 */
  assign n292 = really_rdy & Enable;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:405:7 */
  assign n293 = SaveStateBus_load ? pbr : n259;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:405:7 */
  assign n294 = SaveStateBus_load ? dbr : n261;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:405:7 */
  assign n295 = SaveStateBus_load ? pc : n263;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:405:7 */
  assign n296 = {8'b00000000, n157};
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:405:7 */
  assign n297 = SaveStateBus_load ? n296 : n264;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:405:7 */
  assign n298 = SaveStateBus_load ? ef_i : n266;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:405:7 */
  assign n299 = SaveStateBus_load ? mf_i : n268;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:405:7 */
  assign n300 = SaveStateBus_load ? xf_i : n270;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:405:7 */
  assign n301 = SaveStateBus_load ? ir : n196;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:405:7 */
  assign n302 = SaveStateBus_load ? mode_r : n197;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:405:7 */
  assign n303 = SaveStateBus_load ? bcd_en_r : n198;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:405:7 */
  assign n304 = SaveStateBus_load ? alu_op_r : n274;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:405:7 */
  assign n305 = SaveStateBus_load ? write_data_r : n275;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:405:7 */
  assign n306 = SaveStateBus_load ? set_addr_to_r : n276;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:405:7 */
  assign n307 = SaveStateBus_load ? n158 : n291;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:405:7 */
  assign n308 = SaveStateBus_load ? wrn_i : n277;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:390:7 */
  assign n309 = n138 ? n141 : n293;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:390:7 */
  assign n310 = n138 ? n142 : n294;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:390:7 */
  assign n311 = n138 ? n139 : n295;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:390:7 */
  assign n312 = n138 ? s : n297;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:390:7 */
  assign n313 = n138 ? n153 : n298;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:390:7 */
  assign n314 = n138 ? n154 : n299;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:390:7 */
  assign n315 = n138 ? n155 : n300;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:390:7 */
  assign n316 = n138 ? n140 : n301;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:390:7 */
  assign n317 = n138 ? n143 : n302;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:390:7 */
  assign n318 = n138 ? n144 : n303;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:390:7 */
  assign n319 = n138 ? n147 : n304;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:390:7 */
  assign n320 = n138 ? n148 : n305;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:390:7 */
  assign n321 = n138 ? n150 : n306;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:390:7 */
  assign n322 = n138 ? rdy_mod : n307;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:390:7 */
  assign n323 = n138 ? n152 : n308;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:388:7 */
  assign n324 = n137 ? pbr : n309;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:388:7 */
  assign n325 = n137 ? dbr : n310;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:388:7 */
  assign n326 = n137 ? pc : n311;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:388:7 */
  assign n328 = n137 ? 16'b0000000000000000 : n312;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:388:7 */
  assign n329 = n137 ? ef_i : n313;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:388:7 */
  assign n330 = n137 ? mf_i : n314;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:388:7 */
  assign n331 = n137 ? xf_i : n315;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:388:7 */
  assign n332 = n137 ? ir : n316;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:388:7 */
  assign n333 = n137 ? mode_r : n317;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:388:7 */
  assign n334 = n137 ? bcd_en_r : n318;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:388:7 */
  assign n335 = n137 ? alu_op_r : n319;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:388:7 */
  assign n336 = n137 ? write_data_r : n320;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:388:7 */
  assign n337 = n137 ? set_addr_to_r : n321;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:388:7 */
  assign n338 = n137 ? rdy_mod : n322;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:388:7 */
  assign n339 = n137 ? wrn_i : n323;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:488:23 */
  assign n356 = pc[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:488:14 */
  assign n357 = {1'b0, n356};  // uext
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:488:59 */
  assign n358 = dl[7]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:488:63 */
  assign n359 = {n358, dl};
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:488:39 */
  assign n360 = n357 + n359;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:488:72 */
  assign n361 = pcadd ? n360 : n364;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:489:23 */
  assign n362 = pc[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:489:19 */
  assign n364 = {1'b0, n362};
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:492:33 */
  assign n365 = abc[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:493:31 */
  assign n366 = x[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:494:31 */
  assign n367 = y[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:503:17 */
  assign n372 = ~Pwr_n;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:509:18 */
  assign n373 = ss_2[9:2]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:510:32 */
  assign n374 = ss_2[17:10]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:511:32 */
  assign n375 = ss_2[25:18]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:512:32 */
  assign n376 = ss_2[33:26]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:513:32 */
  assign n377 = ss_2[34]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:514:32 */
  assign n378 = ss_2[35]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:520:21 */
  assign n381 = mcycle == 3'b000;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:180:10 */
  assign n382 = abc[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:517:7 */
  assign n383 = n495 ? alu_q : n382;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:180:15 */
  assign n384 = x[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:517:7 */
  assign n385 = n497 ? alu_q : n384;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:180:18 */
  assign n386 = y[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:517:7 */
  assign n387 = n499 ? alu_q : n386;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:530:21 */
  assign n388 = lda | ldx;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:530:28 */
  assign n389 = n388 | ldy;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:520:11 */
  assign n390 = n397 ? p_out : p;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:520:11 */
  assign n392 = lda & n381;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:520:11 */
  assign n394 = ldx & n381;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:520:11 */
  assign n396 = ldy & n381;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:520:11 */
  assign n397 = n389 & n381;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:534:11 */
  assign n398 = savep ? p_out : n390;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:537:11 */
  assign n399 = ldp ? alu_q : n398;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:540:16 */
  assign n400 = ir[4:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:540:29 */
  assign n402 = n400 == 5'b11000;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:541:20 */
  assign n403 = ir[7:5]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:542:13 */
  assign n406 = n403 == 3'b000;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:544:13 */
  assign n409 = n403 == 3'b001;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:546:13 */
  assign n412 = n403 == 3'b010;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:548:13 */
  assign n415 = n403 == 3'b011;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:550:13 */
  assign n418 = n403 == 3'b101;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:552:13 */
  assign n421 = n403 == 3'b110;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:554:13 */
  assign n424 = n403 == 3'b111;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:541:13 */
  assign n425 = {n424, n421, n418, n415, n412, n409, n406};
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:500:14 */
  assign n426 = n399[0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:541:13 */
  always @*
    case (n425)
      7'b1000000: n427 = n426;
      7'b0100000: n427 = n426;
      7'b0010000: n427 = n426;
      7'b0001000: n427 = n426;
      7'b0000100: n427 = n426;
      7'b0000010: n427 = 1'b1;
      7'b0000001: n427 = 1'b0;
      default: n427 = n426;
    endcase
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:500:14 */
  assign n428 = n399[2]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:541:13 */
  always @*
    case (n425)
      7'b1000000: n429 = n428;
      7'b0100000: n429 = n428;
      7'b0010000: n429 = n428;
      7'b0001000: n429 = 1'b1;
      7'b0000100: n429 = 1'b0;
      7'b0000010: n429 = n428;
      7'b0000001: n429 = n428;
      default: n429 = n428;
    endcase
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:500:14 */
  assign n430 = n399[3]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:541:13 */
  always @*
    case (n425)
      7'b1000000: n431 = 1'b1;
      7'b0100000: n431 = 1'b0;
      7'b0010000: n431 = n430;
      7'b0001000: n431 = n430;
      7'b0000100: n431 = n430;
      7'b0000010: n431 = n430;
      7'b0000001: n431 = n430;
      default: n431 = n430;
    endcase
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:500:14 */
  assign n432 = n399[6]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:541:13 */
  always @*
    case (n425)
      7'b1000000: n433 = n432;
      7'b0100000: n433 = n432;
      7'b0010000: n433 = 1'b0;
      7'b0001000: n433 = n432;
      7'b0000100: n433 = n432;
      7'b0000010: n433 = n432;
      7'b0000001: n433 = n432;
      default: n433 = n432;
    endcase
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:540:11 */
  assign n434 = {n431, n429};
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:500:14 */
  assign n435 = n399[0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:540:11 */
  assign n436 = n402 ? n427 : n435;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:500:14 */
  assign n437 = n399[3:2]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:540:11 */
  assign n438 = n402 ? n434 : n437;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:500:14 */
  assign n439 = n399[6]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:540:11 */
  assign n440 = n402 ? n433 : n439;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:500:14 */
  assign n443 = n399[1]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:500:14 */
  assign n444 = n399[7]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:560:17 */
  assign n449 = ir == 8'b00000000;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:560:41 */
  assign n451 = mcycle == 3'b100;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:560:30 */
  assign n452 = n451 & n449;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:560:62 */
  assign n453 = ~rstcycle;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:560:49 */
  assign n454 = n453 & n452;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:500:14 */
  assign n456 = n438[0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:560:11 */
  assign n457 = n454 ? 1'b1 : n456;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:500:14 */
  assign n458 = n438[1]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:566:21 */
  assign n461 = Mode != 2'b00;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:566:13 */
  assign n463 = n461 ? 1'b0 : n458;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:564:11 */
  assign n464 = {n463, 1'b1};
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:500:14 */
  assign n465 = {n458, n457};
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:564:11 */
  assign n466 = rstcycle ? n464 : n465;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:500:14 */
  assign n468 = {n444, n440, 1'b1, 1'b1, n466, n443, n436};
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:519:9 */
  assign n470 = n392 & really_rdy;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:519:9 */
  assign n472 = n394 & really_rdy;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:519:9 */
  assign n474 = n396 & really_rdy;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:517:7 */
  assign n475 = n500 ? n468 : p;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:577:14 */
  assign n478 = ir[4:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:577:26 */
  assign n480 = n478 != 5'b10000;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:577:43 */
  assign n482 = jump != 2'b01;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:577:36 */
  assign n483 = n480 | n482;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:577:64 */
  assign n484 = ~really_rdy;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:577:50 */
  assign n485 = n483 | n484;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:517:7 */
  assign n486 = n501 ? IRQ_n : irq_n_o;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:581:14 */
  assign n487 = ir[4:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:581:26 */
  assign n489 = n487 != 5'b10000;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:581:43 */
  assign n491 = jump != 2'b01;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:581:36 */
  assign n492 = n489 | n491;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:517:7 */
  assign n493 = n502 ? NMI_n : nmi_n_o;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:517:7 */
  assign n495 = n470 & Enable;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:517:7 */
  assign n497 = n472 & Enable;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:517:7 */
  assign n499 = n474 & Enable;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:517:7 */
  assign n500 = really_rdy & Enable;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:517:7 */
  assign n501 = n485 & Enable;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:517:7 */
  assign n502 = n492 & Enable;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:508:7 */
  assign n504 = SaveStateBus_load ? n374 : n383;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:508:7 */
  assign n505 = SaveStateBus_load ? n375 : n385;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:508:7 */
  assign n506 = SaveStateBus_load ? n376 : n387;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:508:7 */
  assign n507 = SaveStateBus_load ? n373 : n475;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:508:7 */
  assign n509 = SaveStateBus_load ? n377 : n486;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:508:7 */
  assign n510 = SaveStateBus_load ? n378 : n493;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:503:7 */
  assign n513 = n372 ? 8'b00000000 : n504;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:180:10 */
  assign n515 = abc[15:8]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:503:7 */
  assign n516 = n372 ? 8'b00000000 : n515;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:503:7 */
  assign n518 = n372 ? 8'b00000000 : n505;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:180:15 */
  assign n520 = x[15:8]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:503:7 */
  assign n521 = n372 ? 8'b00000000 : n520;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:503:7 */
  assign n523 = n372 ? 8'b00000000 : n506;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:180:18 */
  assign n525 = y[15:8]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:503:7 */
  assign n526 = n372 ? 8'b00000000 : n525;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:503:7 */
  assign n528 = n372 ? 8'b00000000 : n507;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:503:7 */
  assign n530 = n372 ? irq_n_o : n509;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:503:7 */
  assign n531 = n372 ? nmi_n_o : n510;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:588:42 */
  assign n533 = ~SO_n;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:588:33 */
  assign n534 = n533 & so_n_o;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:181:10 */
  assign n536 = n528[6]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:588:17 */
  assign n537 = n534 ? 1'b1 : n536;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:181:10 */
  assign n538 = n528[7]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:181:10 */
  assign n539 = n528[5:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:502:5 */
  assign n540 = {n516, n513};
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:502:5 */
  assign n542 = {n521, n518};
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:502:5 */
  assign n544 = {n526, n523};
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:502:5 */
  assign n546 = {n538, n537, n539};
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:614:18 */
  assign n557 = ~res_n_i;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:615:23 */
  assign n558 = ss_3[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:616:23 */
  assign n559 = ss_3[15:8]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:617:23 */
  assign n560 = ss_3[23:16]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:618:23 */
  assign n561 = ss_3[31:24]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:619:23 */
  assign n562 = ss_3[40:32]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:620:23 */
  assign n563 = ss_3[48:41]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:621:23 */
  assign n564 = ss_3[56:49]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:623:28 */
  assign n565 = ss_3[57]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:631:28 */
  assign n567 = set_addr_to_r == 2'b00;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:631:63 */
  assign n569 = set_addr_to_r == 2'b10;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:631:46 */
  assign n570 = n567 | n569;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:632:65 */
  assign n572 = DI + 8'b00000001;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:624:7 */
  assign n573 = n671 ? n572 : busb_r;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:638:49 */
  assign n575 = ad + 8'b00000001;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:639:51 */
  assign n577 = bal + 9'b000000001;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:636:11 */
  assign n579 = baadd == 2'b01;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:642:56 */
  assign n580 = bal[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:642:37 */
  assign n581 = {1'b0, n580};  // uext
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:642:75 */
  assign n582 = {1'b0, busa};  // uext
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:642:73 */
  assign n583 = n581 + n582;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:640:11 */
  assign n585 = baadd == 2'b10;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:645:19 */
  assign n586 = bal[8]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:648:66 */
  assign n588 = bah + 8'b00000001;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:648:15 */
  assign n590 = baquirk == 2'b00;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:649:66 */
  assign n592 = bah + 8'b00000001;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:649:71 */
  assign n593 = n592 & do_r;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:649:15 */
  assign n595 = baquirk == 2'b01;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:650:15 */
  assign n597 = baquirk == 2'b10;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:647:15 */
  assign n598 = {n597, n595, n590};
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:647:15 */
  always @*
    case (n598)
      3'b100: n599 = do_r;
      3'b010: n599 = n593;
      3'b001: n599 = n588;
      default: n599 = bah;
    endcase
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:645:13 */
  assign n600 = n586 ? n599 : bah;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:643:11 */
  assign n602 = baadd == 2'b11;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:635:11 */
  assign n603 = {n602, n585, n579};
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:635:11 */
  always @*
    case (n603)
      3'b100: n604 = ad;
      3'b010: n604 = ad;
      3'b001: n604 = n575;
      default: n604 = ad;
    endcase
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:635:11 */
  always @*
    case (n603)
      3'b100: n605 = n600;
      3'b010: n605 = bah;
      3'b001: n605 = bah;
      default: n605 = bah;
    endcase
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:635:11 */
  always @*
    case (n603)
      3'b100: n606 = bal;
      3'b010: n606 = n583;
      3'b001: n606 = n577;
      default: n606 = bal;
    endcase
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:660:63 */
  assign n607 = y[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:660:51 */
  assign n608 = ad + n607;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:662:63 */
  assign n609 = x[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:662:51 */
  assign n610 = ad + n609;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:659:13 */
  assign n611 = addy ? n608 : n610;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:658:11 */
  assign n612 = adadd ? n611 : n604;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:666:17 */
  assign n614 = ir == 8'b00000000;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:671:61 */
  assign n617 = mcycle == 3'b100;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:671:51 */
  assign n618 = n617 & nmiact;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:671:34 */
  assign n619 = nmicycle | n618;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:671:69 */
  assign n620 = n619 | nmi_entered;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:673:24 */
  assign n623 = mcycle == 3'b100;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:673:15 */
  assign n626 = n623 ? 1'b1 : 1'b0;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:671:13 */
  assign n628 = n620 ? 3'b010 : 3'b110;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:671:13 */
  assign n630 = n620 ? n626 : 1'b0;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:669:13 */
  assign n631 = rstcycle ? 3'b100 : n628;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:184:10 */
  assign n633 = n632[8:3]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:669:13 */
  assign n635 = rstcycle ? 1'b0 : n630;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:679:30 */
  assign n637 = set_addr_to_r == 2'b11;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:184:10 */
  assign n639 = n631[0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:679:13 */
  assign n640 = n637 ? 1'b1 : n639;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:184:10 */
  assign n641 = n631[2:1]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:666:11 */
  assign n643 = n614 ? 8'b11111111 : n605;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:666:11 */
  assign n644 = {n633, n641, n640};
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:666:11 */
  assign n645 = n614 ? n644 : n606;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:666:11 */
  assign n647 = n614 ? n635 : 1'b0;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:684:11 */
  assign n649 = lddi ? DI : dl;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:687:11 */
  assign n650 = ldalu ? alu_q : n649;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:690:11 */
  assign n651 = ldad ? DI : n612;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:184:10 */
  assign n652 = n645[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:693:11 */
  assign n653 = ldbal ? DI : n652;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:184:10 */
  assign n654 = n645[8]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:696:11 */
  assign n655 = ldbah ? DI : n643;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:624:7 */
  assign n656 = n665 ? n651 : ad;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:624:7 */
  assign n657 = n666 ? n650 : dl;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:624:7 */
  assign n658 = n667 ? n655 : bah;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:625:9 */
  assign n659 = {n654, n653};
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:624:7 */
  assign n660 = n668 ? n659 : bal;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:624:7 */
  assign n661 = n669 ? busa : busa_r;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:624:7 */
  assign n662 = n670 ? DI : busb;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:625:9 */
  assign n663 = n570 & really_rdy;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:624:7 */
  assign n664 = n672 ? n647 : nmi_entered;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:624:7 */
  assign n665 = really_rdy & Enable;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:624:7 */
  assign n666 = really_rdy & Enable;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:624:7 */
  assign n667 = really_rdy & Enable;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:624:7 */
  assign n668 = really_rdy & Enable;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:624:7 */
  assign n669 = really_rdy & Enable;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:624:7 */
  assign n670 = really_rdy & Enable;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:624:7 */
  assign n671 = n663 & Enable;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:624:7 */
  assign n672 = really_rdy & Enable;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:622:7 */
  assign n673 = SaveStateBus_load ? ad : n656;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:622:7 */
  assign n674 = SaveStateBus_load ? dl : n657;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:622:7 */
  assign n675 = SaveStateBus_load ? bah : n658;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:622:7 */
  assign n676 = SaveStateBus_load ? bal : n660;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:622:7 */
  assign n677 = SaveStateBus_load ? busa_r : n661;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:622:7 */
  assign n678 = SaveStateBus_load ? busb : n662;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:622:7 */
  assign n679 = SaveStateBus_load ? busb_r : n573;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:622:7 */
  assign n680 = SaveStateBus_load ? n565 : n664;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:614:7 */
  assign n681 = n557 ? n561 : n673;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:614:7 */
  assign n682 = n557 ? n564 : n674;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:614:7 */
  assign n683 = n557 ? n563 : n675;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:614:7 */
  assign n684 = n557 ? n562 : n676;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:614:7 */
  assign n685 = n557 ? n558 : n677;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:614:7 */
  assign n686 = n557 ? n559 : n678;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:614:7 */
  assign n687 = n557 ? n560 : n679;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:614:7 */
  assign n688 = n557 ? nmi_entered : n680;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:704:34 */
  assign n698 = bal[8]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:704:27 */
  assign n699 = ~n698;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:704:23 */
  assign n700 = breakatna & n699;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:704:64 */
  assign n701 = pcadder[8]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:704:53 */
  assign n702 = ~n701;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:704:49 */
  assign n703 = pcadd & n702;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:704:39 */
  assign n704 = n700 | n703;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:708:45 */
  assign n706 = set_busa_to == 4'b0000;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:709:10 */
  assign n707 = abc[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:709:45 */
  assign n709 = set_busa_to == 4'b0001;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:710:8 */
  assign n710 = x[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:710:45 */
  assign n712 = set_busa_to == 4'b0010;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:711:8 */
  assign n713 = y[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:711:45 */
  assign n715 = set_busa_to == 4'b0011;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:712:25 */
  assign n716 = s[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:712:45 */
  assign n718 = set_busa_to == 4'b0100;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:713:45 */
  assign n720 = set_busa_to == 4'b0101;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:714:10 */
  assign n721 = abc[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:714:23 */
  assign n722 = n721 & DI;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:714:45 */
  assign n724 = set_busa_to == 4'b0110;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:715:11 */
  assign n725 = abc[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:715:24 */
  assign n727 = n725 | 8'b11101110;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:715:34 */
  assign n728 = n727 & DI;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:715:45 */
  assign n730 = set_busa_to == 4'b0111;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:716:11 */
  assign n731 = abc[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:716:24 */
  assign n733 = n731 | 8'b11101110;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:716:34 */
  assign n734 = n733 & DI;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:716:46 */
  assign n735 = x[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:716:41 */
  assign n736 = n734 & n735;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:716:62 */
  assign n738 = set_busa_to == 4'b1000;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:717:10 */
  assign n739 = abc[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:717:28 */
  assign n740 = x[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:717:23 */
  assign n741 = n739 & n740;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:717:45 */
  assign n743 = set_busa_to == 4'b1001;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:718:45 */
  assign n746 = set_busa_to == 4'b1010;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:706:3 */
  assign n747 = {n746, n743, n738, n730, n724, n720, n718, n715, n712, n709, n706};
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:706:3 */
  always @*
    case (n747)
      11'b10000000000: n749 = 8'bX;
      11'b01000000000: n749 = n741;
      11'b00100000000: n749 = n736;
      11'b00010000000: n749 = n728;
      11'b00001000000: n749 = n722;
      11'b00000100000: n749 = p;
      11'b00000010000: n749 = n716;
      11'b00000001000: n749 = n713;
      11'b00000000100: n749 = n710;
      11'b00000000010: n749 = n707;
      11'b00000000001: n749 = DI;
      default: n749 = 8'bX;
    endcase
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:722:46 */
  assign n750 = s[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:722:26 */
  assign n752 = {16'b0000000000000001, n750};
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:722:87 */
  assign n754 = set_addr_to_r == 2'b01;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:723:11 */
  assign n756 = {dbr, 8'b00000000};
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:723:24 */
  assign n757 = {n756, ad};
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:723:87 */
  assign n759 = set_addr_to_r == 2'b10;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:724:18 */
  assign n761 = {8'b00000000, bah};
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:724:29 */
  assign n762 = bal[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:724:24 */
  assign n763 = {n761, n762};
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:724:87 */
  assign n765 = set_addr_to_r == 2'b11;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:725:32 */
  assign n766 = pc[15:8]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:725:11 */
  assign n767 = {pbr, n766};
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:725:73 */
  assign n768 = pcadder[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:725:47 */
  assign n769 = {n767, n768};
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:725:87 */
  assign n771 = set_addr_to_r == 2'b00;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:720:3 */
  assign n772 = {n771, n765, n759, n754};
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:720:3 */
  always @*
    case (n772)
      4'b1000: n774 = n769;
      4'b0100: n774 = n763;
      4'b0010: n774 = n757;
      4'b0001: n774 = n752;
      default: n774 = 24'bX;
    endcase
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:728:14 */
  assign n776 = p & 8'b11101111;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:728:44 */
  assign n777 = irqcycle | nmicycle;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:728:25 */
  assign n778 = n777 ? n776 : p;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:734:43 */
  assign n780 = write_data_r == 4'b0000;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:735:10 */
  assign n781 = abc[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:735:43 */
  assign n783 = write_data_r == 4'b0001;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:736:8 */
  assign n784 = x[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:736:43 */
  assign n786 = write_data_r == 4'b0010;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:737:8 */
  assign n787 = y[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:737:43 */
  assign n789 = write_data_r == 4'b0011;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:738:25 */
  assign n790 = s[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:738:43 */
  assign n792 = write_data_r == 4'b0100;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:739:43 */
  assign n794 = write_data_r == 4'b0101;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:740:26 */
  assign n795 = pc[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:740:43 */
  assign n797 = write_data_r == 4'b0110;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:741:26 */
  assign n798 = pc[15:8]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:741:43 */
  assign n800 = write_data_r == 4'b0111;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:742:10 */
  assign n801 = abc[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:742:28 */
  assign n802 = x[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:742:23 */
  assign n803 = n801 & n802;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:742:43 */
  assign n805 = write_data_r == 4'b1000;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:743:10 */
  assign n806 = abc[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:743:28 */
  assign n807 = x[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:743:23 */
  assign n808 = n806 & n807;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:743:41 */
  assign n809 = n808 & busb_r;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:743:64 */
  assign n811 = write_data_r == 4'b1001;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:744:8 */
  assign n812 = x[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:744:21 */
  assign n813 = n812 & busb_r;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:744:44 */
  assign n815 = write_data_r == 4'b1010;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:745:8 */
  assign n816 = y[7:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:745:21 */
  assign n817 = n816 & busb_r;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:745:44 */
  assign n819 = write_data_r == 4'b1011;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:746:43 */
  assign n822 = write_data_r == 4'b1100;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:732:3 */
  assign n823 = {n822, n819, n815, n811, n805, n800, n797, n794, n792, n789, n786, n783, n780};
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:732:3 */
  always @*
    case (n823)
      13'b1000000000000: n825 = 8'bX;
      13'b0100000000000: n825 = n817;
      13'b0010000000000: n825 = n813;
      13'b0001000000000: n825 = n809;
      13'b0000100000000: n825 = n803;
      13'b0000010000000: n825 = n798;
      13'b0000001000000: n825 = n795;
      13'b0000000100000: n825 = pwithb;
      13'b0000000010000: n825 = n790;
      13'b0000000001000: n825 = n787;
      13'b0000000000100: n825 = n784;
      13'b0000000000010: n825 = n781;
      13'b0000000000001: n825 = dl;
      default: n825 = 8'bX;
    endcase
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:762:32 */
  assign n828 = mcycle == lcycle;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:762:51 */
  assign n829 = ~break_s;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:762:41 */
  assign n830 = n829 & n828;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:762:19 */
  assign n831 = n830 ? 1'b1 : 1'b0;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:767:18 */
  assign n836 = ~res_n_i;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:768:25 */
  assign n837 = ss_2[39:37]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:769:25 */
  assign n838 = ss_2[40]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:770:25 */
  assign n839 = ss_2[41]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:771:25 */
  assign n840 = ss_2[42]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:772:25 */
  assign n841 = ss_2[43]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:775:21 */
  assign n842 = mcycle == lcycle;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:775:30 */
  assign n843 = n842 | break_s;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:780:35 */
  assign n845 = ir != 8'b00000000;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:780:29 */
  assign n846 = n845 & nmiact;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:783:27 */
  assign n847 = ~irq_n_o;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:783:38 */
  assign n848 = p[2]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:783:47 */
  assign n849 = ~n848;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:783:33 */
  assign n850 = n849 & n847;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:783:13 */
  assign n853 = n850 ? 1'b1 : 1'b0;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:780:13 */
  assign n855 = n846 ? 1'b0 : n853;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:780:13 */
  assign n859 = n846 ? 1'b1 : 1'b0;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:774:9 */
  assign n862 = n879 ? 1'b0 : nmiact;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:786:23 */
  assign n864 = mcycle != 3'b111;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:787:57 */
  assign n866 = mcycle + 3'b001;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:786:11 */
  assign n867 = n864 ? n866 : mcycle;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:775:11 */
  assign n869 = n843 ? 3'b000 : n867;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:773:7 */
  assign n871 = n894 ? 1'b0 : rstcycle;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:773:7 */
  assign n872 = n895 ? n855 : irqcycle;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:773:7 */
  assign n873 = n896 ? n859 : nmicycle;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:775:11 */
  assign n874 = n846 & n843;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:773:7 */
  assign n875 = n893 ? n869 : mcycle;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:774:9 */
  assign n876 = n843 & really_rdy;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:774:9 */
  assign n877 = n843 & really_rdy;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:774:9 */
  assign n878 = n843 & really_rdy;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:774:9 */
  assign n879 = n874 & really_rdy;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:791:37 */
  assign n880 = ~NMI_n;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:791:50 */
  assign n881 = ir[4:0]; // extract
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:791:62 */
  assign n883 = n881 != 5'b10000;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:791:79 */
  assign n885 = jump != 2'b01;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:791:72 */
  assign n886 = n883 | n885;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:791:43 */
  assign n887 = n886 & n880;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:791:26 */
  assign n888 = n887 & nmi_n_o;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:791:9 */
  assign n890 = n888 ? 1'b1 : n862;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:795:9 */
  assign n892 = nmi_entered ? 1'b0 : n890;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:773:7 */
  assign n893 = really_rdy & Enable;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:773:7 */
  assign n894 = n876 & Enable;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:773:7 */
  assign n895 = n877 & Enable;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:773:7 */
  assign n896 = n878 & Enable;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:773:7 */
  assign n897 = Enable ? n892 : nmiact;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:767:7 */
  assign n898 = n836 ? n837 : n875;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:767:7 */
  assign n899 = n836 ? n838 : n871;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:767:7 */
  assign n900 = n836 ? n839 : n872;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:767:7 */
  assign n901 = n836 ? n840 : n873;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:767:7 */
  assign n902 = n836 ? n841 : n897;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:267:16 */
  assign n909 = {mf_i, ef_i, wrn_i, set_addr_to_r, write_data_r, n129, bcd_en_r, mode_r, dbr, pbr, n126, ir, pc};
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:269:16 */
  assign n910 = {20'b00000000000000000000, nmiact, nmicycle, irqcycle, rstcycle, mcycle, so_n_o, nmi_n_o, irq_n_o, n367, n366, n365, p, rdy_mod, xf_i};
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:271:16 */
  assign n911 = {6'b000000, nmi_entered, dl, bah, bal, ad, busb_r, busb, busa_r};
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:164:5 */
  assign n912 = {p, n76, n75, n74, n73, ir};
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:502:5 */
  always @(posedge Clk)
    n913 <= n540;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:502:5 */
  always @(posedge Clk)
    n914 <= n542;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:502:5 */
  always @(posedge Clk)
    n915 <= n544;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:502:5 */
  always @(posedge Clk)
    n916 <= n546;
  initial
    n916 = 8'b00000000;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:613:5 */
  always @(posedge Clk)
    n917 <= n681;
  initial
    n917 = 8'b00000000;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:613:5 */
  always @(posedge Clk)
    n918 <= n682;
  initial
    n918 = 8'b00000000;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:613:5 */
  always @(posedge Clk)
    n919 <= n683;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:613:5 */
  always @(posedge Clk)
    n920 <= n684;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:387:5 */
  always @(posedge Clk)
    n921 <= n324;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:387:5 */
  always @(posedge Clk)
    n922 <= n325;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:387:5 */
  always @(posedge Clk)
    n923 <= n326;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:387:5 */
  always @(posedge Clk)
    n924 <= n328;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:387:5 */
  always @(posedge Clk)
    n925 <= n329;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:387:5 */
  always @(posedge Clk)
    n926 <= n330;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:387:5 */
  always @(posedge Clk)
    n927 <= n331;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:387:5 */
  always @(posedge Clk)
    n928 <= n332;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:766:5 */
  always @(posedge Clk)
    n929 <= n898;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:387:5 */
  always @(posedge Clk)
    n930 <= n333;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:387:5 */
  always @(posedge Clk)
    n931 <= n334;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:387:5 */
  always @(posedge Clk)
    n932 <= n335;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:387:5 */
  always @(posedge Clk)
    n933 <= n336;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:387:5 */
  always @(posedge Clk)
    n934 <= n337;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:766:5 */
  always @(posedge Clk)
    n935 <= n899;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:766:5 */
  always @(posedge Clk)
    n936 <= n900;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:766:5 */
  always @(posedge Clk)
    n937 <= n901;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:502:5 */
  always @(posedge Clk)
    n938 <= SO_n;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:502:5 */
  always @(posedge Clk)
    n939 <= n530;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:502:5 */
  always @(posedge Clk)
    n940 <= n531;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:766:5 */
  always @(posedge Clk)
    n941 <= n902;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:613:5 */
  always @(posedge Clk)
    n942 <= n685;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:613:5 */
  always @(posedge Clk)
    n943 <= n686;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:613:5 */
  always @(posedge Clk)
    n944 <= n687;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:362:5 */
  assign n945 = Enable ? res_n_d : res_n_i;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:362:5 */
  always @(posedge Clk or posedge n115)
    if (n115)
      n946 <= 1'b0;
    else
      n946 <= n945;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:362:5 */
  assign n947 = Enable ? 1'b1 : res_n_d;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:362:5 */
  always @(posedge Clk or posedge n115)
    if (n115)
      n948 <= 1'b0;
    else
      n948 <= n947;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:387:5 */
  always @(posedge Clk)
    n949 <= n338;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:387:5 */
  always @(posedge Clk)
    n950 <= n339;
  /*# C:/Users/lakom/AppData/Local/Temp/tmp.X6elQT1ClZ/T65_ss.vhd:613:5 */
  always @(posedge Clk)
    n951 <= n688;
endmodule

