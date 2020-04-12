GDPC                                                                               <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex &      U      -��`�0��x�5�[   res://Ball.tscn �      �      X��}_K��0��
f��   res://Main.tscn �      O      �t����D%���b"r$   res://Paddle/EnnemyPaddle.gd.remap   6      .       ���o�~�2b}9��    res://Paddle/EnnemyPaddle.gdc          �      Z!��>��R��b0   res://Paddle/Paddle.gd.remap06      (       �HИL��^�$� ����   res://Paddle/Paddle.gdc �      �      ~m� ��F�2R���1B5   res://Paddle/Paddle.tscn�      �      �q����O$\�g�>k   res://Wall/Wall.tscnp       �      ��w	����l�LӴ�c	   res://default_env.tres  #            6���\P�����	   res://git_api.gdnlib0$      �       ��_&�d^��R/��^   res://git_api.gdns   %      �       ���'�B�rH���2U�   res://icon.png  `6      �      G1?��z�c��vN��   res://icon.png.import   �3      �      �����%��(#AB�   res://project.binaryPC      �      �]
׶�n�|*&k7r�[gd_scene load_steps=4 format=2]

[sub_resource type="SphereShape" id=1]

[sub_resource type="SphereMesh" id=2]

[sub_resource type="SpatialMaterial" id=3]
flags_unshaded = true
albedo_color = Color( 0.968627, 0, 1, 1 )

[node name="Ball" type="RigidBody"]

[node name="CollisionShape" type="CollisionShape" parent="."]
transform = Transform( 0.5, 0, 0, 0, 0.5, 0, 0, 0, 0.5, 0, 0, 0 )
shape = SubResource( 1 )

[node name="MeshInstance" type="MeshInstance" parent="CollisionShape"]
layers = 2
mesh = SubResource( 2 )
material/0 = SubResource( 3 )

[node name="OmniLight" type="OmniLight" parent="."]
light_color = Color( 0.831373, 0.027451, 0.996078, 1 )
omni_range = 14.7
omni_attenuation = 2.37841
   [gd_scene load_steps=6 format=2]

[ext_resource path="res://Paddle/Paddle.tscn" type="PackedScene" id=1]
[ext_resource path="res://Wall/Wall.tscn" type="PackedScene" id=2]
[ext_resource path="res://Paddle/EnnemyPaddle.gd" type="Script" id=3]
[ext_resource path="res://Ball.tscn" type="PackedScene" id=4]

[sub_resource type="BoxShape" id=1]

[node name="Main" type="Spatial"]

[node name="Paddle" parent="." instance=ExtResource( 1 )]
transform = Transform( 0.122654, 0, 0, 0, 0.378788, 0, 0, 0, 1, -12.575, 1.75628, 0 )
spring_force = 1000.0

[node name="Camera" type="Camera" parent="."]
transform = Transform( -4.35072e-08, 0.0965407, -0.995329, 4.21993e-09, 0.995329, 0.0965407, 1, 4.44089e-16, -4.37114e-08, -19.1644, 4.40708, 0 )

[node name="Ennemy" parent="." instance=ExtResource( 1 )]
transform = Transform( -0.122654, 0, -8.74228e-08, 0, 0.378788, 0, 1.07228e-08, 0, -1, 7.33867, 1, 0 )
script = ExtResource( 3 )

[node name="Spatial" type="Spatial" parent="."]
transform = Transform( 1.96186, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0 )
__meta__ = {
"_edit_group_": true
}

[node name="Floor" parent="Spatial" instance=ExtResource( 2 )]
transform = Transform( 7.74403, 0, 0, 0, 0.3, 0, 0, 0, 3, 0, -0.295519, 0 )

[node name="Ceiling" parent="Spatial" instance=ExtResource( 2 )]
transform = Transform( 7.74403, 0, 0, 0, 0.299999, 0, 0, 0, 2.99999, 0.0171227, 8.56695, -0.0111389 )

[node name="Left wall" parent="Spatial" instance=ExtResource( 2 )]
transform = Transform( 7.74403, 0, 0, 0, -1.31134e-08, 3, 0, -0.3, -1.31134e-07, 0, 4.13025, -4.2613 )

