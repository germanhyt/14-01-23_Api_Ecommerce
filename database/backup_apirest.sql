PGDMP     ,                     {            db_users_restapi    14.6    14.6 O    Z           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            [           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            \           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ]           1262    16530    db_users_restapi    DATABASE     l   CREATE DATABASE db_users_restapi WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
     DROP DATABASE db_users_restapi;
                postgres    false            �            1259    16601    address    TABLE     Z  CREATE TABLE public.address (
    id bigint NOT NULL,
    id_user bigint NOT NULL,
    address character varying(255) NOT NULL,
    neighborhood character varying(255) NOT NULL,
    lat numeric DEFAULT 0,
    lng numeric DEFAULT 0,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);
    DROP TABLE public.address;
       public         heap    postgres    false            �            1259    16600    address_id_seq    SEQUENCE     w   CREATE SEQUENCE public.address_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.address_id_seq;
       public          postgres    false    221            ^           0    0    address_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.address_id_seq OWNED BY public.address.id;
          public          postgres    false    220            �            1259    16575 
   categories    TABLE        CREATE TABLE public.categories (
    id bigint NOT NULL,
    name character varying(180) NOT NULL,
    image character varying(255) NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);
    DROP TABLE public.categories;
       public         heap    postgres    false            �            1259    16574    categories_id_seq    SEQUENCE     z   CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          postgres    false    217            _           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          postgres    false    216            �            1259    16642    order_has_products    TABLE     �   CREATE TABLE public.order_has_products (
    id_order bigint NOT NULL,
    id_product bigint NOT NULL,
    quantity bigint NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);
 &   DROP TABLE public.order_has_products;
       public         heap    postgres    false            �            1259    16617    orders    TABLE     �  CREATE TABLE public.orders (
    id bigint NOT NULL,
    id_client bigint NOT NULL,
    id_delivery bigint,
    id_address bigint NOT NULL,
    lat numeric DEFAULT 0,
    lng numeric DEFAULT 0,
    status character varying(90) NOT NULL,
    "timestamp" bigint NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    16616    orders_id_seq    SEQUENCE     v   CREATE SEQUENCE public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    223            `           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    222            �            1259    16584    products    TABLE     �  CREATE TABLE public.products (
    id bigint NOT NULL,
    name character varying(180) NOT NULL,
    description character varying(255) NOT NULL,
    price numeric DEFAULT 0,
    image1 character varying(255),
    image2 character varying(255),
    image3 character varying(255),
    id_category bigint NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    16583    products_id_seq    SEQUENCE     x   CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public          postgres    false    219            a           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public          postgres    false    218            �            1259    16545    roles    TABLE       CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    image character varying(255),
    route character varying(255),
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    16544    roles_id_seq    SEQUENCE     u   CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    212            b           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    211            �            1259    16557    user_has_roles    TABLE     �   CREATE TABLE public.user_has_roles (
    id_user bigint NOT NULL,
    id_rol bigint NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);
 "   DROP TABLE public.user_has_roles;
       public         heap    postgres    false            �            1259    16556    user_has_roles_id_rol_seq    SEQUENCE     �   CREATE SEQUENCE public.user_has_roles_id_rol_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.user_has_roles_id_rol_seq;
       public          postgres    false    215            c           0    0    user_has_roles_id_rol_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.user_has_roles_id_rol_seq OWNED BY public.user_has_roles.id_rol;
          public          postgres    false    214            �            1259    16555    user_has_roles_id_user_seq    SEQUENCE     �   CREATE SEQUENCE public.user_has_roles_id_user_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.user_has_roles_id_user_seq;
       public          postgres    false    215            d           0    0    user_has_roles_id_user_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.user_has_roles_id_user_seq OWNED BY public.user_has_roles.id_user;
          public          postgres    false    213            �            1259    16532    users    TABLE     �  CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying(255) NOT NULL,
    name character varying(255),
    lastname character varying(255),
    phone character varying(80) NOT NULL,
    image character varying(255),
    password character varying(255),
    is_available boolean,
    session_token character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    state character varying(100)
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16531    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    210            e           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    209            �            1259    32914    users_token_tokenid_seq    SEQUENCE     �   CREATE SEQUENCE public.users_token_tokenid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.users_token_tokenid_seq;
       public          postgres    false            �            1259    24779    users_token    TABLE     �  CREATE TABLE public.users_token (
    tokenid bigint DEFAULT nextval('public.users_token_tokenid_seq'::regclass) NOT NULL,
    userid character varying(45) DEFAULT NULL::character varying NOT NULL,
    token character varying(45) DEFAULT NULL::character varying,
    state character varying(45) DEFAULT NULL::character varying,
    date character varying(45) DEFAULT NULL::character varying
);
    DROP TABLE public.users_token;
       public         heap    postgres    false    226            �           2604    16604 
   address id    DEFAULT     h   ALTER TABLE ONLY public.address ALTER COLUMN id SET DEFAULT nextval('public.address_id_seq'::regclass);
 9   ALTER TABLE public.address ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    16578    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    16620 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    16587    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    16548    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            �           2604    16560    user_has_roles id_user    DEFAULT     �   ALTER TABLE ONLY public.user_has_roles ALTER COLUMN id_user SET DEFAULT nextval('public.user_has_roles_id_user_seq'::regclass);
 E   ALTER TABLE public.user_has_roles ALTER COLUMN id_user DROP DEFAULT;
       public          postgres    false    213    215    215            �           2604    16561    user_has_roles id_rol    DEFAULT     ~   ALTER TABLE ONLY public.user_has_roles ALTER COLUMN id_rol SET DEFAULT nextval('public.user_has_roles_id_rol_seq'::regclass);
 D   ALTER TABLE public.user_has_roles ALTER COLUMN id_rol DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    16535    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            R          0    16601    address 
   TABLE DATA           g   COPY public.address (id, id_user, address, neighborhood, lat, lng, created_at, updated_at) FROM stdin;
    public          postgres    false    221   �a       N          0    16575 
   categories 
   TABLE DATA           M   COPY public.categories (id, name, image, created_at, updated_at) FROM stdin;
    public          postgres    false    217   �a       U          0    16642    order_has_products 
   TABLE DATA           d   COPY public.order_has_products (id_order, id_product, quantity, created_at, updated_at) FROM stdin;
    public          postgres    false    224   c       T          0    16617    orders 
   TABLE DATA              COPY public.orders (id, id_client, id_delivery, id_address, lat, lng, status, "timestamp", created_at, updated_at) FROM stdin;
    public          postgres    false    223   c       P          0    16584    products 
   TABLE DATA           }   COPY public.products (id, name, description, price, image1, image2, image3, id_category, created_at, updated_at) FROM stdin;
    public          postgres    false    219   <c       I          0    16545    roles 
   TABLE DATA           O   COPY public.roles (id, name, image, route, created_at, updated_at) FROM stdin;
    public          postgres    false    212   �c       L          0    16557    user_has_roles 
   TABLE DATA           Q   COPY public.user_has_roles (id_user, id_rol, created_at, updated_at) FROM stdin;
    public          postgres    false    215   �d       G          0    16532    users 
   TABLE DATA           �   COPY public.users (id, email, name, lastname, phone, image, password, is_available, session_token, created_at, updated_at, state) FROM stdin;
    public          postgres    false    210   �d       V          0    24779    users_token 
   TABLE DATA           J   COPY public.users_token (tokenid, userid, token, state, date) FROM stdin;
    public          postgres    false    225   �e       f           0    0    address_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.address_id_seq', 3, true);
          public          postgres    false    220            g           0    0    categories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categories_id_seq', 1, false);
          public          postgres    false    216            h           0    0    orders_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.orders_id_seq', 12, true);
          public          postgres    false    222            i           0    0    products_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.products_id_seq', 87, true);
          public          postgres    false    218            j           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 3, true);
          public          postgres    false    211            k           0    0    user_has_roles_id_rol_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.user_has_roles_id_rol_seq', 1, false);
          public          postgres    false    214            l           0    0    user_has_roles_id_user_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.user_has_roles_id_user_seq', 1, false);
          public          postgres    false    213            m           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 73, true);
          public          postgres    false    209            n           0    0    users_token_tokenid_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.users_token_tokenid_seq', 20, true);
          public          postgres    false    226            �           2606    24798    users_token Users_token_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.users_token
    ADD CONSTRAINT "Users_token_pkey" PRIMARY KEY (tokenid);
 H   ALTER TABLE ONLY public.users_token DROP CONSTRAINT "Users_token_pkey";
       public            postgres    false    225            �           2606    16610    address address_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.address DROP CONSTRAINT address_pkey;
       public            postgres    false    221            �           2606    16582    categories categories_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_name_key;
       public            postgres    false    217            �           2606    16580    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    217            �           2606    16646 *   order_has_products order_has_products_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.order_has_products
    ADD CONSTRAINT order_has_products_pkey PRIMARY KEY (id_order, id_product);
 T   ALTER TABLE ONLY public.order_has_products DROP CONSTRAINT order_has_products_pkey;
       public            postgres    false    224    224            �           2606    16626    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    223            �           2606    16594    products products_name_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_name_key UNIQUE (name);
 D   ALTER TABLE ONLY public.products DROP CONSTRAINT products_name_key;
       public            postgres    false    219            �           2606    16592    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    219            �           2606    16554    roles roles_name_key 
   CONSTRAINT     O   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_name_key UNIQUE (name);
 >   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_name_key;
       public            postgres    false    212            �           2606    16552    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    212            �           2606    16563 "   user_has_roles user_has_roles_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.user_has_roles
    ADD CONSTRAINT user_has_roles_pkey PRIMARY KEY (id_user, id_rol);
 L   ALTER TABLE ONLY public.user_has_roles DROP CONSTRAINT user_has_roles_pkey;
       public            postgres    false    215    215            �           2606    16541    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    210            �           2606    16543    users users_phone_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_phone_key UNIQUE (phone);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_phone_key;
       public            postgres    false    210            �           2606    16539    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    210            �           2606    16611    address address_id_user_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_id_user_fkey FOREIGN KEY (id_user) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.address DROP CONSTRAINT address_id_user_fkey;
       public          postgres    false    221    3227    210            �           2606    16647 3   order_has_products order_has_products_id_order_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_has_products
    ADD CONSTRAINT order_has_products_id_order_fkey FOREIGN KEY (id_order) REFERENCES public.orders(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.order_has_products DROP CONSTRAINT order_has_products_id_order_fkey;
       public          postgres    false    224    223    3245            �           2606    16652 5   order_has_products order_has_products_id_product_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_has_products
    ADD CONSTRAINT order_has_products_id_product_fkey FOREIGN KEY (id_product) REFERENCES public.products(id) ON UPDATE CASCADE ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.order_has_products DROP CONSTRAINT order_has_products_id_product_fkey;
       public          postgres    false    224    3241    219            �           2606    16637    orders orders_id_address_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_id_address_fkey FOREIGN KEY (id_address) REFERENCES public.address(id) ON UPDATE CASCADE ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_id_address_fkey;
       public          postgres    false    223    221    3243            �           2606    16627    orders orders_id_client_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_id_client_fkey FOREIGN KEY (id_client) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_id_client_fkey;
       public          postgres    false    210    3227    223            �           2606    16632    orders orders_id_delivery_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_id_delivery_fkey FOREIGN KEY (id_delivery) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_id_delivery_fkey;
       public          postgres    false    3227    223    210            �           2606    16595 "   products products_id_category_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_id_category_fkey FOREIGN KEY (id_category) REFERENCES public.categories(id) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.products DROP CONSTRAINT products_id_category_fkey;
       public          postgres    false    219    217    3237            �           2606    16569 )   user_has_roles user_has_roles_id_rol_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_has_roles
    ADD CONSTRAINT user_has_roles_id_rol_fkey FOREIGN KEY (id_rol) REFERENCES public.roles(id) ON UPDATE CASCADE ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.user_has_roles DROP CONSTRAINT user_has_roles_id_rol_fkey;
       public          postgres    false    3231    212    215            �           2606    16564 *   user_has_roles user_has_roles_id_user_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_has_roles
    ADD CONSTRAINT user_has_roles_id_user_fkey FOREIGN KEY (id_user) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.user_has_roles DROP CONSTRAINT user_has_roles_id_user_fkey;
       public          postgres    false    215    3227    210            R      x������ � �      N   �   x����N�0���S��P���3,,M�.�3�Զ�NK�����w��x�$���;���$螁3`��9�KBc���l�>�g�ۑ�����)���,�8^^fhPt����4l$^�^�êH���I�W��.[��Vu5�������O�Pf4����3�Ǧ$��P�_4G�l���,.�=}�ڱi]豭��aB�O��aW~�.���	txo�$J�F
