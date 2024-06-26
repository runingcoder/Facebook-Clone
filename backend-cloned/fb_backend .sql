PGDMP                         z         
   fb_backend    14.1    14.1 �               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    29351 
   fb_backend    DATABASE     n   CREATE DATABASE fb_backend WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE fb_backend;
                postgres    false            �            1259    29378 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    29377    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    216                       0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    215            �            1259    29387    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    29386    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    218                       0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    217            �            1259    29371    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    29370    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    214                       0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    213            �            1259    29484    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    29483    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    228                       0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    227            �            1259    29362    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    29361    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    212                       0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    211            �            1259    29353    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    29352    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    210                        0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    209            �            1259    29505    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    29654    mongoIntegratedApis_comment    TABLE     �   CREATE TABLE public."mongoIntegratedApis_comment" (
    id bigint NOT NULL,
    comment_content character varying(500) NOT NULL,
    comment_creator_id bigint NOT NULL,
    post_id bigint NOT NULL
);
 1   DROP TABLE public."mongoIntegratedApis_comment";
       public         heap    postgres    false            �            1259    29653 "   mongoIntegratedApis_comment_id_seq    SEQUENCE     �   CREATE SEQUENCE public."mongoIntegratedApis_comment_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."mongoIntegratedApis_comment_id_seq";
       public          postgres    false    235            !           0    0 "   mongoIntegratedApis_comment_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public."mongoIntegratedApis_comment_id_seq" OWNED BY public."mongoIntegratedApis_comment".id;
          public          postgres    false    234            �            1259    29686    mongoIntegratedApis_commentlike    TABLE     �   CREATE TABLE public."mongoIntegratedApis_commentlike" (
    id bigint NOT NULL,
    comment_id bigint NOT NULL,
    comment_liker_id bigint NOT NULL,
    status boolean NOT NULL
);
 5   DROP TABLE public."mongoIntegratedApis_commentlike";
       public         heap    postgres    false            �            1259    29685 &   mongoIntegratedApis_commentlike_id_seq    SEQUENCE     �   CREATE SEQUENCE public."mongoIntegratedApis_commentlike_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."mongoIntegratedApis_commentlike_id_seq";
       public          postgres    false    243            "           0    0 &   mongoIntegratedApis_commentlike_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public."mongoIntegratedApis_commentlike_id_seq" OWNED BY public."mongoIntegratedApis_commentlike".id;
          public          postgres    false    242            �            1259    78504     mongoIntegratedApis_conversation    TABLE     �   CREATE TABLE public."mongoIntegratedApis_conversation" (
    id bigint NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    receiver_id bigint NOT NULL,
    sender_id bigint NOT NULL
);
 6   DROP TABLE public."mongoIntegratedApis_conversation";
       public         heap    postgres    false            �            1259    78503 '   mongoIntegratedApis_conversation_id_seq    SEQUENCE     �   CREATE SEQUENCE public."mongoIntegratedApis_conversation_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public."mongoIntegratedApis_conversation_id_seq";
       public          postgres    false    251            #           0    0 '   mongoIntegratedApis_conversation_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public."mongoIntegratedApis_conversation_id_seq" OWNED BY public."mongoIntegratedApis_conversation".id;
          public          postgres    false    250            �            1259    29679    mongoIntegratedApis_friends    TABLE     �   CREATE TABLE public."mongoIntegratedApis_friends" (
    id bigint NOT NULL,
    status boolean NOT NULL,
    receiver_id bigint NOT NULL,
    sender_id bigint NOT NULL
);
 1   DROP TABLE public."mongoIntegratedApis_friends";
       public         heap    postgres    false            �            1259    29678 "   mongoIntegratedApis_friends_id_seq    SEQUENCE     �   CREATE SEQUENCE public."mongoIntegratedApis_friends_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."mongoIntegratedApis_friends_id_seq";
       public          postgres    false    241            $           0    0 "   mongoIntegratedApis_friends_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public."mongoIntegratedApis_friends_id_seq" OWNED BY public."mongoIntegratedApis_friends".id;
          public          postgres    false    240            �            1259    29420    mongoIntegratedApis_hero    TABLE     �   CREATE TABLE public."mongoIntegratedApis_hero" (
    id bigint NOT NULL,
    name character varying(60) NOT NULL,
    alias character varying(60) NOT NULL
);
 .   DROP TABLE public."mongoIntegratedApis_hero";
       public         heap    postgres    false            �            1259    29419    mongoIntegratedApis_hero_id_seq    SEQUENCE     �   CREATE SEQUENCE public."mongoIntegratedApis_hero_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."mongoIntegratedApis_hero_id_seq";
       public          postgres    false    220            %           0    0    mongoIntegratedApis_hero_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."mongoIntegratedApis_hero_id_seq" OWNED BY public."mongoIntegratedApis_hero".id;
          public          postgres    false    219            �            1259    78513    mongoIntegratedApis_messages    TABLE     �   CREATE TABLE public."mongoIntegratedApis_messages" (
    id bigint NOT NULL,
    text character varying(500) NOT NULL,
    sender_id bigint NOT NULL,
    "conversationId_id" bigint NOT NULL,
    created_at timestamp with time zone
);
 2   DROP TABLE public."mongoIntegratedApis_messages";
       public         heap    postgres    false            �            1259    78512 #   mongoIntegratedApis_messages_id_seq    SEQUENCE     �   CREATE SEQUENCE public."mongoIntegratedApis_messages_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."mongoIntegratedApis_messages_id_seq";
       public          postgres    false    253            &           0    0 #   mongoIntegratedApis_messages_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."mongoIntegratedApis_messages_id_seq" OWNED BY public."mongoIntegratedApis_messages".id;
          public          postgres    false    252            �            1259    53928    mongoIntegratedApis_notes    TABLE     p   CREATE TABLE public."mongoIntegratedApis_notes" (
    id bigint NOT NULL,
    notes text,
    user_id bigint
);
 /   DROP TABLE public."mongoIntegratedApis_notes";
       public         heap    postgres    false            �            1259    53927     mongoIntegratedApis_notes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."mongoIntegratedApis_notes_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."mongoIntegratedApis_notes_id_seq";
       public          postgres    false    249            '           0    0     mongoIntegratedApis_notes_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."mongoIntegratedApis_notes_id_seq" OWNED BY public."mongoIntegratedApis_notes".id;
          public          postgres    false    248            �            1259    29663    mongoIntegratedApis_post    TABLE     �  CREATE TABLE public."mongoIntegratedApis_post" (
    id bigint NOT NULL,
    content character varying(500) NOT NULL,
    image character varying(500) NOT NULL,
    video character varying(100) NOT NULL,
    creator_id bigint NOT NULL,
    "commentNumber" integer NOT NULL,
    "like" integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 .   DROP TABLE public."mongoIntegratedApis_post";
       public         heap    postgres    false            �            1259    29662    mongoIntegratedApis_post_id_seq    SEQUENCE     �   CREATE SEQUENCE public."mongoIntegratedApis_post_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."mongoIntegratedApis_post_id_seq";
       public          postgres    false    237            (           0    0    mongoIntegratedApis_post_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."mongoIntegratedApis_post_id_seq" OWNED BY public."mongoIntegratedApis_post".id;
          public          postgres    false    236            �            1259    29672    mongoIntegratedApis_postlike    TABLE     �   CREATE TABLE public."mongoIntegratedApis_postlike" (
    id bigint NOT NULL,
    post_id bigint NOT NULL,
    "postLiker_id" bigint NOT NULL,
    status boolean NOT NULL
);
 2   DROP TABLE public."mongoIntegratedApis_postlike";
       public         heap    postgres    false            �            1259    29671 #   mongoIntegratedApis_postlike_id_seq    SEQUENCE     �   CREATE SEQUENCE public."mongoIntegratedApis_postlike_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."mongoIntegratedApis_postlike_id_seq";
       public          postgres    false    239            )           0    0 #   mongoIntegratedApis_postlike_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."mongoIntegratedApis_postlike_id_seq" OWNED BY public."mongoIntegratedApis_postlike".id;
          public          postgres    false    238            �            1259    29618    mongoIntegratedApis_role    TABLE     u   CREATE TABLE public."mongoIntegratedApis_role" (
    id bigint NOT NULL,
    name character varying(100) NOT NULL
);
 .   DROP TABLE public."mongoIntegratedApis_role";
       public         heap    postgres    false            �            1259    29617    mongoIntegratedApis_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public."mongoIntegratedApis_role_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."mongoIntegratedApis_role_id_seq";
       public          postgres    false    231            *           0    0    mongoIntegratedApis_role_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."mongoIntegratedApis_role_id_seq" OWNED BY public."mongoIntegratedApis_role".id;
          public          postgres    false    230            �            1259    29427    mongoIntegratedApis_user    TABLE     �  CREATE TABLE public."mongoIntegratedApis_user" (
    id bigint NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    username character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    password character varying(100) NOT NULL,
    "profilePicture" character varying(500) NOT NULL,
    "coverPicture" character varying(500) NOT NULL,
    city character varying(100) NOT NULL,
    "desc" text NOT NULL,
    followers character varying(200)[] NOT NULL,
    "isAdmin" character varying(100) NOT NULL,
    "placeFrom" character varying(100) NOT NULL,
    relationship character varying(50) NOT NULL,
    following character varying(200)[] NOT NULL,
    bio text NOT NULL
);
 .   DROP TABLE public."mongoIntegratedApis_user";
       public         heap    postgres    false            �            1259    29440    mongoIntegratedApis_user_groups    TABLE     �   CREATE TABLE public."mongoIntegratedApis_user_groups" (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    group_id integer NOT NULL
);
 5   DROP TABLE public."mongoIntegratedApis_user_groups";
       public         heap    postgres    false            �            1259    29439 &   mongoIntegratedApis_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public."mongoIntegratedApis_user_groups_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."mongoIntegratedApis_user_groups_id_seq";
       public          postgres    false    224            +           0    0 &   mongoIntegratedApis_user_groups_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public."mongoIntegratedApis_user_groups_id_seq" OWNED BY public."mongoIntegratedApis_user_groups".id;
          public          postgres    false    223            �            1259    29426    mongoIntegratedApis_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public."mongoIntegratedApis_user_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."mongoIntegratedApis_user_id_seq";
       public          postgres    false    222            ,           0    0    mongoIntegratedApis_user_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."mongoIntegratedApis_user_id_seq" OWNED BY public."mongoIntegratedApis_user".id;
          public          postgres    false    221            �            1259    29447 )   mongoIntegratedApis_user_user_permissions    TABLE     �   CREATE TABLE public."mongoIntegratedApis_user_user_permissions" (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    permission_id integer NOT NULL
);
 ?   DROP TABLE public."mongoIntegratedApis_user_user_permissions";
       public         heap    postgres    false            �            1259    29446 0   mongoIntegratedApis_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public."mongoIntegratedApis_user_user_permissions_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public."mongoIntegratedApis_user_user_permissions_id_seq";
       public          postgres    false    226            -           0    0 0   mongoIntegratedApis_user_user_permissions_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."mongoIntegratedApis_user_user_permissions_id_seq" OWNED BY public."mongoIntegratedApis_user_user_permissions".id;
          public          postgres    false    225            �            1259    29625    mongoIntegratedApis_userrole    TABLE     �   CREATE TABLE public."mongoIntegratedApis_userrole" (
    id bigint NOT NULL,
    role_id bigint NOT NULL,
    user_id bigint NOT NULL
);
 2   DROP TABLE public."mongoIntegratedApis_userrole";
       public         heap    postgres    false            �            1259    29624 #   mongoIntegratedApis_userrole_id_seq    SEQUENCE     �   CREATE SEQUENCE public."mongoIntegratedApis_userrole_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."mongoIntegratedApis_userrole_id_seq";
       public          postgres    false    233            .           0    0 #   mongoIntegratedApis_userrole_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."mongoIntegratedApis_userrole_id_seq" OWNED BY public."mongoIntegratedApis_userrole".id;
          public          postgres    false    232            �            1259    45736     token_blacklist_blacklistedtoken    TABLE     �   CREATE TABLE public.token_blacklist_blacklistedtoken (
    id bigint NOT NULL,
    blacklisted_at timestamp with time zone NOT NULL,
    token_id bigint NOT NULL
);
 4   DROP TABLE public.token_blacklist_blacklistedtoken;
       public         heap    postgres    false            �            1259    45782 '   token_blacklist_blacklistedtoken_id_seq    SEQUENCE     �   CREATE SEQUENCE public.token_blacklist_blacklistedtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.token_blacklist_blacklistedtoken_id_seq;
       public          postgres    false    244            /           0    0 '   token_blacklist_blacklistedtoken_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.token_blacklist_blacklistedtoken_id_seq OWNED BY public.token_blacklist_blacklistedtoken.id;
          public          postgres    false    246            �            1259    45743     token_blacklist_outstandingtoken    TABLE       CREATE TABLE public.token_blacklist_outstandingtoken (
    id bigint NOT NULL,
    token text NOT NULL,
    created_at timestamp with time zone,
    expires_at timestamp with time zone NOT NULL,
    user_id bigint,
    jti character varying(255) NOT NULL
);
 4   DROP TABLE public.token_blacklist_outstandingtoken;
       public         heap    postgres    false            �            1259    45796 '   token_blacklist_outstandingtoken_id_seq    SEQUENCE     �   CREATE SEQUENCE public.token_blacklist_outstandingtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.token_blacklist_outstandingtoken_id_seq;
       public          postgres    false    245            0           0    0 '   token_blacklist_outstandingtoken_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.token_blacklist_outstandingtoken_id_seq OWNED BY public.token_blacklist_outstandingtoken.id;
          public          postgres    false    247            �           2604    29381    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            �           2604    29390    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            �           2604    29374    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            �           2604    29487    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            �           2604    29365    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            �           2604    29356    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            �           2604    29657    mongoIntegratedApis_comment id    DEFAULT     �   ALTER TABLE ONLY public."mongoIntegratedApis_comment" ALTER COLUMN id SET DEFAULT nextval('public."mongoIntegratedApis_comment_id_seq"'::regclass);
 O   ALTER TABLE public."mongoIntegratedApis_comment" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234    235            �           2604    29689 "   mongoIntegratedApis_commentlike id    DEFAULT     �   ALTER TABLE ONLY public."mongoIntegratedApis_commentlike" ALTER COLUMN id SET DEFAULT nextval('public."mongoIntegratedApis_commentlike_id_seq"'::regclass);
 S   ALTER TABLE public."mongoIntegratedApis_commentlike" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    243    243            �           2604    78507 #   mongoIntegratedApis_conversation id    DEFAULT     �   ALTER TABLE ONLY public."mongoIntegratedApis_conversation" ALTER COLUMN id SET DEFAULT nextval('public."mongoIntegratedApis_conversation_id_seq"'::regclass);
 T   ALTER TABLE public."mongoIntegratedApis_conversation" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    250    251            �           2604    29682    mongoIntegratedApis_friends id    DEFAULT     �   ALTER TABLE ONLY public."mongoIntegratedApis_friends" ALTER COLUMN id SET DEFAULT nextval('public."mongoIntegratedApis_friends_id_seq"'::regclass);
 O   ALTER TABLE public."mongoIntegratedApis_friends" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    241    241            �           2604    29423    mongoIntegratedApis_hero id    DEFAULT     �   ALTER TABLE ONLY public."mongoIntegratedApis_hero" ALTER COLUMN id SET DEFAULT nextval('public."mongoIntegratedApis_hero_id_seq"'::regclass);
 L   ALTER TABLE public."mongoIntegratedApis_hero" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            �           2604    78516    mongoIntegratedApis_messages id    DEFAULT     �   ALTER TABLE ONLY public."mongoIntegratedApis_messages" ALTER COLUMN id SET DEFAULT nextval('public."mongoIntegratedApis_messages_id_seq"'::regclass);
 P   ALTER TABLE public."mongoIntegratedApis_messages" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    253    252    253            �           2604    53931    mongoIntegratedApis_notes id    DEFAULT     �   ALTER TABLE ONLY public."mongoIntegratedApis_notes" ALTER COLUMN id SET DEFAULT nextval('public."mongoIntegratedApis_notes_id_seq"'::regclass);
 M   ALTER TABLE public."mongoIntegratedApis_notes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    248    249    249            �           2604    29666    mongoIntegratedApis_post id    DEFAULT     �   ALTER TABLE ONLY public."mongoIntegratedApis_post" ALTER COLUMN id SET DEFAULT nextval('public."mongoIntegratedApis_post_id_seq"'::regclass);
 L   ALTER TABLE public."mongoIntegratedApis_post" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236    237            �           2604    29675    mongoIntegratedApis_postlike id    DEFAULT     �   ALTER TABLE ONLY public."mongoIntegratedApis_postlike" ALTER COLUMN id SET DEFAULT nextval('public."mongoIntegratedApis_postlike_id_seq"'::regclass);
 P   ALTER TABLE public."mongoIntegratedApis_postlike" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    239    239            �           2604    29621    mongoIntegratedApis_role id    DEFAULT     �   ALTER TABLE ONLY public."mongoIntegratedApis_role" ALTER COLUMN id SET DEFAULT nextval('public."mongoIntegratedApis_role_id_seq"'::regclass);
 L   ALTER TABLE public."mongoIntegratedApis_role" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    29430    mongoIntegratedApis_user id    DEFAULT     �   ALTER TABLE ONLY public."mongoIntegratedApis_user" ALTER COLUMN id SET DEFAULT nextval('public."mongoIntegratedApis_user_id_seq"'::regclass);
 L   ALTER TABLE public."mongoIntegratedApis_user" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    29443 "   mongoIntegratedApis_user_groups id    DEFAULT     �   ALTER TABLE ONLY public."mongoIntegratedApis_user_groups" ALTER COLUMN id SET DEFAULT nextval('public."mongoIntegratedApis_user_groups_id_seq"'::regclass);
 S   ALTER TABLE public."mongoIntegratedApis_user_groups" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            �           2604    29450 ,   mongoIntegratedApis_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public."mongoIntegratedApis_user_user_permissions" ALTER COLUMN id SET DEFAULT nextval('public."mongoIntegratedApis_user_user_permissions_id_seq"'::regclass);
 ]   ALTER TABLE public."mongoIntegratedApis_user_user_permissions" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            �           2604    29628    mongoIntegratedApis_userrole id    DEFAULT     �   ALTER TABLE ONLY public."mongoIntegratedApis_userrole" ALTER COLUMN id SET DEFAULT nextval('public."mongoIntegratedApis_userrole_id_seq"'::regclass);
 P   ALTER TABLE public."mongoIntegratedApis_userrole" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233            �           2604    45783 #   token_blacklist_blacklistedtoken id    DEFAULT     �   ALTER TABLE ONLY public.token_blacklist_blacklistedtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_blacklistedtoken_id_seq'::regclass);
 R   ALTER TABLE public.token_blacklist_blacklistedtoken ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    244            �           2604    45797 #   token_blacklist_outstandingtoken id    DEFAULT     �   ALTER TABLE ONLY public.token_blacklist_outstandingtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_outstandingtoken_id_seq'::regclass);
 R   ALTER TABLE public.token_blacklist_outstandingtoken ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    245            �          0    29378 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    216   	R      �          0    29387    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    218   =R      �          0    29371    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    214   ZR      �          0    29484    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    228   jU      �          0    29362    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    212   U^      �          0    29353    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    210   D_      �          0    29505    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    229   :d                0    29654    mongoIntegratedApis_comment 
   TABLE DATA           i   COPY public."mongoIntegratedApis_comment" (id, comment_content, comment_creator_id, post_id) FROM stdin;
    public          postgres    false    235   �g      
          0    29686    mongoIntegratedApis_commentlike 
   TABLE DATA           e   COPY public."mongoIntegratedApis_commentlike" (id, comment_id, comment_liker_id, status) FROM stdin;
    public          postgres    false    243   h                0    78504     mongoIntegratedApis_conversation 
   TABLE DATA           p   COPY public."mongoIntegratedApis_conversation" (id, created_at, updated_at, receiver_id, sender_id) FROM stdin;
    public          postgres    false    251   8h                0    29679    mongoIntegratedApis_friends 
   TABLE DATA           [   COPY public."mongoIntegratedApis_friends" (id, status, receiver_id, sender_id) FROM stdin;
    public          postgres    false    241   �h      �          0    29420    mongoIntegratedApis_hero 
   TABLE DATA           E   COPY public."mongoIntegratedApis_hero" (id, name, alias) FROM stdin;
    public          postgres    false    220   �h                0    78513    mongoIntegratedApis_messages 
   TABLE DATA           n   COPY public."mongoIntegratedApis_messages" (id, text, sender_id, "conversationId_id", created_at) FROM stdin;
    public          postgres    false    253   8i                0    53928    mongoIntegratedApis_notes 
   TABLE DATA           I   COPY public."mongoIntegratedApis_notes" (id, notes, user_id) FROM stdin;
    public          postgres    false    249   <l                0    29663    mongoIntegratedApis_post 
   TABLE DATA           �   COPY public."mongoIntegratedApis_post" (id, content, image, video, creator_id, "commentNumber", "like", created_at, updated_at) FROM stdin;
    public          postgres    false    237   �l                0    29672    mongoIntegratedApis_postlike 
   TABLE DATA           ]   COPY public."mongoIntegratedApis_postlike" (id, post_id, "postLiker_id", status) FROM stdin;
    public          postgres    false    239   �o      �          0    29618    mongoIntegratedApis_role 
   TABLE DATA           >   COPY public."mongoIntegratedApis_role" (id, name) FROM stdin;
    public          postgres    false    231   Tp      �          0    29427    mongoIntegratedApis_user 
   TABLE DATA             COPY public."mongoIntegratedApis_user" (id, last_login, is_superuser, first_name, last_name, is_staff, is_active, date_joined, username, email, password, "profilePicture", "coverPicture", city, "desc", followers, "isAdmin", "placeFrom", relationship, following, bio) FROM stdin;
    public          postgres    false    222   �p      �          0    29440    mongoIntegratedApis_user_groups 
   TABLE DATA           R   COPY public."mongoIntegratedApis_user_groups" (id, user_id, group_id) FROM stdin;
    public          postgres    false    224   �y      �          0    29447 )   mongoIntegratedApis_user_user_permissions 
   TABLE DATA           a   COPY public."mongoIntegratedApis_user_user_permissions" (id, user_id, permission_id) FROM stdin;
    public          postgres    false    226   �y                 0    29625    mongoIntegratedApis_userrole 
   TABLE DATA           N   COPY public."mongoIntegratedApis_userrole" (id, role_id, user_id) FROM stdin;
    public          postgres    false    233   z                0    45736     token_blacklist_blacklistedtoken 
   TABLE DATA           X   COPY public.token_blacklist_blacklistedtoken (id, blacklisted_at, token_id) FROM stdin;
    public          postgres    false    244   Nz                0    45743     token_blacklist_outstandingtoken 
   TABLE DATA           k   COPY public.token_blacklist_outstandingtoken (id, token, created_at, expires_at, user_id, jti) FROM stdin;
    public          postgres    false    245   ދ      1           0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 2, true);
          public          postgres    false    215            2           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    217            3           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 80, true);
          public          postgres    false    213            4           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 135, true);
          public          postgres    false    227            5           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 20, true);
          public          postgres    false    211            6           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 58, true);
          public          postgres    false    209            7           0    0 "   mongoIntegratedApis_comment_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public."mongoIntegratedApis_comment_id_seq"', 10, true);
          public          postgres    false    234            8           0    0 &   mongoIntegratedApis_commentlike_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public."mongoIntegratedApis_commentlike_id_seq"', 30, true);
          public          postgres    false    242            9           0    0 '   mongoIntegratedApis_conversation_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public."mongoIntegratedApis_conversation_id_seq"', 4, true);
          public          postgres    false    250            :           0    0 "   mongoIntegratedApis_friends_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public."mongoIntegratedApis_friends_id_seq"', 10, true);
          public          postgres    false    240            ;           0    0    mongoIntegratedApis_hero_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."mongoIntegratedApis_hero_id_seq"', 8, true);
          public          postgres    false    219            <           0    0 #   mongoIntegratedApis_messages_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."mongoIntegratedApis_messages_id_seq"', 23, true);
          public          postgres    false    252            =           0    0     mongoIntegratedApis_notes_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."mongoIntegratedApis_notes_id_seq"', 4, true);
          public          postgres    false    248            >           0    0    mongoIntegratedApis_post_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."mongoIntegratedApis_post_id_seq"', 38, true);
          public          postgres    false    236            ?           0    0 #   mongoIntegratedApis_postlike_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."mongoIntegratedApis_postlike_id_seq"', 32, true);
          public          postgres    false    238            @           0    0    mongoIntegratedApis_role_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."mongoIntegratedApis_role_id_seq"', 2, true);
          public          postgres    false    230            A           0    0 &   mongoIntegratedApis_user_groups_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public."mongoIntegratedApis_user_groups_id_seq"', 3, true);
          public          postgres    false    223            B           0    0    mongoIntegratedApis_user_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."mongoIntegratedApis_user_id_seq"', 13, true);
          public          postgres    false    221            C           0    0 0   mongoIntegratedApis_user_user_permissions_id_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('public."mongoIntegratedApis_user_user_permissions_id_seq"', 1, false);
          public          postgres    false    225            D           0    0 #   mongoIntegratedApis_userrole_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."mongoIntegratedApis_userrole_id_seq"', 13, true);
          public          postgres    false    232            E           0    0 '   token_blacklist_blacklistedtoken_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.token_blacklist_blacklistedtoken_id_seq', 392, true);
          public          postgres    false    246            F           0    0 '   token_blacklist_outstandingtoken_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.token_blacklist_outstandingtoken_id_seq', 525, true);
          public          postgres    false    247            �           2606    29417    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    216            �           2606    29403 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    218    218            �           2606    29392 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    218            �           2606    29383    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    216            �           2606    29394 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    214    214            �           2606    29376 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    214                       2606    29492 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    228            �           2606    29369 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    212    212            �           2606    29367 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    212            �           2606    29360 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    210                       2606    29511 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    229                       2606    29661 <   mongoIntegratedApis_comment mongoIntegratedApis_comment_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public."mongoIntegratedApis_comment"
    ADD CONSTRAINT "mongoIntegratedApis_comment_pkey" PRIMARY KEY (id);
 j   ALTER TABLE ONLY public."mongoIntegratedApis_comment" DROP CONSTRAINT "mongoIntegratedApis_comment_pkey";
       public            postgres    false    235            ,           2606    29691 D   mongoIntegratedApis_commentlike mongoIntegratedApis_commentlike_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."mongoIntegratedApis_commentlike"
    ADD CONSTRAINT "mongoIntegratedApis_commentlike_pkey" PRIMARY KEY (id);
 r   ALTER TABLE ONLY public."mongoIntegratedApis_commentlike" DROP CONSTRAINT "mongoIntegratedApis_commentlike_pkey";
       public            postgres    false    243            ;           2606    78511 F   mongoIntegratedApis_conversation mongoIntegratedApis_conversation_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."mongoIntegratedApis_conversation"
    ADD CONSTRAINT "mongoIntegratedApis_conversation_pkey" PRIMARY KEY (id);
 t   ALTER TABLE ONLY public."mongoIntegratedApis_conversation" DROP CONSTRAINT "mongoIntegratedApis_conversation_pkey";
       public            postgres    false    251            &           2606    29684 <   mongoIntegratedApis_friends mongoIntegratedApis_friends_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public."mongoIntegratedApis_friends"
    ADD CONSTRAINT "mongoIntegratedApis_friends_pkey" PRIMARY KEY (id);
 j   ALTER TABLE ONLY public."mongoIntegratedApis_friends" DROP CONSTRAINT "mongoIntegratedApis_friends_pkey";
       public            postgres    false    241            �           2606    29425 6   mongoIntegratedApis_hero mongoIntegratedApis_hero_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public."mongoIntegratedApis_hero"
    ADD CONSTRAINT "mongoIntegratedApis_hero_pkey" PRIMARY KEY (id);
 d   ALTER TABLE ONLY public."mongoIntegratedApis_hero" DROP CONSTRAINT "mongoIntegratedApis_hero_pkey";
       public            postgres    false    220            @           2606    78520 >   mongoIntegratedApis_messages mongoIntegratedApis_messages_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."mongoIntegratedApis_messages"
    ADD CONSTRAINT "mongoIntegratedApis_messages_pkey" PRIMARY KEY (id);
 l   ALTER TABLE ONLY public."mongoIntegratedApis_messages" DROP CONSTRAINT "mongoIntegratedApis_messages_pkey";
       public            postgres    false    253            8           2606    53935 8   mongoIntegratedApis_notes mongoIntegratedApis_notes_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."mongoIntegratedApis_notes"
    ADD CONSTRAINT "mongoIntegratedApis_notes_pkey" PRIMARY KEY (id);
 f   ALTER TABLE ONLY public."mongoIntegratedApis_notes" DROP CONSTRAINT "mongoIntegratedApis_notes_pkey";
       public            postgres    false    249                        2606    29670 6   mongoIntegratedApis_post mongoIntegratedApis_post_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public."mongoIntegratedApis_post"
    ADD CONSTRAINT "mongoIntegratedApis_post_pkey" PRIMARY KEY (id);
 d   ALTER TABLE ONLY public."mongoIntegratedApis_post" DROP CONSTRAINT "mongoIntegratedApis_post_pkey";
       public            postgres    false    237            "           2606    29677 >   mongoIntegratedApis_postlike mongoIntegratedApis_postlike_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."mongoIntegratedApis_postlike"
    ADD CONSTRAINT "mongoIntegratedApis_postlike_pkey" PRIMARY KEY (id);
 l   ALTER TABLE ONLY public."mongoIntegratedApis_postlike" DROP CONSTRAINT "mongoIntegratedApis_postlike_pkey";
       public            postgres    false    239                       2606    29623 6   mongoIntegratedApis_role mongoIntegratedApis_role_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public."mongoIntegratedApis_role"
    ADD CONSTRAINT "mongoIntegratedApis_role_pkey" PRIMARY KEY (id);
 d   ALTER TABLE ONLY public."mongoIntegratedApis_role" DROP CONSTRAINT "mongoIntegratedApis_role_pkey";
       public            postgres    false    231            �           2606    29605 ;   mongoIntegratedApis_user mongoIntegratedApis_user_email_key 
   CONSTRAINT     {   ALTER TABLE ONLY public."mongoIntegratedApis_user"
    ADD CONSTRAINT "mongoIntegratedApis_user_email_key" UNIQUE (email);
 i   ALTER TABLE ONLY public."mongoIntegratedApis_user" DROP CONSTRAINT "mongoIntegratedApis_user_email_key";
       public            postgres    false    222                       2606    29445 D   mongoIntegratedApis_user_groups mongoIntegratedApis_user_groups_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."mongoIntegratedApis_user_groups"
    ADD CONSTRAINT "mongoIntegratedApis_user_groups_pkey" PRIMARY KEY (id);
 r   ALTER TABLE ONLY public."mongoIntegratedApis_user_groups" DROP CONSTRAINT "mongoIntegratedApis_user_groups_pkey";
       public            postgres    false    224                       2606    29456 ^   mongoIntegratedApis_user_groups mongoIntegratedApis_user_groups_user_id_group_id_1bc112d0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."mongoIntegratedApis_user_groups"
    ADD CONSTRAINT "mongoIntegratedApis_user_groups_user_id_group_id_1bc112d0_uniq" UNIQUE (user_id, group_id);
 �   ALTER TABLE ONLY public."mongoIntegratedApis_user_groups" DROP CONSTRAINT "mongoIntegratedApis_user_groups_user_id_group_id_1bc112d0_uniq";
       public            postgres    false    224    224            �           2606    29434 6   mongoIntegratedApis_user mongoIntegratedApis_user_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public."mongoIntegratedApis_user"
    ADD CONSTRAINT "mongoIntegratedApis_user_pkey" PRIMARY KEY (id);
 d   ALTER TABLE ONLY public."mongoIntegratedApis_user" DROP CONSTRAINT "mongoIntegratedApis_user_pkey";
       public            postgres    false    222                       2606    29470 f   mongoIntegratedApis_user_user_permissions mongoIntegratedApis_user_user_id_permission_id_e408385d_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."mongoIntegratedApis_user_user_permissions"
    ADD CONSTRAINT "mongoIntegratedApis_user_user_id_permission_id_e408385d_uniq" UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public."mongoIntegratedApis_user_user_permissions" DROP CONSTRAINT "mongoIntegratedApis_user_user_id_permission_id_e408385d_uniq";
       public            postgres    false    226    226            
           2606    29452 X   mongoIntegratedApis_user_user_permissions mongoIntegratedApis_user_user_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."mongoIntegratedApis_user_user_permissions"
    ADD CONSTRAINT "mongoIntegratedApis_user_user_permissions_pkey" PRIMARY KEY (id);
 �   ALTER TABLE ONLY public."mongoIntegratedApis_user_user_permissions" DROP CONSTRAINT "mongoIntegratedApis_user_user_permissions_pkey";
       public            postgres    false    226            �           2606    29608 >   mongoIntegratedApis_user mongoIntegratedApis_user_username_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."mongoIntegratedApis_user"
    ADD CONSTRAINT "mongoIntegratedApis_user_username_key" UNIQUE (username);
 l   ALTER TABLE ONLY public."mongoIntegratedApis_user" DROP CONSTRAINT "mongoIntegratedApis_user_username_key";
       public            postgres    false    222                       2606    29630 >   mongoIntegratedApis_userrole mongoIntegratedApis_userrole_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."mongoIntegratedApis_userrole"
    ADD CONSTRAINT "mongoIntegratedApis_userrole_pkey" PRIMARY KEY (id);
 l   ALTER TABLE ONLY public."mongoIntegratedApis_userrole" DROP CONSTRAINT "mongoIntegratedApis_userrole_pkey";
       public            postgres    false    233            .           2606    45776 F   token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.token_blacklist_blacklistedtoken DROP CONSTRAINT token_blacklist_blacklistedtoken_pkey;
       public            postgres    false    244            0           2606    45799 N   token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_key UNIQUE (token_id);
 x   ALTER TABLE ONLY public.token_blacklist_blacklistedtoken DROP CONSTRAINT token_blacklist_blacklistedtoken_token_id_key;
       public            postgres    false    244            3           2606    45767 W   token_blacklist_outstandingtoken token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq UNIQUE (jti);
 �   ALTER TABLE ONLY public.token_blacklist_outstandingtoken DROP CONSTRAINT token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq;
       public            postgres    false    245            5           2606    45786 F   token_blacklist_outstandingtoken token_blacklist_outstandingtoken_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.token_blacklist_outstandingtoken DROP CONSTRAINT token_blacklist_outstandingtoken_pkey;
       public            postgres    false    245            �           1259    29418    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    216            �           1259    29414 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    218            �           1259    29415 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    218            �           1259    29400 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    214                       1259    29503 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    228                       1259    29504 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    228                       1259    29513 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    229                       1259    29512 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    229                       1259    29702 7   mongoIntegratedApis_comment_comment_creator_id_0e8408ec    INDEX     �   CREATE INDEX "mongoIntegratedApis_comment_comment_creator_id_0e8408ec" ON public."mongoIntegratedApis_comment" USING btree (comment_creator_id);
 M   DROP INDEX public."mongoIntegratedApis_comment_comment_creator_id_0e8408ec";
       public            postgres    false    235                       1259    29745 /   mongoIntegratedApis_comment_post_id_id_5c482853    INDEX     ~   CREATE INDEX "mongoIntegratedApis_comment_post_id_id_5c482853" ON public."mongoIntegratedApis_comment" USING btree (post_id);
 E   DROP INDEX public."mongoIntegratedApis_comment_post_id_id_5c482853";
       public            postgres    false    235            )           1259    29743 6   mongoIntegratedApis_commentlike_comment_id_id_4dfaaee3    INDEX     �   CREATE INDEX "mongoIntegratedApis_commentlike_comment_id_id_4dfaaee3" ON public."mongoIntegratedApis_commentlike" USING btree (comment_id);
 L   DROP INDEX public."mongoIntegratedApis_commentlike_comment_id_id_4dfaaee3";
       public            postgres    false    243            *           1259    29744 9   mongoIntegratedApis_commentlike_comment_liker_id_ddb5763a    INDEX     �   CREATE INDEX "mongoIntegratedApis_commentlike_comment_liker_id_ddb5763a" ON public."mongoIntegratedApis_commentlike" USING btree (comment_liker_id);
 O   DROP INDEX public."mongoIntegratedApis_commentlike_comment_liker_id_ddb5763a";
       public            postgres    false    243            <           1259    78577 5   mongoIntegratedApis_conversation_receiver_id_60e0105a    INDEX     �   CREATE INDEX "mongoIntegratedApis_conversation_receiver_id_60e0105a" ON public."mongoIntegratedApis_conversation" USING btree (receiver_id);
 K   DROP INDEX public."mongoIntegratedApis_conversation_receiver_id_60e0105a";
       public            postgres    false    251            =           1259    78578 3   mongoIntegratedApis_conversation_sender_id_eaab89fe    INDEX     �   CREATE INDEX "mongoIntegratedApis_conversation_sender_id_eaab89fe" ON public."mongoIntegratedApis_conversation" USING btree (sender_id);
 I   DROP INDEX public."mongoIntegratedApis_conversation_sender_id_eaab89fe";
       public            postgres    false    251            '           1259    29731 0   mongoIntegratedApis_friends_receiver_id_ea5d2267    INDEX     �   CREATE INDEX "mongoIntegratedApis_friends_receiver_id_ea5d2267" ON public."mongoIntegratedApis_friends" USING btree (receiver_id);
 F   DROP INDEX public."mongoIntegratedApis_friends_receiver_id_ea5d2267";
       public            postgres    false    241            (           1259    29732 .   mongoIntegratedApis_friends_sender_id_c4785cd2    INDEX        CREATE INDEX "mongoIntegratedApis_friends_sender_id_c4785cd2" ON public."mongoIntegratedApis_friends" USING btree (sender_id);
 D   DROP INDEX public."mongoIntegratedApis_friends_sender_id_c4785cd2";
       public            postgres    false    241            >           1259    78526 7   mongoIntegratedApis_messages_conversationId_id_aa072900    INDEX     �   CREATE INDEX "mongoIntegratedApis_messages_conversationId_id_aa072900" ON public."mongoIntegratedApis_messages" USING btree ("conversationId_id");
 M   DROP INDEX public."mongoIntegratedApis_messages_conversationId_id_aa072900";
       public            postgres    false    253            A           1259    78534 /   mongoIntegratedApis_messages_sender_id_f879d048    INDEX     �   CREATE INDEX "mongoIntegratedApis_messages_sender_id_f879d048" ON public."mongoIntegratedApis_messages" USING btree (sender_id);
 E   DROP INDEX public."mongoIntegratedApis_messages_sender_id_f879d048";
       public            postgres    false    253            9           1259    53941 *   mongoIntegratedApis_notes_user_id_62210725    INDEX     w   CREATE INDEX "mongoIntegratedApis_notes_user_id_62210725" ON public."mongoIntegratedApis_notes" USING btree (user_id);
 @   DROP INDEX public."mongoIntegratedApis_notes_user_id_62210725";
       public            postgres    false    249                       1259    29708 ,   mongoIntegratedApis_post_creator_id_c83e46bd    INDEX     {   CREATE INDEX "mongoIntegratedApis_post_creator_id_c83e46bd" ON public."mongoIntegratedApis_post" USING btree (creator_id);
 B   DROP INDEX public."mongoIntegratedApis_post_creator_id_c83e46bd";
       public            postgres    false    237            #           1259    29719 0   mongoIntegratedApis_postlike_post_id_id_ef767dcf    INDEX     �   CREATE INDEX "mongoIntegratedApis_postlike_post_id_id_ef767dcf" ON public."mongoIntegratedApis_postlike" USING btree (post_id);
 F   DROP INDEX public."mongoIntegratedApis_postlike_post_id_id_ef767dcf";
       public            postgres    false    239            $           1259    29720 3   mongoIntegratedApis_postlike_post_liker_id_5793eb91    INDEX     �   CREATE INDEX "mongoIntegratedApis_postlike_post_liker_id_5793eb91" ON public."mongoIntegratedApis_postlike" USING btree ("postLiker_id");
 I   DROP INDEX public."mongoIntegratedApis_postlike_post_liker_id_5793eb91";
       public            postgres    false    239            �           1259    29606 ,   mongoIntegratedApis_user_email_5ccc1c24_like    INDEX     �   CREATE INDEX "mongoIntegratedApis_user_email_5ccc1c24_like" ON public."mongoIntegratedApis_user" USING btree (email varchar_pattern_ops);
 B   DROP INDEX public."mongoIntegratedApis_user_email_5ccc1c24_like";
       public            postgres    false    222                        1259    29468 1   mongoIntegratedApis_user_groups_group_id_63767dd6    INDEX     �   CREATE INDEX "mongoIntegratedApis_user_groups_group_id_63767dd6" ON public."mongoIntegratedApis_user_groups" USING btree (group_id);
 G   DROP INDEX public."mongoIntegratedApis_user_groups_group_id_63767dd6";
       public            postgres    false    224                       1259    29467 0   mongoIntegratedApis_user_groups_user_id_8f5ddffc    INDEX     �   CREATE INDEX "mongoIntegratedApis_user_groups_user_id_8f5ddffc" ON public."mongoIntegratedApis_user_groups" USING btree (user_id);
 F   DROP INDEX public."mongoIntegratedApis_user_groups_user_id_8f5ddffc";
       public            postgres    false    224                       1259    29482 1   mongoIntegratedApis_user_u_permission_id_0185fb78    INDEX     �   CREATE INDEX "mongoIntegratedApis_user_u_permission_id_0185fb78" ON public."mongoIntegratedApis_user_user_permissions" USING btree (permission_id);
 G   DROP INDEX public."mongoIntegratedApis_user_u_permission_id_0185fb78";
       public            postgres    false    226                       1259    29481 :   mongoIntegratedApis_user_user_permissions_user_id_8d37b401    INDEX     �   CREATE INDEX "mongoIntegratedApis_user_user_permissions_user_id_8d37b401" ON public."mongoIntegratedApis_user_user_permissions" USING btree (user_id);
 P   DROP INDEX public."mongoIntegratedApis_user_user_permissions_user_id_8d37b401";
       public            postgres    false    226            �           1259    29609 /   mongoIntegratedApis_user_username_8f60f399_like    INDEX     �   CREATE INDEX "mongoIntegratedApis_user_username_8f60f399_like" ON public."mongoIntegratedApis_user" USING btree (username varchar_pattern_ops);
 E   DROP INDEX public."mongoIntegratedApis_user_username_8f60f399_like";
       public            postgres    false    222                       1259    29641 -   mongoIntegratedApis_userrole_role_id_e09e2b8c    INDEX     }   CREATE INDEX "mongoIntegratedApis_userrole_role_id_e09e2b8c" ON public."mongoIntegratedApis_userrole" USING btree (role_id);
 C   DROP INDEX public."mongoIntegratedApis_userrole_role_id_e09e2b8c";
       public            postgres    false    233                       1259    29642 -   mongoIntegratedApis_userrole_user_id_9bbf307c    INDEX     }   CREATE INDEX "mongoIntegratedApis_userrole_user_id_9bbf307c" ON public."mongoIntegratedApis_userrole" USING btree (user_id);
 C   DROP INDEX public."mongoIntegratedApis_userrole_user_id_9bbf307c";
       public            postgres    false    233            1           1259    45768 6   token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like    INDEX     �   CREATE INDEX token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like ON public.token_blacklist_outstandingtoken USING btree (jti varchar_pattern_ops);
 J   DROP INDEX public.token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like;
       public            postgres    false    245            6           1259    45765 1   token_blacklist_outstandingtoken_user_id_83bc629a    INDEX     �   CREATE INDEX token_blacklist_outstandingtoken_user_id_83bc629a ON public.token_blacklist_outstandingtoken USING btree (user_id);
 E   DROP INDEX public.token_blacklist_outstandingtoken_user_id_83bc629a;
       public            postgres    false    245            D           2606    29409 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    214    218    3306            C           2606    29404 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    218    3311    216            B           2606    29395 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    3301    214    212            I           2606    29493 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    3301    212    228            J           2606    29498 ?   django_admin_log django_admin_log_user_id_c564eba6_fk_mongoInte    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT "django_admin_log_user_id_c564eba6_fk_mongoInte" FOREIGN KEY (user_id) REFERENCES public."mongoIntegratedApis_user"(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT "django_admin_log_user_id_c564eba6_fk_mongoInte";
       public          postgres    false    222    228    3324            M           2606    29697 Y   mongoIntegratedApis_comment mongoIntegratedApis__comment_creator_id_0e8408ec_fk_mongoInte    FK CONSTRAINT     �   ALTER TABLE ONLY public."mongoIntegratedApis_comment"
    ADD CONSTRAINT "mongoIntegratedApis__comment_creator_id_0e8408ec_fk_mongoInte" FOREIGN KEY (comment_creator_id) REFERENCES public."mongoIntegratedApis_user"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."mongoIntegratedApis_comment" DROP CONSTRAINT "mongoIntegratedApis__comment_creator_id_0e8408ec_fk_mongoInte";
       public          postgres    false    235    222    3324            U           2606    29751 U   mongoIntegratedApis_commentlike mongoIntegratedApis__comment_id_f1ad0a18_fk_mongoInte    FK CONSTRAINT     �   ALTER TABLE ONLY public."mongoIntegratedApis_commentlike"
    ADD CONSTRAINT "mongoIntegratedApis__comment_id_f1ad0a18_fk_mongoInte" FOREIGN KEY (comment_id) REFERENCES public."mongoIntegratedApis_comment"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."mongoIntegratedApis_commentlike" DROP CONSTRAINT "mongoIntegratedApis__comment_id_f1ad0a18_fk_mongoInte";
       public          postgres    false    3356    235    243            T           2606    29738 [   mongoIntegratedApis_commentlike mongoIntegratedApis__comment_liker_id_ddb5763a_fk_mongoInte    FK CONSTRAINT     �   ALTER TABLE ONLY public."mongoIntegratedApis_commentlike"
    ADD CONSTRAINT "mongoIntegratedApis__comment_liker_id_ddb5763a_fk_mongoInte" FOREIGN KEY (comment_liker_id) REFERENCES public."mongoIntegratedApis_user"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."mongoIntegratedApis_commentlike" DROP CONSTRAINT "mongoIntegratedApis__comment_liker_id_ddb5763a_fk_mongoInte";
       public          postgres    false    243    3324    222            [           2606    78521 Y   mongoIntegratedApis_messages mongoIntegratedApis__conversationId_id_aa072900_fk_mongoInte    FK CONSTRAINT       ALTER TABLE ONLY public."mongoIntegratedApis_messages"
    ADD CONSTRAINT "mongoIntegratedApis__conversationId_id_aa072900_fk_mongoInte" FOREIGN KEY ("conversationId_id") REFERENCES public."mongoIntegratedApis_conversation"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."mongoIntegratedApis_messages" DROP CONSTRAINT "mongoIntegratedApis__conversationId_id_aa072900_fk_mongoInte";
       public          postgres    false    251    253    3387            O           2606    29703 N   mongoIntegratedApis_post mongoIntegratedApis__creator_id_c83e46bd_fk_mongoInte    FK CONSTRAINT     �   ALTER TABLE ONLY public."mongoIntegratedApis_post"
    ADD CONSTRAINT "mongoIntegratedApis__creator_id_c83e46bd_fk_mongoInte" FOREIGN KEY (creator_id) REFERENCES public."mongoIntegratedApis_user"(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public."mongoIntegratedApis_post" DROP CONSTRAINT "mongoIntegratedApis__creator_id_c83e46bd_fk_mongoInte";
       public          postgres    false    3324    222    237            F           2606    29462 S   mongoIntegratedApis_user_groups mongoIntegratedApis__group_id_63767dd6_fk_auth_grou    FK CONSTRAINT     �   ALTER TABLE ONLY public."mongoIntegratedApis_user_groups"
    ADD CONSTRAINT "mongoIntegratedApis__group_id_63767dd6_fk_auth_grou" FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."mongoIntegratedApis_user_groups" DROP CONSTRAINT "mongoIntegratedApis__group_id_63767dd6_fk_auth_grou";
       public          postgres    false    3311    224    216            H           2606    29476 b   mongoIntegratedApis_user_user_permissions mongoIntegratedApis__permission_id_0185fb78_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public."mongoIntegratedApis_user_user_permissions"
    ADD CONSTRAINT "mongoIntegratedApis__permission_id_0185fb78_fk_auth_perm" FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."mongoIntegratedApis_user_user_permissions" DROP CONSTRAINT "mongoIntegratedApis__permission_id_0185fb78_fk_auth_perm";
       public          postgres    false    3306    226    214            Q           2606    29761 T   mongoIntegratedApis_postlike mongoIntegratedApis__postLiker_id_f24c2d4b_fk_mongoInte    FK CONSTRAINT     �   ALTER TABLE ONLY public."mongoIntegratedApis_postlike"
    ADD CONSTRAINT "mongoIntegratedApis__postLiker_id_f24c2d4b_fk_mongoInte" FOREIGN KEY ("postLiker_id") REFERENCES public."mongoIntegratedApis_user"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."mongoIntegratedApis_postlike" DROP CONSTRAINT "mongoIntegratedApis__postLiker_id_f24c2d4b_fk_mongoInte";
       public          postgres    false    239    222    3324            P           2606    29756 O   mongoIntegratedApis_postlike mongoIntegratedApis__post_id_3571e795_fk_mongoInte    FK CONSTRAINT     �   ALTER TABLE ONLY public."mongoIntegratedApis_postlike"
    ADD CONSTRAINT "mongoIntegratedApis__post_id_3571e795_fk_mongoInte" FOREIGN KEY (post_id) REFERENCES public."mongoIntegratedApis_post"(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public."mongoIntegratedApis_postlike" DROP CONSTRAINT "mongoIntegratedApis__post_id_3571e795_fk_mongoInte";
       public          postgres    false    237    3360    239            N           2606    29746 N   mongoIntegratedApis_comment mongoIntegratedApis__post_id_f1ff5d0e_fk_mongoInte    FK CONSTRAINT     �   ALTER TABLE ONLY public."mongoIntegratedApis_comment"
    ADD CONSTRAINT "mongoIntegratedApis__post_id_f1ff5d0e_fk_mongoInte" FOREIGN KEY (post_id) REFERENCES public."mongoIntegratedApis_post"(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public."mongoIntegratedApis_comment" DROP CONSTRAINT "mongoIntegratedApis__post_id_f1ff5d0e_fk_mongoInte";
       public          postgres    false    237    3360    235            Y           2606    78566 W   mongoIntegratedApis_conversation mongoIntegratedApis__receiver_id_60e0105a_fk_mongoInte    FK CONSTRAINT     �   ALTER TABLE ONLY public."mongoIntegratedApis_conversation"
    ADD CONSTRAINT "mongoIntegratedApis__receiver_id_60e0105a_fk_mongoInte" FOREIGN KEY (receiver_id) REFERENCES public."mongoIntegratedApis_user"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."mongoIntegratedApis_conversation" DROP CONSTRAINT "mongoIntegratedApis__receiver_id_60e0105a_fk_mongoInte";
       public          postgres    false    251    3324    222            R           2606    29721 R   mongoIntegratedApis_friends mongoIntegratedApis__receiver_id_ea5d2267_fk_mongoInte    FK CONSTRAINT     �   ALTER TABLE ONLY public."mongoIntegratedApis_friends"
    ADD CONSTRAINT "mongoIntegratedApis__receiver_id_ea5d2267_fk_mongoInte" FOREIGN KEY (receiver_id) REFERENCES public."mongoIntegratedApis_user"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."mongoIntegratedApis_friends" DROP CONSTRAINT "mongoIntegratedApis__receiver_id_ea5d2267_fk_mongoInte";
       public          postgres    false    222    241    3324            K           2606    29631 O   mongoIntegratedApis_userrole mongoIntegratedApis__role_id_e09e2b8c_fk_mongoInte    FK CONSTRAINT     �   ALTER TABLE ONLY public."mongoIntegratedApis_userrole"
    ADD CONSTRAINT "mongoIntegratedApis__role_id_e09e2b8c_fk_mongoInte" FOREIGN KEY (role_id) REFERENCES public."mongoIntegratedApis_role"(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public."mongoIntegratedApis_userrole" DROP CONSTRAINT "mongoIntegratedApis__role_id_e09e2b8c_fk_mongoInte";
       public          postgres    false    3349    233    231            S           2606    29726 P   mongoIntegratedApis_friends mongoIntegratedApis__sender_id_c4785cd2_fk_mongoInte    FK CONSTRAINT     �   ALTER TABLE ONLY public."mongoIntegratedApis_friends"
    ADD CONSTRAINT "mongoIntegratedApis__sender_id_c4785cd2_fk_mongoInte" FOREIGN KEY (sender_id) REFERENCES public."mongoIntegratedApis_user"(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."mongoIntegratedApis_friends" DROP CONSTRAINT "mongoIntegratedApis__sender_id_c4785cd2_fk_mongoInte";
       public          postgres    false    222    241    3324            Z           2606    78572 U   mongoIntegratedApis_conversation mongoIntegratedApis__sender_id_eaab89fe_fk_mongoInte    FK CONSTRAINT     �   ALTER TABLE ONLY public."mongoIntegratedApis_conversation"
    ADD CONSTRAINT "mongoIntegratedApis__sender_id_eaab89fe_fk_mongoInte" FOREIGN KEY (sender_id) REFERENCES public."mongoIntegratedApis_user"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."mongoIntegratedApis_conversation" DROP CONSTRAINT "mongoIntegratedApis__sender_id_eaab89fe_fk_mongoInte";
       public          postgres    false    3324    222    251            \           2606    78535 Q   mongoIntegratedApis_messages mongoIntegratedApis__sender_id_f879d048_fk_mongoInte    FK CONSTRAINT     �   ALTER TABLE ONLY public."mongoIntegratedApis_messages"
    ADD CONSTRAINT "mongoIntegratedApis__sender_id_f879d048_fk_mongoInte" FOREIGN KEY (sender_id) REFERENCES public."mongoIntegratedApis_user"(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public."mongoIntegratedApis_messages" DROP CONSTRAINT "mongoIntegratedApis__sender_id_f879d048_fk_mongoInte";
       public          postgres    false    222    3324    253            X           2606    53936 L   mongoIntegratedApis_notes mongoIntegratedApis__user_id_62210725_fk_mongoInte    FK CONSTRAINT     �   ALTER TABLE ONLY public."mongoIntegratedApis_notes"
    ADD CONSTRAINT "mongoIntegratedApis__user_id_62210725_fk_mongoInte" FOREIGN KEY (user_id) REFERENCES public."mongoIntegratedApis_user"(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public."mongoIntegratedApis_notes" DROP CONSTRAINT "mongoIntegratedApis__user_id_62210725_fk_mongoInte";
       public          postgres    false    3324    249    222            G           2606    29471 \   mongoIntegratedApis_user_user_permissions mongoIntegratedApis__user_id_8d37b401_fk_mongoInte    FK CONSTRAINT     �   ALTER TABLE ONLY public."mongoIntegratedApis_user_user_permissions"
    ADD CONSTRAINT "mongoIntegratedApis__user_id_8d37b401_fk_mongoInte" FOREIGN KEY (user_id) REFERENCES public."mongoIntegratedApis_user"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."mongoIntegratedApis_user_user_permissions" DROP CONSTRAINT "mongoIntegratedApis__user_id_8d37b401_fk_mongoInte";
       public          postgres    false    226    222    3324            E           2606    29457 R   mongoIntegratedApis_user_groups mongoIntegratedApis__user_id_8f5ddffc_fk_mongoInte    FK CONSTRAINT     �   ALTER TABLE ONLY public."mongoIntegratedApis_user_groups"
    ADD CONSTRAINT "mongoIntegratedApis__user_id_8f5ddffc_fk_mongoInte" FOREIGN KEY (user_id) REFERENCES public."mongoIntegratedApis_user"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."mongoIntegratedApis_user_groups" DROP CONSTRAINT "mongoIntegratedApis__user_id_8f5ddffc_fk_mongoInte";
       public          postgres    false    3324    224    222            L           2606    29636 O   mongoIntegratedApis_userrole mongoIntegratedApis__user_id_9bbf307c_fk_mongoInte    FK CONSTRAINT     �   ALTER TABLE ONLY public."mongoIntegratedApis_userrole"
    ADD CONSTRAINT "mongoIntegratedApis__user_id_9bbf307c_fk_mongoInte" FOREIGN KEY (user_id) REFERENCES public."mongoIntegratedApis_user"(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public."mongoIntegratedApis_userrole" DROP CONSTRAINT "mongoIntegratedApis__user_id_9bbf307c_fk_mongoInte";
       public          postgres    false    222    233    3324            V           2606    45805 V   token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk FOREIGN KEY (token_id) REFERENCES public.token_blacklist_outstandingtoken(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.token_blacklist_blacklistedtoken DROP CONSTRAINT token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk;
       public          postgres    false    245    3381    244            W           2606    45769 S   token_blacklist_outstandingtoken token_blacklist_outs_user_id_83bc629a_fk_mongoInte    FK CONSTRAINT     �   ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT "token_blacklist_outs_user_id_83bc629a_fk_mongoInte" FOREIGN KEY (user_id) REFERENCES public."mongoIntegratedApis_user"(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.token_blacklist_outstandingtoken DROP CONSTRAINT "token_blacklist_outs_user_id_83bc629a_fk_mongoInte";
       public          postgres    false    222    245    3324            �   $   x�3�LL����2���/�M�Q(-N-*����� |4      �      x������ � �      �      x�m�ݎ�0�����	V����iŔl�BtV������]VN�sg~7CҴm���8��lC�B���w�8�z���~�:ΰ�C����Buc��]߳�L
�nC[�]�H�B���R�v�zw�*�
�+�ڏ����c2�z��Ժ��_b$"�N*�$ɉd5I�E*cu/?=�y���� /.X�K��$�.�F�H	�Q�BA�+Vz���� ���R_��4B�RU@H"�%j	 Ƞ�c�qX�L���7%��mŦ��;�T)^�zǓD���hЫ������V �f6U��dLe b$�1��*Fb"����9��f*T%!(�@��2l��L� \�@&߿���U�x�,��8~$����b�Wb��m��!{@("n#ra�PǔAU���\�c�#g���;W3Ď&n�f����)3E&&���������w��6W��bN�Wp��9a`A�*f���J�����mK���\������7�+Ć�p��˻D8S#0g�!���Ɯp���u�
�!Zj�1�D,��on����&����q����B�㴏�[UnN[�$��R�Nvl�I�˼4C��Ѕ��(P�
�i��ت�x�J'<����6�	�m1�ø�5@���Ė*��|bTZ�!�Ĉ�2��.S:|�in��;ru��y�V��j<~٢c�S�?mѡ����m:&��~��};�Uan+T���H��J��FR�Tr�0R�P��\U��B�`j�Zkc��w�ʘca����)����/k�,�+e      �   �  x��ZK��>�~kOq%B5��x��QE�T�JNN��.%1�]���$���=��`|�k����k��/P_0�%�K��t ZEM�?w�W�j�x�ny��N�����������[���/���SqסQ�A>p���/\m�f�0`��;
ʲ&5��7�����֫��G����כ����ﯿ�)S�0�!w�w!�|�l�w����vf�^hxJCF��9�4�1��a`�`�5���� &e�	@yc���_?4��g�F�	����P0��]Ǭ�o􁀮��p�y�«��F�:�E�i�=FW39%�:c>�#.N�͈�
�c����|��ƛrd���w�������"��(t��e��gǼ��������?-~-˗��k�j4� ,Q�'x�͇�O���hg4ze5��j��I��,�N�+�b�u��z�^=�>.6?�{u�[�A1�/������-G��3m�P��x��#�r��b��:��h������p��w��c�N�]H��g�
�`�\;V�$H���8<)���#˫��؄sr�7�C5�v��vP�[�4���ov�����W���"�ȩŚ����a�#p���f�{w���o}v8�O�@�GXp���A>Y^7�M����MC��O�ǆ���rV>Y����O�熼w��f��R\S�4�|�ғ;��2��3 F��#0>11�A�K�������r��Jʗ�˶Rmf�Dɾ9_I����T��0.gx	׺X�jK�@ 6H�ٿ�'#j[A{�B�;e���v�`��0�Ɉ��=¹\���Z����'���� Q�G���ԡ˩���Ɗ�*�+w��\�|�@q�c�+&��ёk��d���.Vh�u(���OF�6GJ9E*��)�"|� cR�o9�:?�IL����=th;��{���X`�]-w��!��\Ƕb%��F#8ԃ�u!��a��S��A���ՏXm
R�kfm������WC�Ps���R儁Y�s��<�V������E�|��/]��#N��AeX�;sO'�f��@�U�"N�r�S�K�gzԄ����Yi�3����5'J���|�N�IJ;��&�P�y�N8ݔQ:ɰ~v.�,)V�(��x�lg����7�թ��E�0e���	�J�;f��;"���M̂J�8�f;�����6va	t؆�JOUID'��3�23��2(%I�GX����[P�����Fm�r�L�00�"sΠ������q�xXޯ�|����q�	�1��4H6_ެ��J�|y�ݼ[߭ެovO���W������sg�E�<o�� �M������M5I��M���iM~�)�:��>Ҟ�bw��0�ǘ*8�/q�sz��N��Vn��hg+�#�!�[4*o�����l�f�P�x�A��2o�9&��z3 �R�H�ї�i�JS�X��`.1Ƙ�����_��c��iqRi�l��yV��b�ݬ���5�X�!�����9��3�$�����Y>���t%E��!$y=/�D�8yӐ�e�E��S�.%�Ӽ��ð���<����#�2��mz���N����=�?=��#,�����E������¤��06����Z�rw�¥���]Ryf���lL�� 7�a�u��uJ 8����V��k�\�������o�����aPl�R���T/�-oV��������`#e�u�����vu�ܭ7����<�G`R�>���w�i��G�
�>&4�P�/
��U�~Y�����Ô��V�\��Je�|���+S�>y�tN�m��);�|��%M�c����9b򥵴: 0�~^_�b��������g_^��\ll�Q1�'��˫c�,O*,1+�݋� �W�O����U˫C�{62.�r��V���Ͼ�:�q��3J�bKq�v�����#ˬC'��z �'��̓�O�C�ɑZ�-�����"#-���X��щ��O�D�$<)��>$� ��a�~����S��~3��)]Q�R"6�{�X��Pz���;8����|w�ISNip�5v�n���#��z����>��J� y
U��� �	��T���G4W�+<B��/?��}Kj����ҏ���>��G��%0ȅ^�˚x=��;|	��*�&7L�`b�+5=�-O7�M�2H��ҼI@Sy	9w�g0���&W�FP�'�_���w�ŋ�F�#�      �   �   x�}�MN1���a�/,Yr$�NLMbG���'L!��s��~��A���F�y��T���f���[�$�,���w�;C�V�j���'6Y*`����.������N�w�C�&�����!�����$�t/��羵D�����.��)~�{0��_O�OsNj�SQX�ßYL�sH�z�C��s^O���z��׍S,=~���8�B��w��"~ N ̖      �   �  x����R�6Ư�S侃G���^�:��!"�8vj;�Ч��D�I���j��vװ{��w��~��1.ta
M�C����#�=@-d�B���oL��xw��O�O�o���뚓ߤq���+�����u�Yz�zH�C�v�;���1�����Լ��wG��M�h2���v�?5���q��� ��sP�y�)B"�W������8��?��-$I��c2GQ}���!h�����ƨU�m��k8?�6��F��C?�������j��L4�i�*�!	f���dk&�+�8����HQS��Y� �r�tyw����R�s%9 @�d�������/J+G%w��;��
��t������*I$��)t_�ȑ�tL/�0
�t8���A�죚�9�"$=�Y8|�D%6OSl �mstO/}x*�QG���������F�/�DV�&����d5��H�2ӠD��J�4�����s��M|�:�� ����RF2���%���[�����A��9�(��=�������Q��l}�C��5k�5��'aΟ*��Ձ}�����x�25���qeK�X�}�g`�%���k.j����4��P�_�����"��ch$�p&����iC�p)+�=B�:�1���,��g2��G�Y�Dō���x��i��N��6�z7N�tY̎jϠf���2���F� ܹ���9Y���L�%O��j��I��:��*��F'��'@�-�Bt�Ds�MױA����r�r7���s?������f Ւ+�GE�QIj\m�G�_&JPw ����܋�J�a� \oy�h�o���m���$�l�����K	E;Nb�-�L�i�PZ��HcE�-��
jaH8�[,}�"�o�xŸ���
�bw
���c$?�6� ��ɢ�o �=��_�R�V��-(�6t�¿���Ћ���B\ݸ4(g]?�A�m���bRRˬQ���ӑ��aQ/~x3ڳ�M�aDi"���&?�Llk�c�y�Vi* ��?B�� ���:�hr!K� a�~�w��g�@�!�x��ē�Y�X�Uꑳ8�����`4OI��Y�����M\Ǘp�B�#��f����W(~	)xn��4P~I��L�4���d@�~�a�i�Oa�{�gW��5��,��c^b��w?�"M-ME��%���%�:+P��܃�CdgJ.�)��O���i�Fm� K6�l��,oO��'��m'PY�D�������?���<      �   g  x���In�\�qe��l��l �`��*	�<:��x��KJ����>�sn\��Ǟ8Oz����Osr�E4F��17�D�V}<�l���hr)XL���29N�rW�N��3זDq�8��p*�檬+�bn1��Eo9�u}�p�m+P����C`<Y��<��ѭI��\���tlϜ�6,��LR65�?6�im�������d��-�]�y�&O�
j����|�/g���jS$ڹ�v�1
�*�?l'�QI~!��# �!�)�K�R��T&�-]��F<�	��C,`��XB���?%%��-|���˥��ɱ�g~����]����J����OyZ8�E��/fm����u�G�:Kΐ�7�Ͻ�X;n秧q�jӸ��9#VH�5���ꤨ�Z����ibN�\;�[��?�l=���R��N�i�L�28����kM��f]^���kr������o$�I2���O$����1tA)b;8w�跽':!�ş�tG����TZ�\���l��t�gI�-��j��u�=��5I]�+I�g��$C<f$�D��EMS�4I��$�+!��x��'"��\]�9��n�,&$,��S���`E������Y��p�o$�	S��1�P�j�w�_�l`�+z�9qnh��I����4"�d��Fސ��v=3��%ʔ�]�|��0����i���#����F��&}"I�!J�{�����Gi�*�E��D�R ��H��*�Pޱװ�}T����4O��vE���EBX�L���6&����YC���zz��F������'"$�y��l�GSt�s*JK�o��|��s{�KE���|#��$I/!�cL�H���������^��         K   x���tI�U(���Q��,Q�MU(- r��9M9�,qJ+$�'f�qp%���*$����聅c���� VJ�      
      x�3��44�4�L�26�3b���� .X�         E   x�����@�7T�����Nj��:�k��ɤ���s8��&���ڝ]�!K��r�L~>OB�LUo1�         5   x���� �г3j�|�]zf�9=�sL��*6����;N,?�ŧ�I��2
      �   V   x�3���,���˯L�,�,--����K,I���2�-e�.U���-N�2G�/.Ƣ��"%-%Ͱ8��8%��,8�d�HI����� u�9�         �  x��TMk�0>���-zX*$Yv_�Xa�a[Ye��+�[
�\��Wr���t��H��/I$7�i���^�V�՝��*��N��i��Nz�Jm`cͣ��Z)��T�۩��?JV�6I��	��_��%̀�J�*9#+���f��β���%��H(S��ß$�k$�D��DIX��D.~҉n"���HA�m��S��N����u�|���q;x�H\�#Zd���ZWp�{�bg�����0��ص����I]��u�|������Mt�:����^\���A��u?�4� ǫ�䮒������
�i��i���ٶ2BG+T��i<!'�b4���c�e��Na`���ZXk.������Fv�
=nrZ��a�M���1{��]з����~_ۃ��_v*�X��la��6<�M�� ���k���}#G� �L�Q���ɽޣN�xnj�^Wʟ�����ۦR�
��Z��HN3!�&|�����c�͉TE�)N9n����hIs%b�N�q�r'��|����Ւ�2 eDp��jF��/�H.2�� ��)ˑ�rF)Wm�zi8+Ӕ�e�Y6_��:	岔�\N���Xw�m6���9Xm<�`x��'�dY�,+f8�p{���*n'�;�ƃ���v�l���c��ص�W<��%�H�g�;�yr�(�;����p��z����O{@��
�S�gx:Iu�CR8�`Cmu�'r�B_Й��r"-�9�o�����=��         W   x�3��T�H,KU(�W�IM,�S(�HU�K-W(IM���,,M��4�2�tL���S�,Q�4�2�L,.J,NIaNc.N,`����� �6         #  x�Ֆ]��6��5�B7��bY��!l	ʹtR(!!Ka�myG[�֬'����	�LMo�u!�c�G�ye��� ����;��ptж�qpꆺD�B?fi�{�FtjǾ��]���.t	�BpI�ҚфUb�KG�y�ϵ�wC�D���/w�v:nX��G}؟���5��/���S�m�շ�	��?�����S��֞B�����a[��+���N;�����Ġ��p��bLk_�vt(�  (�4�2���#���,2.� �`)�(ϘF�IF�?u,(��Ŵ��krL�rV�ոfD����<�^�W�0���ATQF�B���{?�8f?,��sA!�	a�4R����(>�TN��x�	�r�A�&8K����D�FRťd�+˹[]�Ȩ�+0̰^ ���OaJR,I�\2Y
���|�>��'k��#�%`ï�ï6]-TDDy�WLƭZM��fe�rX���K6L��&w�;;���4x�8��ѕ0�_�	�|s��������o��9贱������衿��,��,�$#"���R?�!׈�����f�[ƽ,��*Ѹ���?�K�S�]\�S_w��y��4��I�l�,&�҆`�cc�8qwy\mǱ6�'[��q��v���;�V :J��JMF)0J���f'�j�4~�'?��f'�]o�Ʒ�W��hi���f2B3a�T��ih��a��i����>���À-���7�$�(WF�!@��N؂@\�[&��eb�ajh�8yUV�|�q�9�gS_�kȍ�b\��f�7"<Q         n   x�%��C1Ϩ��-=�z�9��'�O����A�/z�Cx�$J0Y���INl�dø��a��PXW�)����P�d���vM��-E.�-�4A�=˂J���'"�#�!�      �   #   x�3���/�M�Q(-N-�2�tL�������� u��      �   !	  x��Xَ�:}N}EtU��:$�#E���<W�DW*0�0B����j�SS�tZ�Ցb"�����ZX�srv.Ǿ4'���
��J(	�-/�$97��$�E��o��W0����e��EY��}��[Y�ؙ���q$U+��׉f�A�����U@ƃ�Nj]$i�|�p*��=���@�i��s)�R�xM�N� �u.�xk��v�I��b
�m�k�1�br&	(
h1	=��x�U�E3����8+�lq�ið��GE��CI����N�ǾS4�cQ߯ŃW���˸�i���YT�֬7�&����5��1j�z��yͥ��-�r�6�#k�D�^����o����N����z�&6;���ً�Ћs0ծ��RN��C_O�ݒ����^��ִ����tKl}����jg����A�=i���M��$=�y�u��+�Y����P؄Nn�B��r��-���8 �C��^��rO�DQnA"�z�"��ȗdP���N������S�k4X��N{�KR*"Sm]�Qh����^�p'�;��E�5Ԫ�|�s'��@ݵ���!�CŅ$�C��)��K(�E�yAWE��4N�m`[2�,���6ʑ�	� ����� =�7`תZ�uHaS�LHW˳[�nΓ���70���0�CzccZ6#ޤe	�7���':Y�y{p�,X&o#C����r	�C�&4�,��݆^�rS��H�8l�{�.ɧ0�q��<�]�oB�y�S7W��+��/�y��3༡p��z���j�;�df[�(��:���,���~�gta��,��m7�U��J"8"�tڽ���#댝dY`��9�b�$�Rl��m)�5�-z|daX�1%��Q�������tG.F����(��ÅؤI�8l	�$+�&���mY�o��K�M\V���l}��-?�w�pMТ>X�*�G@{w��L�� (�j�u�ы��')�P��LXz�W�g%ռ���P���@sc�Lbru���-�+��� �d�$>��|�ۯ��V�*�͹I"Ԫ�A�j�͵��N�1�=m������h�������~���#X�/�IӴ�$0��y��T�;�S78j��2�����1W#ip���'�~��*�'�1���=�,�� ��_�q��Ng���#9��e����JruSd�k(6#RL����
�$/���y`�y���)A������qH�,דa��Ff@^�2#�K�'�qL|l��x���g�=8��`Qk�V]G��jݏ:��%U�%SM��4�^���X�WJ�.2"}Si4��$���r UE���m\�����F���1)�tNӁ��u���.d���9�<��j��� #���{��Uwԏ\�XJ	h �a�����
F-b
�`L�x�!�������6��(�,�Lk�2�Ai{�Gf���(�U*��vFߓ���a����g_���1�D�}t%��=��1����CJw�|�n4Pw�����r����ܙ�k��b�Y��}=�ڽQlա8&J6�v3�n7`��VTy�Tj�)+��h�Qx�
�x���.�!��0�����d�u0��p�D0t9�my�3ehy-Xu��EA?��'v�J>���|ɳ��#3���Wy������R��`�w��3�6��8�۬)Iu?Ʋ�\�7��PS=;*�}[���anN���K�-q�1&ԃ��L�$���-�ԟJ��3g�=���=�����,�=�7��k������s�?�E�F��A-I�%��R��\x�~��dۜ/��A6S��*�{~�O��!������Y=���.M���5��ʹ�mCW��m��+��iI���m\�w�p�ı	��X�.�3�y���>�(��1��ޫ2�Dh@ҥ�*{����h}��[����_�L���Cd"��tgm��t����J*�W��g������aA>c��'��ɐ��=����=O�s��~�	��0��7�f�iF��<�(�q}�i:Z�U�}�z��f/�fм3�Mh��IS��y��_yO�,:��b^�E8�E6��E��ʛ�����"��A����Y��SߩL.�I��t��,.��_�5��,�DmG��`W{	�c��q�.���)J�~3���fХm�VP��3'-��5]�� ������xx���=U)2*��,���Ŷ����!񰙕Sd��U�&�u˲��aǥe +�c���Q��̸�/>:f7L��N'�?���*Ñ��/~���2��F��ޘ6��ݬAc뎖3����G�|�{��;��h��xy&�4���?x��?WWW��8��      �      x�3�4�4�2�4�Ɯ���\1z\\\ !��      �      x������ � �          <   x��� 1�bQ̍W���:n� 	�BQL�d����p͋�����v��U����	�            x�m�K�����*��VTċ����A2�R�W��ƫI��w����������|�>�������ƅ���y����/�ɝb~���.7Y�>�4���E�"�d�ۡ��j��>���Z�8����|R̗�b=/?�����!=��֓�~�(�(o�+f/��lh~�jDOL�"]���z#���5���F������:k���c����Ǵ�Y�%� ����P�� �y�������C`�҅�8�9=4�/�k��q�F�i|���������'���9�M0��C���/��<5~�0#ܦv97�����gM�K�B��9��(��5��Y�R]�%����"Hy���l�C��}�Iz�ޤ����pM�-V�I�#8�|ݟG�5U���սs>��I�#�y��pܤ�B�h'H�T9P�:!�T8��M����s�yɚT=�C0�c~�hR���4�e6�z7.�t8o�Ѓ#sUi��VӇ��B��<�Mzp���^���=8r�/';��>� ������,�f�Ct����p��������������ߨ��5��gS/���Fp�@�*닣��-n�&����C�T{�cU�xG]�fT9�tX�!ڌg�3����k&_\T��w�$�Tg3-��uB��p֛Y�d��!̧��{G����2�=S�,���RZ#�Ű,^0�'}/ˤ�Y,˪�純���+�^**����l��-�#�c.Zf����.F($%�v�'J�ې��>�Kf���6�pS�הe�~��a��"d��g���m|˱v̫�0�y�!m��-D>8�Ӂ���=����	��u^O�(������^9��C��>f���"�����y��� /f���Myr�Es������S�/��a�{'�i�ۣ�I�[�۬r��lE����f��W��^�5wj�9�I�o�;1(W9.<0�%�~����%,C���ͫ���.|q��7�z �1�Zy��\ͫHsLߺ��U��j �c��0��S�y���9����Mߵ����z��0�r3�`b��Z�^8�W,D�"�_�����ɭ�z�4��QȲ�F,zrx��ѳ�*�G,���Y�z��Fbɓ�~1����I,�\$�%���yږ.L&Z9
��󬭪8�K��7ڪzD�`�W���vbU=���3� ���XU�0uhE�uW׫ �����D�;��"U�0ήWI�bxvx��p  VM�Zә�}�b���'0� |h�a�U��f�
8�/��{�S�����(�s�����^A���l�sq�k������3:�v�!4:�IP�� �
�ʰ<�< t!~��_�IN�a�") �7Pf�y�H� J�<n �!� &F��|G(C�ʬXp���]>��A4+8���v���P���(��?��A���F�@��C�\1�c�3W0�N0)��D=�A�O0Zl���A,�\���K@6��'������hb{�;�Xsu`5��0$��}��B�� �0�[����)�Xo�� &0U�y�R�c��0X�DdO�a_H�0 �[�
�{OU�h.:�Ha`H�0 �2�}&�u�*�l#���gX�[ X��](�L��b,p�� ��pYg�.UpT=��L�z˗0�����:�G������bw�j,���������d�b��Wp��>��`d��>* FI�K�K
��E���lL/�s�E�(���}�l
YT+G��+�σ*jO��c�*Ut<AtKLŚ�)d�*��3�����E�.��r���	��jI�.2��j���Ӱ�dU�[)+[�V]� �50Sf���U]d���H�|"�۪.+-RuX�xV�*�D7�2eO�i%����[�g��2�۪0�͆�a}��V���	7u&s�m%���a�t�����U��O4�̖�K�
c�!3��'B��-L'�xHt���#v���?m3O��<9��s��.C+�1O��� L ����
��!��=�z[~�����X���
�K�+����n���ӥ�*�9Ȓ�
�K�����sk��4�0�b��(���Ҭ� �_�����C���9C�D��Ҭ���Fх+>�21av�1�gۍadiVe�g&|�j���Ua���v��V�eiVabD�Tx��-�]����D,��U�@6z�4�ѫ0� ����ӝ*Ll�ƶ��L-d�*@��\�3&�ͫ0 ���>���A�Wa "�eL�Ӂ�ͫ0��)^K�i�a�We�ţ�OL��D,�We42;�/�)�7�ʄ�g��,qⶪ.�g77��S&��mU] 2a�#g�8u[U�F�MV|J>1�ݪ.���ưLj8eZU�N6�6L�U�{����oG��w�|����~�U46�1x�: V���� �n���|b��WPb[�f���X���0v$�n4���7�Q�;��n�����M6� �藋�ٟ�Z���������������A�����|-w+�� l������[�h/����t�B g5
�4��<��ܽ���j"y�)�*�aM�$��^���$�4���DԨOH���c�܌b�����*ӷ0#F�:v[�u`Z��&XPgm�U�����{�r�!�
n+�F�#4�*Ӭ���[t;��U&/���=����i�B��H���7����Z����`FO��*32����\��\9�|���J��K%��p�#�c ��{WB���.l�cp���,� t��1����.<+�����ٖ@��
�>~G��j�«���-��日Wp�O�V���@��H��|��0����	�f��'���Ted�nt!;N^4�XTe���raY�2 a܆c:���R��=*c���i�_���X�o�F�PF�2qT��E���f�� �q[xCͯ�2Z���+Bf�� �Vet�.�4O��*�� 	I�7i��*YMW�dP� �Vel�t뒵���K*#}�у!��c�S�����ޠ˻C2�?��;�Y��9�n0����,ZL>0�{=Ad�N�=�}L���>��K��f�1��}"�F9{lӿ���}�1�,�f�1������������8!GG_�:	�m#�w���#BZ�Y|\��F�B8���6��zb��̚�ż�k�,E]`����\�ly�I\Z���CS4]3Wa�xP���flA~�WP��$�mO�y�ȃ�6Ξ�����`l�p^�0�
�#� >3���0�0�(�ƣ*�����<�̨ʰ�=�q�`�xTeЍb�axΗ�m<�0a�0����a�xV]d/�����Q�Ƴ������0�6�U�C�B�^	B�Yu��8M��D�2�. Qv0G��,7�U������qC�� Z�JZK�q�Yu��ĩ��:0n<�. c�}#�1�L�C�}�8>�p��G79�M�ҤWa��V��)	b��
���Ϧ��uH�� ��A����^���Z8t�%J��U��0���ٵѰn^��}/c �(�X�*@E��<��5��Wa Z��/I0�۪����;��d��u[���ب���3/+a�Wp�o4gϯ�����oFΕ㛆�[Z���1s�=���	�/R��_o�
�=�cj=\��Y@�&A�n�e�W�#	'�!�Z���(6�d���I�\�Ȇ0B$H ��٧�����!L�t.�Ʈ�5���8�(�(e�h�QKaɤ�D�Rla�N��a��=�[�.��:�e�k�
S&}Vp�sbX��k��2��Ý�s�X�UA��O;�
S&t��&�b�c��|5��� 1�jn�k��ʍ�Z��[=�1�
�������Ug-��s@�X?�La�����m_�<e�Hh<A�;�Jk,�,\��[�vq�WP�_�q��+*��.�9��0���X�/�
�}�:s.Zc���!���3�V��R�;Әakqe\���vq^��,�
g;tl(�ޯ01��	"P_��
#<�@�w+��F~�a��tHA���`,�ྫ���ߞ��^A�� FŻ=�-T�}�/�|�!��������'B�
�= {  �p�zz��.�o���a�έaq��[��'.<vfe4s�X�O\;�]��<���'V��/VDU��Y����G�7��7�q�x�Y?`�y��]�;�g�7�}.x�ܟ�m(�ku8��s�Y7(�OT��'s`Op_��q{G�}f��ѩ�� �ଠG�Sx��!v�#��7��y����@�0���<��ٚ��;����h�9[�!�S����+A��su�P��lX���Ky�a�D�<���Z���,�`���U0.v�~[����_y�(`l%�k����wĿtٷ�b�����a��	�'Y-_�-U~��g1Ȭ^���/Lv����^T�=Æe�6�z/��~��2��p�Wk���A��            x���[s�J-�<��y�G]��� ��I,R�������Я?Yto�v�w"����nS������V��,����Gɼ��W���W�V��soZ����k/�PH>��Z���u/۬�bV��2h��bƢVO1[��,sd]N��� 8{����>��1��`��ֶ� ^�+mw��n��Gl���rZZF���������ҟ�������^�>�r�w�1%Tv��`l�N��|킣l�~�f}��5�C!u�Ա�/��T}%�J4����W�h��~B��hB	C��1X�*Z�(�,d1I��y�-��ͷG+����c���uf�Ӌ���7���)��ɱIz��gS_0�nk�:���$���D��d��C�����4��苍�6�eEF^)~�pN+�x=�mEiNH��q��
�p��Pc#!x�>͊�ZUY�#7����	��]����2�=g��-g�l�����m�;[�
+NvM�f��1�R_}����U":�:�s��N)ؘ�y=�"S^����͊L��bL"�	QH�h��&�3-�R���{��\�G+:v닾1=�Y���l�dJ����$��4WV�sK���M����X��*�M����^L�������d�	ߗ��V��D�`�cQ}��~|1NQC�b!�L(�HC��i<`i�?ˊcZ��ԣ_���Φ�/Ͳ���6��x���\NVf�g_u��]u�y�M��^�Js;`����PZԇ#�](m��n	��ۊ�+_�B��Ŋ����(�((	#�5	4I��a�Ք'Y�i �V6����E<nflVf&��/�2��n��/��Y������3=e��}Xhf�o^:K���c�ϊ��E{�'���9���@PTy�������jqE"b*��P�
M�H������$#f��c��N�ޠ�F43��;clf�ن�Cھ�Lw�,}Y���ͪ�����io��}��9��#�p�nM�d������b!S4�B����X�((a�E4J�HcMA���R�j�YV�4�������-б���z?���+!eß���}g�6��Y�}��\�5�63�U:֠3뎴���>裥w���t�����2���"x�/� Ȱ�V��:j#H0aEq�ƉH��R����,+B���b־:�/���4 J��u֞�ɭ҃��c�;�Lc�W�E%�v�Ȫ��q�l�
:���I}�O>w��j,�Z�ӣ9~��õ�7+�������T՘�� �U��D�$BILj=͌�|��Ҍ��ƌ�E�g���f�`�t>����y�/l���Q���Ɂ������p1��!�76ks�vi�ħY�l�Q�ی d�@��j3��f�j��0�H�� �LQP��"�Tj?͌�22f�-y�=t������H4����@^ �x�s�3=R�^�\4>R�ݠ�h�5�����H��N����q������+V_��߼Q��A�q��!�"��\� r'�V��b/���,�,�}���mXk`)�y�X`w��L�L�E��_�`:�L�s���3-��b��܂N��}�Ё��Y�~���b�$�*�������b)
f<�$�𢪆Q\�Ϣ/ق�����1�h4����I3z�<p��X�jCzf���b����=��9��[k6;\����S/tG����X,������B�P�Ō���q� �b��	���DŘ��R���/py�b��ucF����'�8VXz�w��%�1�17�ɽK���u0�Λ�|p�w�_�}HV'dR�}m�A��,���C�V_9z��Ŀ�Q�6��"L��+�D4P��4
<���E`�F�3fwd�����~aSn�'Z�y��|��IfL��p%t��\�}z�d%�1ަ�����l[l�� �V���2��F���� j�U�Q�6#x_��)I4�0���@f'%��򴆟�`J��+ �f~�B��_������1Y?<���zࣵ���qp��)uǑXӆ��	��4d��W�a��~������|��RS�ʵ�pΫ3���OlT��iB"��$L��(D"�%��j?���,[��K3�q��ا/׶ۆ�Y ���-���1˅�\6ז����鴟�oۍ`�U4�*7��v���#)���޳���K�;3B&W��U1��~8LLO��k��T�T���G
E	OS <O"1W�<�����w���eF^ Y�}c��lJ��p��+�����S��J�=�(�7V��p�]r�{���f:��6����������6#��Q,ͫH��?�Q@^��$�Y��0��P1���$f����LM,`6x�/<���r�mc�YY�\�=2[�N�TY�m�g�yc�c�Oc��^x�&�,m6��y|y�*��j�@��x�ԚP�Vu���)��L�Ӏ�!�HQ�_�P+k�I,�vr\K˙��Fn�@��65��E���\��~a6Aߘ z%�	��i�[��eYO��MS��-�hS_���p����ی�+�^(�n��(|�QSI�#H�,RFH�TK�8Q0�y�3�Lf�oK�R��$����̦2� �l�y��W�8^��]�7�`18k���l���>�G�Y�i�6�~�W�Έ���(d�(��J�?��;J�hJ�,�A��A��
Á 2TQ#�!1�tLT��br�w
���s:�D����:>X���G�b
(�oo�ޫ_Y��-/�,6<<l�h��t�y�\o��r�;�0�ʤ3�転xo��o3�4����e�� G�$D�Mk�9$��*�dXVg��Eף�,�8d����4 T�ɒ4�24.D8�m�}m:�c|L�j����6�i"\�8��o3rY&�i��z���4���5�5-�8�
��ԠF�Cb���fl�z����k_o�����m�Ml�<'R#%��Ѫ�]�;N;w���"�)Sf[U]�s,��[�;㸵[͈�,����7�?�i	 H�"PD��a5�F24>��3���.n�F��,Ǆ�f+�x���#��|	!�� M��<�����h�v�s�{+䟪P���Q{�ϋ0Ç��H�s�����$^T�U�:�\|�1�+<TS�����hZ�b%
H��s�7��dU�Ltw�!9��2���u&\j�&Ɣٲ^L���\�\��ر���l�c]?v�~��ϫ툞鲎.�N�N�֞�����kH������T�jQ
��0VE"�0�@CA
 �ƞdE`Η�2ٵrx[&��`-��,�ۜL)	:l��lZ�i�N���ƒ�v[+o�]�P�N�m*���s��յ�n꡾|7�ӭ�~EB�YqB&�>�mF��X	�Ō#. �`%Q���j5�f�ڲ��|S�Rށ-dF�Xd�e=���lc�������r?�WwT58��Q[�����_�����D���s2�,��_�؜y��DM��VB�	���-���͈R�>LԘc�;$R�*~��D����6Υ�_����v���y�,s_RjH-f� ���W�1Y��K��,}z�L1�",�uE]�S�)�	����p5�H`�9]	��~3{��?�_KiuB�����H�1��@(�� a'$�F��������ʻT���z�-�1���zN�{���������w�/�'R\U�²q��t�%>�{�GH���V�e]�6���is6җ����T���Si$daX �)��rp��	��O0�%�Hf҇�Y�Ȣ��)eR zs7��NL��R����W`F\�ZѸX���׃�$2g�|�m��Y�Y����4N����tD���k���Q�kw�S���72i�1�)	�) �4@���Z�ϱ��,g�˕`[��n+5^17������=���b��Xpsgkp`��V^������z��O��ٗi��ޑO)�ܷ~��E}c��èq�r`)�*����a,5F�
R+"�Nē(Rc�5�駘
ܨ�~�N�=�Y���3��@9p    ����k ����c0�2��.�����nS���?���V�|3>�-}7�O�M�>����^��ܙJ�N��+���@$H
!+!p! 8�5�"&B��}��l=:���]�>����WZK��a�>@dٺ�#��d{��C�f5�x4������&jd;�2q
g��}�L����m*��W�~L�"
.+#Z*vT�T� �)��d��ѫz�rƷ^U�:�Y��C:�ҺW�s��\20�o���Vu*t��c��zo�3�?t�f.�c�-f��bjo���Q_��r��T�bv� \�PRiqi@�R��@d3Q�d*�i_*���N�t�$���,w��J ���n�؎�D�Y����e!;�*��T���]^�N���������o��|������a�GSq�Ϋ�T�xD$�1á�)a�FJ�WS��x��2 ��ߦ��_o�LR�1��KX����a)�:���О����]Do���ӵ��h�>�gfz�< io�d⍎�N'��4��kC�|��,I���Q�>�Se��!EP� ����!x�$4;���L�/v$6[yn��ɭ+�j# ��,,I�����i@ʬ��u�_�㍟�Ke8�j�y/�ם�XU޴��4TmGL���18�5�PM.���
���Ӑp Q���ؑ�N�_������-�?Y%@c�l ��@`W�n��/�����KBetV�W��ZD���ǲ��΢��6_������O������]�������_\	�aLA
�mG����O��
@#"�����A����%�
B�F��^ʐv�����!�iȻ{��l�2�Yf^�#�i��{�_��J�'�r{2�\{,��]���W�is�����#��':���N��'k'3����B���0��� =�8Td7��	B
!�Fէ��1�����,��*ﲅ޾��.7[[%��r"�2����w������s�h�v��_f��c?�C���~iX�Ȩsg6�N�u�����e�y��)���pt�/bLRE�$QP��"bI�(�F�&�X�s�%뽿�%���}��C2�2�C~6��5H��C�[P� ����|l�W���=��l��~	�f����à��+�85��U���ᷩT� ��$`5N	K�&��
ԐU�&�0�Z�=�폩J�1�e�ԻPF��8V���B2�I�A�5%e(��k`�,���Yj/�;6���~���#޾{�ټz`���m?��[x����+�?�RB�U���(`aAE����"�}����O�C���ʎw�m�Xf�c2_j�D���+����K%��Y6/Khk�e�9��itO��)#� r�Nl�̔"�?���4���t��TR?P�U�S�^M���a��=��Vx*j��0U�l�gݛJrp0M㖇#�cې�yٛ摓�U�w��~���;��c�#�8
@��Ò]�3��U�N�2����k��S��.Z9���!F�# ����^4���ڈQ���	��1!�(�	�G�bF"E		h�?��Q����{��~��k�2)H���������ƶ���v܄�ϩ�E���o�,i�f���x*�}3w��cn{���k)�ړ|�r<J�8J$=L䜁�	MI
Li`�gT��*�ߣC`*���Vϧf9��N�z~��À�]�䔛e3�_���(�.��F� ��S��e��9��7��E�˂���Zל;����"Lb[�@����9����2�q 4$��\�� ���?�@J���u"f��ɤh����$�wm��5�`N�Fp�$��z�I^)Z��ٱ����9���8����g��������^sn��NnA�H��"4�L:�>� ' wԄ �E�(d o��Z�bZcO2#��c�x)��[o��~p�[������8ZaJ=p�A��R��zb��{G7�}Xg��$Z�?+���ܜ�3�۪���rwô��V�}a��������H�8GI���$���, 5�oE� ��2�Pw$o0�z�����f��N|uq��Ia��5 ��R���ԘZ~��b�[˼�f�D3��18���8[�z;^��);�iR�Ui�/���W�����n�*4d(D�ʸ�a����T��=�|"�0��nZ)����e&g,!l�@��A�ם��^�@�r��p��]T6�_G���|њ�]��|F�Ȩg������[b�G��֌�?8�c�T�A]��n��0�\�J�`�(TK�'�L�(��E5����_��w�_��w�L��1��r�@��s��WNO�nX6�Y����æ��C;<N���@�6��?e�lămw�o��?��`\��t[��A�@	�`*@N#�pDT�b�5��������rR��u9b�ͥ)\�L���pK��g�\me���s&�r�<�;�>
�2C�ꬪ�h�d��奴[�W��;�G_�i�Z��nhB�	BXĂ��T��q0�(?�V4����Y�9���:p�e�T��� �Sj��L0���-�ĝUe���$x�_�O�Y��I�/���b1\|�����i��y�yS�T����F/X��2�G��{��vF�ؘF����P	4.��B�8�5̟��@j]<� �p[�C.���8F��\���^tV�S�כ�	�sr
�?Ujza46�&+�iw~��VG�not4[��p����HE�%�����R�+�PE
 �0�1#Ar5FQ�@Sq��~N1IʤmV)��	o�f߁ ��:�WN���m,Lnm.'uM@�a�	a=k'�W��l)֛��&���XE��y�l��t�l�&^�A2){e72)��UU�q��$�4~�8PXC�N�\���B&���ݖ(mW���ޘ��*e��%w<Y��J��Z*5y��0?�
}�nba{x�zY�3B���i���#̵�r:b��d.��J�b@�+��|��l��@��aU ����0�BqR#ϩ�K���ʗ�t�Mo˗�e�`�f.�<�qYy�� G�WYr���ٿ,��*d��p�l��;oC������eg����c��Ȧ=��
�����eI � !T2�X�2�RQ^�F�F�����|�L%���3�{��+ea�/zHn�o�`9(n���WQSY�~g��ZVs���W����R�"v�����cuZ���~Q�6��HS�\�*����		,b��p�(I	��$=��==��.��>_y�- ��\�T�~�)6�����Cđ?6�v��Ƈ�o3��NKk����5.����Ɍ�T�QA��`m�W�6kw��"�5��X�,��q�,N�_�jֈ�,��y���ې/�c�l�&̊dC�W�K����J��]�=mU!�?�⭊vAk��r��۝����������Y���F���T�6�W�n�#�)��/�,�X�<� � ��O)^J�4:?�{��*۷;+d��� � �߀(�? ����*9�U7�"o/�"ݶ�5ْ���w~��9
�~=]��'}W;췩��`�-�Gi��%�+���"�Jx�CMU�}N��'�E�,������@2�Į��l)�=�Lf�YA�� p���>�X���~Ù�&~g��h�ޜM�=l��V4=����Q�J$A�L��vU�|�y�\�(#�$bBV�D�R
i@�A�S���������[����`'ݤ�VgKN_�^��Z��K�oLr9�Y�rG�O}�^~.G�!W��˻�GvpXN��$��~���X�B�u��F���1�* U�0�!��4�L��yJ(���sL%5cj��a�j�����B*1��%]��V�}�S�������J�x�K���z�$�$i��bM��E�h�a�����.�vo�����T�!ɏ�4�RE/��<A��8H�c�T��Z��)1_�3<h{�
��~�ڐ�^NKC*,�� ��YN��y�e�Gf�*og����l(gKY���[���[;lc�Z�W�I��㸇��(���Q0BL���������,	��� �HU���Հ�B��p;է�Qj�&{@dR{/wO A�& 0+�%��`�;ƾ<���iH?�P����ܨwO�A�I��C/l    ��R����Ti������-Z�6���!{�`�X�%���fA��@é@�,��՞c,��?���~O�<2R�\A��a�b�=g�{�X���=�����~��y�m����g�:�y���Y������<t��8{�Th��A^�� �������q�4�jQJU�5�uOj��C�窽�w���/�Rs�0�_Z�ܱ��%pje�+d��3f�����b���s��/�nfQҊvɦ����B���%;�:K]5����1�z�����C]V�>���?q� �(X�d1���,�R%�0���s�H-�?�wJ��|v�I�Gg&i�}�+�2[N��ߙe�y���>�>�J��0���<~�\m������6�����L�7�O���֎R����0*��G;�s�[�Z, ��"�q
-Mx��@���1�����c�*�[6~_��1ߙ��חAV&!�7��$�t!_�K�{������9,|��-��f�C��X\Nu��;�(wwt�^ս_�Wh�HX*O�#(Z�� �T�� A�<g���ϒ��l`-��1�����L�_��U1�ei�A ;���MHͼ��}�:��-�iu��u��qZ�+B������c�UR���������z�FQQ �q��*gJ	�DH	�e�<�If�&̊�>��V��ӋՑ*�Ev�� Fl=�-�w�d��d�_*�H;��1졦4�������di�0��Q�}�O��;3�|8��ɤ��
,,��p�"B8#4*��R-������x�I�d��I���o�,CnIS��3�S�'�j]iR��𜅜���m�����E����J��d���}<�$,���=��k��{H{eץC� Ы���9�XC�I�U�`���i�SA����*X��g�z�Ȥ^!��)r7�U�^�6�@�j�"d���f�l]�Nat��N�T��~|��4#�6@�������?G�h..�f�W��m��_�֌R�R�!���2���f��Hɘ��"���bMUx�!���3J��*�7^Uһ�]��ζ>�+#$'�m��d���r&㓥��2��ͮ�c�#������?��A�7��B.�l(��8C�*�A#A����1-��*$�1��5��R�_��Q����w p���Y!�F���7d��//�b)ಢ�P�����X�gj{Y<\l�w�l�|�c�3^�_�Yү&����U-�R��`�8�4�EIna�J��)O���+*TR����+{�+���\N�6�Ü�vYH�S��`�I3¿������F@7u�[c���C+e[<F[�;�I�#�~Q�ƦR%���I 5eD��oB�X��'�"R�԰��S�����C���[z�v$�� &�-��ro����v�%�!r`wJdWa�f�i�-��[��o,:;�ߔh4����w��鬗u�����ӣJJ��>wY܌I��Q�
"0� ��$QR�5��/UҊQo��ލz��(0�2��i�_�r0g����X��I�*�5Ǥ��;)aŹ;��G֛,�����/"��@n�Jz?�(i��HKh"�5<��m�<Ʊ�k�9%�6��q}TI�}�j_��ö\@��r���[��V4���&���h���N����nkV�LG#m�w�ef�N�e}�E"�Z�_*�I�	�Y�Lz��
�3
�H�ȷ� �����!���P�j�9��?2�Js�I� ֛��v�[���ޔ���_L�R"��!ߞ+o�fzh��=���Sp��X'p���T��A����D����oA�Lz������  ��)SQR�&BĊ�SʰZ#O���L�02�G&���mݔ���U�m� 7�� 	0K��ݫ�+��e+>�����l(3c�{��a���x�:颻#`���Vi�Lz3/Kr@�0'ʟv�`L�7���5$h����:�.Al�|1��ʗu)w�:^�.���>�ڻخwmL}��$WW�/,O�h1��x��yB>�K_�$f_��D�����`-��I��L���@ �h��<e5�<K�sz��T\r���L�4��0�Ox�:\8�]�N�l=���1惩&cS�ǁ������3�G��UWl��h+<�^�ٶ�&$���a��[�`��}�G�
���Z�%�ox@V`�!�+@jD<��t�P/��Lj���E�1�/%�kЂ�d �n-R�����e{ye���K#{4����|��^�μ�1>��~�<.קu��PT��_5��#�"(�ȥ�4����{'5��c*��>��?�-�kP$�7OW2 ��9�mt
+�;n����+�jb8�%��9d��1T��8ޗ�,��eX���#,W�Ud�/�v���a�Y�>p�� %�H��4LD�*(j��牒��s�4@4s��юZ�os�T`,�d���r8�H�+��"9\
�S���Pާ�?�����dqI.t9j��ާ��l�f��;��I9L�o�Y�#�GLMy�DK�HéV�O���G4��;����wϏA2 X��`9�QN>�*�75�nm�ϑU�/�Ǻ�ǋ�qJ�q�6�^�s���U'v=يĘ���BC%?;�%��E���	-�D��5��bF-dJ��$��B|��_��;���y'3��\Y�����O/�o��}�]�ܙ�1���r���y/��7޴��`����W���X���j�\��H=H�����ˌq�p%L�$T�\�b���Q�)f� zz�h����c^HL���|�ʽ r'�rm���چ��k��/+W	u��СUL�c_[wX��<�m�+�w����;���<�.�*G��,�C��D�)�"q���I����F��KJ��Q�����n��I&+�\g����]'&����n~a�%�;UJ���B�����ƴDo��~���CbO�=�*��r>D�Y73+%Tz���T�R���P�.Z%%b)��LUF��t�+��=�B�>[�`��X�G���Tm P��F��R:�hk[C$;M�l��Q�X�zi�ݵ�d���>������Qn7�a|Y�]�KT�8PN�i)��K��@4��c���J���?*�}�*'��ϖ������
�Lj�6��q)�������T����u��i�.Z�m���	;��5>S�?��z���VI��s����k����Pe��$�aĔ��TU ��R�hX.�x���CUҟD����+:�G�v��ܡ	� d;Y�L>�r���̯h���̑>����k�r�6P�f�qɝz��C�?E����贍ŝf��+���AU�(���	� �R�H�b�bE�HI�c�F5�$3��]\�J@n+F��,ΐ8�ܳ�GH^z�Y�$`e?��vi�ݕbK����,�ƈ.�̭�_�䃑�i��`���|�Vݙ�p.^(y\��W����l�I���c�1pK-M�y�8��$��',P�V�$��w䮵6��0�5_W���=xr�l1���X��2v=�<�n�]�	���0���ۈZ��f��N��|��w+Y������q<�[��yG6�(���EH�4��r=^�H�Xĵg�/��0�m�W�ꮍؼ�L�*�BuH��+Y��w���L��U�ܟb���A�h�g�F)������q�9� lH�>؃cT!Y��ZR��Gi�$�B��K��חO1�C�j��Խ�ѡ?��]���$��37u�#��v	T�LU��\�VV(�6m��`����;�����:Z�X�֞�1�go���F��w�G�1�����dM�1 �T�Y"_yF��[ݫB�쮻�{d"��+ (�w-�4�v, ۀ�0�L��T!�zH�:9�?���^||�D�-��7�۳>/z��4l,+�J�{���Q��0��P�FU����Q"�4�5�l"ս��q��,�o�ȑl��e���]d��`]~ݤ���RKǼT�{�}'m��1��.<,T��_�h׎�;��na�Ğ�V���#G*���Է��o��J�8�� �
P�p���(���s�Ⲽ��	R���:A�Ed?�z	Nu�v�/x��uk@e?�F��*7R};~O    �b��z���j����m~��>]/VӅ�Fe�Q�c�+�Q���H��T�B4Q��)`:%E��0ҫ��n�U�[���i����u��/��d!�[`��o΢z���<=lB>%�B9u���}ۤA6��z'K����
uO��Q,�9%��4��'D�!>,�{��)�Juo��URݳ�_�m
�+�Y@��S)N�l�Ae�6$��f�lS�	[����x6����:#�t\���Ｏ���6�|����$ҥ^�F���-�ݸ�-�/h̞3�����E� g�85�B�U�{ kĽ[��厬y�w���(����"�����m8���Ϭ��f�ޱko�^�#?��{��u>ߨ�n˝N����B�S��9Wb"�R'��x�h�t+N�5�(��{���<L��t����T� ������Re�| ������r6���gb�>�XM��b���1ة�S�;Z|�ά�tt�ڸ�_��<��4IB&פ0��P	X*L�u}��IJ /�8�&Ž��i�Kb%Y�u�,2��9���t5�!ǰ�֚��P�����`��F�kl��I���5�Ǘ"ߕ��8�w�ߦ����o�v!�
�5@^�� b?��r��@��Y��c�"���� 3�[�s껓�m��/G����d�?C��L�^W�L���Z{������v�w�PϿ>fFd'5p�7_@Y�E����@c��ĉ�ܿ �i>�U�T-�jD��`�G�+�g ͻw��+�������Tr��� ����T����R��m�}��n{|@f�f���Q�����W���Y�z������d|��n�*L�5��P���"���F(�D��H��9��8�����9wU�L��9ĩxi`*g|�p�,:�� ��a�<fG���S�|[Bq��w#W��/�@��Q��I4���t�~��
Ǐݷ���o� D0oMS�`$��@�ME@	j�9s�R��*����s_�t��L��.�_7Q沏躤���*���BP�B��� �p��y�?��Ywyڝ����o�ݞ�
��T ��hQTȆi�b�I�$Q��"N��5���w9�s~0�������_.��NJ�,�|�xz�*�Wt�V9��o������>���Ϻ�i�r��p��x�����Bu�ci#{,P�~GF���`#�F�ɗ�9�� %d8V!KJ��)1_i��[V����-+`<���E�e9�|���*�%A[�}��:�J$��*�7Ӯ�v<�=k�u����gܲ���[whj+��	���o�����1�P$AC��A"B-�wa�Iը��� ��R�QPD�n�.@~���qGY!�u�{�}}�[�Z>}s����W��6T�5�-]Z�C�q�i�y}t��������M�"�B���A�;u��C��Th��\�8���J/$5�=�X�[b'?��G�����\{�s�����#L���������o�̊U3к�no��<6?�x0�$�����#�H?�e�R�c78C��X`,Y�"���� h��E	Qj�	�e�����tR���Y^O�Xz�ڽw-X�7�}2�ڂ��\O	���G����l��}�;������nx>��(�l��-�݃W�W�~�r����e��E�#D�(�
�&��ϚΓ��TM9�wz�ǃ��e{�	�m*�����/}�nםU�y�Mw�2'�n�n��X�#���mb7��k�2���1���]���������[y]��J����2��2��`�n+Q�{r�b!�����=��)������X�,�g���R��5ƾ��P�ȵ�K����r7q��Pg�>��r��P��v���&9��,u�l�G�*X,	�\ p�'�*�	��,��aL#T�î�D �}��׹��	�V|����H�q��ddR���m�#7Rx?�嶊��;��8M��A�HР�8j�C�����rai����I_	�2��7r�J����ӄ�T��`H�*�=ƐGc�	���ǽ�J�`Ɗ]�`�ۺϟ�����Bn3���z�뛸���lL|��嚆ʺO�n�?�����?��"Q�����|���nү+ɤ=�%u��!��r��Z�u^���QƔ(J#�=�C"0DAʔ�$������h���^�������Z{r���w���r�v�e^��W�@�In�=�6��r7���e}8+�u��g����"�=���knػ�1�j�\.�zQ9 ��2$�>�S��$��k��va�P�,;��8��j�(���u>�^��[��b�����������̔o��9������E%�����C�y���?u�2��l�
ڡ��񩈗�W�u�H��*Ә�!%a�>� �0�Ҥ��Q���:�d�r|�qK`���W��Ӑ�N�ro. ��%���\i����Q2��{�n�N��&:,��ڢ�v�\�O�>�l^%�w����ID"܉q�%B	0�p?�մ��Q���:+L%_��-�Y��cv�4�X����+���`bH�z�Wz� �p	N��C�F��>��v��o,��=l����0$��d�Q�55�)<�!Į��+a�jBQC�9��98�q�X�M���ߵm��H:t��4�}X@ށ����v��Ԣ���2������7�����i1=l纕t�ͽ[{0�Do~1i�\�_�
x�aΘ�ɪ��P%*RT� 
p.�e1F5�f/����z�:���Z�WX���@�/;�V$��/�[�~���R��4��'ot��d�)������}4ݬ1 p�T�gnO�N����D(
����f�x�Rq������ޥ�	����L*��bݗ�>+O�J�W����B�W��Iz�Yȕ�Q�KԬ��Н�`�A��&ޱ��{u��x=�̿�Y���Y5ɨ�<6-	�PR����� �kV�!���GLj�9�o�uN+W��rnW�ac�����<!�(�� �Hg	,C֌��$6�d�+?h#bu<��u�'��nl�ҽ���y��G��b�~k��+b/��HT<5�ρ����!�1�o�U�8I����%�ϩ�K��|xo�*v޿7��>1�^�\^78��v'0sH�e��<Zٙ�m{��b�}���r����g��u[��FM�س/���)[L��ɛ�@1U4�#p�Dkq�BQD
�AQ�!O2�\_���r������P1�d��fY�'_8�@�4Wf� 6�X1��e��Ir�C��6��[ɢ�����;�͹��&��̙T:����r�U����B*�G�����Y�)�;�ٓ4+��>4���w$Ǣ��T��g�r����\����UB�w�s>j����~�' ;:[E��y<z��o�M�0G�J(E��`�Q*Ì �j�(Q�j*_%��Y�ܺ�m��w��?���u�j�u�)�'���C�Y�9qV9s���簜�F;������#U���v�;����ٽ)#{˶�
%�m���0*�rX*`r�iG�S5J�@��O)��@��73�� @�PJ@�1���d�A���50��*� L����	{����4z��X�dq�_xegS.EO'}��J(�k����D�Q)4�(F��(�C^��9�"�M.��b¿���-9��,��/ �"S���K�0[�. Zǻ�r �ʫ�a}���Cs�N).�G�Xw���,�n@Wݍ��l.�����g11�s�����߁L	hı�>!�~�0P��c�H��F�3�.VT�,=��~-�'w�!S>)�K�>�m=�[	hW�2�d���v�;\��$ݵ�DE��9�.N�6�v趽����ݫPB�] �J*���$�9 �Xhj�y�u�}�h��%�S]�л��\�\��e���`.,�1���|�&?����\�}P6�<�;��Y1�<5y���tڝ�0��$L��b4�TBo���*�5�?�{s���`,
�xxJ̿*��j,|�m7�)��Dr�L�e�3�ғ����Ŧ���G��k/ї��n�;4?�����ҩ�/^2Ջ�q�t����`5����v�}��'
����P�(,d    X �9R�BR�@b�Q�)v�J�U#g>���Gƥ�[k���`l�ZʝV����s�|��QF�y->��I�B�F�m�me�ɚ#��Y�k����S�z?t�E1U��dq�� �dM�LcHer��Y�ʀRU�2���g�In}���>���l�	`���Ȇ�~��	z���z���]�3sF�ܙ��E�OH��x6h!�Ù����`o[k)P�TU�}('��(&!c	����Lu-�>�Jfo[�VV� 4��4�f&���5�fM���/�z��Ĉ:���N��v�41�I���/{�³���}{3����'uP�J��P4�=dO���O�*8�Bp+%S9��T�x���;�gZ"�ϴ�wv��RG�ꛞ�r,G��܀h���ʒa���1έ��1�,��O^$Se�5w7"�o�j�����d�?[�W�����}����Q�y�q1q% �!`���!��'�R�G
�%4H'i�ۮ��K0����D����jf&���)��a��񤵛G�uL�=��l���_S2��x��'��E�m9�q�듘THI����ݕ"�R�S���a�F��a"�ܟ˘\>�ʕ��j�	/x���r�a���I�;I�$=ji:��
B��ɾ"=^�D�H�A��,~/����N>m�5��pw��qJ�n���X;������B�S^��H����5#� p� � �vXN5&4L�$@%�'<���N��f��.n��X�p���] �!����Fr��|�i�C ��rr�橇�B�/[� ��ޚ`��(1p�y?N��9���N��ܬ"U��H����[��Dq�EL(���Q"KJ<NyLC z�x�몓f����:G�i�Z[7Y��\[�W��� :���ܬ����Se�ۂ���ew$��,�d6�+�hn���s~�.�aKL���.���SYN����C��>�#7+q�X-F��XŚL�
j�(���V�`��.#0S�_��r�5��/���3}�R.R,|�JL	�ֿ��:��_�;����:�v��?����j���_�0}�7�I�GD!� M���
� ��TSk���t�JS���!��-���,�A1���4I��s&3%˨��۽a��ԙz���<�`c7s��Gs?�7��Z�6�_M\�:��c����4��F�VRw�(�)K
�)5��Z��T2f=�jq2���� ��WR�/�ҫ,=^��I�X�|j c9�^����N�b�sg�!�����w�^�]��Y{<^���S��-�!��ͪ�������:�Gv���_�',M��-Iy&��C+��-�~ fu��b/f����eX}�#�������$DB��k, # ͅR���{@^�M�E1�[��"�nbP$I-�l�|j�Z9�<[�b:�N��#W�F�W�5��Ѿ��l"V�lY��mm���k��	�jVs�xu��q|Mr�烟8ʘKR���R�u�2T�$���hp��@5(0�4�x2��,��e�η۳)��f��k�F�z�m(���ő]�%��g�cm��Z�&�d��/kg�-��;_���4���R�5�F�F�X�� (iM�"�M��P!A�J�=uN��H~��OҀwP���8WH�d���!У5_�Jfź�����<8L)��}��]��n�����4�*���M�}:r9�*��R"^̨��(/�|A��hR�y����kP��L���{�i�:�K����M}|X��&��$�!�ެԻPۺh9	�zW�E�}u�ib5�Wzke�8�ZJ�_ݝ�j�U���u�Y�}e����až�Bi��X� �P����x��������j�_��5߼���9�͠.�;�p��P�Y��kû�j�
�C6�j.g�Zm"�SY^'�˴X�/c����}�L����C�[�<6�!�(R"T!��h���e��7�
��핦�' k0�df�=�[��֨(`��c�.����U �+VB9��ZO��A�;�y�4��N���y��"kq��NO������򁦡�QȢ�k
�����GbT��c-,��@�<i��\N;<�䨃V���6�2|;�)�&�݀�����V�7W�*:�d7쓰7�Q�����h&��]�����>,������ �CONJ�4x���.(!>UUH]H)+�"�&ƫfVΓ>jf�rn�)�ۖs��t��6�
��)�έr��"z����=lM��a}7���Nm=��C=^�E�^�d>������,�D�pdRA#WEi�O�����K��ʮ��
�'�t���AN�7��O�h�VNRa9�w�3��Mf��&H�5j��t����t۬L*�>��jZ����rn�k��:����� �D�PlN�� a�Γ�4OFj����{B�͓n�NsU���/f�\�ƨ�p��@g�XB�n��dQ�7���X���h; �F帽��ݭe��k��]�ZozH�͋��7���8��<�"
F�ϡ �4_(�I��{� 0'�^:�f�D�ԡ�����!ᩪ�(�dk���k6<�Yl�T�5��MǍZ[m�mx���o﷋�}1���d]w�&��MG���#��*�C^�C<U�h�z�C��t=��M��p���
}*�$R��:$��h���
r�EA�F|���m��ɖ��=�Y=9�,2�h�\t���n[ɖo��Ջ�T�3k�뜫J�=�DB��L͡�Q�A%D��oI�H��W
����i=�B��\8h��r��ı7��q�/C;/(^�p���V�yvs�S�}��YcU?���u�
'q}�%����V��T(�k���/U�����8���y\U}����GI8�(�%���Q����`��i%�A��}��4�P�c�t���~�7���ʩ���d��������,	.�WXw�(��b�/���q�����/����(ƆX��`�ø煨�{pQE���
V�)�D�񴉌�;'H�pq�Ņp���u���*d���Os�������2�dԍ��t��lxt�i�PO����]��=�{y�C�)]�����_iyꅪ�	�.P~�(^�HעHPNK��)��+خF�I��n��
rA4� �pqBw�X9�(5'���L��E�g�����J���4����T���c�e���U��N��|��s&�QŃ)q�=�>P��� �Œ�$`���)�{B��
�W�%O�{Ζ���p�����Ux1Q�z~�2;3�����k���z���x�7ɑ�%ٱ���N��\�$I����:?=	߆��G��s�r_%D��,�><�^@4NX�[�o����B��
���>����2��$\���P��!sm0���pң��G֔��2(���
ա>�<����*{e�\�j��F����̩P�f�T�D����B��
�̃���>a�B������~����`���
�������>	�(�&P��h��Ae��������7�d�_B~�]�$��r��p�n�����o]���g�gW��K[^VF!>�C�V
�!B������2|�P�+��*U҅AL�e�������&	h��X[�m�Q��[f�Z�SO	r��-_$E�� ���kt�h�}��6�Լ,�$�Π�����+�Z�V��OA��IE�U�$E{�>�	��L�P�s]>�|n���4�4Vz��"�����}��E��;n�X6���A�� u
�:���_AaK��7f�Ƃ�}h6��W1.��?L�ٲ�v��l2�M*���"�������O�PU�q3�y�E,�,��/)��;����b?���Y�"��h2#w:�~S-�\��(\q�װ���[��Z��^+Z����\_�架���'����F�ڎ��B"���QSp�yw=B6E󘯫� ���^���_�������'vu]sU��h��m��h@Qo� #.��ʍ��ؽs�&l�;UU�Gc@�ӜO����4���iy%�kmD�n-ง�6RbEƑ�i,|`�����B
�0��)Tv�_�л�Ԅ��mk'q��t:C�j(����*�Y��E����v�bql@nԃM\�U�v\�=�ޞ��#�U�}��O    ɍ����(ha��r���
�/��)��i���X	�£��TJ�=�P��nA�$�c��G&������j �y�̝�n�h%Z8+��C[iw�dT�TW_��O������jMm�_]o��:6�X)��7g�R���烟8RF�X�0�P'���B�Ո	c��/����\�u��nNV��/�-����h��c�NL+�k��(d��}�^�8>ٛ�i���Z�UY����Z��{��ut�O_2b���5ԁ���*/�Q�|�������ɾ�#���W�������{�xCC�b4�x�m�8�
P�� ¬�@�z��f6[:��;�^���l۞���I���հ���<��t-'�ŵ�7�q��:v��CoS��6H&#�N<�jJ����&�K�=s$B����1g��p4m�ع0��f��J�n.ͺ�:IP{2=�{��W���m�Qu�oWq�*��Wx��_�LV��
Az�y�/�XDxř�1�I3�d�/�Be֧�3�9�8s�]��`�,ws�A@8U7�=����Lȹ(T׆ѽL�𼤵VSϒ�l�+�.��t2����}�?\�Q�ڼ�T��<h�E��RO�Beq����bo
�U_ؠu�֓�����Ԝ�m4�Wn��z55��
� gz���X\6��N[+e�caW=�V��զ,/ֽw�U��?�|o�
��h��ԫ�|��f�Tp�ʔ��h�z���n�+���F�,髈[�H̟m�S�f�H(�\��l�q��4(A�/#[�W$��<�sR_^�پ-�צ��Ц�z���v'������O6�~L\W�O螎����,�C�kQ\bʻ��ɐ,0�}�l�PgR�nj.Q��j�M�B�[bԫ��@�P��(T�3�[��d�U4�V<	�f�����{L�[[�s�~u*,)�+���;�;��8�C*4_�i�E!�q��Ub�[�L9KZ�ڇ,��ٵ�'CHp���Q�.'���JXn/ԣ�Y���B������U����mq#����T�����𲣜���q_M�L�T<��0R���uM�p1e "��=��fI_B���O�Y8[�NV�3Y$�ge@x �q�M�;�g��I���~�U�S�i����'I�>�������`���ʘƚ��^�`�Y��Oѡ(׹�
�G�T�H����	-��(�,i��,���ē��z�G6sl<m��\fٳ�ú�B�"��q�g�7��W�~^v֧�H7�ne����Q��{�ڭ�.��T��s-@�aOsIX��! 	�r=
�R�%�&� ��uNhR���9�k����d.��U�����e'���)�LnZȒNI�6΋K�܆�r��/Ӧ7'���B :u���o���[�ͳ<�S���uߋ ΋�1����T��*��%}KZ�Yҗ��7K���A��������_��o�]���M�����^K���a�ukl~ٚPk�4h��PNv[��N��^iL���~��l����%�CQ)�/����~G"S�i>�"�kqDt�!��EJ��o�#��NA�\|���+�D�����B$��,��e�u.���ȾY�L�У�q]>e%���\֯M2�ݴ��n��[�k|X���O^#��,,��XBa:�0��H�L����`��E!K����p��I7Y���r'[��A�_���0��݊	���{���h�dd��y��s�����ݜ�r+Z�O�R^$%�,�C���@��S��/	��P��
/&B���,d��iCI=Ai"(�Rlʚp�����|h��E��r�|Nn�t�z�ޫ����y�ֽ��Ns�5���"Ty�Ҵ�����P{�d��"�5xJ�����*'B�OU���ZDh�1$�Na�p�67bC��TX��mm�����4f�������5����w�k>����4��D��
I�j�!��Г\�1���x�1�" ԋ<�����ԕH�N��L�5�&P^C�r��T�iC�K�6���NgN��&I���	�K��]���x.��m�`��F�i6��_�S<��($�r�@w!T�U>$)i��*��L��p��o!�o�3y��ў"�� #p��m����� ��
wP��w+��:��h�)�/��7�]Ñ�h~��.zt;��uj���4J�8�j��<P�g�E$�P�U �������,(����_���2F�s�Ta���'5'��?��+�o�v�s�;z�б���k�a���t�q�9�3�V�r{�mj婾��Z�������(c�0��������*�A:�9��P�Bg�GXEA���zi�w���a;�WcFd;�Gcƫa�r�"��&s�S���ߢ-(dr��(^�;t+e��)]�7�����չۻm��˭��TO�l����� VS^�=��?a$ԃ�<�X�7�5�B��龪��(�w4e�e;_I��|2�1'(�	 Rx�P9hl�r�Ձ��d��\�18���:>�ʵ�R�Tzp�T���̜��xz��V4wE���i;%�P6ń������P�S-���}GS���,��}8E��������w��h��Þ��仌�Qq�y��UXmg�t����s��t{�Ey�DC3�����a1����@�Q���㚀z��B	)�q�*�nd�J��;2#������d�����-R�E1m�1��d3��A�b6��Y+��꧑�P�韻�����V��嫾\���7�	wO���d�RJ��~.�'<@�RE�F�j��2V5Nk��K�=8�^�w4�~���d���²P	4���zA!�W�� �g��N���ɤ�փ��1���d��ǚ3d�����V��ڧ��"�_�����T"�,�j�Gc**�`�8�Q�B�s�GԂ*d;���Z7A�#�3YI����}$Кp�D��|��\B�MW���8�Z�Ug���j�n�z��kS�P�\<Q3�������jO��@!��8�z"F�%��D���^��{�w4+~�H�K�g���e�%R4�&k��o�7¸��d^,��7.���?����^Y�++KNtM=_f�Q̌����v�*�I��z�(����ׅ�Gn��J��F���������������=ݡV����%����(+S�f�X�	
�B�0i��S5nw�:��/�bi���kjD�9T7���W��|"�9.�|�@��(D'<��|"-T��S�S���B�֋�vNh&O6ڐ�H\�� řv�X�,ɗ��/$8���*��W��_z�/.z�`;��N}2�+�Zc��<}7��؂�����g�� 1ݓ:�z��0 \p�I?TK��)T֤S�ژ�R��d�����U$�F�{ӹ:	������.�: �V����뀨���&��u�&����i����Q���iWx�����7����.�W�t�烟�SI�HS�O��}�K�tE�!����v��L8#������A�C��7�L,tg���$��Hg�\�_��s+t����񩚳w۟�8�����f�f���W��l��5�B�_��vJN�Al��	��B_
�
UJPJ����-���\=Y::�GF s	�	vt�7Ю��X��\w}�*X&�PƫN]ve�U��<v��r�vyU�y�aJ�keL��z���Rt�z$	|�W��ӈ�@;h��Rb��8KLK�('4Y�ڧ�4���f
��Mfk���	�;�K���I;��A+j����fsc�yT�w��7�i�w'g��O��W�+������	�G���∱XF1!+8�5_�>x�8}O�rB����������l%�Vrtil&V���Ґ3	 ���j!�^p�ֵ��/꫖8���&_A��u�����e���4������&4.`�Ǌ�kP,�LP/�h,D੔qO�c��߳͏9�s	��h�1W�!�w���;6!��$�<�w�����]��߾�c{����^�p�xq����V��z?jl���y�uU��I��	_�P���Dx��S/�L�!�1��$�o��GB3+�E��Pqi�:��&��y�Q:��¦��O%.�d���$	z��e    �U�z����ڷ�Yd��w:�+b��6Nf�;T9a���x�z[C /�����#d�|I��Q�-i='4_��sB�I��.ڦ�vsm�P�7��5�j�J�-���ԙ�1����d�L��ՠ���^�N��rE��N6��ƬAٷЃWBSJ4��/���BS(��Xz����P�ɘ�,�����[���C,9�����N��ڊD���C��ݵ5���M����V���_
�l�ц��s]��^;�Y�r�ǝ��n�y����ꮓz,֏��BIt��Q(B?҉�P�	tN�\�]���,ܳ˞Z�,qQOվR�-˅�!ӣRU�-<����o�'�-�)-��,���sh�W�՚���L6'�nY{�8��i�����|�b��B(�P|E��P%Bb/����o
��(+�_�S�
�(������Z�eO��D���ݪW�	ͯ�(<���y�{�mk\�V{��Vi{�?'ej���izۗeb-)xHe1��X%<�	��+�G��G!��h$'4�*�j)��E����+�0C�N�m6���9�9q'Si�W/Y�u���~mb
���#ݑZ%��Re����m�*�r9��sq�W�Q-����w��Q���c��N��?Q�T����1�4�L���aI�����9e������y��6���L�p�ܥi�3R�ຝ�!s2n��g#+l�S��z�p4����k�!�^�q�㮼l�f6�i�^�}V�3P�>EӘB���@xj�M��iaG'�����W������HƘ- �ޝNX�ڍ2ʹ�C3<@�7���О���j�v�`/N��9:z��sҍ�[2�T�G�;F�{�}���!L��`q1۩��#� O�Y���*��׊(�)�UQz�k��3(�T�ߌ��S�:���za�*&�Ҵg(d���\��8 �
�u�ԍP�䫶�%���3�[Wl�e�����*��l����7�	�V~PZՋ�N��J �����u��TT��|\-$Pu��G3d;-약��w��}S@�TBR%�P@"�b>Wˠ�Z;�Ѣ0���y���;ޡy˺~gѡtE��s�{�z�m���a�^u��v�:��6]TAG�W���~�ȉ�uI!U�0V5N�أ
�:$[J����a;_����_��l��X="N�\8	
�`o^����BY��F�R�P ]���<6��z�x�ɂ�Z�(O5TV͑(d;��H��@WB.bn��3E��Wb�ՈF~���c����V�k&��s�[��:T�Y3�e�Q~b2�<9d���y�Ĭ���1���9Zs��O��Q�z�vEM������}z��[�>���K���>6_����O��m�!���'T�q�u%�h%��v�7�h� �����I�7�2/���"l��C�������[�m����V�������46�L�{��z�m�Ϲ�&��$(�BQzN��`���E����9?�A�C�OѶ�z�@�3%�Tx2,�� ��
}i�|S��-��.�$w��k8�2w�@�D[��(̀ ��+����0T��}�N;N���..5��ju3�h����6�(���>TI_�|����t�Y��L
�KƠ��}Π�y�>�U�D��@&���}E�zl�B	 038��-l��9	�{uuQ�5u����ͪޚ��q�t"�sr]���y�V����E��Y�\���5f^s<�{�*8�� \|A]�t@ͱ�(����D�S�#�)�
�ٞ����YG����Kz.W���~u���BΪ�s��s�y�ӦXy�̭�}�:�FG��_��u����i�2�������i���"u�x��$�-J��%���82��k��q��i��/pX�k>�]EΪ��椺�j���S~��W������E/�}֜��DD]r�Ɨ��_�|�	���z/�|="('(�`�zZ�4�/IE�^b��7$ �?�?�Ow�I#�E��k�T�lH2��X�'+
u#����4�w�sSZ��&�[��3�6����y!����!^@��� �c��/���4�AB�%������BeM��ɝ̜<)'gP�f&�B�5J�	�G�+�6��P�۪/�D[�W;���M�Y~&v/��z���S�ێe+TE-��~M?�V#E�i��0�ɪ#"�p�%��ѐ��y��%��)��|�~�&��_����"W����� ���/r+_'K��6�acGU�ٍ���X��LY��skbvx�A���kw^��r!E�� 10�Wt�1�	�54�� �K_���.7)���ɓ�Zf$ե1Y�)��7�|5��=�qJL2��	��
l�A�YyV��z��FY�?\�54�r^UjU'U��}c�^xa��Rk��jQ����B>Ru)Dyj ������nQNv�n\�dg���;W �N@�6$Qzm��]��/ �N�{��?���Nӯ�=N���<jx�I뻧-���\�q�(=���E�łxLc�N�TT�����8}O�@΂p��yj��P5h�Y�&z!�����d/a�p�Q��P�s�]�t�~}�to���ZU���Y�yc���d��Y���i)���<���H�q�z::�3?d�� ��d��>�$�nE���	3�4�F��F�xGK���91�n:eN2/��=o�8'�+_���|�E��׸6X9*�-��Z[i.��*^�N)�&�Ԁ�r�x"���*%��H�5���MK�Hv�zX�d瓇%� ���v)k�/��SC��ˆ��- \P�n�]GӺ��pdV�ڕ��r�lj��t�����ޮ?�/���B��d�|p�a
��RF����th~*�ĕ��uD�ƫDR���������>q}�=P�. �ZS��`��3�״>�?:����k;[O��$믯92 l�:��.���**����r.�|�
+������IC�)RE?-)�Pj�� ��"������8qɰ�N0�__��#�4s�c��P�)�V#�n��e�_Q5��E���Ę��=��A�F�+�Ƣ��ϳ���)��h�����+�G���	�P�p�*��j5
�<C-M5�*%A���@� ';��rx�t��0�J<�����G\���+�u��iom��B7ϳ�A����]�E����2����j6��)$;��x�("���D � V�P#�S�+	��P!�W��*��y�CW�103s��k.s	�u)L8�g ��±�a�6Zժ�|�7����9���9]G�����n���dOΨ�Ti���t��!�(5_ռH�KB�'THv��<�d���m�8d�.p���d(,mἙqEaxtO}�]�c0�v�����ep2η�2�������2۝�R�w����Cg>�a�>��j(9vi4�����%�Zo�P���|9U�|�өJ�i�1�ǳ�vs������tP��Z�Y�d�eaCX�f�����ZwBlj�m������l�����V�����S8��H�7���W	�B:�*��A웈�Cd^�7���i�aCA�6\vR�Vj&zX�<�;<Pn}�(������v�o����U{k�&<;X�9:f�Lj�yg��3Q�L��Hҙ���uI�>��@����ZD�G�V�iu�/��?���p.���'X|:Y�Z����:vQ>^�)`WCB�i���e�7��O��p�i�_��h��ed
_��x��VS�l^����0/�|� +"�P�+��0���.6E
'�J��IG�t�%zȹ��;�ž������Mg&�/ovx/m'_6�U�u��{��'���nd8���P	�M��]�[M��)��ݡ=�}T����a����t&��}@�b�E}��|�Τ�1�������S�'}��;ڮ�]�`6@,��
�Cp33��&St^$F6[�Z-8�������:B3��o��KT; �X�Y[X��ʖ��؜�C�yvʿ���P���$�	.#-!Z���g� q�����Cg,o��c�i8!���������.mr�5���#p&�0Tm�NǇt�|N��X���\{m�랚�I�n��\ō�:��B���M~D�C@x���B5�"�i*��}G�    �����H��Z��P<E&-���9I��7�^���Am>Z8��V��oU��1�+o��~�8p�S�}����鸷��4��扼2�R~P]P!����G6|�3� ��'|F4)C��X��T/����?�勁b�X>&��ɺ��6&����	*b\����~��S�
�7�N3X���'�\�5+dx����?X\=Gs�Xu�,o��y���KE�CY�?�%Q�8'��"h�+�"x�#�'%��ʾq͵�^�(3c�G��z����	Y��\:�b���:J׎��R�XX��<�g_4����M}��M0ܖ����u��j<	������/��,տ�ʯ.�$��=&��{~�LH�Sj���xGʲгS<{vvS�A(�j��@h�	Z��u��\���ؔl��٦�md��b�_>�ur�6ͮ��d]n���ĩz���P���ə8V5R<�
����!#���J�=�m�,��)(���S��I��0�!NE"��"ˋF�8%idP���b��z�+�2��O�߁2�[�\�8�x���Z���yiE�M.����.UAԀiB��/���Ƹ�Y��{Oo;�,_��Uj��e�8^�N L$��
���Mpzj��<��Q n����ߴ�IsڿoVar�}��o�1W�6��t����#��A�~�	U���Џ��"�H�����BeM��B��)Tp�*Pw�Ɯsuq�"�d�&n}��(�e�R�������.�/kQ_�>K�F��3��B����~�R[���U<���DQ�BB���~�2*�q�f��E�)�ב��]�Ǒ�{>Fa�Lξ�2J�9:�����L�ka^@�C�������ӄ*a�-�CR=V�Լ&zw���UlҤ�8���Ar�<���)�Fh(��q]Qd��w��D��.��"�21�O/`�,{���f��k@�p
��f�T�H��͸�.kˮb.���ɦ�ᴿ�����_�N��[)K��<�'�����P�	h�W ���y%���!���Q��j���;O��@oa�(����r�����3ZS^8n��ם}Ut���� ����/�ѹ��e�P+�J���0���|q����Pc�h�FQ��ӥ&��HK�=��9�ʘ�<�c���ט��MڠD�.�B�{�ܺ���[�4D!��3n/�vx��뗁��q���&
�]�ڳSoH�Ԣ/��9'UT��D�5O(��==�4RB%���TSK�M�����("7y2P�V��t�k���:���t�@�G�)8m������N�^^�y�<[�3��y UO[�m�\�n�������C�I$N#1T�zhJ��{ZG'D�XZ��[r�! }�@P3���=��QK��	.V��%��l�ɋm��š�ꗬ�"[v��ڶ�.��։�kzf�y��n��U���k�R�5��P�&DE*��HSA��Z[�1T�[B�T�񲌓Sm��#nJw��1mTKZ�\05i���06�.�'���j�U�Em_߷����N�{k7k���8�zΦ��)1ۣp��Q�+��K����.=
p%�kU)�t$vA���Ɯj{^�[�T������QA�I�]_�s3�
���&͂��ֽ~�2�j.�S��k�E���7�X9:;�w��M�����;I=L0Q�v��_S�?������J_��L��R�[�:ťC��8"��z?H[�����a���ט�A�J*T�)��ig��xp�*���e����Qo-N�}ػ��]��:��bW�t�<�D�dz�H�D�PQ|E��^����y���
����Ldq��O]j��������pl��.h\Bp&ј����E<�y���Ҟ��̜�g~��$]a-ۏw�����z[��O�O�<O3=��,�(c��3E%��yI����*/�"�\��"�����B��I�@
����`��3���ۥ7[7�
'�ƭ��ɽ\��`l݅�d7�ږ_A��;�����x��W��A�+��%=���a�4�PU����?<�ˤ�7�<wW�x8Ka}�uB�8Ϝ��jֻ	�������}��Şm4#��<]5jM�M�v��'����,v>aE���<�I~�(�.��8��~��j�(�4����$,�솛J4�Ko�B"Nb��E�;`��$S�L��# ��\DdI�7�Ϙ�M4HG�c\�+�t��(��e�rn�>�܍��m�_km�yqe'�� ;\N�G��q����jN�Q�|���S�i�xV(M��� �A��,�þꛈ^^U$�̧W��d��!�p��:�.����H��V������38|���7l:e}��M������j�����Y���R���U��^���������T�������Ԑ�		����L�C��/�S%��)n�C
DVi2Z[�Y�8�m�]<�P=�]''u6۟����uD���;n��>�U�5�?�~�4�|������H�y�EB�~豀A� i��;���qE��49�c5����D�#Y��͌z���s(��h��FN{C��x�W�XW.e۶��z<�M�bO}}���k���K��PI��Pr����̣����qb_�/��f"�+ ��W�r!\=�X8��W7��T�M(�ݵ��#inF�mPQ��ش�Nw~C��m�k*�������N��F�xeo��'"�"N���3���+~>���*�� ���zz�j��EnNQ���q9��xo�D���i��d���9�E���P��MpF����,,I?;���9�4�As��v��˽�~����j_M�>���Zy%�(� �C������ޤ�㱎�(X��H�>�m�P�}Oi�D��U�50�O��+l�I3��8�ά3%FeY�b�䜻.�-6 |�nwl��Fڵ^Z����;ӊ��vmch�&���ᎹT?\�P
��烿�咳���&W!샚���2A�(,������/V9K�Ϗn
%��B�C)>�+(e�Ĳ; �GK3��p|V�Z�V��'K�G��=\����ѻO��z�e�<�AҸ$��+K'��:a��11u��������D��,�[ڹ9K'�<#�E�TWd�T�W�u��M�IE�8{�̩�"�(mU��6f�s�����5k�n�]s<�M�=-���h��k!K��=�b�E�7��V��d̘��Wb�M�BϏW��!-�/p��a���-�X��3��2S3�. ��?.����z���q{��r$��� Tc\iw'���,���16��u��מH��JHQbUE�[Ċ��S�r���5\$>P�C��t�=��5�%�U*C4<��P�Nf\�2��r�ǻ5��e�/i��q�6��qֶ����|�uz��Xe j���D}Id��?� J)�I�E��*���A�@Ԑ�<�����Ww?�����n�\؅�í��L�����I����<o�X'���Ӏ��4��M4;�~�&�mܾ��lZ�KiOZ_�$���B�*B�}�S�s@����JK�y� {Md�E��G�����'0�!�l|G+�����-wi�NV8Te���Y.Sc{��l׷�#=�ާo��j�ڎ���x82��ҡV��ς�y1�S\��нX#�")cx}�s���{B��bxΑ�{�2��u'�;!6N+�+'�.�ܓ�Ff&+V�Qe�)���x^�Ӡ��˪Y��($Q�\�������PU������bX2E!
�|�vC��:j�H��+J��gC)���8Rx��{�vr� G�T��k��U��D�@E9뮃�i�<���}��d�5��uz�iq����v��e�I������{q(U���N��@Y�H�))�7mH����%TPW�}oI����-�d8�>�x�fn"߹��P`�u�rUkYN��v�5f����9o��'́.ҩ��֤:����m$/l'ʞ=��=�;RQ�7���
��P�b�iB��,}��s=��:aN��b{-L��D2s�{����ҡl�������U:�v?�*���+���w8��lӬ��/����Ph���    ���*�P���CJ(�_$k��~���Pb5�( {xU=]�\
8|p䴷����x�EH�{�O�)��`Ef���Hq�	�)<�pC���xóY���{BL��Fo��V�x���5����	]c�_Ks]��a�?��Ğ�|��VC���R�����a�]�J�������ʇ3��-T,`�NEUR�fk���^�VwY(��6j��w�����|*�o�gW(�=��؆2h)3��3�+��r� M*Z�JU�D�R� �P���{O�x.����� v=-��g��:�<�W�4�p33Lc�{����m۳c:���]^4v;���OΩ��*�1����w��T(��u�6�^����k
�DD���b��c@�S5걒o
#d�W%�,7�y|<�P?4X�>���J�I ��,1��
�E\{�xk\�;��㮻oMU�5�/����~u��ZW���g2��i���$�bMP. �P[���9M���J��u��{/ò��ޓ�9�S�ө.�dH]�sOQ��D���\�l�B��B��9��󥟭��ҕ��������f+;��{�$�vy�)0I�Q�G�(:�a, wi�:�1��\e��M��J^�{8�4��ogjf(���PH�5��UM�.
���5�����K��>>��������p{;��Qu�V_m~����PI~0M텗"?������j�TxJJ�T��ՑKo0l���{ܵg+3u�̺�ŜTW��i
�ɤ�E��ս���pToo�S3Rwݓ���{�r�]�vU[���Őð�H1�Gt&_��
�=5�B%֤�ctq
5	�F�lI�3��3��ޛ4^��q=�x2J�.�\xp���w�0�p�l,�W7[��3m�u��iX��^���]U6�~2�`]���dM���V���eP�U~�{B �' ���?�y*���D�PA�CѮS_���G~��х���+޳{r/"�m&�������+H�P�/�:cOI��'٭��mo�@�cg��:{�T��Q�:��3������g%�  R'a�1?�gz5����D�х���
�$	Qa� �M�&����d!Cu�
.e�$�9Qxq��b9�m�^��lY����N?ܜF�f�*e��h��C�N1���� Ūd"Z�<(\K Q��2BJ���T�)�RO�t+�6����4p�oB5���k�ȓPvAq_h�GY�V�N̒�	��mgL׶���A�F����@��Ʀ5����A4��/�S�|�s9CH7�r������}��PM�CQ��)WsZ�R�Zj��i^�P(�.���V�*��_�M�ZB�c6-�;�?�N��B�)]j�:��}g1\O�s���C�#�i�\��A�ؽ?���T�I����Mh�ԸP�H�a7�F���{�x3�)#��Y���j��+�^]�P����-Г�n��E�}4t(�P���2�����[�	w�kv��f1n�y��+�Ieޝ\_�Au��m78gDx�� N|Ox�$S=�+h�M���EV* ��̆�KU \�U[Gk17i <(�{�	��#Q��u0'��~y��v�:��Y�X�����v��F�/%�Zs2����
����(�e��X�2U:N���&H�!QtN}^b�i������J=s���<�h'��	��F+�{�L]�" ��c�}����nz��iuSN�E��)����2n_Z����O�3�Y�G�NUM	�(�}*�{a�F�^r�*�Ro
�
�ҡ�wǂ��y����1).�f"ډ5S'��.��^6-p����K�j�펓�����;��bmczwփ�a����v]*/�*�㏓�"Ո�2઀��{�B�H%��qS�[-Dqk�u�'�d�.P]���Ou��`e�����r/��B[|ePK�]�������w�+���;�[�_7�!	<�O�Q���4��j������?x(U_z$�pl̓��Tc08r�X���E������N�,�{����]����6 ����p}�.:r���+3f�`��t��몝2K(~j���4M�@��RDr0�(F>�})���̓B�4��Q4�{K$'�X�&T�OZ�8��$��l!;�\g�����
i3'���nP���x�gS@�N�*��f�P�6��}�"�m��p�P��G-L�I_r�]I{� �|&h��HG�=�b�����!����um�~���&��k51ZP���-�)�Z�Z�M���l��J��t�D鵛Yc�O��>�����+�'�'O��*|�B�9�.N�)4�z�m���	�������?kmب-��ϳC�`_ײ[�ݛyX}.�[�����<n�:�*��b����w�ݵ>�����ͪ~����m�?�q�ڋ���#���'�	G�N�+�7�#�G
BE����Jg+�n.�ܷ%�Q�օ|����S�%z-±����6�E�ڧ��ny�>݇��e�%_���V���>G�@S����P�qF��z,�ǈ�xPg2U�)Q�2��򖴎^�B�	tu.�MV7��_P�xؾE�
U�iB�w� - ��Q���C6:�g��圞>Ϻ;�c����Àv�k�&�q}p���R�����y���NC�����R00��|4$+�u}7������&���n���!x��+3[�+��B��N[�p9�O��i������6ݵ�_�m�&寱\��>����ƾ����.���O��%!4
BU��kz����Ǳ��滂�̯E��U�<�wW3Y	M�*�$���M55&x�� ��$\����A��p��*¿�Y=me�KJצTvU�������^_C%�?䁿�E�X�8
�	*�)aj�5T�!T�=�B��^��J���S�XG�o�n$�en`g��5d��|0rT寙�gv��#��F���ۺ{Ng�k���w�#w��v��^#��;@_~�Fe�*���OJǀu}���-T<����I���xW��E��_�;ys4����J;jLi��6��N�aM��闅�Q�� -fe���4Z3ҩ>�]�]{1�)��0T��m����!�w�cU����aDc�|է�� ��[�JJ�6l����3�m�2�� ��`P(�����u�>����Ћ� g$��hZZ����|p����z����b�m�-�EW�h�_t2�>�!zI���r���(��P��H�p�JBO�����/�ZI#y@FU8�C8=رX4-u��;�ۻ^Z����W8U��T���y�=�4��\#�dA����?�G�wm+�$]_O� �����J8a��, !8x���:�UpP�}̚���R��Ɍ�;bo�6�o��������=]��:�#����&�B��+�t��E�h
��@�tE����^1�7��h��W�&bϧ�\%�w1��Gk�B�C. �V��Y\�������g�z���c�
:�/k�^yZCY۽S�����k��0����k���pC	 0�g�+�@2����r�G��5��A;o�ȃ^້)R(F��
�
�`�A@��!x�� ������w��g�{�Q3��㳠{��[O�n2s����>k���̓2x~I�M�F�烿+��Z�x*�����nDZ(��'���y�Λ�G΃�/�w3��W�Ę�̸���P��P��qϩd+a���n�k����`O��'���F��Z����!�GW�4\h/fv4?l��R%W�7'l�烿�"�Z��Tr�BC7t�j.�u&u��>���&��7퀜}�� �_���pɽ��7� 5p�>����Pv���J�Ұ+��>��+Q���q��_g��������p .:�o�����0�(U4Q�=A�gM�*2�/I��z�~�)��$-#}f�68�e�G6�C���9>��pW2���_�&�U���k�����.��1;fo�����)&I�0<�}�H5���zN��u�=�C�����gj<������=�>}��x�,\HF��
A�5����`P����{a���,�    ��h��ٞ���/}C���^����ugn�le�輐{
V-�i4!�fQ��
.�p��o�P"�$r{.=��HR��gZ��y���x��Vα�|���+ ��P�^�:1��Wp)�Qؓk�o� �����^��w��[W�=��Ju_	j���+YW�/q�sG�K�U}[��>����&���!QB�c	#.�s�X�~���ߪ�=���A~~I�%�X�9�-A���AX���;u��ݽǡ�4.��%S^�W����c��Qn�M;G;��C��y�nAQ��+Do/���?qd������ ���E�zȼ�K�3=b��{�^�x�nkY�x�@������-`�{>� /����A^�ı3K��8�������h_5Tc����*��4��_�����M��|{�nP�DLc�K���+K��k��� ԙ.K��y0�k)�.�i-4m��L>Gb��E�Ape�D���xS�����6/���ⶱI�S5uZ�c�BۦR/w[���Qݼ�o꨸,^��"���
g�]Lp\p���X�}fN5�I�B�(�l�inʞ�ik&�|�І�ٷ�AS�s$D��t:��إY����u0m�T�Zs����&���qy㳾+��P*C�u�j���zH�U��j�����)>��B��z�Z��x�d��:k;��d�csc������B��M�ʧ=7��$�����ě�w�2�Y��ɩ]�e}��g��c��e'IG-���<0�@���!W}�#��_�Sϝ�^��hN���7��'��G��\�FQ���E�J����w��u�j���|�F�I�k^1���}�j���khP�B �@B����ETh�k�"H�˄F)-q��P�A��K�YO^ܮ��{n��{�
�lk�:s��	\}q,3.ԁ
X�����Ѫ�q;��Wd�8o�F���hu;ե{��O�����[a�*�w��T����������g���p������e��UT ���\H 01'�%hj��@]A�C�����Ǧ���rkP)tFO��T�)ǖ���mQ���_��+��h���H%�����Rv��f���2�+�Y%3� ����2T�7�-jws�u�C�Q8C�_��,�S+YV�A3l�#S֦��h㫳k�|�\5.��{��1�Y~S�('��H��h�u�i���)��}$������S//�o�����Hy7���
��?�ո�$�'��/+A3
�A�M+���������Z�hc]N���mwO�S�K��ޜU�?��r�;��\�JB �$T!*�Z���ĵ����+�ID���a���j	HbS�O;��p��	?w_P0a�sYܻ�;�%Q������Ý�������s6һ;���_��=�cI�p�|E�0����*�*|��T�����{��@.l����	�zP�$��u���ӛ�~���}V*���Tݭ���,;u~7+W�6o_��R6XCV�k�B�����p�.�O]*	C�
UD��=+K�}&T�����P���}j��Wk�J,<[�co�ɱ|��z�,��꿼lFw�IBg@߽[}ܺ�fH*˱�i��@y��͚�م�?����쭟��������Ӊh�� �y��"�@#�r�JB|*�1䯟�3C����<�İ*�kf)�7 E����Ȩ7p$&������{�^�>�|�Z��Y8i���(._��)jDG}F��U޹?�~{�Ʉ"J!#� ("Ph��t�P�
���e9��H�|=���z~=���?P�بω4)��� gg �q�@�.P�@��^j���ݴ�7{8��CBj��U/u��쎶�b{�H�߹?�Txz=e�Q�T��HN=*3���:�|R�gB�Ѭ�'�F�U�^dvG�24�ĕPgk[���ex9��A�CQ�����P��1d��ѾD���$�V����ZT���:]ԯ���o�O��� �˗�������m��E�J�0R��j5�\Q�����$����Jn?n�����Z<3C"?� n(ᑭs�dc];�h~��c`��F�mӬD�J��IЮ~a�����z���Υk��_�G���
��/Ϩh�� �\8l�<�S��a� ���R�˓��j�͓�^��� ��I��%8 ���qj`�G�-�=�h��d͙��:�ՙ�'�y��޼w�7<�F�����ɰ��5~�2
�Ty7$>��/J}_蜇�
�M�P�p���T��<�~�wNH��T</:����z}�5���lf��1����A˸� ��᭻�{����.|E^O_��ٳ�ѼYt�5v��/�¿�.:�
������	�<��2���t�)�K}j.W5���O�G}�E��X��(N�q;Ì���[`@f���*cI>�X���(��m�WMU�賎)�J?�/�e~�j�h�;$�d7g�%�A�$��H�����?<�Շ�k�]%@yMc��((�F!�>A��I�t3�g� ����H�A����l��0��EMh�>b�<i��k��n�'s�?���T�󆦵w_�x�����m'ʗ���{��f�u骡.=.���=��*\�B?*��R6�9�ذ�-J��h :ٖ�E��.���,�I��T�.�s��?��3���र�{�}@Nc'3W�.n�T�ʂ��H�.*ŇzD�*��\N�D?S�":zb���+�t7R��-xpc��Ĩ�k<p�����ҋ@�U8RHsbwI��KF�֥5������2�_o��\���x���ԠMS���A�烿��#B�)$�q��ӕ�{���D?�"A��z���'�_�̰��O�
���A���.���������2�����̴�o��l��Le���w�_�e8�f�l"�^�՗b�#��.ޗ����QSB)5U�'I��*.�@�D�~�-�S���9�b�pC(��ɚk����6�v�K�ۍY�P,28���%������Ǣ�����笡U۫�|����A��Ͷ�������g{�E�N4�uCރ����K���	��g��9��fa��v>[Xvq�652�����=60�ύp���m
��Q�w�^���Bɼg��ז�p�V���k��L��Ʈ���<��v>��<W� �.���.�h�Q���GDca���-8H_`Gp���A0�mbé�3l�Oq6�՛�� �6b3t[�v^�}y�.��ꔷ6J���G1�����c��\o�Z�7_Ɯ�|^�=p��� �����p�2d\z�v~��B��w�3��{٭MQ{���W<��A�j��8�����"�O�tn�����f���|����Htkp4����2���m���W�M��� ��"������x��O�
ݦ�r�q3~Hf���F�[��
9t,3�u0��F҉��kT�[;w�shL狮��+��x�%ϙ�o�e7+��U:ݫ�W���<�*W# �y�Se�Ď!������@���"=(!�;��[�
:�\-=�4_�!��|�Fa64
*d;{��p��|>���q�u�+���k|�ǝK�m�C�~�ƌ��O�����J(�~�&}��CP�!���	��o�0�l�.��j��I����p�b1 <�c䨅�F�8�/+sg�׹��_"wf�K@v!ݞw���Q��m����Ty�"�Dą?�C ���!Έ��R��g���1���)�C^���ȶ(����� ����`C:E�*���Q\,��z�d�j���L�O�vz[)��[�rUN�U3ވa��<ͽ�P^H�"�TBӅ�^����ZD9\�H�ʽ�[�bTJN^���l�
�LL�P, �L��b�Z���l�=�rhu}��<F͚�ھ�͆�ִVԞ7��{�6�]{�=�� /���;��$���ۆ��C�:�Ň$/ az>^P�[5��p{K\�H(s/{WJD�x��	�シO%q��(�d��s��2Ͷ�m����:W��~��6��m����M2����t.7��~N�YI���v#��UUU"�Wq�ۍ8uC�M    C�$>ӴE/���j<�nd��F]t�C�g�-;m�jP���UMs]Ģ7�v�c4�(��d8mg�������2����4B�~Q���"��5�D��������Gn� ~"TE,	��P�s�Fx&��2�mg+ig6��?lt��8W�Ğ7S�!#eփ��\A���l����Ʉ��|�T��\Қ�')�u�ӹ:mE��#T�өř0�� ��W��	ʥ�׍���@�����Q�o���~�9�?�2뎢����r��`�RBӻ���m�#���zQ�f���q�7���M{�QX�\�V����۵=�G=�M�oґ47�{*'<�15R#�i$��P^xn�(�ƹT�}�L��i�Kz�ϗw@����ր���H-��t�v�`6kP�LT�(�^T�n%��&"�����n�惮H*8�ˮ;�Ϻ����?C���=oCF�Е�������S�w%�5�II��T^�4��O5o���e�j�H�#�XPN�N��Ӎv�k���(J:�ꋿ��#�gO���KΖ'�~on_�\[է�w��W�Y�`B��'@M�@�����h^RxY�
(�T�$?3i�����UGq�E����(����Pch0�;P. �PZ��/4ih�Y9��p�φ[K�����6���U��ݱ�ϛG���*xy��%.S=��@: ���R]HϏ4O�S�a�j��-T��z�y4Z6��~G3^��p�����jS'8XE
�p�U�m��1t��Su��LV.5_u��>k�sC�M�
{4���%��5�W�p-��A��:UZ�>`�����T�A�R��sm�q�d0����hhH�Ì�F�c��+�k9�n�-�D����ns��ujI��LC��m*玹��'�O�R���_���Ŵ%~���.�==�hH@<O"�0ErTh�^��Z�ҖE��u�36 �8��,���%lѰP8�_���r�ɩ���/m���K�+t�x�����5&�i⺵�69��iK\�T�O�'��i��g %�jP<B�AID�˩�C�Q����7m��i�#m��/�h��(��%��ml;��y���M�x#m9m-7MW6�b\����F/��d�%\�z�v���m<a��Rj��#<��x�3��O��R���
�s]�)����"�J�h��K[i�"��2��(n�c�Y8���ff^�L���G��0΍���-g�_zZ��x|Za��k����F:�֨��A[>���h�  �B�i�+P� �(�E%����o��ͣ曶|���n-�l��Z3�  (&��G5�Uf�ߧ0T2w�h�h���<&_��v���v����q7�H/�Ж��ԥ�4�c�TQ��ۨ�LÁ�UXA��g��-�[��i��s����l��DT��uES(��.*v�ԭ ,~�cT�)�~��g�������O��c��Y�e�ۢs�����;m)�_�(L+�g���_)o���&^�z^H#yZĉ'�,�ϴ���Lޕ�s��eexfq��0�YT�E+<����C=���l�'���:�I�)�[Kg��.�m�fӨ�Ů��"����Ἒ��-q]N����������>�!�N5WH=r	����H�����g���Z&���~)u��a��op��s�U���-A� ��P]a�񠇻eh�J�앭�΢�d��n9�����Q��I��m:���y"(�x��*=O<K<�|t�P�L+)��DU�g�0@��z5AiC�T�V�mpcW��m���t� T��p7ZT757i�3Վ�C����C���ΣK7���c������3���������v�i<�Av�Z���c���=T�Zv^�Y�f���[8U4W���`�8m���åƽp�n镫���Ǜ�>`���G�<��U_9��ve��NN\�m:?C ����P�"|�1��E!�W��X�q��gƑs��m�����_���7��Z6�U����a����b�d���ʱm$wѯ�(���w4=�e9���ʟ2�`GoB��e���t'����AA&�BT5�LUe$���HC(�������g��NmC���~^�b8q���@r�L��"�����h�U'�Ք��Y砥��v�0��Qdɘuvo\�7���D!�QfZ�A�
ؔES"�u5��L����i�W��ַ8�d�fb�6�u,s; 0���@�#��+�����zÜ6Ռ:���?�[��HW��PV<�����E=��4�,�RJ�m8J�����1���=cC���u/�_�ŚJJ�C��8�#�H �拓g@:ux"Q�s�l�ʰ����( ��9����q�P돮�ʰ�Jn�{2�[ݤ}�{+�5z�Y�4'�*�������|�ZT�F5�Cu&p�SjLB���$2܅x�ǃ��^���f1�`����������63ZP��)R1�Tn�h�q�f���~�'Ie�֘q^���2���9:�<��'��<�|�<)�_D�O���	� �D�"U�@-q�#��y�>y�g>���v�����vPZo��֙��Ԋq5Ŗ�;F�Cy`*��/:i\�.+�Zv%<�ԃvdS�6�{O�����>1*:�]x��G�����[Je$rM��gz���S����/��!0�`���f�D)��i�Ա��J۪��6�I��h��bЛ�g��c�Dg�)I�:W����~W>�Ѽ|����	x?u�~�gIEc,�P\�
���G�*CR��e8?G��xW�M���y�L�������x8^ڸ�w�8�N)�	L�)-��J���4\	�4�V}t��d����DΓ]:���"��x��Þ� T���qE��'"��T(E8��kP���q�&�:o��9��^��N�$u}��m�l�9`�l�6���m1��ۉ�h�hݺzKO�V�Um����.nr��V�8L�J�Az�;�T�B��UssFՓ>�5 �/C���GB�4A��P���~b��_���%q�`�M�:7�	����e�
��DNz�����9��k��p'}�����iR��4G�2�{;�3�Й�Kc��j ��������)	<F$��P�@�4⇜�KUH\!�HA�3|?�����m�hG����tk�d�xxʌs��ԸN#�ݑ1�km���V͙����G�e�s��w��&t�Z��2|�i`H�� ���-B��\�#�{�J!ZI~f�>��*|-+��V !q���{�ϝ�=ǡl\�
����i��7�_���ٿ4ʗ޺�t-?�ҫ�{{>�~�>���m;�ş�M(U�H	Ր�H�ȅ������:QC���g��W7\������4B6z 0��׮�{<�G�-��$��S�Eo�el)粽?֭1�7e�
Z�`p�O���B��ȋ�S�T��J{\���= DE���r����V��;�o��MH��{��sڱ`���,�5b����"LG�G��E)6�ؠVU�+�Z�ƛ������{iU(wӲ�0�����I@��4��B�/��mH�s(4<�J�WAE/$8h��Y��90pˋ��K;�U��$�2d���8r�ED��4[�Z�sC�h����s�|��]HZ�֦a+Jӟ��4�S��j�0��/�+��i��������SⓈ�D���V���z,T����Otm�PS��P? 1�w�sa�q@�<��� ��or�n*u
��q�
���k�Ej��r^�u�U�E;+5X��՟|i~U��W���S�3E�D�����i�PO��Lb7�>*�p�Ќ;��A�ɾ��V(�ErG��(��
wZ��@q��Q�u�׾j_&/��r�O��v^}�!�K������i]�[��(���_�8�yiP�	4~�r��ADZ�)�D�gܨ��&�'�������M���2t\��	@�� ���k�r�Ga�.������Vx��B�Z�lð�l��KF��������5Es1��ʻQ�������I�sW�`F��Ղ��QQt��3����z�~SS��o@R1����(�l�����XD�yk�0��u�(�m��M�����    F���̓����]��mk�Cu�_[���O�3~x5�BQK��Lz�.xP�`ˈnX��i���ӻ�UN?=KY!pon�M�6.��Q�v��bę��l����׌b6��� ^�Y`�ݕ�<i���t�ӵhJ+�c5��+)ao�M9����*�tu%�"�B�D�HLE!X���LK�������k��Xڙ��̆D�Jֲ)AI&#�v0Q���Zt;x�6���]��]�.a#[u������{�.S7�E����s*��s�GjD%
p�B�>T�rOWTN9/1�!� �L�k�2�`�p�*	k*�:0_H�7Zf�=�اF�(p��1��c���>�J0�G�i��w��\>=�e�h�y�/��r�yAx�����*" @�d@����\JJ�3��H?5ެ�s�ɚ��Ŧh�lsq le�9���~�lI^�?D��x�P�o�J�u˅��z&f�v����������j�
$By�r���Y�����	c��+R�L�T?*|��qi�.�p��a@j7��?�
ݷF�IGY������E`�g��/��t�ѓ~�V�و�$X�����[s���N���'�^d�]OaL��}��@D]�U$ /Vb���t WBz
��+�p% ������D��Opy���8T��鐍ʦۆe_F�kr���e����<>U�S�5��2�7B%��B �*vs"J-�࡫J�:� ~�n��τ*g��w�s����;f�Mͬ�*9u8Is��-."�8�c�:^8U��W=���>+o��uu���O�L�N��&���q8;/N���7�4��Q*z�����s�L�\2{���K�C��	��S�d\�r�PE�������k*j�hN6NM�0�w��S�O	��T�P�꘽C����2|lX;��vqk}H��g�����N�"qmB�T ��z�����A��Q�Ep����*H���m O6n��*�5n��G>�?}���R�s��
6-'}o���C��/6Zۉ\~
[V0T�`�u9��U�՗�b:'�ʏv>�
B{Q�}�h
UU�W�r/�2U��(%�}$X9���4��m/NÙ�\5��l�`k��$���$ڿ��� ��mgct>c�KH���'�}�{����:Yyմ]�7���o���rO(Z��ڠ.4�jz�p��"5x�Ғ�L#:�����鶗���r�W1�Pj�\R�#FF݉}(	����"R�4��������3w����ŗ��?���V���t��鄫\)����?}��N��)Ԩ\�9�0�A�l@����8r�����6D?/��d���Aa{n��/$ؾa��I�l��^(�+=���)�����'֑�z��������s{7i�~"�&_^�+������zȀP�@.��$>����n�����6�z~"�EZރ��*nb��5�2^�V*gcgR8�1���.8)ۋ+��qbAj��#�V�v��y��;�I"Z�K�M�i/�y��^�����r�]s]�x>�3��P��̒��v<7�z���yC��IT(�s��.�ꀀ���i5�N�Wt;�2;����B�������8h���Jm�������ƕ�M �&��T�����|��v��|�FDJOh.��׃B���J�|��D���m�s���h.�]O�1��7��pd���ͭ�d��6Z���c{ܜ�m�����#��鄎���j��|]�Y�1�M�ɧ���	g���h`�F\����OxI~f,��Oݣ�n3_u�pٗ�):-ب���%)6XQOuQ�x��E�u��v%���p�vV�_N�[O=ӈ���l��zs�������ŏCP�(��`h]ix�x���C�#�3j�H�5~
C�m��:ד6� ���c�5�ЍD��l��>��y��PU��V�M��~Rޞ�;+���tE>6wEt{���,Z�S_�t溮J�Δ��P��Դj�����t��f��%¡�<�4E����=7��Rs�kNN���}D}i:h�,*��C���n���6u����볩)���o���=u�S6���m�B~i��Y�����/�F?"���9�58uk["5/�K����۬ƛ�.�1x&��u�����_K��6�Q�vF��pp�\�̸��^�3~4�C����Ζ�[��-�G=���׎��\k��z��n��B��2]oa�>�;*̏�5��
�|��x�*��Ө�.��t[��ߋ^Yjǳ��:n�F9UH��N�I���
��**@�t���ǹgu'�au0�3ޭ�����ă�epHd$d�@�1lyZ���uE�a�����Հ+�(�Ot���m�^~/"\{�R"��m��dm+������W����9��Ҕ7g��=�2r׺u�Sg���:�ŋjov��L��C�tۓs}�"�E�?}.�H��x�4��LC�U�M�+�۬���iַ�)7� 5 ��k 9o�6��M�NC�k��E�:V+�$�IOT8�����$Y}�v�Ho���װ=w��OK|�/¤$o���.�zIUQ#J�@/0������H�~�ב�mo~D�t�?"4k��[��lAԄ
ܸ���\4)�ZJl�yT��}������.w�3(�O�rl{�D���M�k��n�/~D!dUG53�	*W5�r%(���es���d'��^Lv���I�a_6���u� }|'P��?:h���t� �ng�xԽS���4�JO�5u� ����q6���HN�=�0)DeT�h�з�S��E �w����>�A}z+Xaz����o'$���B��N�rI��ϝ��fS��F�L��Z�$1�c����f=SGY#</�0�Fe_�놸�G��v�-Tzn�*�
���\�@x��܋$@t�GJ	"�1���%��m��mc��^���¹P K3H`� ����iSL���Y�z��FR�7�Y`M�IF���U�a+���k����|7 � �T5"D"�< H	j.s��C�2��8s��u��1
�QE��Ÿy�1��?�̆r��v��N9��w�Gt��1?������h=�����j��1���3Ty�z�F�Yq�j�ELP���}��_,�)g�B�k���پ�u�j�JR�.W���o�6'�9sY�Y�5�*&�Ѿ��>:j-v��ŽN���|<�i|;���@�6s����(e�"��e�pQ�D>�2�Ÿ�t}r��,��	�>/�ef��N�(�t�-���ݶ�4����N���8I��c���(�j5z.�4{��s�Q;���*e�U�Q1�&��(��BH�B� \��<%u�p#�>*�s���qًQ�X�h \L �8����B]
h	�P�{(
���:-;è���WSG�����i�;�a:�:���U�-��~� ��C�+,҄�C6�4���P8����x�n{W>���S�^J�P\��1��܉��&����S���,Jys(�Y���M�٪^��p�ٳڦw�Zgќ�#������(��I�Ɔ�DZ���D�^�+�U�鶷f~N�e�i�I��`�ԩ�24v�_���֨;1�k�cl�R`3�M����q�k���t��� �X~ˬ��l3����&������t�� � 
4�BbW���D����$���H�r��@��A�$W���&��Ĵ|T�F�[��I:Co��������2Jz~k9XͶ�Nló�5'�qv��̫��f��|�G��O�sw5���57R�VR�UUЂ/h�E%�F4�m�����Lu ��w��i<N�nõ@�$QQ�d�n�c�*��r:������溩,��:d�ls�+�C��cm`�JzL~�m�?R�%9Q�k�M�ˈ��q�M=(��c��;�<& �y%�>G��
n(�m/}�;�0�8��B���b`A���ɠ��X_��XQ��<�4�l}^�'�+�إ�/�U�.V�Y��M4.�۞��� �Q� ����$�x���S5�$>`��n��Lks�-~6��&PE�[ ���J�+��mP!zbF��H���e�U���N�P:Q��CW���-8�����E��T�6�y�#    �l�a�i$,�B�B%�y�& �iB������R,I�P�-L�&R� ���DJ\�`�W�1T(Z�M|�Ӏz�M�wda�<��q<0R=�,%&��ص�tv����hz��@SZ���u&�@?&R8M�L@�ԈRO��ꅜ{z ��3)ѧ�&�]�_�1�8�R�!\6�k1��c�m$v�o�B��B1�@552��n�jRߏn�km�WN��|��ʦa(�MwQ�����LW�����P�G���V��$��L�"��w5ώ�b깇���f���l��֫[�a�1vc��D�h���-�����3v��љ���Vmw�M�����Ϥ�3T�?B����?	�.�<�<]B��3_uyHUY��QFF��S���Q�_��Ԡ��`jn0g�	� B7h��e��a�.<U��Q���rX����)ݴ3��k�0+��b}�q���ۏPa�T{ѳ��P���d,@"��@j�Р�r����oF-��"F-=+Y��oר X�O.gU��p��x|�ݔ�5I�߮��"���\��^����F�:ܝ5}\�Og=�CJ�ŅJ)/f���9��OS��鮮{
~�078�	�NQ8/}�-�7�fdlG����X��m���~>�,�����l@Q�w(

k��n�w�Qڧ�6��S�kՇ����z�L6_�n��0j��g�t�}��P����_���SN��:�zp]���'�п	��H/��3
�,�nĀ��f�L#ߣ�6��Ő����6X6=�J{��I���G�����z>�cW�a��/
���_B�Yu��*ȅ(nһ�[Hq5K!��POEiŏ��.T�D]��w3����7���P��O���2G�����xQ����iX��u�l��e�8��\g��I6ێ��������
��'J�XRÈJ��b=���	���|�>Ӳ�'Q�\/�|�yh R@i�A�����b���k��g['E^���]�7���5"��E�s5ֲ�ׯ�[w��F�i�uΓ�CD�^�������
�:�5O���`$(ly�Q)����g∄���@N��L��|�`���Rmn��vڸ;xS�CL�z����F�e�2n�I4.wB��Po�����7v���[�k[ƇW��M�ї#��0�7�A��|���p���$��K�3�לP{3��&Ԟ���x�qjX�/g�yMqB�5 Z�� ;���m����ĵr���W�v�`i�Q������=:�S@�����	5���"Jtx#�.�Hz\p�1.�股�ۇB5�On��&�^6�3xe��v�H�j���|��v��!�	�f��!�mj�Q0����J6���ZVNVY�������=ٹ�����P_8W��x�{G]5�tUw#4g�L��������yp�&�^�������uZ6A�Iۚ�87�ᮈqwb��E ��ؑ�]�m_W��;t1m�t:�n�Y8�n;k.��"B��Q�: P0� Xr����|U�T����
���J"�����~)n>�b�>�>BF. <�sC s����������S��eե嵧ٱ;�)j�����r�'���,]���5�RIx��(wIU� � ח�R�%�~*T�N�;��"��%T��T]�of�&��rm�i���M,!�E���-i����m�^F7v���Z�{V���hl��pګ�?E9��G����j� �&*:�4��.`�������?��A-�ћ�*!-�:F�g�2�i�T�����0��B�b@�E0�V����sj�+���|q�ne0s{�}9�,VǦ��>�4�(JG���4��M�N����5�T�}�")���᤹P�ɀ��ه�+v�mPI<���i50�;6�m)Bv������;8U8o2d�Y��Jc���ҷu-	�Iֿkb2�3����p]������.DKQ]�i��57�{�IʤK�pK�C;�<�T��\���a�;������xkd+_H�9�Rv�'�:(:W���D=���i,�Ǿ��������j�q�<������It�?C���$P�U�Bu��\x*RFDD$DG��$��m{��ٶ��+�ؐ�p;�[h��͐��6N�Ըc��RL ��8������ھ�6�IJ�k2�]iTg�d�F���N(����f۞��D�@#�Oe(�yn@xD>�xi�畸��`!�f�M��l[<}��HjY ���h�c`)`�,_Ås���oHe�N�|��V_9�9?^���v�x3�M�۾Y��.�)P����D	P���?�L�T����	}�Q�<=���%��uNĽ)}q��E� !��ͭ�Af�L��:Ӷ���G��,���;������c7���8޵A�S�F���_��v�x�M�'������z�З}ŗ\(n�F|������%�>*����9���+�7���F�;�e6��ػ�~Vb�7	Z���d�q��N�����i�n��cN�n�����7
Ե��~��o��y����G|�*p7ԭ>�<�7N�o��6��*\�7~�ʩcK�����8c��e*��|��_/�e!(�߇������r��\���I���N�a05gW}���1���@DJ uC���p�(U%�Q�#��E���N !�~�%�OxC�A��eBP!ܞ�i��Ս�$�w�V���v��=���үŎOw�^��\�˅��Mۯ�S��-�8��?�����N|M'�L�)�z��.�|J"��$�Hٕsm?��o��?��rt�~L���� o���l��3�./�-�靫����Ig�����-'�0�g��%;E��v�׫J�*����T�H�t�p�龮W�p�\硏�g�|�k[�Eb�~��ב$2�&έ��d�����������l�.\�;��2�g_������ctl�eCU	*���/���J�J�=�u-�B�.ܽ�D�P�8P�	��.}���_��d���!������3̝�@tn��9�64�h���1�--��AY	ݤ1�ɯ�Z�{T��tqp/;������n�;���/IJ�=���tWW|O�~���G���Ѓ_K%���|k~H����v�~�H��vn5k��5>�����	�zEb�0�ͮs�'�G����E�Yԙ�����u��a �?	$����ƈR�������5,B��\ u��p]�{<�< �O4^�0H�
����]:�O!d����&s�X�Ⱒc58�`]l�ӀgCom���V��bܞ��zX��飶[��
��;-����!	|W�qP�\�_}!B��(��-�O4^�0H�
���@��ql���k07r0�@�A��"����2��ǽ�/y���	G���d�&'N�6�8}�ig͎��T�C�^�X��1�U�]j�G(.�D4G��+Q�5N^�t��f�^/Q�׉��Z�E?�����X�N	t�+�1B���_k�E��T�f8lL�l���f�vjy�i5�*���?�����5U��}���K�|�fu��qj�"F4�\��A�9�$��Isi�*��OR7ὀ�kX��d��k�t�����s�u��?���,w�͒�|�/�c����q'�L�»s~���AzVlp]N
R�|�aq�J���T]O+�ϴsI����AJ����U�au���Tک �!- LV�@�[���$�=�*�V�.�]���w�'��rr"���Y6�Z)R@���D檀������y*��\�D�@	J�3�ĜA��>��Az^���̫4���<p���,u��p�r�y}��f���!�[?��x�[Ow2?�RY�5�k���"�����+:8U�
7���FTEAy@%&>�x���wZ��zgX����M:P��:��>�7��C;_T�-���ww��9�ñ��&;͵N�MtMi\��m�oKkc(j-B_�<�R{�X�(�5BUB�� ����>3��� ����˴vk�v2���Oop�����������v�-.�v^E�_Z�i��1պ�ln*�p��z�pZ���L��-�� =O��T
]QE� �  �ă\�F�.�5�O1H��3d���C�@#^q#['�xE5�|�z�;���F���zѩ�Z�ݬZ붧��X��<�3��vh�(��d�Q/��n�?�V� HO\��4x0�4b����d��QO/��t+�W��w"��@��x��uRt�A{��+i�3���3�f��nچ���:�^Vkua�ݮ�l��e���;��#���n����U����l(\�y��Ez��҃���H�����(��*��B=���(s�1��#�0����g�l����A9�)�p�4Jf���5��(��N�ݛ�i��{��V�[zY�Z��I��(O�J���j�<L�@q�����<^��G.`�|�K���ǋ���:������A���fb�G�hA�`����3�mc�oՆ6�7�w7?�� 1��=�گ.����_�5C����.Ð)3�@%�'U����`����u�q���\�z�Ʋ���d��u�}Yx�nF6ŝ]�k92��������hO��x�֎�P�R�3��K���uZ_�n�1)��s�"m+��:��@E'�@'R�	�D��)�^�i"�a��p#�?�pw(N����"\�P�+$�؇7p�E�sE�p�x�MӰ���֬u�/j���=�����ԫƅ7FYj������Omh�Rj��u�1B�r�����{%�?���x?U9��|�23_���̀w��� m$nt���N�D�A
'��x|;�M�Kg��]}��to��uDd����c}Sd�%_N��Ơ��DQD�j.�5�\J#A�/��������i�M�,�<7���̸Cy h{�FS][Ϩ	;k;v
6��TU��2�FW�f�s���W����[���`r\R�p>�_����c(��RhS9� ��\�"}Uu9S\O	���H���xs��&7^���F�	fأ��,W�77�1cg���ʅEr��$;ԃz���=K\�h��6^��uo���ͳ� _ҺE�$:�r!�<M����	᫒�$�He�$K�:� �_:��Im����.:���ޜoqmtm��h�Vm ���$C�,/��h���n+��v�49]T⤲��?E� R��	+�N�tEDP�<�=@t�I�6�3#�Hn���}�/�i��DэVBeS�0�PX6�6�wsk2_\���Z�aR��Ae�!��ɲ�/���]�W.u�+��ӅX�=T(��1
'�x�I
v�]F�D�FH;BZ���u�Mnt~|����e૛��bh��̝�H�\��R�k(�n6��:<�E�jP��+����O�K�J���Q)��.�ZQY����8+�r9p��rF�V@n����\)��(b>j�{:��/��VHJp>�MnL��}�֋۟4�����\&1qY��P~�������3YƌO�qx�)�Kp�.���)M柇�i�|���%�N�{���(�%#���N����
�O�n$$G�&�� $"��D?����(j�c���vm��3I�����bw�b ��Ę`��|l����ʙ�`�-�<�G�)uW�S�s*�p���!�Z��hY�xL�mYKE	�g�ZQ���*�|��>��jny���i�8;>�͗�-�E����{�bR#Q��D���z����kL�E���F��\�(h���CGB�D<���*���mI�꠫+<lJms�5��N&\� K]?��{���>��\����sY�/�,�𘐚$1��9x,)ih�>�ST^��Q.�iEGy3wp^z�� ՗�'p����<����ii���k�c>�C·�������������͗��~�F�7v���`3�2�ـ��(�>ؕ$�B�ȈDć�F� >	�}�6&�V~�^,,�.���ȽR��o?VX��."��o=s��|@mU>꿜{.I6d�6'�Y�=���s�F��H�� �������]��l`\NP��0�(J(�]BU(ejL�b��z�J���x��6U<v$|rz�q����r?v`����H�3^�3s�ꭷ\�/�kmޜ�dc�s��ߝﶭOs��;�g7Uy�.'(4�G1B8<L���x�nԠ�N�*u�j,��f1�ձS�X����4�)�(���ky��N�o��1ToZ���a�zx�8�=1	��z�FQϟD�Û��u�Կ��,+(`�1S�>���e�"
 䇑�X��ߩ~�z5�rm+�ݝ����(�[;K�[��b mk;�V�#dB�}!�O���D�\�Ğ|eG/��=@��zƯ�տ.�
q�+�74�v��*QQdH|E"�>3�����
���Txj���8}
�P~bᆡ�]d�9Z�qQ{W�{�Q��f�l-��<�Oټ�4��}>�rǀ��ku}����*vs4"J�\#ԏ�n��0�B��*#P�+T�-�*\�׆���R���+���P�]x �f�`j���T��{��䖇�uV�rg�����-ޣ��so�K�bym��*�J�T��&:J"�,�������}*���P-�]�+��g��vS���9jw8��2ۜ
T\�;]^[=-�l4	�`����y��������4螎ӥ�t���1z�.���
����pl���0~?�k�-b&H�Ѹ������Xi�@zk�;��aYBԨ�V'�Ld[o6Yg�t^�(���'�v�e���w�ծ��~�����?�=�u�˗�����la�����XY��>�88�+�e@tXM�|��$��04X��I?��4��
 DQ�`�]�.�>���1��p*�1�`��� �h5P�Z��p��[�~��F��l}������?��������X|#���ם�ښ��i��;���q��!#4�~�s�)C�
�PK����/�Zݼ�ш�
rEl�x��F����@n^�1���ѯ�<W̔3w��þݚ��:�݀���F�%}���=��$�Xc�$\��	#��K�D�Ri>��.5Hz�F�>�Ĳ��]�|��>���/����Y��7��9J"w�ݘ�F�eTú9W+�@��^���n���~O׃�L_2��mz~���� 2����z�5���O�?�䌪�F@%�$ďD�i�H�p���}�����O������vk w0��m���ޤ��l4��IÛ#����,�����Q�6�i�;��`��N��5ֲV�JL�"T�M�$z� ٛ<�~?�����
`O>�c�00���ȕL��	��[6��pmF��P1#��� y�B�0ȏ���OCǅ����AUs;C��Z�����˶v�v׭�;]��5ݵ�^�z��M�m��vܼH/;�����M?��x�kJ��$>��O���Q�a�鶼��^��eX��ц,E�i����o�J;��	G�J����@���u�~s��qq�6C��ӓN:�jd9�ϥǫfG
_N��P�U������ߧ5�<>�D�� b�bDD3Ж�.����^�����v*3Z���fi:�,qܐ!5����r�G��������b�~�����s���ۢ���)�ok��_�����z�Y�\˨�1�g]-b�w$2��
�$XD�'����&����FD�,$V�tt FZ����((��u�!�e�1���]ξ��E��'۠g&>}2��=?v
}fl2���s���)C�ZDKS��݁0�^�!"���|%�$��" Z���F�?�u     