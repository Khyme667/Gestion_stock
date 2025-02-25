PGDMP  4    )                }            gestion_inventaire    12.2    17.1 O    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    2679158    gestion_inventaire    DATABASE     �   CREATE DATABASE gestion_inventaire WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'French_France.1252';
 "   DROP DATABASE gestion_inventaire;
                     postgres    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                     postgres    false            �           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                        postgres    false    6            �            1259    2679198    cache    TABLE     �   CREATE TABLE public.cache (
    key character varying(255) NOT NULL,
    value text NOT NULL,
    expiration integer NOT NULL
);
    DROP TABLE public.cache;
       public         heap r       odoo    false    6            �            1259    2679206    cache_locks    TABLE     �   CREATE TABLE public.cache_locks (
    key character varying(255) NOT NULL,
    owner character varying(255) NOT NULL,
    expiration integer NOT NULL
);
    DROP TABLE public.cache_locks;
       public         heap r       odoo    false    6            �            1259    2679252 
   categories    TABLE     �   CREATE TABLE public.categories (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.categories;
       public         heap r       odoo    false    6            �            1259    2679250    categories_id_seq    SEQUENCE     z   CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public               odoo    false    216    6            �           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public               odoo    false    215            �            1259    2679236    failed_jobs    TABLE     &  CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap r       odoo    false    6            �            1259    2679234    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public               odoo    false    214    6            �           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public               odoo    false    213            �            1259    2679226    job_batches    TABLE     d  CREATE TABLE public.job_batches (
    id character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    total_jobs integer NOT NULL,
    pending_jobs integer NOT NULL,
    failed_jobs integer NOT NULL,
    failed_job_ids text NOT NULL,
    options text,
    cancelled_at integer,
    created_at integer NOT NULL,
    finished_at integer
);
    DROP TABLE public.job_batches;
       public         heap r       odoo    false    6            �            1259    2679216    jobs    TABLE     �   CREATE TABLE public.jobs (
    id bigint NOT NULL,
    queue character varying(255) NOT NULL,
    payload text NOT NULL,
    attempts smallint NOT NULL,
    reserved_at integer,
    available_at integer NOT NULL,
    created_at integer NOT NULL
);
    DROP TABLE public.jobs;
       public         heap r       odoo    false    6            �            1259    2679214    jobs_id_seq    SEQUENCE     t   CREATE SEQUENCE public.jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.jobs_id_seq;
       public               odoo    false    6    211            �           0    0    jobs_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;
          public               odoo    false    210            �            1259    2679161 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap r       odoo    false    6            �            1259    2679159    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public               odoo    false    203    6            �           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public               odoo    false    202            �            1259    2679180    password_reset_tokens    TABLE     �   CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 )   DROP TABLE public.password_reset_tokens;
       public         heap r       odoo    false    6            �            1259    2679265    products    TABLE     B  CREATE TABLE public.products (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    price numeric(8,2) NOT NULL,
    quantity integer DEFAULT 0 NOT NULL,
    category_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.products;
       public         heap r       odoo    false    6            �            1259    2679263    products_id_seq    SEQUENCE     x   CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public               odoo    false    218    6            �           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public               odoo    false    217            �            1259    2679188    sessions    TABLE     �   CREATE TABLE public.sessions (
    id character varying(255) NOT NULL,
    user_id bigint,
    ip_address character varying(45),
    user_agent text,
    payload text NOT NULL,
    last_activity integer NOT NULL
);
    DROP TABLE public.sessions;
       public         heap r       odoo    false    6            �            1259    2679282    stock_movements    TABLE     �  CREATE TABLE public.stock_movements (
    id bigint NOT NULL,
    product_id bigint NOT NULL,
    user_id bigint NOT NULL,
    quantity integer NOT NULL,
    type character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    CONSTRAINT stock_movements_type_check CHECK (((type)::text = ANY ((ARRAY['entry'::character varying, 'exit'::character varying])::text[])))
);
 #   DROP TABLE public.stock_movements;
       public         heap r       odoo    false    6            �            1259    2679280    stock_movements_id_seq    SEQUENCE        CREATE SEQUENCE public.stock_movements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.stock_movements_id_seq;
       public               odoo    false    6    220            �           0    0    stock_movements_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.stock_movements_id_seq OWNED BY public.stock_movements.id;
          public               odoo    false    219            �            1259    2679169    users    TABLE     S  CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    role character varying(255) DEFAULT 'employee'::character varying NOT NULL,
    CONSTRAINT users_role_check CHECK (((role)::text = ANY ((ARRAY['admin'::character varying, 'employee'::character varying])::text[])))
);
    DROP TABLE public.users;
       public         heap r       odoo    false    6            �            1259    2679167    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public               odoo    false    6    205            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public               odoo    false    204            �
           2604    2679255    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public               odoo    false    216    215    216            �
           2604    2679239    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public               odoo    false    213    214    214            �
           2604    2679219    jobs id    DEFAULT     b   ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);
 6   ALTER TABLE public.jobs ALTER COLUMN id DROP DEFAULT;
       public               odoo    false    211    210    211            �
           2604    2679164    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public               odoo    false    202    203    203            �
           2604    2679268    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public               odoo    false    218    217    218            �
           2604    2679285    stock_movements id    DEFAULT     x   ALTER TABLE ONLY public.stock_movements ALTER COLUMN id SET DEFAULT nextval('public.stock_movements_id_seq'::regclass);
 A   ALTER TABLE public.stock_movements ALTER COLUMN id DROP DEFAULT;
       public               odoo    false    219    220    220            �
           2604    2679172    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public               odoo    false    205    204    205            u          0    2679198    cache 
   TABLE DATA           7   COPY public.cache (key, value, expiration) FROM stdin;
    public               odoo    false    208   E^       v          0    2679206    cache_locks 
   TABLE DATA           =   COPY public.cache_locks (key, owner, expiration) FROM stdin;
    public               odoo    false    209   b^       }          0    2679252 
   categories 
   TABLE DATA           S   COPY public.categories (id, name, description, created_at, updated_at) FROM stdin;
    public               odoo    false    216   ^       {          0    2679236    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public               odoo    false    214   �^       y          0    2679226    job_batches 
   TABLE DATA           �   COPY public.job_batches (id, name, total_jobs, pending_jobs, failed_jobs, failed_job_ids, options, cancelled_at, created_at, finished_at) FROM stdin;
    public               odoo    false    212   �^       x          0    2679216    jobs 
   TABLE DATA           c   COPY public.jobs (id, queue, payload, attempts, reserved_at, available_at, created_at) FROM stdin;
    public               odoo    false    211   _       p          0    2679161 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public               odoo    false    203   -_       s          0    2679180    password_reset_tokens 
   TABLE DATA           I   COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
    public               odoo    false    206   �_                 0    2679265    products 
   TABLE DATA           o   COPY public.products (id, name, description, price, quantity, category_id, created_at, updated_at) FROM stdin;
    public               odoo    false    218   �_       t          0    2679188    sessions 
   TABLE DATA           _   COPY public.sessions (id, user_id, ip_address, user_agent, payload, last_activity) FROM stdin;
    public               odoo    false    207   U`       �          0    2679282    stock_movements 
   TABLE DATA           j   COPY public.stock_movements (id, product_id, user_id, quantity, type, created_at, updated_at) FROM stdin;
    public               odoo    false    220   �b       r          0    2679169    users 
   TABLE DATA           {   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at, role) FROM stdin;
    public               odoo    false    205   �b       �           0    0    categories_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.categories_id_seq', 3, true);
          public               odoo    false    215            �           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public               odoo    false    213            �           0    0    jobs_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.jobs_id_seq', 1, false);
          public               odoo    false    210            �           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 7, true);
          public               odoo    false    202            �           0    0    products_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.products_id_seq', 3, true);
          public               odoo    false    217            �           0    0    stock_movements_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.stock_movements_id_seq', 2, true);
          public               odoo    false    219            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 2, true);
          public               odoo    false    204            �
           2606    2679213    cache_locks cache_locks_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.cache_locks
    ADD CONSTRAINT cache_locks_pkey PRIMARY KEY (key);
 F   ALTER TABLE ONLY public.cache_locks DROP CONSTRAINT cache_locks_pkey;
       public                 odoo    false    209            �
           2606    2679205    cache cache_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.cache
    ADD CONSTRAINT cache_pkey PRIMARY KEY (key);
 :   ALTER TABLE ONLY public.cache DROP CONSTRAINT cache_pkey;
       public                 odoo    false    208            �
           2606    2679262 !   categories categories_name_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_name_unique UNIQUE (name);
 K   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_name_unique;
       public                 odoo    false    216            �
           2606    2679260    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public                 odoo    false    216            �
           2606    2679245    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public                 odoo    false    214            �
           2606    2679247 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 M   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       public                 odoo    false    214            �
           2606    2679233    job_batches job_batches_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.job_batches
    ADD CONSTRAINT job_batches_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.job_batches DROP CONSTRAINT job_batches_pkey;
       public                 odoo    false    212            �
           2606    2679224    jobs jobs_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.jobs DROP CONSTRAINT jobs_pkey;
       public                 odoo    false    211            �
           2606    2679166    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public                 odoo    false    203            �
           2606    2679187 0   password_reset_tokens password_reset_tokens_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);
 Z   ALTER TABLE ONLY public.password_reset_tokens DROP CONSTRAINT password_reset_tokens_pkey;
       public                 odoo    false    206            �
           2606    2679274    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public                 odoo    false    218            �
           2606    2679195    sessions sessions_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_pkey;
       public                 odoo    false    207            �
           2606    2679288 $   stock_movements stock_movements_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.stock_movements
    ADD CONSTRAINT stock_movements_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.stock_movements DROP CONSTRAINT stock_movements_pkey;
       public                 odoo    false    220            �
           2606    2679179    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public                 odoo    false    205            �
           2606    2679177    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public                 odoo    false    205            �
           1259    2679225    jobs_queue_index    INDEX     B   CREATE INDEX jobs_queue_index ON public.jobs USING btree (queue);
 $   DROP INDEX public.jobs_queue_index;
       public                 odoo    false    211            �
           1259    2679197    sessions_last_activity_index    INDEX     Z   CREATE INDEX sessions_last_activity_index ON public.sessions USING btree (last_activity);
 0   DROP INDEX public.sessions_last_activity_index;
       public                 odoo    false    207            �
           1259    2679196    sessions_user_id_index    INDEX     N   CREATE INDEX sessions_user_id_index ON public.sessions USING btree (user_id);
 *   DROP INDEX public.sessions_user_id_index;
       public                 odoo    false    207            �
           2606    2679275 %   products products_category_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_category_id_foreign FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.products DROP CONSTRAINT products_category_id_foreign;
       public               odoo    false    218    216    2793            �
           2606    2679289 2   stock_movements stock_movements_product_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock_movements
    ADD CONSTRAINT stock_movements_product_id_foreign FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.stock_movements DROP CONSTRAINT stock_movements_product_id_foreign;
       public               odoo    false    220    218    2795            �
           2606    2679294 /   stock_movements stock_movements_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock_movements
    ADD CONSTRAINT stock_movements_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.stock_movements DROP CONSTRAINT stock_movements_user_id_foreign;
       public               odoo    false    2770    205    220            u      x������ � �      v      x������ � �      }   G   x�3�,)�T(���LIEb*T%�Ur����*Y��61.CN�H��R1��`��r��qqq �!�      {      x������ � �      y      x������ � �      x      x������ � �      p   �   x�e��
!���0�4�z�`x:��k�yAo�D*yc��~�?J)�_}$�ׅ�ɍ	�z�@���*4�����V�b��	�{DF��1����v�j��]8��=tv S�3rX}�t��=�$�w��E3=R�伓R~ o�\�      s      x������ � �         [   x�3�,(�O)�,1�3��*9��89��l#S]#]#SC#+Cc+st1S+c.c�F��� ]C�a�&�Z`�dd����� �"�      t   1  x��RKo�0<'��c+�RccXT�!�Gj���z	�blB�I�ׯ�T��v������3�7���qX/1��0����M��o�c���Me��NTh̀<�t#bs�g@��ٶ���BCE��׊t�Zt�R��v���l�W3�+K7$w��x�8eλKeQ�vmy�"�1(O�j��>)�$�@�=�A��0A"c��� V�
7�iL���x��1Q��Eې��4�n�TQ��@V$�|0�Jۡ�����fw�G�3��Y;�Z����y͡��^"Ք�I#w}Q��X�ə��Q�g:�m�kkP�s����@���,��������da�dM��5뼕��*=�z���`�˄��دh(X�ď<}F�Sk>��Oy;��JKc�!����؄�{����jh@3�pjx�j��, RJn�{3}2��vܘ9�1�������j@���r�i,���nVN��3��!����''�S^����9*=7���k�wNI�ujm:������1�l�g�����H�"R�B�$��ҫY��&eN�g���&(      �   B   x�3�4�4�Լ��JN##S]#]#SC#+CS+clb\F�� ]���%�*���q��qqq �3�      r   �   x�m��n�@E��S�`�0ߧԟ���Z�?Uk�L��Tf�:��[ucR���8��=@�N
u�A*��iRH��������a�����v�"^�2NC6�^��s�h�Z����`�(Nr�^�e��&�&��>��]|Ȯ��Cf�p}�+>*ݫ�d8��N�i�r�]U�z��0��'?�'�Ϣe��x��|�Û�I �������!��l�eY���Od     