9�~�����ZҘ��i^q?�¢      U      x������ � �      T      x������ � �      P   >   x��0��+M-��LI-N.�,P0�44��"CN###]C]C#+0���Ÿb���� �>�      I   	  x��ϻn�0���/ ��$$j"UmE����|6x�&��d�tt��/�����z*ު�k�3��<�!�n1�	�������FhL-��%��8K;'�}o�pJ�(}�ݒ
V#%�t��:���On/<d��~��uX\վi�I�7p�g��� Ay�ִ�]���g<"8S�Z2/�Q ��	��6e~��g���� �:<�Qf|c~�euzy/�����lpw�v�k�(QѶ�C��S&�Ć�������9��      L      x������ � �      G   �   x�m��
�0E��W��Z��P\iQ7����FM�Rѿw w��.��܌l����ش���R�������X2�s.���Ї���&TN#-v��rq��)ə7rdѹ����\u�r���~�J�B�Rߗ7���������U����C�;�n�i�A0!��ǌM��u3��E�4���dG      V   �  x�}�K�1�q�*���jƐ=0I�Xb��Iu#!�kX�I]۷ځq(e�!V��J��Z.�g�_�����׏�����Ap�8�����{���j	5�2<r$��jz��;))�2Ťe�(#�t���;m��ᴃ�p�bW�1�K�䩋��9��?@/��o]0���޹kϹ��Ɩ����v���a{���B�P1�#3	ܔ�k��%z"�<M8�`[Ժ�J�d��G�ODW��<��V�fӅ�~��q��ڜ\O���)N�C�����fn.YZR�jҜ8�8?�.���� �e�; �,�4d5���_�'����I:u�/*�n�)}�������^n�w/&��|T�Z�	��5@Ӟ:��[���=0yW�k�B���͹�"q�{��}91X�b�n�A���5|5��l\���^���ۨh���<^9gSn�8�{�l)���9�
{n�+ߝ%�9f�@�(���^A�'��ٌzn�����<p��     