[node name="Right wall" parent="Spatial" instance=ExtResource( 2 )]
transform = Transform( 7.74403, 0, 0, 0, -1.31134e-08, 3, 0, -0.3, -1.31134e-07, 0, 4.13, 4.261 )

[node name="Left incline" parent="Spatial" instance=ExtResource( 2 )]
transform = Transform( 7.74403, 0, 0, 0, 0.212132, -0.848528, 0, 0.212132, 0.848528, 0, 0.5, -3.5 )

[node name="TopLeft incline" parent="Spatial" instance=ExtResource( 2 )]
transform = Transform( 7.74403, 0, 0, 0, -0.212132, -0.848527, 0, 0.212132, -0.848527, -0.00535203, 7.76757, -3.48264 )

[node name="TopRigth incline" parent="Spatial" instance=ExtResource( 2 )]
transform = Transform( 7.74403, 0, 0, 0, -0.212132, 0.848527, 0, -0.212132, -0.848527, -0.00535203, 7.76757, 3.4732 )

[node name="Right incline" parent="Spatial" instance=ExtResource( 2 )]
transform = Transform( 7.74403, 0, 0, 0, 0.212132, 0.848528, 0, -0.212132, 0.848528, 0, 0.5, 3.5 )

[node name="PlayerGoal" type="Area" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -10.9184, 4.48975, 0 )

[node name="CollisionShape" type="CollisionShape" parent="PlayerGoal"]
transform = Transform( 1, 0, 0, 0, 5.21292, 0, 0, 0, 4.20549, 0, 0, 0 )
shape = SubResource( 1 )

