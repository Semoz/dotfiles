FasdUAS 1.101.10   ��   ��    k             l      ��  ��   GA

	New Text File Here was created by Jonas Wisser
	(http://card.ly/jwisser). This version creates a new text
	file with a user-chosen name and opens it in the user's
	default .txt application. 
	
	New Text File Here History:
	16 January 2010: Version 2.2 returns the dock icon to
		avoid a scenario in which the Filename dialog appears
		behind other applications.
	16 January 2010: Version 2.1 adds a Cancel button and
		support for some odd filenames.
	16 January 2010: Version 2.0, based on code contributed
		by perlhacker from the Lifehacker comment threads
		at http://j.mp/6ju0t8
	7 January 2010: Version 1.0, adapted from Open Terminal
		Here toolbar script by Marc Liyanage
		
	Open Terminal Here History:
	30-OCT-2001: Version 1.0, adapted from one of the example toolbar scripts
	30-OCT-2001: Now handles embedded single quote characters in file names
	30-OCT-2001: Now handles folders on volumes other than the startup volume
	30-OCT-2001: Now handles click on icon in top-level (machine) window
	31-OCT-2001: Now displays a nicer terminal window title, courtesy of Alain Content
	11-NOV-2001: Now folders within application packages (.app directories) and has a new icon
	12-NOV-2001: New properties to set terminal columns and rows as the Terminal does not use default settings
	14-NOV-2001: Major change, now handles 8-bit characters in all shells, and quotes and spaces in tcsh
	18-NOV-2001: Version 1.1: Rewrite, now uses a temporary file  ~/.OpenTerminalHere to communicate
	             the directory name between AppleScript and the shell because this is much more reliable for 8-bit characters
	16-JAN-2006: Version 2.0: Rewrite, now uses "quoted form of" and "POSIX Path". This gets rid of
	             Perl and temp files, but it no longer handles files instead of folders.
	24-JAN-2007: Version 2.1: Integrated enhancements by Stephan Hradek, can again handle dropped files.
	06-AUG-2008: Version 2.2: Added terminal control sequence to clear the visible cd command.
    26-OCT-2008: Version 2.3: Incorporated changes from Florian ?, handling case where Terminal was not already running

     � 	 	� 
 
 	 N e w   T e x t   F i l e   H e r e   w a s   c r e a t e d   b y   J o n a s   W i s s e r 
 	 ( h t t p : / / c a r d . l y / j w i s s e r ) .   T h i s   v e r s i o n   c r e a t e s   a   n e w   t e x t 
 	 f i l e   w i t h   a   u s e r - c h o s e n   n a m e   a n d   o p e n s   i t   i n   t h e   u s e r ' s 
 	 d e f a u l t   . t x t   a p p l i c a t i o n .   
 	 
 	 N e w   T e x t   F i l e   H e r e   H i s t o r y : 
 	 1 6   J a n u a r y   2 0 1 0 :   V e r s i o n   2 . 2   r e t u r n s   t h e   d o c k   i c o n   t o 
 	 	 a v o i d   a   s c e n a r i o   i n   w h i c h   t h e   F i l e n a m e   d i a l o g   a p p e a r s 
 	 	 b e h i n d   o t h e r   a p p l i c a t i o n s . 
 	 1 6   J a n u a r y   2 0 1 0 :   V e r s i o n   2 . 1   a d d s   a   C a n c e l   b u t t o n   a n d 
 	 	 s u p p o r t   f o r   s o m e   o d d   f i l e n a m e s . 
 	 1 6   J a n u a r y   2 0 1 0 :   V e r s i o n   2 . 0 ,   b a s e d   o n   c o d e   c o n t r i b u t e d 
 	 	 b y   p e r l h a c k e r   f r o m   t h e   L i f e h a c k e r   c o m m e n t   t h r e a d s 
 	 	 a t   h t t p : / / j . m p / 6 j u 0 t 8 
 	 7   J a n u a r y   2 0 1 0 :   V e r s i o n   1 . 0 ,   a d a p t e d   f r o m   O p e n   T e r m i n a l 
 	 	 H e r e   t o o l b a r   s c r i p t   b y   M a r c   L i y a n a g e 
 	 	 
 	 O p e n   T e r m i n a l   H e r e   H i s t o r y : 
 	 3 0 - O C T - 2 0 0 1 :   V e r s i o n   1 . 0 ,   a d a p t e d   f r o m   o n e   o f   t h e   e x a m p l e   t o o l b a r   s c r i p t s 
 	 3 0 - O C T - 2 0 0 1 :   N o w   h a n d l e s   e m b e d d e d   s i n g l e   q u o t e   c h a r a c t e r s   i n   f i l e   n a m e s 
 	 3 0 - O C T - 2 0 0 1 :   N o w   h a n d l e s   f o l d e r s   o n   v o l u m e s   o t h e r   t h a n   t h e   s t a r t u p   v o l u m e 
 	 3 0 - O C T - 2 0 0 1 :   N o w   h a n d l e s   c l i c k   o n   i c o n   i n   t o p - l e v e l   ( m a c h i n e )   w i n d o w 
 	 3 1 - O C T - 2 0 0 1 :   N o w   d i s p l a y s   a   n i c e r   t e r m i n a l   w i n d o w   t i t l e ,   c o u r t e s y   o f   A l a i n   C o n t e n t 
 	 1 1 - N O V - 2 0 0 1 :   N o w   f o l d e r s   w i t h i n   a p p l i c a t i o n   p a c k a g e s   ( . a p p   d i r e c t o r i e s )   a n d   h a s   a   n e w   i c o n 
 	 1 2 - N O V - 2 0 0 1 :   N e w   p r o p e r t i e s   t o   s e t   t e r m i n a l   c o l u m n s   a n d   r o w s   a s   t h e   T e r m i n a l   d o e s   n o t   u s e   d e f a u l t   s e t t i n g s 
 	 1 4 - N O V - 2 0 0 1 :   M a j o r   c h a n g e ,   n o w   h a n d l e s   8 - b i t   c h a r a c t e r s   i n   a l l   s h e l l s ,   a n d   q u o t e s   a n d   s p a c e s   i n   t c s h 
 	 1 8 - N O V - 2 0 0 1 :   V e r s i o n   1 . 1 :   R e w r i t e ,   n o w   u s e s   a   t e m p o r a r y   f i l e     ~ / . O p e n T e r m i n a l H e r e   t o   c o m m u n i c a t e 
 	                           t h e   d i r e c t o r y   n a m e   b e t w e e n   A p p l e S c r i p t   a n d   t h e   s h e l l   b e c a u s e   t h i s   i s   m u c h   m o r e   r e l i a b l e   f o r   8 - b i t   c h a r a c t e r s 
 	 1 6 - J A N - 2 0 0 6 :   V e r s i o n   2 . 0 :   R e w r i t e ,   n o w   u s e s   " q u o t e d   f o r m   o f "   a n d   " P O S I X   P a t h " .   T h i s   g e t s   r i d   o f 
 	                           P e r l   a n d   t e m p   f i l e s ,   b u t   i t   n o   l o n g e r   h a n d l e s   f i l e s   i n s t e a d   o f   f o l d e r s . 
 	 2 4 - J A N - 2 0 0 7 :   V e r s i o n   2 . 1 :   I n t e g r a t e d   e n h a n c e m e n t s   b y   S t e p h a n   H r a d e k ,   c a n   a g a i n   h a n d l e   d r o p p e d   f i l e s . 
 	 0 6 - A U G - 2 0 0 8 :   V e r s i o n   2 . 2 :   A d d e d   t e r m i n a l   c o n t r o l   s e q u e n c e   t o   c l e a r   t h e   v i s i b l e   c d   c o m m a n d . 
         2 6 - O C T - 2 0 0 8 :   V e r s i o n   2 . 3 :   I n c o r p o r a t e d   c h a n g e s   f r o m   F l o r i a n   ? ,   h a n d l i n g   c a s e   w h e r e   T e r m i n a l   w a s   n o t   a l r e a d y   r u n n i n g 
 
   
  
 l     ��������  ��  ��        l    # ����  Q     #     O       r        l    ����  c        n        m    ��
�� 
cfol  l    ����  4   �� 
�� 
cwin  m   	 
���� ��  ��    m    ��
�� 
alis��  ��    l      ����  o      ���� 0 currentfolder currentFolder��  ��    m      �                                                                                  MACS  alis    b  Liberty                    �.�H+     �
Finder.app                                                       ��Ƙ�        ����  	                CoreServices    �/4�      ƘK�       �   D   C  .Liberty:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    L i b e r t y  &System/Library/CoreServices/Finder.app  / ��    R      ������
�� .ascrerr ****      � ****��  ��    r    #     I   !�� ! "
�� .earsffdralis        afdr ! m    ��
�� afdmdesk " �� #��
�� 
rtyp # m    ��
�� 
alis��     l      $���� $ o      ���� 0 currentfolder currentFolder��  ��  ��  ��     % & % l     ��������  ��  ��   &  ' ( ' l  $ ' )���� ) r   $ ' * + * m   $ % , , � - -   + o      ���� 0 newfilename  ��  ��   (  . / . l      �� 0 1��   0 # repeat while newfilename = ""    1 � 2 2 : r e p e a t   w h i l e   n e w f i l e n a m e   =   " " /  3 4 3 l  ( < 5���� 5 I  ( <�� 6 7
�� .sysodlogaskr        TEXT 6 m   ( ) 8 8 � 9 9  F i l e n a m e ? 7 �� : ;
�� 
dtxt : o   * +���� 0 newfilename   ; �� < =
�� 
btns < J   , 2 > >  ? @ ? m   , - A A � B B  C a n c e l @  C�� C m   - 0 D D � E E  O K��   = �� F��
�� 
dflt F m   5 6���� ��  ��  ��   4  G H G l  = F I���� I r   = F J K J n   = D L M L 1   @ D��
�� 
ttxt M l  = @ N���� N 1   = @��
�� 
rslt��  ��   K o      ���� 0 newfilename  ��  ��   H  O P O l      �� Q R��   Q  
end repeat    R � S S  e n d   r e p e a t P  T U T l  G V V���� V r   G V W X W b   G R Y Z Y b   G N [ \ [ n   G L ] ^ ] 1   H L��
�� 
psxp ^ o   G H���� 0 currentfolder currentFolder \ o   L M���� 0 newfilename   Z m   N Q _ _ � ` `  . t x t X o      ���� 0 currentfile currentFile��  ��   U  a b a l     ��������  ��  ��   b  c d c l  W f e���� e I  W f�� f��
�� .sysoexecTEXT���     TEXT f b   W b g h g b   W ^ i j i m   W Z k k � l l  t o u c h   " j o   Z ]���� 0 currentfile currentFile h m   ^ a m m � n n  "��  ��  ��   d  o�� o l  g v p���� p I  g v�� q��
�� .sysoexecTEXT���     TEXT q b   g r r s r b   g n t u t m   g j v v � w w  o p e n   " u o   j m���� 0 currentfile currentFile s m   n q x x � y y  "��  ��  ��  ��       �� z {��   z ��
�� .aevtoappnull  �   � **** { �� |���� } ~��
�� .aevtoappnull  �   � **** | k     v     � �  ' � �  3 � �  G � �  T � �  c � �  o����  ��  ��   }   ~  ������������������ ,�� 8���� A D������������ _�� k m�� v x
�� 
cwin
�� 
cfol
�� 
alis�� 0 currentfolder currentFolder��  ��  
�� afdmdesk
�� 
rtyp
�� .earsffdralis        afdr�� 0 newfilename  
�� 
dtxt
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
ttxt
�� 
psxp�� 0 currentfile currentFile
�� .sysoexecTEXT���     TEXT�� w � *�k/�,�&E�UW X  ���l 	E�O�E�O�����a lva la  O_ a ,E�O�a ,�%a %E` Oa _ %a %j Oa _ %a %j ascr  ��ޭ