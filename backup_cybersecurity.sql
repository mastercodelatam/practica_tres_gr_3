PGDMP                       }            cybersecurity    17.4 (Debian 17.4-1.pgdg120+2)    17.4 (Debian 17.4-1.pgdg120+2)     "           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            #           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            $           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            %           1262    16388    cybersecurity    DATABASE     x   CREATE DATABASE cybersecurity WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE cybersecurity;
                     postgres    false            �            1259    16390 	   registros    TABLE     �   CREATE TABLE public.registros (
    id integer NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    ip_address character varying(50),
    tipo_evento character varying(50),
    descripcion text
);
    DROP TABLE public.registros;
       public         heap r       postgres    false            �            1259    16389    registros_id_seq    SEQUENCE     �   CREATE SEQUENCE public.registros_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.registros_id_seq;
       public               postgres    false    218            &           0    0    registros_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.registros_id_seq OWNED BY public.registros.id;
          public               postgres    false    217            �           2604    16393    registros id    DEFAULT     l   ALTER TABLE ONLY public.registros ALTER COLUMN id SET DEFAULT nextval('public.registros_id_seq'::regclass);
 ;   ALTER TABLE public.registros ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    218    217    218                      0    16390 	   registros 
   TABLE DATA           Z   COPY public.registros (id, "timestamp", ip_address, tipo_evento, descripcion) FROM stdin;
    public               postgres    false    218   �       '           0    0    registros_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.registros_id_seq', 10, true);
          public               postgres    false    217            �           2606    16397    registros registros_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.registros
    ADD CONSTRAINT registros_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.registros DROP CONSTRAINT registros_pkey;
       public                 postgres    false    218                 x�}��N1k�S����ko�!$$Z�+R �;)��YÉ&9*W��<��Ȓ�$���D��@(�T�
����:�O�iY�K|�/��y���5�6ڀzw\�l;�a�s"J$�I���!�p<��7Ҽք	M�����.�͸;���T#�jP�εZ�K�6�0k�繍�#�=�a�_��Z)�%t.#t���m[�^y�ץ�i`�%<.�������X����;�J��00������q_K%2w����;��C$���`��o�	�2     