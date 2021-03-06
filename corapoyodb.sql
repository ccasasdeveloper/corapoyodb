PGDMP                         z         
   corapoyodb #   12.8 (Ubuntu 12.8-0ubuntu0.20.04.1) #   12.7 (Ubuntu 12.7-0ubuntu0.20.04.1) U    
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16834 
   corapoyodb    DATABASE     |   CREATE DATABASE corapoyodb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE corapoyodb;
                postgres    false            ?            1259    16835    alembic_version    TABLE     X   CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);
 #   DROP TABLE public.alembic_version;
       public         heap    postgres    false            ?            1259    16838    partner    TABLE     =  CREATE TABLE public.partner (
    id integer NOT NULL,
    name character varying(50),
    last_name character varying(50),
    email character varying(250) NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(50),
    role_id integer,
    phone character varying,
    photo bytea
);
    DROP TABLE public.partner;
       public         heap    postgres    false            ?            1259    16844    partner_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.partner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.partner_id_seq;
       public          postgres    false    203                       0    0    partner_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.partner_id_seq OWNED BY public.partner.id;
          public          postgres    false    204            ?            1259    16846    place    TABLE     .  CREATE TABLE public.place (
    id integer NOT NULL,
    name character varying(50),
    partner_id integer,
    product_id integer,
    product_two_id integer,
    product_three_id integer,
    latitude character varying,
    longitude character varying,
    store_id integer,
    geolocation json
);
    DROP TABLE public.place;
       public         heap    postgres    false            ?            1259    16852    place_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.place_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.place_id_seq;
       public          postgres    false    205                       0    0    place_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.place_id_seq OWNED BY public.place.id;
          public          postgres    false    206            ?            1259    16854    post    TABLE     )  CREATE TABLE public.post (
    id integer NOT NULL,
    place_id integer,
    product_id integer,
    price double precision,
    date_added character varying,
    cut_date_added character varying,
    udm_name character varying,
    product_qualification_name character varying,
    product_name character varying,
    place_name character varying,
    place_latitude character varying,
    place_longitude character varying,
    udm_id integer,
    product_qualification_id integer,
    post text,
    donation boolean,
    photo character varying
);
    DROP TABLE public.post;
       public         heap    postgres    false            ?            1259    16860    post_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.post_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.post_id_seq;
       public          postgres    false    207                       0    0    post_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.post_id_seq OWNED BY public.post.id;
          public          postgres    false    208            ?            1259    16862    product    TABLE     ?   CREATE TABLE public.product (
    id integer NOT NULL,
    name character varying(50),
    code character varying(50),
    price double precision
);
    DROP TABLE public.product;
       public         heap    postgres    false            ?            1259    16865    product_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          postgres    false    209                       0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          postgres    false    210            ?            1259    16867    product_qualification_offer    TABLE     ?   CREATE TABLE public.product_qualification_offer (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    qualification integer
);
 /   DROP TABLE public.product_qualification_offer;
       public         heap    postgres    false            ?            1259    16870 "   product_qualification_offer_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.product_qualification_offer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.product_qualification_offer_id_seq;
       public          postgres    false    211                       0    0 "   product_qualification_offer_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.product_qualification_offer_id_seq OWNED BY public.product_qualification_offer.id;
          public          postgres    false    212            ?            1259    16872    role    TABLE     v   CREATE TABLE public.role (
    id integer NOT NULL,
    name character varying(50),
    code character varying(50)
);
    DROP TABLE public.role;
       public         heap    postgres    false            ?            1259    16875    role_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.role_id_seq;
       public          postgres    false    213                       0    0    role_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.role_id_seq OWNED BY public.role.id;
          public          postgres    false    214            ?            1259    16877    square    TABLE     x   CREATE TABLE public.square (
    id integer NOT NULL,
    name character varying(50),
    code character varying(50)
);
    DROP TABLE public.square;
       public         heap    postgres    false            ?            1259    16880    square_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.square_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.square_id_seq;
       public          postgres    false    215                       0    0    square_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.square_id_seq OWNED BY public.square.id;
          public          postgres    false    216            ?            1259    16882    store    TABLE     ?   CREATE TABLE public.store (
    id integer NOT NULL,
    number integer,
    code character varying(50),
    square_id integer
);
    DROP TABLE public.store;
       public         heap    postgres    false            ?            1259    16885    store_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.store_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.store_id_seq;
       public          postgres    false    217                       0    0    store_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.store_id_seq OWNED BY public.store.id;
          public          postgres    false    218            ?            1259    16887    udm    TABLE     ^   CREATE TABLE public.udm (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.udm;
       public         heap    postgres    false            ?            1259    16890 
   udm_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.udm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.udm_id_seq;
       public          postgres    false    219                       0    0 
   udm_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.udm_id_seq OWNED BY public.udm.id;
          public          postgres    false    220            G           2604    16892 
   partner id    DEFAULT     h   ALTER TABLE ONLY public.partner ALTER COLUMN id SET DEFAULT nextval('public.partner_id_seq'::regclass);
 9   ALTER TABLE public.partner ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    203            H           2604    16893    place id    DEFAULT     d   ALTER TABLE ONLY public.place ALTER COLUMN id SET DEFAULT nextval('public.place_id_seq'::regclass);
 7   ALTER TABLE public.place ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    205            I           2604    16894    post id    DEFAULT     b   ALTER TABLE ONLY public.post ALTER COLUMN id SET DEFAULT nextval('public.post_id_seq'::regclass);
 6   ALTER TABLE public.post ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    207            J           2604    16895 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209            K           2604    16896    product_qualification_offer id    DEFAULT     ?   ALTER TABLE ONLY public.product_qualification_offer ALTER COLUMN id SET DEFAULT nextval('public.product_qualification_offer_id_seq'::regclass);
 M   ALTER TABLE public.product_qualification_offer ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211            L           2604    16897    role id    DEFAULT     b   ALTER TABLE ONLY public.role ALTER COLUMN id SET DEFAULT nextval('public.role_id_seq'::regclass);
 6   ALTER TABLE public.role ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213            M           2604    16898 	   square id    DEFAULT     f   ALTER TABLE ONLY public.square ALTER COLUMN id SET DEFAULT nextval('public.square_id_seq'::regclass);
 8   ALTER TABLE public.square ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            N           2604    16899    store id    DEFAULT     d   ALTER TABLE ONLY public.store ALTER COLUMN id SET DEFAULT nextval('public.store_id_seq'::regclass);
 7   ALTER TABLE public.store ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            O           2604    16900    udm id    DEFAULT     `   ALTER TABLE ONLY public.udm ALTER COLUMN id SET DEFAULT nextval('public.udm_id_seq'::regclass);
 5   ALTER TABLE public.udm ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            ?          0    16835    alembic_version 
   TABLE DATA           6   COPY public.alembic_version (version_num) FROM stdin;
    public          postgres    false    202   %a       ?          0    16838    partner 
   TABLE DATA           h   COPY public.partner (id, name, last_name, email, username, password, role_id, phone, photo) FROM stdin;
    public          postgres    false    203   Oa       ?          0    16846    place 
   TABLE DATA           ?   COPY public.place (id, name, partner_id, product_id, product_two_id, product_three_id, latitude, longitude, store_id, geolocation) FROM stdin;
    public          postgres    false    205   ?f       ?          0    16854    post 
   TABLE DATA           ?   COPY public.post (id, place_id, product_id, price, date_added, cut_date_added, udm_name, product_qualification_name, product_name, place_name, place_latitude, place_longitude, udm_id, product_qualification_id, post, donation, photo) FROM stdin;
    public          postgres    false    207   sh       ?          0    16862    product 
   TABLE DATA           8   COPY public.product (id, name, code, price) FROM stdin;
    public          postgres    false    209   q       ?          0    16867    product_qualification_offer 
   TABLE DATA           N   COPY public.product_qualification_offer (id, name, qualification) FROM stdin;
    public          postgres    false    211   +x                  0    16872    role 
   TABLE DATA           .   COPY public.role (id, name, code) FROM stdin;
    public          postgres    false    213   ?x                 0    16877    square 
   TABLE DATA           0   COPY public.square (id, name, code) FROM stdin;
    public          postgres    false    215   y                 0    16882    store 
   TABLE DATA           <   COPY public.store (id, number, code, square_id) FROM stdin;
    public          postgres    false    217   Sy                 0    16887    udm 
   TABLE DATA           '   COPY public.udm (id, name) FROM stdin;
    public          postgres    false    219   ?z                  0    0    partner_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.partner_id_seq', 68, true);
          public          postgres    false    204                       0    0    place_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.place_id_seq', 44, true);
          public          postgres    false    206                       0    0    post_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.post_id_seq', 102, true);
          public          postgres    false    208                       0    0    product_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.product_id_seq', 168, true);
          public          postgres    false    210                       0    0 "   product_qualification_offer_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.product_qualification_offer_id_seq', 9, true);
          public          postgres    false    212                       0    0    role_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.role_id_seq', 23, true);
          public          postgres    false    214                       0    0    square_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.square_id_seq', 11, true);
          public          postgres    false    216                       0    0    store_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.store_id_seq', 80, true);
          public          postgres    false    218                       0    0 
   udm_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.udm_id_seq', 20, true);
          public          postgres    false    220            Q           2606    16902 #   alembic_version alembic_version_pkc 
   CONSTRAINT     j   ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);
 M   ALTER TABLE ONLY public.alembic_version DROP CONSTRAINT alembic_version_pkc;
       public            postgres    false    202            S           2606    16904    partner partner_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.partner
    ADD CONSTRAINT partner_email_key UNIQUE (email);
 C   ALTER TABLE ONLY public.partner DROP CONSTRAINT partner_email_key;
       public            postgres    false    203            U           2606    16906    partner partner_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.partner
    ADD CONSTRAINT partner_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.partner DROP CONSTRAINT partner_pkey;
       public            postgres    false    203            W           2606    16908    partner partner_username_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.partner
    ADD CONSTRAINT partner_username_key UNIQUE (username);
 F   ALTER TABLE ONLY public.partner DROP CONSTRAINT partner_username_key;
       public            postgres    false    203            Y           2606    16910    place place_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.place
    ADD CONSTRAINT place_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.place DROP CONSTRAINT place_pkey;
       public            postgres    false    205            [           2606    16912    post post_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.post DROP CONSTRAINT post_pkey;
       public            postgres    false    207            ]           2606    16914    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    209            _           2606    16916 @   product_qualification_offer product_qualification_offer_name_key 
   CONSTRAINT     {   ALTER TABLE ONLY public.product_qualification_offer
    ADD CONSTRAINT product_qualification_offer_name_key UNIQUE (name);
 j   ALTER TABLE ONLY public.product_qualification_offer DROP CONSTRAINT product_qualification_offer_name_key;
       public            postgres    false    211            a           2606    16918 <   product_qualification_offer product_qualification_offer_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.product_qualification_offer
    ADD CONSTRAINT product_qualification_offer_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.product_qualification_offer DROP CONSTRAINT product_qualification_offer_pkey;
       public            postgres    false    211            c           2606    16920    role role_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.role DROP CONSTRAINT role_pkey;
       public            postgres    false    213            e           2606    16922    square square_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.square
    ADD CONSTRAINT square_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.square DROP CONSTRAINT square_pkey;
       public            postgres    false    215            g           2606    16924    store store_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.store
    ADD CONSTRAINT store_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.store DROP CONSTRAINT store_pkey;
       public            postgres    false    217            i           2606    16926    udm udm_name_key 
   CONSTRAINT     K   ALTER TABLE ONLY public.udm
    ADD CONSTRAINT udm_name_key UNIQUE (name);
 :   ALTER TABLE ONLY public.udm DROP CONSTRAINT udm_name_key;
       public            postgres    false    219            k           2606    16928    udm udm_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.udm
    ADD CONSTRAINT udm_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.udm DROP CONSTRAINT udm_pkey;
       public            postgres    false    219            v           2606    16929    store fk_square    FK CONSTRAINT     q   ALTER TABLE ONLY public.store
    ADD CONSTRAINT fk_square FOREIGN KEY (square_id) REFERENCES public.square(id);
 9   ALTER TABLE ONLY public.store DROP CONSTRAINT fk_square;
       public          postgres    false    2917    215    217            m           2606    16934    place fk_store    FK CONSTRAINT     n   ALTER TABLE ONLY public.place
    ADD CONSTRAINT fk_store FOREIGN KEY (store_id) REFERENCES public.store(id);
 8   ALTER TABLE ONLY public.place DROP CONSTRAINT fk_store;
       public          postgres    false    205    217    2919            l           2606    16939    partner partner_role_id_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY public.partner
    ADD CONSTRAINT partner_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.role(id);
 F   ALTER TABLE ONLY public.partner DROP CONSTRAINT partner_role_id_fkey;
       public          postgres    false    2915    203    213            n           2606    16944    place place_partner_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.place
    ADD CONSTRAINT place_partner_id_fkey FOREIGN KEY (partner_id) REFERENCES public.partner(id);
 E   ALTER TABLE ONLY public.place DROP CONSTRAINT place_partner_id_fkey;
       public          postgres    false    203    2901    205            o           2606    16949    place place_product_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.place
    ADD CONSTRAINT place_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(id);
 E   ALTER TABLE ONLY public.place DROP CONSTRAINT place_product_id_fkey;
       public          postgres    false    209    205    2909            p           2606    16954 !   place place_product_three_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.place
    ADD CONSTRAINT place_product_three_id_fkey FOREIGN KEY (product_three_id) REFERENCES public.product(id);
 K   ALTER TABLE ONLY public.place DROP CONSTRAINT place_product_three_id_fkey;
       public          postgres    false    209    2909    205            q           2606    16959    place place_product_two_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.place
    ADD CONSTRAINT place_product_two_id_fkey FOREIGN KEY (product_two_id) REFERENCES public.product(id);
 I   ALTER TABLE ONLY public.place DROP CONSTRAINT place_product_two_id_fkey;
       public          postgres    false    205    209    2909            r           2606    16964    post post_place_id_fkey    FK CONSTRAINT     w   ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_place_id_fkey FOREIGN KEY (place_id) REFERENCES public.place(id);
 A   ALTER TABLE ONLY public.post DROP CONSTRAINT post_place_id_fkey;
       public          postgres    false    205    2905    207            s           2606    16969    post post_product_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(id);
 C   ALTER TABLE ONLY public.post DROP CONSTRAINT post_product_id_fkey;
       public          postgres    false    209    2909    207            t           2606    16974 '   post post_product_qualification_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_product_qualification_id_fkey FOREIGN KEY (product_qualification_id) REFERENCES public.product_qualification_offer(id);
 Q   ALTER TABLE ONLY public.post DROP CONSTRAINT post_product_qualification_id_fkey;
       public          postgres    false    211    207    2913            u           2606    16979    post post_udm_id_fkey    FK CONSTRAINT     q   ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_udm_id_fkey FOREIGN KEY (udm_id) REFERENCES public.udm(id);
 ?   ALTER TABLE ONLY public.post DROP CONSTRAINT post_udm_id_fkey;
       public          postgres    false    207    219    2923            ?      x??L3M66K?0N?H?????? -?#      ?   :  x?uV?r?6>???O???7ˎ?֍팝???d ?(S???Xo?c=??b] ?v%???`?-?????F?M}Գ?ۍ=?_???À??(㹐@K??(>????m?k8????ݙv=?l??MPL?4!tFa8e??B(?QP?q<??6?ڱj?H)i?юB?!g\??????׻\?^??f?U?	????'??5??d??}g??8???tv??%H??1?????Wv????k?F?U[?J;TR?X??Z1U????t?,|Ү?q?????A鷎0r?hN(W?
0n??yw?fh?????(??
?Z?????u???.?s?T?ǿ5]??~0Ϧ#9????o??#%EI?38???l??s???&?lk?W???SX?R?<???ަ?pSԫI??L?3;????
?~|2N??????߽Q4ܟS?I i????R??0B?\`H?b?z????????!Б???K?F??? ??ƌ_?e??Ό??NW/??J?r?+?
?0[u???7???5XS8|~?8?^??i??\?Ӱ.?D!d\??????	\???f??/???0q?+*????"??Z?fO?Ӊގ/z??ڴzލ	A1?n??/P?????v??ݶ???!	?u?c?2,?8???"N?Q?پ?M?OM=?y?<ba???"y?o???ش-??????6?7?凨y;?L?R????˫?ͻ?[8?????_ݚ?w?]{O9???j????l,????]??J?e?.???3?}???+??z?N?`\?$L???? ?4_?4?"?y?]P??v/S?<??4x=񑟯?B䅢2?`?6k??K??vf??(?Կ"rȕ?HO*??????MQ|?/;??8W4")i?Z??{??怩?]?h??u?_?'R?'??(a?n?[?????Oa???G????X???j???Ho?(?Y?V#0]???Jõ?m?(@F?<???L?*?H?"?"g?~?3??e)???̝?q???I%?,o???A?2'S{??C?)Lpg?
??Xd?[\k?A$hG?"-yN?????X???b|?i????"iÜ??/?(?O??k??W?7s????F??)F????'>??o???e????1??OASc????H???%>)J&C"?9???;l??????ݞFZr?b??v?"??GY?{	<??x?h:$??˕m?~??4??K2ɑ8@J??F???ݸn0????ٌ??OA????_C?W,r??h?9???X?3&U7U???M?a5?&0??6??j?F?9Ń?Nؾ&0/??:???r? Vi?&??(C#?zzrr???s?      ?   ?  x???M?A???)r"??]^??١?	6eȆ??rwuhQ?Z?{??_? ?#????L?,??뉌HP@^??I{?m}???[z??Ç???????v?|:?/wH?N??]??cg*q y???#t-????/?bL\?????/????<???@?r?;s???-?8H,}<xɁU???JPϢ??Dzג4?MǦ?4܃Z???? ?D\	????E{?Ӷt?0??y?Ӵo??3X?JY?N???????g??,3J;??h]5۠m;u M?????a*ھyʈs$??ͥK9??+???\]m?(yj?se??p?l؆s??3??3?a?D2^??Ѽ???{d?T?l?y?<p??S????Z?o???	???????z?z~;~??_?^?S?Y??>R??ʡUXф?7???+?-O<۲?f?W?"?;????p?bl?Ȗ???}T?=?_2??/      ?   ?  x?Ś?r?????S ?H??;?'UI%??W)oZ$H??H@?F?*???G????M?aπ????????s?>? Έ?0???"w?7!??.8.?4f?׻M??/??d?4k??4???f?VP??ٍd?X?)<?>.?6???|U?f??l?}?|OH@????ˑй?we?X?Q??u??@Ÿ`???Ә???#??r?l?L??Gb?H?S???e?3???M??SY?? ?J??J;???z*???U?[?????6/??u?ޕ?????̂?Q??]?????w?{35?v??"߯?S??( ?g?P'?"?4???f??q?????? @?`t}9$???U?o;
?5????????u+?z?6[???h??÷?&?3??????.??}93هj??ޭ6y?#?3?M???Տs3kW ??<???e??,??pGt7??????????\??M?6		6?G?X??U?sp??3??+??e?(???"\$ᴀ??\?x?g?????.??4?q$cY}?6_B?Y???}?׏???9ļ?)??????f???ɀ{%?̅?һ??D?N?ظ8?R8]??q8??r\??+|ޯ?u?S??????aSשx?Nuq2_}9F?ay8$?¥k???????
???~~	DoM??HV?????d?fZ^??|k?ݾM??Tf????u??8??DC?:-??XQ??
J:?'Uѽ?U???ek??w?)??l|?br4:?~C??>?D
??c#$???a?L?Ó???*???V?ʹ??x6c?S?????pŴ:?wm뱭?χ?.?^z?QA ?????	??<?1??????Duj?nk*/???I.GR?Y ??A0Δ?"?{Z?`? ??????5???i??1??O렏???8@?e??4????)?z0z[=rH?z[=j@}???z?~S=Pl?$??tO???<]=]??'<???${?P???d?˰?ZA	&??]?+???q???j???????߸0??ǣL?^?aQ?ڈ^??}??%??gSְ??j??Ɣ??o?v??70?`폺]A_????y???}	??/??e?ЋU?e`???8b?E?}N?a?V?1-???N?ks+|????Em???զ????5LfZއ??w?to?? ǈ-?Y?cy?L?????]????r;?O1?PLV???8^Ֆu9?V???????b?Ǆ??N?[-?A??X?.??i?JJ_??ɮ??^vA9?*JN??^?"u?(	J???lS????ҥ????g
c??????)k;???<??1&?9.&??j/?$"
??????????s?n??+?M{?`񐮸???E<=???_??z??rx????p?q?\???????Lnc頻m?:??s︪?]???)D?qO?c??&b???????ߐ?2??8Ke?O?QGN_g??]"g?????J?Z=?M?G??v??|?xv5\?,??T?????e??'PH???c)b[u?q???8Ű??dg???d|????A??@?NͦB??@?ݔ	????v?@?{='?W?f???/L3?"?S???ZCw?ew?v|?:?!?O-?$e??????j?OGn? k-}??????E`?0?Ջ@????4???S,??
?6?l?V???,n??P???8???o??tL???????=?DGgM????*u6??۠??سyXŷ??ns?]/&B??{/r?@?????:p<?(?v???x???bG]?A?????M?$p ǅ3??p?/?=???{	?6\x8????????? ??<<ioԾl'????L??
?Y?Z"?nF?JcL??????Ӧ,?-?'?7????o?!<?↡.$vS?L4?"????x??H?{?z??/?]R?$?????8??R?%?ߪ?wK5???x|Ò?-Հ[?_???-U?-E????_'?wK?tKiC???Ó?	p?>+22\!O????z??3??3J???Q??:???֧??"???ŵDx????X??D=첂?e?>??@_????
o}??T??\M??@?R*???e$?5O? 6i?U?]Q??
5??*?+????eJ??׮&»?V	??_]O??n?uJ?\??#»?}??P!/W??? AN?`?ܣ[։
T??????	??????v2?????y      ?     x?u??r?8?k?)?7?????8???????\??B$h B?Dg??qy??L??|??vP???H??G????L?'ժ????>N?O?)??????sg????Bܹ???D??`??y:?FۥJ?,?Df?2?E??M?????QA?
<1?????©????d??f??Eo??????9?ٺn?Q*H*?lkb??H)fݽ^??^w??6?W??˪?R?ڒl?n?&k-f?^5D?q??????'??A?R?]?$I? m?V[c?:?I??\w?]k???>'?L???n??8kB????8W#?OH??V?.??F-??^%*iզ3?????Zߩ??$??V??un}?}h??%?`??>?gJ(2).?Usՠ?Ih&?M??[?????wI?????ܪ??&??e?3!???#??&HY?[wl?h'?Y?[{?o&?Y??P???fկ-?}??f?o?[?????u>??~???\?J??Ko@?D?ϧ/Lh;K??[?y??r ?R??˝nug>?????l{?u.hD;???;??i?Hts?]qӻd?]7fI`s?5?.?_|?ڏ? RH9?w>??BR?|??QBR ??zmO?C???"e_cV?B
?q!B9ȹ??ytQ?E!^ak=??'?+?)ۢ?V5??A?l?J??mq??k^1%\?????Ά(??d?R/'/?FuK??>?r?Q???h?bSNť6k??)' e???.??D??7?%?p?x??x?????>NLʂ?8??[?Kģ,Gi???S?7@?u"RV?`???5$?x?&A?&??m??@T?Dk??lA?)???a?RqE?0;qE?
bQe7͊Z&ĉE??K	*?
qe?N\??	DU????o9B?W??6??{3?f?2??S)i??_??	?! ?????鼥$???[?Ό*Q??Q?S+???F4?T\?ذ!D ?L\k???\??=?|M??D??G?A3m#G? "u!ޅE??BM????O]??W?U]??=?E?U?$.??c?HN&A?~P???/W?e?}??V??i?:m?J?)+iP0Gm??????ޚM|(c)'???p0x9g????7l*?L?&Ke??l?F??^?*v?N5?&glrr?'8g?????[?S3;)?<??X??t00@9=2??Cш?f?2=r??:#ň?N[??zvmP?*??w{	^?Z????L??{??]ǖJ?{V'????U?}Иƣ?}TH?A?{??aP??8ȩ?Vn3?UuC?^3>?LAź:m?<??Ԑd?0tzml?20?N7f??=?qF?qi??}?U???Fm?????????KR???关Ad<?~???֍2?=A???a???`?	?7L?.??l0??(_
e&?iB4?????xΖ)?n??%&
u??GJ<?o*Y:?????????Wr??-n??r?Ü?%?<3K?z??jV*?9?c?~ײ??b???Voi??ex+??2h5+Gw?k???A??`???????p??$????c??M?'?=?2???i????>???????w?:A?+\M\???????%?d??????D??S??x?z???]"????q?17E"G???1?90???Rq??g??ߵ2󽑟T?=?2?S?
???R?Y??|S'?-????	???Q?M?ƥ`?5n??q??{PZ??;???\bZ
NX??](%s?dD?84?/	'?ɇ+??Һ?>????E?N?.????c0?F??5??[E??KH???????????5??????P?GT??F????}?!aҹ???????????+??c      ?   \   x?3?t?()J????2?t?????9?S??,Π??Ҝ?"ǔ3?(37?ڌ3(????s??%Ce,8?R???-9݋JS???=... ??          d   x?3??.-H-JL????,.2??8?C\?]|=??-9Q? ?F?a?y)? ?0W ߐ?9?? ????7??Ș?)5/5-393?(3????ύ+F??? z!#5         8   x?34?t?/JLJ,.?/?prr600?24?t?OIMOT02?tr??p??qqq iNg         ?  x?]?1r?0??>̎E?ݾ????? B?t?T|??~???|??????k??PXH?T?C)$?@?B;?1??x????*|?S??W???%k?n?6v?vI???č??]???/?cw??ı?ɲ]???K?x6???"l?s?_?C?\?C???!s&???9asȜD?2g#l?s6??? mN??Eڜ2׍?9e?})lN?+?6?̕H?S?*??)sis?\??9e?Aڜ2׃??d?es??es?̅??d???6??L??%3es?L?l.??(?Kf?撙h3e??L??m?̽@?)sh3e????L??@?)s??2w?6S??f??????賢5b??#?'f??>?Z?&?gSk???ř?Z4D?E?A??3??g}???̦?9?5??gMk?sc}D??纮????i         ?   x?M̱? F???O???ֱ:?4N.W??!\Ca??515L'????Xc:?(??Rϰt?'??&?ZB?GS?rg4KzC[????%Y9US??????UiӨ???谩????v??@???i*?????6?     