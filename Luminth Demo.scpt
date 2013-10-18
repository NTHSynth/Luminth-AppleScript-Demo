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
�� .sysodlogaskr        TEXT ! m     " " � # # $ L u m i n t h   n o t   f o u n d .��  ��  ��     $ % $ l     ��������  ��  ��   %  & ' & l    (���� ( r     ) * ) m     + + � , ,  7 f * o      ���� 0 redlevel redLevel��  ��   '  - . - l   ! /���� / r    ! 0 1 0 m     2 2 � 3 3  0 0 1 o      ���� 0 
greenlevel 
greenLevel��  ��   .  4 5 4 l  " % 6���� 6 r   " % 7 8 7 m   " # 9 9 � : :  0 0 8 o      ���� 0 	bluelevel 	blueLevel��  ��   5  ; < ; l  & ) =���� = r   & ) > ? > m   & ' @ @ � A A  0 0 ? o      ���� 0 	templevel 	tempLevel��  ��   <  B C B l     ��������  ��  ��   C  D E D l  * � F���� F T   * � G G k   / � H H  I J I l  / /��������  ��  ��   J  K L K I  / 8�� M��
�� .sysoexecTEXT���     TEXT M b   / 4 N O N m   / 2 P P � Q Q * p r i n t f   ' % b '   ' \ x B 0 '   >   O o   2 3���� 0 luminth Luminth��   L  R S R I  9 B�� T��
�� .sysoexecTEXT���     TEXT T b   9 > U V U m   9 < W W � X X * p r i n t f   ' % b '   ' \ x 0 0 '   >   V o   < =���� 0 luminth Luminth��   S  Y Z Y I  C R�� [��
�� .sysoexecTEXT���     TEXT [ b   C N \ ] \ b   C L ^ _ ^ b   C H ` a ` m   C F b b � c c  p r i n t f   ' % b '   ' \ x a o   F G���� 0 redlevel redLevel _ m   H K d d � e e  '   >   ] o   L M���� 0 luminth Luminth��   Z  f g f l  S S��������  ��  ��   g  h i h I  S \�� j��
�� .sysoexecTEXT���     TEXT j b   S X k l k m   S V m m � n n * p r i n t f   ' % b '   ' \ x B 0 '   >   l o   V W���� 0 luminth Luminth��   i  o p o I  ] f�� q��
�� .sysoexecTEXT���     TEXT q b   ] b r s r m   ] ` t t � u u * p r i n t f   ' % b '   ' \ x 0 1 '   >   s o   ` a���� 0 luminth Luminth��   p  v w v I  g v�� x��
�� .sysoexecTEXT���     TEXT x b   g r y z y b   g p { | { b   g l } ~ } m   g j   � � �  p r i n t f   ' % b '   ' \ x ~ o   j k���� 0 
greenlevel 
greenLevel | m   l o � � � � �  '   >   z o   p q���� 0 luminth Luminth��   w  � � � l  w w��������  ��  ��   �  � � � I  w ��� ���
�� .sysoexecTEXT���     TEXT � b   w | � � � m   w z � � � � � * p r i n t f   ' % b '   ' \ x B 0 '   >   � o   z {���� 0 luminth Luminth��   �  � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � m   � � � � � � � * p r i n t f   ' % b '   ' \ x 0 2 '   >   � o   � ����� 0 luminth Luminth��   �  � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � �  p r i n t f   ' % b '   ' \ x � o   � ����� 0 	bluelevel 	blueLevel � m   � � � � � � �  '   >   � o   � ����� 0 luminth Luminth��   �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � l  � � ����� � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � m   � � � � � � �  d d   i f = � o   � ����� 0 luminth Luminth � m   � � � � � � �    c o u n t = 1��  ��  ��   � o      ���� 0 	eventbyte 	eventByte �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � o   � ����� 0 redlevel redLevel � o      ���� 0 	templevel 	tempLevel �  � � � r   � � � � � o   � ����� 0 
greenlevel 
greenLevel � o      ���� 0 redlevel redLevel �  � � � r   � � � � � o   � ����� 0 	bluelevel 	blueLevel � o      ���� 0 
greenlevel 
greenLevel �  � � � r   � � � � � o   � ����� 0 	templevel 	tempLevel � o      ���� 0 	bluelevel 	blueLevel �  ��� � l  � ���������  ��  ��  ��  ��  ��   E  � � � l     ��������  ��  ��   �  ��� � l     ��������  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �   � �  & � �  - � �  4 � �  ; � �  D����  ��  ��   �   �   �������� "�� +�� 2�� 9�� @�� P W b d m t  � � � � � � ���
�� .sysoexecTEXT���     TEXT�� 0 luminth Luminth��  ��  
�� .sysodlogaskr        TEXT�� 0 redlevel redLevel�� 0 
greenlevel 
greenLevel�� 0 	bluelevel 	blueLevel�� 0 	templevel 	tempLevel�� 0 	eventbyte 	eventByte�� � ��j %E�W X  �j O�E�O�E�O�E�O�E�O �hZa �%j Oa �%j Oa �%a %�%j Oa �%j Oa �%j Oa �%a %�%j Oa �%j Oa �%j Oa �%a %�%j Oa �%a %j E` O�E�O�E�O�E�O�E�OP[OY�m ascr  ��ޭ