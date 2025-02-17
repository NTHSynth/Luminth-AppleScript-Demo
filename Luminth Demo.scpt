FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � �
Luminth AppleScript Demo
By John Staskevich and Kevin Holland
http://nthsynth.com/

This script sets the Luminth color by RGB levels and also reads events from the Luminth (click, release, turn clockwise and turn counterclockwise).
     � 	 	� 
 L u m i n t h   A p p l e S c r i p t   D e m o 
 B y   J o h n   S t a s k e v i c h   a n d   K e v i n   H o l l a n d 
 h t t p : / / n t h s y n t h . c o m / 
 
 T h i s   s c r i p t   s e t s   t h e   L u m i n t h   c o l o r   b y   R G B   l e v e l s   a n d   a l s o   r e a d s   e v e n t s   f r o m   t h e   L u m i n t h   ( c l i c k ,   r e l e a s e ,   t u r n   c l o c k w i s e   a n d   t u r n   c o u n t e r c l o c k w i s e ) . 
   
  
 l     ��������  ��  ��        l     ��  ��    E ? try to identify the Luminth USB serial device.  Exit on error.     �   ~   t r y   t o   i d e n t i f y   t h e   L u m i n t h   U S B   s e r i a l   d e v i c e .     E x i t   o n   e r r o r .      l     ����  Q          r        b    
    m       �   
 / d e v /  l   	 ����  I   	�� ��
