PGDMP                         z         
   corapoyodb #   12.8 (Ubuntu 12.8-0ubuntu0.20.04.1) #   12.7 (Ubuntu 12.7-0ubuntu0.20.04.1) U    
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16681 
   corapoyodb    DATABASE     |   CREATE DATABASE corapoyodb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE corapoyodb;
                postgres    false            �            1259    16682    alembic_version    TABLE     X   CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);
 #   DROP TABLE public.alembic_version;
       public         heap    postgres    false            �            1259    16685    partner    TABLE     ,  CREATE TABLE public.partner (
    id integer NOT NULL,
    name character varying(50),
    last_name character varying(50),
    email character varying(250) NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(50),
    role_id integer,
    phone character varying
);
    DROP TABLE public.partner;
       public         heap    postgres    false            �            1259    16691    partner_id_seq    SEQUENCE     �   CREATE SEQUENCE public.partner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.partner_id_seq;
       public          postgres    false    203                       0    0    partner_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.partner_id_seq OWNED BY public.partner.id;
          public          postgres    false    204            �            1259    16693    place    TABLE     .  CREATE TABLE public.place (
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
       public         heap    postgres    false            �            1259    16699    place_id_seq    SEQUENCE     �   CREATE SEQUENCE public.place_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.place_id_seq;
       public          postgres    false    205                       0    0    place_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.place_id_seq OWNED BY public.place.id;
          public          postgres    false    206            �            1259    16701    post    TABLE       CREATE TABLE public.post (
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
    donation boolean
);
    DROP TABLE public.post;
       public         heap    postgres    false            �            1259    16707    post_id_seq    SEQUENCE     �   CREATE SEQUENCE public.post_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.post_id_seq;
       public          postgres    false    207                       0    0    post_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.post_id_seq OWNED BY public.post.id;
          public          postgres    false    208            �            1259    16709    product    TABLE     �   CREATE TABLE public.product (
    id integer NOT NULL,
    name character varying(50),
    code character varying(50),
    price double precision
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    16712    product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          postgres    false    209                       0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          postgres    false    210            �            1259    16714    product_qualification_offer    TABLE     �   CREATE TABLE public.product_qualification_offer (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    qualification integer
);
 /   DROP TABLE public.product_qualification_offer;
       public         heap    postgres    false            �            1259    16717 "   product_qualification_offer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_qualification_offer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.product_qualification_offer_id_seq;
       public          postgres    false    211                       0    0 "   product_qualification_offer_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.product_qualification_offer_id_seq OWNED BY public.product_qualification_offer.id;
          public          postgres    false    212            �            1259    16719    role    TABLE     v   CREATE TABLE public.role (
    id integer NOT NULL,
    name character varying(50),
    code character varying(50)
);
    DROP TABLE public.role;
       public         heap    postgres    false            �            1259    16722    role_id_seq    SEQUENCE     �   CREATE SEQUENCE public.role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.role_id_seq;
       public          postgres    false    213                       0    0    role_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.role_id_seq OWNED BY public.role.id;
          public          postgres    false    214            �            1259    16724    square    TABLE     x   CREATE TABLE public.square (
    id integer NOT NULL,
    name character varying(50),
    code character varying(50)
);
    DROP TABLE public.square;
       public         heap    postgres    false            �            1259    16727    square_id_seq    SEQUENCE     �   CREATE SEQUENCE public.square_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.square_id_seq;
       public          postgres    false    215                       0    0    square_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.square_id_seq OWNED BY public.square.id;
          public          postgres    false    216            �            1259    16729    store    TABLE     �   CREATE TABLE public.store (
    id integer NOT NULL,
    number integer,
    code character varying(50),
    square_id integer
);
    DROP TABLE public.store;
       public         heap    postgres    false            �            1259    16732    store_id_seq    SEQUENCE     �   CREATE SEQUENCE public.store_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.store_id_seq;
       public          postgres    false    217                       0    0    store_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.store_id_seq OWNED BY public.store.id;
          public          postgres    false    218            �            1259    16734    udm    TABLE     ^   CREATE TABLE public.udm (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.udm;
       public         heap    postgres    false            �            1259    16737 
   udm_id_seq    SEQUENCE     �   CREATE SEQUENCE public.udm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.udm_id_seq;
       public          postgres    false    219                       0    0 
   udm_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.udm_id_seq OWNED BY public.udm.id;
          public          postgres    false    220            G           2604    16739 
   partner id    DEFAULT     h   ALTER TABLE ONLY public.partner ALTER COLUMN id SET DEFAULT nextval('public.partner_id_seq'::regclass);
 9   ALTER TABLE public.partner ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    203            H           2604    16740    place id    DEFAULT     d   ALTER TABLE ONLY public.place ALTER COLUMN id SET DEFAULT nextval('public.place_id_seq'::regclass);
 7   ALTER TABLE public.place ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    205            I           2604    16741    post id    DEFAULT     b   ALTER TABLE ONLY public.post ALTER COLUMN id SET DEFAULT nextval('public.post_id_seq'::regclass);
 6   ALTER TABLE public.post ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    207            J           2604    16742 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209            K           2604    16743    product_qualification_offer id    DEFAULT     �   ALTER TABLE ONLY public.product_qualification_offer ALTER COLUMN id SET DEFAULT nextval('public.product_qualification_offer_id_seq'::regclass);
 M   ALTER TABLE public.product_qualification_offer ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211            L           2604    16744    role id    DEFAULT     b   ALTER TABLE ONLY public.role ALTER COLUMN id SET DEFAULT nextval('public.role_id_seq'::regclass);
 6   ALTER TABLE public.role ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213            M           2604    16745 	   square id    DEFAULT     f   ALTER TABLE ONLY public.square ALTER COLUMN id SET DEFAULT nextval('public.square_id_seq'::regclass);
 8   ALTER TABLE public.square ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            N           2604    16746    store id    DEFAULT     d   ALTER TABLE ONLY public.store ALTER COLUMN id SET DEFAULT nextval('public.store_id_seq'::regclass);
 7   ALTER TABLE public.store ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            O           2604    16747    udm id    DEFAULT     `   ALTER TABLE ONLY public.udm ALTER COLUMN id SET DEFAULT nextval('public.udm_id_seq'::regclass);
 5   ALTER TABLE public.udm ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            �          0    16682    alembic_version 
   TABLE DATA           6   COPY public.alembic_version (version_num) FROM stdin;
    public          postgres    false    202   �`       �          0    16685    partner 
   TABLE DATA           a   COPY public.partner (id, name, last_name, email, username, password, role_id, phone) FROM stdin;
    public          postgres    false    203   a       �          0    16693    place 
   TABLE DATA           �   COPY public.place (id, name, partner_id, product_id, product_two_id, product_three_id, latitude, longitude, store_id, geolocation) FROM stdin;
    public          postgres    false    205   �d       �          0    16701    post 
   TABLE DATA           �   COPY public.post (id, place_id, product_id, price, date_added, cut_date_added, udm_name, product_qualification_name, product_name, place_name, place_latitude, place_longitude, udm_id, product_qualification_id, post, donation) FROM stdin;
    public          postgres    false    207   �e       �          0    16709    product 
   TABLE DATA           8   COPY public.product (id, name, code, price) FROM stdin;
    public          postgres    false    209   i       �          0    16714    product_qualification_offer 
   TABLE DATA           N   COPY public.product_qualification_offer (id, name, qualification) FROM stdin;
    public          postgres    false    211   1p                  0    16719    role 
   TABLE DATA           .   COPY public.role (id, name, code) FROM stdin;
    public          postgres    false    213   �p                 0    16724    square 
   TABLE DATA           0   COPY public.square (id, name, code) FROM stdin;
    public          postgres    false    215   q                 0    16729    store 
   TABLE DATA           <   COPY public.store (id, number, code, square_id) FROM stdin;
    public          postgres    false    217   Yq                 0    16734    udm 
   TABLE DATA           '   COPY public.udm (id, name) FROM stdin;
    public          postgres    false    219   s                  0    0    partner_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.partner_id_seq', 53, true);
          public          postgres    false    204                       0    0    place_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.place_id_seq', 34, true);
          public          postgres    false    206                       0    0    post_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.post_id_seq', 25, true);
          public          postgres    false    208                       0    0    product_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.product_id_seq', 164, true);
          public          postgres    false    210                       0    0 "   product_qualification_offer_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.product_qualification_offer_id_seq', 9, true);
          public          postgres    false    212                       0    0    role_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.role_id_seq', 23, true);
          public          postgres    false    214                       0    0    square_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.square_id_seq', 11, true);
          public          postgres    false    216                       0    0    store_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.store_id_seq', 80, true);
          public          postgres    false    218                       0    0 
   udm_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.udm_id_seq', 20, true);
          public          postgres    false    220            Q           2606    16749 #   alembic_version alembic_version_pkc 
   CONSTRAINT     j   ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);
 M   ALTER TABLE ONLY public.alembic_version DROP CONSTRAINT alembic_version_pkc;
       public            postgres    false    202            S           2606    16751    partner partner_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.partner
    ADD CONSTRAINT partner_email_key UNIQUE (email);
 C   ALTER TABLE ONLY public.partner DROP CONSTRAINT partner_email_key;
       public            postgres    false    203            U           2606    16753    partner partner_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.partner
    ADD CONSTRAINT partner_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.partner DROP CONSTRAINT partner_pkey;
       public            postgres    false    203            W           2606    16755    partner partner_username_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.partner
    ADD CONSTRAINT partner_username_key UNIQUE (username);
 F   ALTER TABLE ONLY public.partner DROP CONSTRAINT partner_username_key;
       public            postgres    false    203            Y           2606    16757    place place_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.place
    ADD CONSTRAINT place_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.place DROP CONSTRAINT place_pkey;
       public            postgres    false    205            [           2606    16759    post post_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.post DROP CONSTRAINT post_pkey;
       public            postgres    false    207            ]           2606    16761    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    209            _           2606    16763 @   product_qualification_offer product_qualification_offer_name_key 
   CONSTRAINT     {   ALTER TABLE ONLY public.product_qualification_offer
    ADD CONSTRAINT product_qualification_offer_name_key UNIQUE (name);
 j   ALTER TABLE ONLY public.product_qualification_offer DROP CONSTRAINT product_qualification_offer_name_key;
       public            postgres    false    211            a           2606    16765 <   product_qualification_offer product_qualification_offer_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.product_qualification_offer
    ADD CONSTRAINT product_qualification_offer_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.product_qualification_offer DROP CONSTRAINT product_qualification_offer_pkey;
       public            postgres    false    211            c           2606    16767    role role_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.role DROP CONSTRAINT role_pkey;
       public            postgres    false    213            e           2606    16769    square square_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.square
    ADD CONSTRAINT square_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.square DROP CONSTRAINT square_pkey;
       public            postgres    false    215            g           2606    16771    store store_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.store
    ADD CONSTRAINT store_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.store DROP CONSTRAINT store_pkey;
       public            postgres    false    217            i           2606    16773    udm udm_name_key 
   CONSTRAINT     K   ALTER TABLE ONLY public.udm
    ADD CONSTRAINT udm_name_key UNIQUE (name);
 :   ALTER TABLE ONLY public.udm DROP CONSTRAINT udm_name_key;
       public            postgres    false    219            k           2606    16775    udm udm_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.udm
    ADD CONSTRAINT udm_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.udm DROP CONSTRAINT udm_pkey;
       public            postgres    false    219            v           2606    16776    store fk_square    FK CONSTRAINT     q   ALTER TABLE ONLY public.store
    ADD CONSTRAINT fk_square FOREIGN KEY (square_id) REFERENCES public.square(id);
 9   ALTER TABLE ONLY public.store DROP CONSTRAINT fk_square;
       public          postgres    false    2917    215    217            m           2606    16781    place fk_store    FK CONSTRAINT     n   ALTER TABLE ONLY public.place
    ADD CONSTRAINT fk_store FOREIGN KEY (store_id) REFERENCES public.store(id);
 8   ALTER TABLE ONLY public.place DROP CONSTRAINT fk_store;
       public          postgres    false    205    217    2919            l           2606    16786    partner partner_role_id_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY public.partner
    ADD CONSTRAINT partner_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.role(id);
 F   ALTER TABLE ONLY public.partner DROP CONSTRAINT partner_role_id_fkey;
       public          postgres    false    2915    203    213            n           2606    16791    place place_partner_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.place
    ADD CONSTRAINT place_partner_id_fkey FOREIGN KEY (partner_id) REFERENCES public.partner(id);
 E   ALTER TABLE ONLY public.place DROP CONSTRAINT place_partner_id_fkey;
       public          postgres    false    203    2901    205            o           2606    16796    place place_product_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.place
    ADD CONSTRAINT place_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(id);
 E   ALTER TABLE ONLY public.place DROP CONSTRAINT place_product_id_fkey;
       public          postgres    false    209    205    2909            p           2606    16801 !   place place_product_three_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.place
    ADD CONSTRAINT place_product_three_id_fkey FOREIGN KEY (product_three_id) REFERENCES public.product(id);
 K   ALTER TABLE ONLY public.place DROP CONSTRAINT place_product_three_id_fkey;
       public          postgres    false    209    2909    205            q           2606    16806    place place_product_two_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.place
    ADD CONSTRAINT place_product_two_id_fkey FOREIGN KEY (product_two_id) REFERENCES public.product(id);
 I   ALTER TABLE ONLY public.place DROP CONSTRAINT place_product_two_id_fkey;
       public          postgres    false    205    209    2909            r           2606    16811    post post_place_id_fkey    FK CONSTRAINT     w   ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_place_id_fkey FOREIGN KEY (place_id) REFERENCES public.place(id);
 A   ALTER TABLE ONLY public.post DROP CONSTRAINT post_place_id_fkey;
       public          postgres    false    205    2905    207            s           2606    16816    post post_product_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(id);
 C   ALTER TABLE ONLY public.post DROP CONSTRAINT post_product_id_fkey;
       public          postgres    false    209    2909    207            t           2606    16821 '   post post_product_qualification_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_product_qualification_id_fkey FOREIGN KEY (product_qualification_id) REFERENCES public.product_qualification_offer(id);
 Q   ALTER TABLE ONLY public.post DROP CONSTRAINT post_product_qualification_id_fkey;
       public          postgres    false    211    207    2913            u           2606    16826    post post_udm_id_fkey    FK CONSTRAINT     q   ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_udm_id_fkey FOREIGN KEY (udm_id) REFERENCES public.udm(id);
 ?   ALTER TABLE ONLY public.post DROP CONSTRAINT post_udm_id_fkey;
       public          postgres    false    207    219    2923            �      x��L3M66K�0N�H����� -�#      �   h  x�uTKr�6]7N������Q\q�Iy&�J�,�%�p��S�m��2g��� )��r�!�� �n4���7mv�~�n�Iu�&,��bТ3��q!�������CP[Ue��+��6\���Ί���ʪ��Uyt��� W�YeA��;�W��#Tݺl���f��;R�g�c,��3�[����+׸0g�jl>A�������R���k���G�������FΩ0�cpĳ�E������*�iv����`r;42ʹ��S��_+c��],� �$q�loL��D��L������b���!�����}R���@�(��~qO���u��\��Z���M�_}M%S��18-9���Q�3E����jC�B�k�kmA�b���1O1�c�Q����bٴ�����Q��ד�еU�c����GW��W�jXl�4�[������I�o'�P�H�s"����?����呼�!NOD)J�K�q�}�}�qp�jߝR݄�!z����	,��lY����e,��G�S(�d��iK�o��>n�D���P�7DRX��Ȯ�C�v�w�\ɰFo���t��U��Ґp���\S�ʝ��J1�5\J�j��f�\l]����~�m���9N��Aۄ�K�)��d�4Ka��P6�v��0�w���Z���9�������Q�]��s���w=X>�5�"��,,oW7��/�p����·��.��;1�[�����̀Km��53&ω��S~�z�"=��ɒ����Ж(������x�?ϝ[.��2'��o�~��ŋ��	/ɿ�%+%�a�š*���o���'�����8�(��P����+L�P�-��фđ*���B��:R      �   8  x�e�Mj�@���)|���H��B!�����)I��髙x���0������(
�@y)�d����n(	
�a70m�NK�i������$@Y��ay�[�/�!�o���~�~L��t���v��Z�K7�,�;���0�{�������e�����4��3D��p��V/Ggjb��^	U:�K��q����j�gΩ�N]r4-�z�0�q!^�k�Cw]��8&�:7Uŕ�:n^J�o��Rܺԋ?x�	������/E0�-$j�Vw=$��*Q�O�Mū���hZ�-�a3�/�!w       �   =  x����n�8�3��M�%��-[t/�E����E٢e+��m���C��/�CJ���Q�@�9Ȳ3�_Cs"��?��K��O�הq�p���"�c_u5y��k�|��름�^�.�L����I��:�$~0�^�˖��/���M�sO>���kN\�,Ӗ���R��k�`J"��H����*m5�H�*�Q�Z��׽Ǚ�j�1���?�k:���0܏�H3�rv8�r"�oʭ{���w��=|k���t��u�.�*s�C	��vJ�~�ե�c!�����/�_mJ���%D:���,K�r���*��HEx6����N,ڨ/>_�,�S-d��q87���4vjz0��]Ve���E��@o�j�߅�r-����O�[�.��̄���96͌M�ϖ�#���ߕ���_���o���霽��Y�I�s���ꄿj��~I���n��H�Gt���]7~���+�e����t��&�����z��"Dl>!&;W�2�%�*>�]}ޮ|M�-nDy=C�&զ����VP���pJκ�����Ng[s�<�;��q;z�f�0��<�I����
��Rr�ۍA�/%�YYZ.^JN���g��H+yBp�}͓#&�"��Xc�j���ڬbq��`��	���i��?����I3���^�,i��}��yK=�%؜�Y���d��V�H��D��8�yO&�[wSW�\:�,z��(��!���&~��t�����'��c[��>p��1=w�����U��v��=�,�[h�};�u8c��u��sY,D2�>ƜԑZ��>?���|҉�_�-�6��b�X�x��x      �     x�}��r�6���S�	:���(�uܩ�z\�3��Q�D����6>��C&�^�b�vP�]7���Hb� V���W�Z��(q�������3��=w�*qA��,ĝۨ�Nĝ�9���k�)$�Z�?Z��6��Y���,,Lf�2�E��M����G�QA�
<1���©����d�f�Eo�����9�ٺn�Q*H*�lkb��H)f݃^��Aw��6yP��˪�R��%٪ݾ�EkM�Z̖�j�p�6�?��R�@L'�J�vA�$Ƀ�U[m��.�D&��s��v���s�Ld�T�w���Y�$�ĹZh�yB����u��5j�o�*QI��6�q���e��N͇� ���s��P�C��$(���a=SB�Iq�����NB��l��ض�~��^N5�O��V�M4�,{τ��n�,�� e����8�N ��]{�o&�Y��(�BX��-o>NT���Vw�!-b�OF����<��R2��7�b�����W&�����-T�<}e9�R)���N��3���l{�u.hD;���;��i�Hts�]qӻd��\7fI`s�5�.�_|�ڏ� RH9�w>��BR��e]��� ��ڞ�Z9#E:ʾƬ�\�B�r.�s����\�B������X?�L��(��1(�*e[T��g��+���Z\v����pb���S���ިn����WN4J��5��Clʩ��f��5��L����(3�C�������2�����ǉIYP��@��t�y�x��(��vxn���ND�j���5�R֣�d��$(�d���R�J�(�`m�-C5����#U*��f'�YA,���YQ˄8���xb�"A%"U!��҉+~?��J��b�/�ԫJ\��𽍙_�D�W���4f��*|�{@=y��y:o)�D-���3�J�iT���쇗��:�=6l�:��b@8W{��2_S�%Ѩ�Ql�L���;�H]��ah��C�P���z�S�Gz �UbUWG꯭Fy�h�5�Kw�1�h$��4�����j²����J�6Z�M\i5e%
f��cPRV����[��e,�$Q/�,���^�M��Q�d��[k��j���൫b��T�?bR�q�&'�x�sƸ�{=||jf'�g��۝(�G�ނb(1�S�G���^g��>jK]zA���*SŴ��a�#�\k|^y��b\������R���*����߾h���x��Rk��^fp�n4r깕��qU�P�׌3SP��N[<��#5$$�^��Ӎ��v�lC�a\�a_y�a<�Q[l�d��(C���T�i(�Dy�l�� n�u�cO�:�p�zAd:s���ӷ� 267ʗ�G�	f�M�j��%��e�4���k�ɅBG]�E���J��.��(0ox�>f��,f�[���0'n	!��ƭ�8���
q�����ߵl�Xb���[��t�ʣ���o���]}�/�z�:,���E�,��;�"(�����'q�~�	�@��3x��0Ï��l�b�F����N��
WW&)<��0	7ٽں���<�,P�����_��u 2���sS$�q�p��3�	�S�=/���7��	��*3��I���*�m1%�Л!�/Ŝ��7u�`�R�����N�1E�Ĺa\
�[�gɼ�e?|�y'O��Rp�2<w�B)�&#�ơ�}I8L>\)�H������&^.
u�wT���y5����5�*�M.!nlR�
���0#(��~q�җ����ggg�3�&      �   \   x�3�t�()J���2�t�����9�S��,Π��Ҝ�"ǔ3�(37�ڌ3(���s��%Ce,8�R���-9݋JS���=... ��          d   x�3��.-H-JL����,.2�8�C\�]|=��-9Q� �F�a�y)� �0W ߐ�9?� ����7��Ș�)5/5-393�(3����ύ+F��� z!#5         8   x�34�t�/JLJ,.�/�prr600�24�t�OIMOT02�tr��p��qqq iNg         �  x�]�1r�0��>̎E�ݾ����� B�t�T|��~���|������k��PXH�T�C)$�@�B;�1��x����*|�S��W���%k�n�6v�vI���č��]���/�cw��ı�ɲ]���K�x6���"l�s�_�C�\�C���!s&��9asȜD�2g#l�s6��� mN��Eڜ2׍�9e�})lN�+�6�̕H�S�*��)sis�\��9e�Aڜ2׃��d�es��es�̅��d��6��L��%3es�L�l.��(�Kf�撙h3e��L��m�̽@�)sh3e����L��@�)s��2w�6S��f������賢5b�#�'f��>�Z�&�gSk���ř�Z4D�E�A��3��g}���̦�9�5��gMk�sc}D��纮���i         �   x�M̱� F���O���ֱ:�4N.W�!\Ca��515L'����Xc:�(��Rϰt�'��&�ZB�GS�rg4KzC[����%Y9US�����UiӨ���谩����v��@���i*�����6�     