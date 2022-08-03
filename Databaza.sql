PGDMP                         y            Databaza    14.0    14.0 -    (           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            )           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            *           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            +           1262    16405    Databaza    DATABASE     h   CREATE DATABASE "Databaza" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Slovak_Slovakia.1250';
    DROP DATABASE "Databaza";
                postgres    false            �            1259    16431    failed_jobs    TABLE     &  CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    postgres    false            �            1259    16430    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          postgres    false    215            ,           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          postgres    false    214            �            1259    16407 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false            �            1259    16406    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    210            -           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    209            �            1259    24648    orders    TABLE     a  CREATE TABLE public.orders (
    id bigint NOT NULL,
    user_id bigint,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    phone_number character varying(13) NOT NULL,
    street character varying(255) NOT NULL,
    city character varying(255) NOT NULL,
    postalcode character varying NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    state character varying(255) NOT NULL,
    payment character varying(255),
    delivery character varying(255),
    shopping_cart character varying,
    numbers_of_products text
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    16424    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         heap    postgres    false            �            1259    16443    personal_access_tokens    TABLE     �  CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 *   DROP TABLE public.personal_access_tokens;
       public         heap    postgres    false            �            1259    16442    personal_access_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.personal_access_tokens_id_seq;
       public          postgres    false    217            .           0    0    personal_access_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;
          public          postgres    false    216            �            1259    24605    products    TABLE     P  CREATE TABLE public.products (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    author character varying(255),
    publisher character varying(255) NOT NULL,
    isbn character varying(255) NOT NULL,
    language character varying(255) NOT NULL,
    number_of_pages integer NOT NULL,
    year_of_publication smallint NOT NULL,
    description character varying,
    genre character varying(255) NOT NULL,
    price numeric NOT NULL,
    file_path character varying(255) NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    16414    users    TABLE     v  CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    phone_number character varying(13),
    street character varying(255),
    housenumber character varying(255),
    city character varying(255),
    postalcode character varying,
    role boolean,
    shopping_cart text,
    numbers_of_products text
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16413    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    212            /           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    211            y           2604    16434    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            w           2604    16410    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            {           2604    16446    personal_access_tokens id    DEFAULT     �   ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);
 H   ALTER TABLE public.personal_access_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            x           2604    16417    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            !          0    16431    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    215   :                 0    16407 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    210   5:       %          0    24648    orders 
   TABLE DATA           �   COPY public.orders (id, user_id, name, email, phone_number, street, city, postalcode, created_at, updated_at, state, payment, delivery, shopping_cart, numbers_of_products) FROM stdin;
    public          postgres    false    219   �:                 0    16424    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          postgres    false    213   �;       #          0    16443    personal_access_tokens 
   TABLE DATA           �   COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, created_at, updated_at) FROM stdin;
    public          postgres    false    217   *<       $          0    24605    products 
   TABLE DATA           �   COPY public.products (id, title, author, publisher, isbn, language, number_of_pages, year_of_publication, description, genre, price, file_path, created_at, updated_at) FROM stdin;
    public          postgres    false    218   G<                 0    16414    users 
   TABLE DATA           �   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at, phone_number, street, housenumber, city, postalcode, role, shopping_cart, numbers_of_products) FROM stdin;
    public          postgres    false    212   �r       0           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          postgres    false    214            1           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 4, true);
          public          postgres    false    209            2           0    0    personal_access_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);
          public          postgres    false    216            3           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 12, true);
          public          postgres    false    211            �           2606    16439    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    215            �           2606    16441 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 M   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       public            postgres    false    215            }           2606    16412    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    210            �           2606    24654    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    219            �           2606    16450 2   personal_access_tokens personal_access_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_pkey;
       public            postgres    false    217            �           2606    16453 :   personal_access_tokens personal_access_tokens_token_unique 
   CONSTRAINT     v   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);
 d   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_token_unique;
       public            postgres    false    217            �           2606    24611    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    218                       2606    16423    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    212            �           2606    16421    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    212            �           1259    16429    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public            postgres    false    213            �           1259    16451 8   personal_access_tokens_tokenable_type_tokenable_id_index    INDEX     �   CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);
 L   DROP INDEX public.personal_access_tokens_tokenable_type_tokenable_id_index;
       public            postgres    false    217    217            !      x������ � �         x   x�U�A�0��1U��P���2��(��T�~I�����]S�,y�9��!d�"��dE�1JGƝA��oV��<!�Jiʽ*=�5/ʓ�(^il���Z�w���퓴r� �)i������(6>}      %   �   x���A��@E�է����8i7�J���h3tZh7�y�^̈u����C�G�)�07�	�4rj��������L~w�m�u��A��i���MX'g��m!�����)r_��)�����Ȓ�NP'�G���)My9u_C]5���l �Y�ƱӪ�?��z�=�
B�j�?�78Ɋ�*����������������Hqξ|>         x   x�KL-��LK-.��I-�LJ-vH�M���K���T1�T14P���L/1�,6u
�7�6w�J����.(q5��ʫJuMw�p	�-H
5qN,���4202�5"s#C+c+3�=... ��"�      #      x������ � �      $      x��}I�G��9�W��2U@2����@���$. U,�  `ndX�b1�I᧚���COz�1`��>�N	���/��{��#"IJS}i`0@���ٳ�|o���ѓ,�����KS�nY�/�teF�l2s/Lo.=?~5��Ԗ��������������Q�����h�xt��?�,qf��gj��W)ޫ�iCbM�Z��k��U!����ٞ�y�3S��,\�
�b)o^��㯊G�X_�6w�]_��ϫ�+�|���w�[�n�]��o�4�;�m��u���s���؄ie����EU�E��"�+��u���S���m�j?�U��]�ؓ7!IV����֗S�6ƛeh�|�
��nHj���K|��w�2I6�Ev>/�E���2��B����׭ͼin^��b���m����;OB&!���˦�O���ee�"�|O��J^{��6U��$nr�JWZ�5T7߇����I�����6�����}[,�����w�yݘ��3�bc�7��d�",����,Kw�z}�}��O����j��8f!o�S��2.h�_�2��!����|ko^���ϫ�v����M~����=WW���O^w9N/��G_=��~q4��-˕y��f�����ڏ>ƍ����� �_���!��$^tN�b�5��?X�u�ڍ�o�/�,�`�8=��,H:]�h�/S�-��� ��������w�@�4d��v�e/~�y��6�����KMȡ.�S�i�d��(s��Zf�N�?d8"_�9�1�-2�)pR�ڬ��0o"G_��1�-�ln����]�{M>�\J��y��.7ٳ���)~Q��qJ�.#m�@�o6BR��V�=����`��-���KÛ�X�sW8Pp��W�MnÒS.S��p�z
.�Op�+x�#�h�[[ԶZ�N�zX=�����'�-98�-\����������s[ϭ�d^z��Q��@L_a�{�Z��lqz~v��-�䖣�#U
��AKh+���kʶ���$���+g�أ�ˀ����%���ԫ=ʼ{�gR�vU!�"�U�`=�8ހ��nϴ���`Gj^G]
�5(���ƒߙ�&T����2|�2��纵c�tՑ��z�.��q��Lf���d6!��ܔm)](fB�A/�� U�=�����7��\�
o{j�=S�H|}a[�T�65�B.�꽂f �:����k��\_-���`5���A�Rc������R����Ϝh�g�Fo�KI��	��3*��V����c���_�l��*�v�	�iK�(񙇹��ri���F'd�z�Nz~������jG��Ce���?=�?����#r ��8#�y���ۚ:"�a=�3���T ej���4�V�r���'wJ��+��>\6�<�	�!�qL[l�,�d��'6]�9�����X#��+�A�,m�s�>0��;\q�\�͟m&:�p]�*O�9C6	_����^SB��B;�Y�vE�k�����Ӓ�u
�פ�(v�{A�Z��J,]�
����Z¸�/q��=��Z
 ����|�
;�u*���|�-/�<�20��G{�kg�� �}` z���)���ckI 3X�}����A]��%$��k}5usؚ0'���!�	��#���ݏ/��˒R�����������`h�g
�����o��ډ�S>sqV.��opۢÈin.��<�I��+�p��7��UVi,�Kh؊K`�_=�q���׀B������;�3y��Z�^� bT2D?&w5�C�byԳ�&���>f�ĩ���m��$fsPEyȄv��ڛo� #p��Q�-"<!l�Z�?�S��s5Y3�󞠲�����3ip��U�Kb;��W5xO��O|a~Y�e����_�����!s��/q�*�]*�����u���NCH�� Y� B7�vi<�+�J��p<F%$U9��IU.�ћ���mP+�Ż�y��{L��I@��6�����Z_����7���2p��va��+h����&B+gl�<�"�p�{p_��]K��/��<,���<���o~|A�]Fn����osx0>S����~*���`kg��ǯ�
�N���hv��W��g�����SKZ���|K�$��S
�����P������������ن |>�|�?�OR�&*��4C*W�N���-@F����@b�����y��y(�_Q sP�w $s��_�k>v�r��DO��ɨ�����a?X&������]��jl��9�${��V�FO2r�=�A`@𒧖C�aE�L����J8+t�.��ͣ���]�:A�b���@���� R`z����E�����oȶ�9I�h���*�:��x�u[��-T�;h�<��F��߯���88uÒ]JA_C#$��K?m�����u�g��\0T&V��rv\�r�@�/�[��`�]���|'�2�U�������}�A�_�d�К�� �n��3�qiW���M����
�(�"@�
��� �7ꨕ@|a
� +
%�T���+=��������т�>ph�ë�[X^|�;�k��qjju�s���B���s7h4�@��8���:Zqp��v.`�%V�S�T�����g����T�|EK�Y©F�N��t����['랔6�©��1�\����n�T=<��ӛ�A���3��Cɹ���� :�8��a��ҵ8�=�J:�`�D �����~X,��IO�fX �D��Qy�0:z6��)XҌ�Ibe3犩?S'8���ު���>а�c-���A�>�7x�`#�/*�����Z��x���Q��6�v�B���^�V���
�rsIv������\�FL��Aw��� ,�TP������~ Ҿ�	ԽU|i�HPM�^ޡ*V ���[/X̍%�oBWn�h3[Q������f2�G�üudfx1IC�|||��0��p;��?��gG�p[.
+��@u�t��;��w�������kT�a�c	���@,O�M`��*��zW�8[���ceaK	���QPU*@x<��FaPt�䲭:��^��p�=�B�_OaМ���J�@�5�5�ak����W��<��7P��>��y��I?�+j㾑�V$z�&����8ɧ>��-����m��;d�v��7�i��;��Go! H��h�[�+Oe�`�׊��p}�z��` )y�RD�A�w�T[��^q� Ŏ�_�G*a�l�t����eL���fx���/�V�����:+	8t���a��@q�:�A�����f*q����������%ȋrF�<Y�6���RKA()\�����)	IU7*�;�&PD�/�c��]�6\��!��h���n�A.��(�D��2���?�����0��͊ՄK�ĥoI������M�,$ē�����V�5���,��M��kKkt�'����������/a�NND9���wnZx ��d@C�<#*��ȍ}݈wK�/ě�!��J�%��*�I
F��ÑI��`������l܄j|	.�5
	���7\[X�
����Վ_�>8`!K�ļdN�~�p��q?�#��eV��88���S����zP����JH�
��G�r�u2��bt���Z�E��jnlp�3��hK0��!�Ǳ�b��=�xm7}����*8��c�M�J��D)��G�?�G�����xu�-�Lb��b%��++��>���T��JW���OP	@k��-�7���>�����\��)��O%�!0��cj��9>&������{'�2�A�$%��{�����=�~�.�xO�?� &��a'�K�!|:,���[A���46�+���&�H��A<�tحS�����@��-���w�i����O��.n8�U�����ve���G�~f��>˪�=��R����9�,�Ėvn�}�e��g���������j��\�����b,�vv���8/����%+�*�ek0����G���pf���]�    � ��@G%�4���mf�c�-T��st:>?�n'q��~�ݭ9���V�v�L'�2�}d:;��"Ӆ����2��/.~�LG�'��辊�i`A�&bt<��S���[����w��NG��i�S&�l��ܖ��T�,�Ox����1� ��Ө�0]DuU�f�{�YS�L�A�d��%gE�����QcL}�_ʏ(���e�a"@��
q�JL��QKmG3��=�}HB��Lc�P�N�MI��ӎ�|�'�4�G3�lťu2��0��S�©��Fc�~Ŝ&V#���h	f�"Eh���@l�uv��_�� �ٖ|��6��\�i��믿C�AS�q���JXK�tz>04҆�ۼs6z@K՟�-��g�g��V�k�<��|}U�Oq�jt7mj�e�p�'GG���Ѿ¥/�9�Jp�b�v&6���`5��.fZ��Ѵs��K�D��8^ �7���-laZ⁅91z����9�Oe�x�0���kG���^-����i�!.�dG��	1�R�Dy��m���=���J!��pd`EY�6��"��+Қ��r5SǕV������z�M��� 9Hb��K���1����g��,�����f�
�U��{��72�����W�0��<�����vq��~��I����d(��O���ߌ\*�ǆ��6$p�r�5�uF���3E��T+�{n�\'^�IX�_�JR W`0F���B�^���I���!8�����V|.asJ��t����r�M>�s�< 5Б*u��"���ρsL���)M�-.-�?t��!4LY3�t5����h
Z�JA�6�&a��D4�t���t|z��69؎R����{���s;�節Z[��y��'k���{�FwF���b�[3�ۛ�ӕ�RцB�\n}�aJ�7ry�*!z�o�� &�y�~95�U&�d5_X1��G["is��BmiL�C,JÛ�K�6���Y��<�$�/o?2_ب^�S��U��4�n�Sp�5XdS��`�@u3��o���Xb��Ph}�-Hиμ~��͛[y�'Iv����2 �`��=*&�Y�ed�c�,N�J5�	d}<��>m
7�ۮ�8�-�B���so��oCY7�����
w�/��.�Ovj����.]��&<P(p (�T��*��h>IK��U1f(�f��K������YS�����%W5g.VD%$�1�'#�Nc�H'���3`�X�S3�ܧ��JUc��`�ҵ�۶�	�W�$�U�D{ Y�/�/�*샓1����ߙ�J&=��+��/�Ʉ8�
@#��k��a�{A����X2ˆ�1V���7P�D�!
��(�sIL��gT�Yev-$�ó8�ᾭ/������ �l�)@"T6�����I��U=u `��1���H�}��1wԉq��Y��C�a.$'���t�B #Ay��[�?�-���i��l�Ӎ�O	�#�B����hWPr��W�M
��f'v�6t��T������(�}n��)�	����̲��OYt�(���u�Rq��t�#��t.F_@"{���x&J�M��c���tS�M�#���G�+\סԼ�/��<tϥhO�Q���=�;6��f��+xZov�Wx�Fۥas��49�IT��XO&9�O�b�����&�V��c[RMˤ���13cZɊ$�ʲ�|c��'��nh��s�4�t����`|C���A:;	�L�6!ݶ-��{ϝ���%����G����W`ֆ�޾��v���S=��1� k7��$�bh��g�T�g�%��O�
K�v�8G��V���9� �׌�+��0)�٨ʁ+~�Z�٥�ƛ������;��J�
"���{\E�����[L��R���3N'�'�`;�FJ�?ge����`��ʿ.�Jg��6�AJ����_$*���I��d��WV���4^v�q���aE�������jW�٥��o���p�vi�fQ�+�ڲ����j��sn�N�1�|�6��Q8l��yV�b�N�Pi��?��e(%s�@��j��0�8$p��C Y:'������Y&ގTcjf&��=�۲r�%�S,���[�sj!�.�G�,�b"|1��G��єL`�/f��E<��=g�X�Tw~��V�ݗz4�9l��������)�-���b�h�Ck�d,��u*��!>�����_}1�2�b�%lЫ�?H��Zvl��'�N��!�?��k��i-%�,L�J�Y(�&~��ѕ�Gץ�:|�.M�Js��27]I��U� k�qi,��D����(L�$�w��]�HH��v_��'{�Ra�S�Z�!�y�>K!(����=)�i"�ٞ �RI�o"��)(!,��6��%��_�lB�l�5ZO9f��fFy]����$���_r�Өsθ��7������/`�!�u<>;"ӭ&��s��x6T �l�o��" �E��w�(��YG�~pt�q���j����K�^�|�^m�j��*�1Z�_�h��v�Fϊ��F�D9.v��OӅ�/�֐{�_��{"�q�%��b70p�����ҶL��W��������v���?+J��s�߃������`\��|Ŭ�y�L]��e�VI�����[]ļ�Si �f��z��&]�"̤�	rtp��g���yS$淥k�����ZMB�0���c��X�J"�Rr�ORx��^���Ů/_KW:M�c�����-3�Fb�c��:ʶT��+zj����	`%"�`���9���l�ۄ���y`�RJ�؟��nC�-@����Q*���TxmFW�+Mo���H���@B뙓���K �W��(�!廼l�Ƭw%"�2��eAq�5�z�|�H�KfY���J
0�/עI[h�:५m�	����8;�_�����\,�L��), ��-�dY�a[[�m�ް�Pe �JS� -0���(}��d�@�Ĳ�_--d�f���c�Tq�+�����F��xlaΠ�`b+�I�Q���"��,=1��EJ�3�^�A{PC��Ѽ$_��T�Itj�}d��h��l�Ev\�ݢt��$�J��AsσԜB�h`�@cQ���}Fc޲*qYA����؋(�oF�H��'X�ªU�r3#+?f�BW^� 6#n,��Jz���(H5bH�P�}�S���|�kxF���;�d�T��KW���g��!�[H���p�Y� ���L���Zh�B���qzw�0�
k��f���՝�+`q�]h,JL�D3��}W"��j�%8G���f1��vI�Ą�bY�˒-_t�ۮ����D�w� g��Z^uv�evɶm;��M�&�o���X�;�UWN7Wwx|q���sxB���`$\(u��$� rt�6��?@*	�3I��*P�&���f�	<x��ËFj9ڕt�E��:
����1P>���k�c��G�c�T�����&봸�^t����t���X���eT8���c�Q�ˆ�থ�%��
�S�ה�Ќ]e�nȱ}5�8�[�qg�d�4ܑ��p�H�b��V�W)�V���+��D9p!c����X�|&���LǨ�-"W]v�UL�<�w�Wa�j��h�f��������K�Bz���r��bf����;R�H='v��(�;���]�0uts�W��=ITn�e!I�)6P����cs_�A jtQ�$���ڳ>3�~�<:���m�z�W����.�<:��{�X�I;[])���Wz
ڜ��%ͺ���F���ؾ���2��ipIM���,B.uX�"_�.M/�׫�-�+�,b�!��ZMzUc�9��wsa�:���͇�R3�FYml,�Djln5�ҫ7L�Oi�����!��("'Zgm�nU�а��"|�3B�n�t5��2��jz�� �2_��hD��`C{��"�Ҷ�����4�'IC����FB��Ôɝ����2m�JӊhQ�Μ�8	>*aB��x ���r��$�)��:����\l��a��?0�Sq)){2����BS�����    mش��K�<h��!0� ��\����!U������mG�H�r�`/��&lƓ�BݹkS�Y�_�I5	s|e˞��>��D�ww�2��N���<z���&-�z��P� |7�!5r��pK�&zG�"��%:�}�����z?�[i��c�>��2,�������0�� �ԥ!��l6�V`V�Vi�߷��,}¢q�/�ʬ}Ӭ,Y�]$���oz*�.������ym����)�*��5Q�MV7�y���비-펟JO�Pw]-i����`]`���L#�:�7�-���g�Z_~�r�pF�%~cΓY��	2��{ΚT�3�ylg<4���J��zf9��G��4�!��2&䫌u/��#�]$;��k}!��x�ӫ�<�DK���?H�\��|x�es�gZ���'Ă��%��G�%�G���U������q~t~�+�:�aӜ�����崩���; �H}�}�T�m����[m�?��Ÿ?��t؄��5�;xD���tz$?L@�H�kT�>��^�{	�bQ拼�Z���b�nj�Mw��R>)��/�!!�dП��	�
�U\��(�9��ԛ�.�2ilC~��L�~|A���^c�3�@��ӟo��`�_�_���y�#ʈ�wh$��HS]a��HdB`�������S�(�$dA9i�2�U&C���d�X:�Y�ё[��r��jT�\F���	��"`bk�c ����P�㋾�us~&�zRK?�'�� ����qh��B��lf��bG���S���/%�<��hn��`W`af�z��AN�Kl'7�F7�|+Q�ٜ(,�Ԉ���!$_Cu��G''��Q�Cг���4��ZO{)j��rv*�d~l��K]L�=gP"+�V<4$j$b�A���&Y�N�5��������el�8����{ ��_POd!H��	�y��!��mgDP�vo��1I���JX��L�/�e�,6�J�=8���ǁ���s ��$#�f�.)�s��
���D�L�L72R��@O��@�$��'�W�׬��L����>�� �q������Pj��2o����-�M_\��U�Br���@R3�V�����/�Qt�V�Ǿ��/��\v�M�$6�O6,�����"��Q�F۩P����H���p��צ�?Y�v&���M��8=� ��M�����������٠��r�C(^l��/�@"�(��|e��	݂�#�#m�kص�	�9F`*%�w�����<�J��%z����(F��������V�2M�3�����E�����{[��g��U��2/�#��x3&ԇ	����@��Q	�*� d���yAM�1x�e��B�ry�ml���L"� 1%�UhKC�l�aS�+�W�o�u-q�������(x�q� ��is钁ّS����YO@��4�z��4T�
�g�����)t>*XA)��HHh�Lu��e��ƍ�����\�#�9��v�������l�]1~F��X]����2`Gp`�~�d��_�y��$��RҾ.e���ҩQ" �%�vt0�+\ e粴˥f�;id�#�A�K�+%j�jF(ʈ�J�g��V,��]�VH�W�)M%<&"�, �^J�Y8��A�$�Ԟ�!$�A�0�����(ױ�y�4��9y�i�2�̽t&(���i`�Wr>�1%�]��Q`:~+2�]�����j�� �qs�n��aP7�ͭL�����@�f�Z<�)ҷlVW��cD����8�a���F"%:f��a�;�M�Mx~�~����B��'�p�FK���@H�Tp]���@���3)9��1ӗi9�l:K{#������mx�L�,1:�6��Xž���5O�WY��T?핧��'��T,�أMu	g��I�r�Ze����D��C����ê`/�VM=j��8��]�H[[:��tO����4��L,��/-�DNih�_�c�)A���c��s�� ���h]%[�m*J2�{llP�k�������j�<S���:�s>�pE%����}���3��`{o���oÒW%ܺ��� ��i���ō[2R=��t8�� �`�9��%�Y�,�$I�DX-$�!�r��B��&tc�	VGj����pH�&������	��h0�&�{L�J��\���㣝�x�SJ[��M*�u�QH�F/�F;����ϓ�����x_{ ��(r��/��A�%���v����O|��]���M7��z�X��y���x�ݺ���2B!�5�`������1l�#1s�!���R�:��\
�ޞ����b�xh�Ý�L����7��2u�3��"�i�݌0��Y�f��ʀS����7�WK�7�G%�l�Z�8�"�gT���$Q ���"��� ���R�����o�k��,8���p���c,����E���"I��Ϭ���+����c���'���KKc����`�d���2U�q��x�7��T���Һ���!��b�6�11�̩��IvJ6@xb��.��Sa�PiPN&[�� Hފqr���B���`j@Y���G�$��������2�`�����?O�9�|����Oe�80P�i��^�*y/��㰡g�c�z邈���G����x�"�6�Bx <�����i]H��T�!������9��L]�1UU����5x��9�Z�!��^�h���~�|L�"��8�Y������M�%�������x9�8=�Z*=�U����V*H@ۆ6��Xɘ6�@1.�dq#c��&�D�\
�¶J�n��ߊI�ju��*i�~�Qw:n�V�I�`��]�����υ�s���1��f�%+������(�H#�%Ɲ�(R�7���މ���DG�c͜LP���!:f��e�rD�~ �[)��(x8�	��9�[��֤��,�Pp�I	]��Ӫ��v���Z4�sE��#h���_ꐀ�q����6]���_��J���U���ԡ���� BW��a�6�#͙X����8�MfS�@R�>�:��K�3Ή���V��"��i&�RH��r��׋���n���T�w��5q�+��a�~�����?�V���SPB܀8Z}}ݏC��	3�qo�����9��='[�HR^}xk��bgo��f<������$�$��6;�f�����!�K����w������o�ɩ�M�s�%�C�z4 0N�����Gu*h\�T���k��Դ=��.�:�M╬��[�Y]_׏ߣ��X\k���f��h#�[�����a�qD	q� ����Z5V҂)VvmV-�ց�zwl����ri�x�k�b#CR�V�*�ڙ�.U:���rP�I�o���+|����3��x�Q���yպ2x.NX�Z/B�8�9Y��C���=~�c��d�ͯ'���Q �֐��g�g��P��89�1�{O5�Z����n����D&g�|���ڇ�ڞfK����/�S��<�z���0/��߾*w%�¤!�����qHZ�`��P��k�%2ǆ�8l��3>ѹ���C�֯��a�9��؞��e�_n�\�����!x�K}�;�"/?4�����:Y��I�Ab�
j7�����I9�:���0~�ې9Aa((c$/������fO:Jy�@�yV��&a�f8X.'���2�-"jl�j��-�~��A�2�L�Yn,~L�p����Q�Z��RG/��祴���;�D�%k苘��bi�Ѥ��˘����^�*o��D�j!�� !dakWo^7�5Ӱh�s�')x��-�j�5�[�s�"eA��;P�����6�.c�X�2v���S��J�Y��?� ^S륔jK5���T�9�my�9��-���V�]2/X��g��N�����q򺟖#��).W� �mn����8ɳ�#Y�KFI�$Qii�v̼sp�*AZU�������s>'�������)���>����S���2.YM�.<.hc��� ����mU^��l�K���\-�5����)vv$�1��g�!���/z�q��� �f����U{��y�� l  �`���h�:�(sV�h��/&1uxQ��ιom���Q��07�(O<q	bѠ�+�,��6{ C{�; �-|�5W7�4g%�b��"��Fb��M���������}���<����[B��o'�ﷻ���4�z��~_�2O��Z���m�g���ʊX��A���t��8���b)��U��0�X`썎�&��b	��y�T���c� �;�4�f��V�L�v�X�m�K�3�c�bc�j�b/��vm4��Ӊ�C��ˈkr'S{$��ݘL�n����,�U?�N?{Մ����@a<��cw*6�6����������@�}M�
��t,�(�v�x�����0�Ai�K4�B�{d�Z�������/�[2<� ��վ���4�C8/���D�9����'��o��T�utF7�Z�>�Gd��im�p�u,��!$<��VMt��ݱ��z���X�j ���1�¤�s��~[Gua����>��~��#F�qJGg���G����8���{5��%|�P�p ���<]p8����NFo�;��#��������F���/\��Ifi�W���0<Ҕ%�e�mE�����!�8ɋ}�2�S���|%e��E�&ǻ��.�Ć�B&���L�7����l�n�����DK2����J��4�~�՛�I�B��0�椥���z��4eU!�rS:gߪ��ҼM1�n<��NXڬ�#I��X�L��1��֣��J����|�^_|.�m�;c�VK��Z�vL-
R���ZG��)�T�<��������qT#,����wߤY#-<�j[�rV(�+�_cB���/Y]d��ໄ�����a�v�U�S�hJ�~νT.�Ã>W|�
}��q�:j)A�\��)'�|���tǾ���F�a�*l��/�v)p�O6*ϧ�5�W?ꃏ��+���5�˝�sh8��O1�}*q�@ٝ<gKw��k�/Қ�]�Ac��V6�ģ���{���1�q�y��ep�?�i���i=����L�J/���%�\�֢���j[�siL�9c/�]>�j5̮ؗu�𛮥N� �\�?飩�Eğ<�J=�M2_����F����Ow�kS�O�+��z%�b�p���]I�n��6�I��_O:�b7��[�D����)&0�lC�UH�~>�L����S]pȂ�Ol5Q����rh����1�ۙ�]j��h��������X����������MP�2����N3j�F��Pɰ*���/}S��3;K���RM`�ߢ���y�N֡/���5Ф�*�������i!&*H�!(�H^� Lu���͂�v����z4C�z�9��|���		`Jtf�aXd���"�>6��O��baX%OO�B/1���ɀ�������#�b_��r�n`�us"�G'�V� ��v�%+f(o�����P]E-6c�Zϒ��8���vl�L,�F��"S#j�y�o��Z(�?�0>�&��F[�x�%���6�tOy�&�J���u�t]��_�2ti�y���M=)y�\��{�L��ik��T��ng��.���H�B�jFb�GR��]���A!�
S)X�H����O�<[&{&ݤ�-=����������         �  x�u�ˎ�8�5y��U�&�\L\�!!7r�\���C`B��J���� ��y�!3%�Ԕ#ɿ����Xƈ@��[��0�i"|�	O��	HO�j�B���=�^�#e1eT
��v�v@� :��"Z�=�Vo�J|u�&@X��"q��S^54aJ�a-�y�4/�bz	]�s���+9vw۰0�׉.֥N���]��HtR�����]Flc:�M��,C����ݙ�{��4)��E�	lk�/,i��i��2�>��fjdG`ϯ�$K�"KP�9<��!�f�h��	&�Υy�n[�7���nw	`Y��¡��=W�C��!`n�twݴP�.��Mo���Գ�f�hma�&$�{��|%*��x9,�A�T�X&e�� =�#� �;��<$к��*�D�XV1Ը�#����m�4���A�t(\�uO�p7�X����\���<^�Jx8�hi�i�M_��j�'��A�	�_Cn�P��W���BD�Dǒ}��Զf� Ǯ>�����dIt�f��n�FN��eZg�]l�lB	KC��=�A��	�޹���X��i�����x�Ke����Zi)9�lr�6���>t�,(��Q~����Ժ��~�Ԧ��@�򧧤x�)���OF�����%�~�!D�]��+�Y�UFN={Y���!�a|k��ijN��v�
S���!0TәL*M�&���\y�&PqM�쭋`���Xz�1�_���_Y����7��h�?���     