�� .sysoexecTEXT���     TEXT  m       �     < l s   / d e v   |   g r e p   ' c u . * u s b s e r i a l '��  ��  ��    o      ���� 0 luminth Luminth  R      ������
�� .ascrerr ****      � ****��  ��    I   �� !��
�� .sysodlogaskr        TEXT ! m     " " � # # $ L u m i n t h   n o t   f o u n d .��  ��  ��     $ % $ l     ��������  ��  ��   %  & ' & l     �� ( )��   ( 9 3 color levels must be between 0 and 127, inclusive.    ) � * * f   c o l o r   l e v e l s   m u s t   b e   b e t w e e n   0   a n d   1 2 7 ,   i n c l u s i v e . '  + , + l    -���� - r     . / . m    ����  / o      ���� 0 redlevel redLevel��  ��   ,  0 1 0 l   ! 2���� 2 r    ! 3 4 3 m    ����   4 o      ���� 0 
greenlevel 
greenLevel��  ��   1  5 6 5 l  " % 7���� 7 r   " % 8 9 8 m   " #����   9 o      ���� 0 	bluelevel 	blueLevel��  ��   6  : ; : l  & ) <���� < r   & ) = > = m   & '����   > o      ���� 0 	templevel 	tempLevel��  ��   ;  ? @ ? l     ��������  ��  ��   @  A B A l     �� C D��   C 1 + cycle thru primary colors on click or turn    D � E E V   c y c l e   t h r u   p r i m a r y   c o l o r s   o n   c l i c k   o r   t u r n B  F G F l  * � H���� H T   * � I I k   / � J J  K L K r   / 8 M N M l  / 6 O���� O I  / 6�� P��
�� .sysoexecTEXT���     TEXT P b   / 2 Q R Q m   / 0 S S � T T  p r i n t f   ' % 0 2 x '   R o   0 1���� 0 redlevel redLevel��  ��  ��   N o      ���� 0 redhex redHex L  U V U I  9 @�� W��
�� .sysoexecTEXT���     TEXT W b   9 < X Y X m   9 : Z Z � [ [ * p r i n t f   ' % b '   ' \ x B 0 '   >   Y o   : ;���� 0 luminth Luminth��   V  \ ] \ I  A J�� ^��
�� .sysoexecTEXT���     TEXT ^ b   A F _ ` _ m   A D a a � b b * p r i n t f   ' % b '   ' \ x 0 0 '   >   ` o   D E���� 0 luminth Luminth��   ]  c d c I  K Z�� e��
�� .sysoexecTEXT���     TEXT e b   K V f g f b   K T h i h b   K P j k j m   K N l l � m m  p r i n t f   ' % b '   ' \ x k o   N O���� 0 redhex redHex i m   P S n n � o o  '   >   g o   T U���� 0 luminth Luminth��   d  p q p l  [ [��������  ��  ��   q  r s r r   [ h t u t l  [ d v���� v I  [ d�� w��
�� .sysoexecTEXT���     TEXT w b   [ ` x y x m   [ ^ z z � { {  p r i n t f   ' % 0 2 x '   y o   ^ _���� 0 
greenlevel 
greenLevel��  ��  ��   u o      ���� 0 greenhex greenHex s  | } | I  i r�� ~��
�� .sysoexecTEXT���     TEXT ~ b   i n  �  m   i l � � � � � * p r i n t f   ' % b '   ' \ x B 0 '   >   � o   l m���� 0 luminth Luminth��   }  � � � I  s |�� ���
�� .sysoexecTEXT���     TEXT � b   s x � � � m   s v � � � � � * p r i n t f   ' % b '   ' \ x 0 1 '   >   � o   v w���� 0 luminth Luminth��   �  � � � I  } ��� ���
�� .sysoexecTEXT���     TEXT � b   } � � � � b   } � � � � b   } � � � � m   } � � � � � �  p r i n t f   ' % b '   ' \ x � o   � ����� 0 greenhex greenHex � m   � � � � � � �  '   >   � o   � ����� 0 luminth Luminth��   �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � l  � � ����� � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � m   � � � � � � �  p r i n t f   ' % 0 2 x '   � o   � ����� 0 	bluelevel 	blueLevel��  ��  ��   � o      ���� 0 bluehex blueHex �  � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � m   � � � � � � � * p r i n t f   ' % b '   ' \ x B 0 '   >   � o   � ����� 0 luminth Luminth��   �  � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � m   � � � � � � � * p r i n t f   ' % b '   ' \ x 0 2 '   >   � o   � ����� 0 luminth Luminth��   �  � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � �  p r i n t f   ' % b '   ' \ x � o   � ����� 0 bluehex blueHex � m   � � � � � � �  '   >   � o   � ����� 0 luminth Luminth��   �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � l  � � ����� � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � m   � � � � � � �  d d   i f = � o   � ����� 0 luminth Luminth � m   � � � � � � �    c o u n t = 1��  ��  ��   � o      ���� 0 	eventbyte 	eventByte �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � o   � ����� 0 redlevel redLevel � o      ���� 0 	templevel 	tempLevel �  � � � r   � � � � � o   � ����� 0 
greenlevel 
greenLevel � o      ���� 0 redlevel redLevel �  � � � r   � � � � � o   � ����� 0 	bluelevel 	blueLevel � o      ���� 0 
greenlevel 
greenLevel �  � � � r   � � � � � o   � ����� 0 	templevel 	tempLevel � o      ���� 0 	bluelevel 	blueLevel �  ��� � l  � ���������  ��  ��  ��  ��  ��   G  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  �� � l     �~�}�|�~  �}  �|  �       �{ � � ��z�y�x�w � � � ��v�u�t�s�r�q�{   � �p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�a
�p .aevtoappnull  �   � ****�o 0 luminth Luminth�n 0 redlevel redLevel�m 0 
greenlevel 
greenLevel�l 0 	bluelevel 	blueLevel�k 0 	templevel 	tempLevel�j 0 redhex redHex�i 0 greenhex greenHex�h 0 bluehex blueHex�g 0 	eventbyte 	eventByte�f  �e  �d  �c  �b  �a   � �` ��_�^ � ��]
�` .aevtoappnull  �   � **** � k     � � �   � �  + � �  0 � �  5 � �  : � �  F�\�\  �_  �^   �   � "  �[�Z�Y�X "�W�V�U�T�S�R S�Q Z a l n z�P � � � � ��O � � � � � ��N
�[ .sysoexecTEXT���     TEXT�Z 0 luminth Luminth�Y  �X  
�W .sysodlogaskr        TEXT�V �U 0 redlevel redLevel�T 0 
greenlevel 
greenLevel�S 0 	bluelevel 	blueLevel�R 0 	templevel 	tempLevel�Q 0 redhex redHex�P 0 greenhex greenHex�O 0 bluehex blueHex�N 0 	eventbyte 	eventByte�] � ��j %E�W X  �j O�E�OjE�OjE�OjE�O �hZ��%j E�O��%j Oa �%j Oa �%a %�%j Oa �%j E` Oa �%j Oa �%j Oa _ %a %�%j Oa �%j E` Oa �%j Oa �%j Oa _ %a %�%j Oa �%a  %j E` !O�E�O�E�O�E�O�E�OP[OY�E � � � � 4 / d e v / c u . u s b s e r i a l - A 9 0 1 K B J H�z �y  �x  �w   � � � �  7 f � � � �  0 0 � � � �  0 0 � � � �  �v  �u  �t  �s  �r  �q  ascr  ��ޭ