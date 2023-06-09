PGDMP     '                    {           qap3_fullstack_db    15.1    15.1                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16398    qap3_fullstack_db    DATABASE     s   CREATE DATABASE qap3_fullstack_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
 !   DROP DATABASE qap3_fullstack_db;
                postgres    false            �            1259    16447    author    TABLE     �   CREATE TABLE public.author (
    id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    dob character varying(25) NOT NULL
);
    DROP TABLE public.author;
       public         heap    postgres    false            �            1259    16446    author_id_seq    SEQUENCE     �   CREATE SEQUENCE public.author_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.author_id_seq;
       public          postgres    false    215                       0    0    author_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.author_id_seq OWNED BY public.author.id;
          public          postgres    false    214            �            1259    16454    book    TABLE     �   CREATE TABLE public.book (
    id integer NOT NULL,
    title character varying(25) NOT NULL,
    author_id integer NOT NULL,
    publisher character varying(50) NOT NULL,
    isbn character varying(15) NOT NULL
);
    DROP TABLE public.book;
       public         heap    postgres    false            �            1259    16453    book_id_seq    SEQUENCE     �   CREATE SEQUENCE public.book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.book_id_seq;
       public          postgres    false    217                       0    0    book_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.book_id_seq OWNED BY public.book.id;
          public          postgres    false    216            t           2604    16450 	   author id    DEFAULT     f   ALTER TABLE ONLY public.author ALTER COLUMN id SET DEFAULT nextval('public.author_id_seq'::regclass);
 8   ALTER TABLE public.author ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            u           2604    16457    book id    DEFAULT     b   ALTER TABLE ONLY public.book ALTER COLUMN id SET DEFAULT nextval('public.book_id_seq'::regclass);
 6   ALTER TABLE public.book ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            
          0    16447    author 
   TABLE DATA           @   COPY public.author (id, first_name, last_name, dob) FROM stdin;
    public          postgres    false    215   q                 0    16454    book 
   TABLE DATA           E   COPY public.book (id, title, author_id, publisher, isbn) FROM stdin;
    public          postgres    false    217   �                  0    0    author_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.author_id_seq', 6, true);
          public          postgres    false    214                       0    0    book_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.book_id_seq', 10, true);
          public          postgres    false    216            w           2606    16452    author author_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.author
    ADD CONSTRAINT author_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.author DROP CONSTRAINT author_pkey;
       public            postgres    false    215            y           2606    16459    book book_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.book DROP CONSTRAINT book_pkey;
       public            postgres    false    217            z           2606    16460    book book_author_id_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_author_id_fkey FOREIGN KEY (author_id) REFERENCES public.author(id);
 B   ALTER TABLE ONLY public.book DROP CONSTRAINT book_author_id_fkey;
       public          postgres    false    215    3447    217            
   {   x��A
�0F��?wɴ��qQ7n�[*	��^���}<�nB�?�1= �γS��Z��l1��mv��ʮeQ�8Y|g�!��ªB��9��+�ڽgO6҄m�F+U�qJ�}�!]         �   x�E�K
�@ׯO�������ٺi͘�I�CO�� �.���m8Ā��W�6��*L�T�(R{״�Eģ�����1LΔb'�{u����w3k]��0m�����]��ry?E�f͔���C�O�L'V��Q���'-�mED�5�     