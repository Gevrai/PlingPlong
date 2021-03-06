GDPC                                                                               @   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.image   �5      �      F��g��ʖ��j�   res://Ball/Ball.gd.remap�C      $       ���Af�X�j&2�P�   res://Ball/Ball.gdc �            �bi�դ@��_�   res://Ball/Ball.tscn�      &      �Yi�u�:=\n ]�   res://Main.tscn �	      �      ��A�*-�!�#`�t$   res://Paddle/EnnemyPaddle.gd.remap  �C      .       ���o�~�2b}9��    res://Paddle/EnnemyPaddle.gdc   �            �y��<@�-E݁"�/�   res://Paddle/Paddle.gd.remapD      (       �HИL��^�$� ����   res://Paddle/Paddle.gdc �      �      �(o,:��,��0,�Fl   res://Paddle/Paddle.tscn@&      �      |���ej"��L�xS#h   res://UI.gd.remap   @D             ?���X���EK��m   res://UI.gdc�+      H      Q��))P~�V�	�A   res://UI.tscn   0.      �      �A|��_)�	�̷n   res://Wall/Wall.tscn�1      �      T�l�����y�\����   res://default_env.tres  �4            6���\P�����	   res://icon.png  `D      �      G1?��z�c��vN��   res://icon.png.import   �B      �       ��ԫ�m�̛�Qn�KV   res://project.binaryPQ            q�\_m��@�x��        GDSC   
         \      ��������϶��   ����������Ŷ   ��������������ض   ��������������������������Ҷ   ���϶���   ��������������ض   ������������������϶   ��������������������������Ҷ   ��Ŷ   ζ��                                                         ,   	   -   
   .      5      ;      G      L      U      Z      3YY5;�  V�  �  PQYY0�  P�  QV�  &�  V�  �  P�  Q�  �  P�  PRRQQYYY0�  P�  QV�  &�  V�  �  P�  PRRQQ�  ;�  �  �  �  T�	  �  T�	  �  �  P�  QY`   [gd_scene load_steps=5 format=2]

[ext_resource path="res://Ball/Ball.gd" type="Script" id=1]

[sub_resource type="SphereShape" id=1]

[sub_resource type="SphereMesh" id=2]

[sub_resource type="SpatialMaterial" id=3]
flags_unshaded = true
albedo_color = Color( 0.968627, 0, 1, 1 )

[node name="Ball" type="RigidBody"]
can_sleep = false
script = ExtResource( 1 )

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
          [gd_scene load_steps=7 format=2]

[ext_resource path="res://Paddle/Paddle.tscn" type="PackedScene" id=1]
[ext_resource path="res://Wall/Wall.tscn" type="PackedScene" id=2]
[ext_resource path="res://Paddle/EnnemyPaddle.gd" type="Script" id=3]
[ext_resource path="res://Ball/Ball.tscn" type="PackedScene" id=4]
[ext_resource path="res://UI.tscn" type="PackedScene" id=5]

[sub_resource type="BoxShape" id=1]
extents = Vector3( 1, 0.865833, 1 )

[node name="Main" type="Spatial"]

[node name="Paddle" parent="." instance=ExtResource( 1 )]
transform = Transform( 0.122654, 0, 0, 0, 0.378788, 0, 0, 0, 1, -12.575, 1.75628, 0 )
spring_force = 1000.0

[node name="Camera" type="Camera" parent="."]
transform = Transform( -1.62921e-07, 0, -1, 0, 1, 0, 1, 0, -1.62921e-07, -19.164, 4.25, 0 )
current = true

[node name="Ennemy" parent="." instance=ExtResource( 1 )]
transform = Transform( -0.122654, 0, -8.74228e-08, 0, 0.378788, 0, 1.07228e-08, 0, -1, 12.57, 1, 0 )
script = ExtResource( 3 )
spring_force = 10.0

[node name="Spatial" type="Spatial" parent="."]
transform = Transform( 1.96186, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0 )
__meta__ = {
"_edit_group_": true
}

[node name="Floor" parent="Spatial" instance=ExtResource( 2 )]
transform = Transform( 7.74403, 0, 0, 0, 0.3, 0, 0, 0, 3, 0, 0, 0 )

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
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -15.6268, 4.48975, 0 )

[node name="CollisionShape" type="CollisionShape" parent="PlayerGoal"]
transform = Transform( 1, 0, 0, 0, 5.21292, 0, 0, 0, 4.20549, 0, -0.120705, 0 )
shape = SubResource( 1 )

[node name="EnnemyGoal" type="Area" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 15.7155, 4.48975, 0 )

[node name="CollisionShape" type="CollisionShape" parent="EnnemyGoal"]
transform = Transform( 1, 0, 0, 0, 5.21292, 0, 0, 0, 4.20549, 0, -0.120705, 0 )
shape = SubResource( 1 )

[node name="Ball" parent="." instance=ExtResource( 4 )]
transform = Transform( 1, 0, 0, 0, 0.949885, 0.3126, 0, -0.3126, 0.949885, -10, 4, 0 )

[node name="UI" parent="." instance=ExtResource( 5 )]
[connection signal="body_entered" from="PlayerGoal" to="Ball" method="_on_PlayerGoal_body_entered"]
[connection signal="body_entered" from="PlayerGoal" to="UI" method="_on_PlayerGoal_body_entered"]
[connection signal="body_entered" from="EnnemyGoal" to="Ball" method="_on_EnnemyGoal_body_entered"]
[connection signal="body_entered" from="EnnemyGoal" to="UI" method="_on_EnnemyGoal_body_entered"]
              GDSC         3        ������������϶��   �涶   ����������������϶��   �����������Ӷ���   �����������Ӷ���   ����Ӷ��   ���Ӷ���   �������ƶ���   ���������ض�   ����������Ŷ   ��������������ض   �������϶���   ����Ӷ��   �����϶�   ����¶��   �������������Ӷ�   �������������������   ���������������Ŷ���   ����׶��   ����������Ŷ   �������¶���   ���ڶ���   ��������϶��   �������Ӷ���   ζ��   ���������������Ӷ���                  �?     @@      ../Ball      @?                                            (      )   	   -   
   0      3      5      7      8      D      E      S      Z      [      a      j      k      r      {      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .     /     0     1     2     3   3YY:�  �  PR�  RQYY8;�  V�  �  Y8;�  V�  �  Y8;�  V�  �  YY>�  N�  �  R�  �  R�  �  YOYY5;�	  V�  T�
  PQYY;�  V�  �  PRRQY;�  �  T�  YY0�  PQV�  �  T�  P�  T�  QYY0�  P�  QV�  ;�  V�  �
  PQ�  ;�  V�  �  ;�  V�  �  P�  Q�  �  �  �  �  T�
  PQT�
  PQ�  �  T�  �  �  /�  V�  �  T�  V�  &�  P�  T�  �	  T�  Q�  V�  �  �  T�  �  (V�  �  T�  �  �  �  Y�  �  T�  V�  &�  T�  �	  T�  V�  �  �  T�  �  (V�  �  T�  �  �  �  Y�  �  T�  V�  &�  T�  �  T�
  PQT�  	�  �  V�  �  �  T�  �  �  �  P�  QYY` GDSC   "      >   a     ������������϶��   �涶   ����������������϶��   �����������Ӷ���   �����������Ӷ���   ����Ӷ��   ���Ӷ���   �������ƶ���   ���������ض�   ����������Ŷ   ��������������ض   �������϶���   ����Ӷ��   �����϶�   ����¶��   �������������Ӷ�   �������������������   ���������������Ŷ���   ����׶��   ����������Ŷ   �������¶���   ζ��   �������������Ӷ�   �����¶�   ����¶��   ��������������������ض��   �������Ӷ���   ϶��   ��������������������ض��   ����������������Ҷ��   �������������Ӷ�   ������������������   �������Ӷ���   �������������������Ҷ���                  �?     @@          	   ui_cancel                                               (      )   	   -   
   0      3      5      7      8      D      E      S      Z      [      a      j      k      r      s      |      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -     .     /     0     1     2   %  3   &  4   /  5   ;  6   D  7   G  8   P  9   Q  :   T  ;   V  <   W  =   _  >   3YY:�  �  PR�  RQYY8;�  V�  �  Y8;�  V�  �  Y8;�  V�  �  YY>�  N�  �  R�  �  R�  �  YOYY5;�	  V�  T�
  PQYY;�  V�  �  PRRQY;�  �  T�  YY0�  PQV�  �  T�  P�  T�  QYY0�  P�  QVY�  ;�  V�  �
  PQ�  ;�  V�  Y�  /�  V�  �  T�  V�  &�  T�  �	  T�  �  V�  �  �  T�  �  (V�  �  �  P�  RRQ�  �  T�  V�  &�  T�  	�	  T�  V�  �  �  T�  �  (V�  �  �  P�  RRQY�  �  �  P�  �  �  R�  QYY0�  P�  QVY�  &�  4�  V�  ;�  V�  �  P�  R�  T�  T�  R�  T�  T�  Q�  �  �  P�  �  R�  QY�  '�  4�  V�  &T�  �  T�  V�  �  �  T�  Y�  '�  T�  P�  QV�  &�  T�  PQ�  T�  V�  �  T�  P�  T�  Q�  (V�  �  T�  P�  T�  QY�  (V�  .Y�  �   PQT�!  PQY`        [gd_scene load_steps=5 format=2]

[ext_resource path="res://Paddle/Paddle.gd" type="Script" id=1]

[sub_resource type="BoxShape" id=1]

[sub_resource type="SpatialMaterial" id=2]
flags_transparent = true
params_blend_mode = 1
albedo_color = Color( 0, 0, 0, 1 )
metallic = 0.23
emission_enabled = true
emission = Color( 0.0784314, 0.117647, 0.435294, 1 )
emission_energy = 2.23
emission_operator = 0
emission_on_uv2 = false
transmission_enabled = true
transmission = Color( 0.207843, 0.45098, 0.827451, 1 )

[sub_resource type="CubeMesh" id=3]

[node name="Paddle" type="KinematicBody"]
transform = Transform( 0.122654, 0, 0, 0, 0.869558, 0, 0, 0, 1, 0, 0, 0 )
script = ExtResource( 1 )
__meta__ = {
"_edit_group_": true
}

[node name="CollisionShape" type="CollisionShape" parent="."]
transform = Transform( 0.972067, 0, 0.956763, 0, 1.45527, 0, -0.0310189, 0, 0.523718, 0.504143, 0, -0.495466 )
shape = SubResource( 1 )

[node name="CollisionShape2" type="CollisionShape" parent="."]
transform = Transform( 0.983728, 0, -1.02932, 0, 1.45527, 0, 0.0248814, 0, 0.521644, 0.419233, 0, 0.494871 )
shape = SubResource( 1 )

[node name="MeshInstance" type="MeshInstance" parent="."]
transform = Transform( 1, 0, 0, 0, 1.45527, 0, 0, 0, 1, 0, 0, 0 )
material_override = SubResource( 2 )
mesh = SubResource( 3 )
material/0 = null

[node name="OmniLight" type="OmniLight" parent="."]
light_color = Color( 0.121569, 0.0745098, 0.929412, 1 )
        GDSC   	         `      ������ڶ   �����������Ӷ���   �����������Ӷ���   ��������������������������Ҷ   ���϶���   �������Ӷ���   �����������Ӷ���   ��������������������������Ҷ   ���¶���             Ball                         	                        !      %   	   )   
   *      1      ;      ?      C      D      J      T      ^      3YY5;�  Y5;�  YY0�  P�  QV�  &�  T�  PQ�  V�  �  �  �  �  PQYY0�  P�  QV�  &�  T�  PQ�  V�  �  �  �  �  PQ�  Y0�  PQV�  W�  T�  �>  P�  Q�  W�  T�  �>  P�  QY`        [gd_scene load_steps=2 format=2]

[ext_resource path="res://UI.gd" type="Script" id=1]

[node name="UI" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
margin_top = -0.950012
margin_bottom = -0.950012
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="VSeparator" type="VSeparator" parent="."]
margin_left = 480.15
margin_top = 19.85
margin_right = 524.15
margin_bottom = 79.85
__meta__ = {
"_edit_use_anchors_": false
}

[node name="player_score" type="Label" parent="."]
margin_left = 452.2
margin_top = 30.0
margin_right = 460.2
margin_bottom = 44.0
rect_scale = Vector2( 3.04, 2.96 )
text = "0"
align = 1
valign = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="ennemy_score" type="Label" parent="."]
margin_left = 526.75
margin_top = 30.0
margin_right = 534.75
margin_bottom = 44.0
rect_scale = Vector2( 3.04, 2.96 )
text = "0"
align = 1
valign = 1
__meta__ = {
"_edit_use_anchors_": false
}
               [gd_scene load_steps=5 format=2]

[sub_resource type="PhysicsMaterial" id=1]
friction = 0.0
bounce = 0.9

[sub_resource type="BoxShape" id=2]

[sub_resource type="CubeMesh" id=3]

[sub_resource type="SpatialMaterial" id=4]
albedo_color = Color( 0.992157, 0.988235, 0.988235, 1 )
metallic = 0.33

[node name="Wall" type="Spatial"]
__meta__ = {
"_edit_group_": true
}

[node name="StaticBody" type="StaticBody" parent="."]
physics_material_override = SubResource( 1 )

[node name="CollisionShape" type="CollisionShape" parent="StaticBody"]
shape = SubResource( 2 )

[node name="MeshInstance" type="MeshInstance" parent="."]
mesh = SubResource( 3 )
material/0 = SubResource( 4 )
            [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 6
background_sky = SubResource( 1 )
background_energy = 0.0
ambient_light_energy = 0.0
ambient_light_sky_contribution = 0.0
glow_intensity = 0.23
               GDIM   png�PNG
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
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�            [remap]

importer="image"
type="Image"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.image"

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.image" ]

[params]

    [remap]

path="res://Ball/Ball.gdc"
            [remap]

path="res://Paddle/EnnemyPaddle.gdc"
  [remap]

path="res://Paddle/Paddle.gdc"
        [remap]

path="res://UI.gdc"
   �PNG
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
      _global_script_classes             _global_script_class_icons             application/config/name      
   PlingPlong     application/run/main_scene         res://Main.tscn    application/config/icon         res://icon.png     gdnative/singletons          $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_environment          res://default_env.tres           