[node name="Ball" parent="." instance=ExtResource( 4 )]
transform = Transform( 1, 0, 0, 0, 0.949885, 0.3126, 0, -0.3126, 0.949885, -10.3572, 3.5411, 0 )
 GDSC         	   B      ������������϶��   ���������������Ŷ���   �����׶�   ���ڶ���   ��������϶��   �������Ӷ���   �������Ŷ���   ��������������ض   ���������Ŷ�   ��������������ض   ζ��   ϶��   ̶��      ../Ball                        
                  #      ,      @   	   3YY0�  P�  QV�  ;�  V�  �  PQ�  &�  �  V�  ;�  �  T�  PQ�  ;�  T�  PQ�  T�	  P�  P�  T�
  R�  T�  R�  T�  QQY`           GDSC   "      ?   b     ������������϶��   �涶   ����������������϶��   �����������Ӷ���   �����������Ӷ���   ����Ӷ��   ���Ӷ���   �������ƶ���   ���������ض�   ����������Ŷ   ��������������ض   �������϶���   ����Ӷ��   �����϶�   ����¶��   �������������Ӷ�   �������������������   ���������������Ŷ���   ����׶��   ����������Ŷ   �������¶���   ζ��   �������������Ӷ�   �����¶�   ����¶��   ��������������������ض��   �������Ӷ���   ϶��   ��������������������ض��   ����������������Ҷ��   �������������Ӷ�   ������������������   �������Ӷ���   �������������������Ҷ���                  �?     @@          	   ui_cancel                                               (      )   	   -   
   0      3      5      7      8      D      E      S      Z      [      a      j      k      r      s      |      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -     .     /     0     1     2   %  3   &  4   /  5   ;  6   D  7   G  8   P  9   Q  :   T  ;   V  <   W  =   _  >   `  ?   3YY:�  �  PR�  RQYY8;�  V�  �  Y8;�  V�  �  Y8;�  V�  �  YY>�  N�  �  R�  �  R�  �  YOYY5;�	  V�  T�
  PQYY;�  V�  �  PRRQY;�  �  T�  YY0�  PQV�  �  T�  P�  T�  QYY0�  P�  QVY�  ;�  V�  �
  PQ�  ;�  V�  Y�  /�  V�  �  T�  V�  &�  T�  �	  T�  �  V�  �  �  T�  �  (V�  �  �  P�  RRQ�  �  T�  V�  &�  T�  	�	  T�  V�  �  �  T�  �  (V�  �  �  P�  RRQY�  �  �  P�  �  �  R�  QYY0�  P�  QVY�  &�  4�  V�  ;�  V�  �  P�  R�  T�  T�  R�  T�  T�  Q�  �  �  P�  �  R�  QY�  '�  4�  V�  &T�  �  T�  V�  �  �  T�  Y�  '�  T�  P�  QV�  &�  T�  PQ�  T�  V�  �  T�  P�  T�  Q�  (V�  �  T�  P�  T�  QY�  (V�  .Y�  �   PQT�!  PQYY`               [gd_scene load_steps=5 format=2]

[ext_resource path="res://Paddle/Paddle.gd" type="Script" id=1]

[sub_resource type="BoxShape" id=1]

[sub_resource type="SpatialMaterial" id=3]
metallic = 0.23
emission_enabled = true
emission = Color( 0.156863, 0.054902, 0.470588, 1 )
emission_energy = 1.0
emission_operator = 0
emission_on_uv2 = false

[sub_resource type="CubeMesh" id=2]

[node name="Paddle" type="KinematicBody"]
transform = Transform( 0.122654, 0, 0, 0, 0.378788, 0, 0, 0, 1, 0, 0, 0 )
script = ExtResource( 1 )
__meta__ = {
"_edit_group_": true
}

[node name="CollisionShape" type="CollisionShape" parent="."]
transform = Transform( 0.972067, 0, 0.956763, 0, 1, 0, -0.0310189, 0, 0.523718, 0.504143, 0, -0.495466 )
shape = SubResource( 1 )

[node name="CollisionShape2" type="CollisionShape" parent="."]
transform = Transform( 0.983728, 0, -1.02932, 0, 1, 0, 0.0248814, 0, 0.521644, 0.419233, 0, 0.494871 )
shape = SubResource( 1 )

[node name="MeshInstance" type="MeshInstance" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0 )
material_override = SubResource( 3 )
mesh = SubResource( 2 )
material/0 = null

[node name="OmniLight" type="OmniLight" parent="."]
light_color = Color( 0.121569, 0.0745098, 0.929412, 1 )
 [gd_scene load_steps=5 format=2]

[sub_resource type="PhysicsMaterial" id=3]
bounce = 1.0

[sub_resource type="BoxShape" id=1]

[sub_resource type="CubeMesh" id=2]

[sub_resource type="SpatialMaterial" id=4]
albedo_color = Color( 0.992157, 0.988235, 0.988235, 1 )
metallic = 0.33

[node name="Wall" type="Spatial"]
__meta__ = {
"_edit_group_": true
}

[node name="StaticBody" type="StaticBody" parent="."]
physics_material_override = SubResource( 3 )

[node name="CollisionShape" type="CollisionShape" parent="StaticBody"]
shape = SubResource( 1 )

[node name="MeshInstance" type="MeshInstance" parent="."]
mesh = SubResource( 2 )
material/0 = SubResource( 4 )
           [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 6
background_sky = SubResource( 1 )
background_energy = 0.0
ambient_light_energy = 0.0
ambient_light_sky_contribution = 0.0
glow_intensity = 0.23
               [general]

singleton=true
load_once=true
symbol_prefix="godot_"
reloadable=false

[entry]

Windows.64="res://bin/win64/release/libgitapi.dll"
X11.64="res://bin/x11/release/libgitapi.so"

[dependencies]

Windows.64=[  ]
X11.64=[  ]
         [gd_resource type="NativeScript" load_steps=2 format=2]

[ext_resource path="res://git_api.gdnlib" type="GDNativeLibrary" id=1]

[resource]
resource_name = "GitAPI"
class_name = "GitAPI"
library = ExtResource( 1 )
script_class_name = "GitAPI"
             GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[remap]

path="res://Paddle/EnnemyPaddle.gdc"
  [remap]

path="res://Paddle/Paddle.gdc"
        �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG
      _global_script_classes�                     class         GitAPI        language      NativeScript      path      res://git_api.gdns        base          _global_script_class_icons                GitAPI            application/config/name      
   PlingPlong     application/run/main_scene         res://Main.tscn    application/config/icon         res://icon.png     gdnative/singletons$               res://git_api.gdnlib$   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_environment          res://default_env.tres               