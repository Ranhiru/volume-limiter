JsOsaDAS1.001.00bplist00�Vscripto6 c l a s s   V o l i m i t e r   { 
     c o n s t r u c t o r ( a p p N a m e ,   m a x V o l u m e )   { 
         t h i s . a p p   =   A p p l i c a t i o n . c u r r e n t A p p l i c a t i o n ( ) ; 
         t h i s . a p p . i n c l u d e S t a n d a r d A d d i t i o n s   =   t r u e ; 
         t h i s . a p p N a m e   =   a p p N a m e ; 
         t h i s . m a x V o l u m e   =   m a x V o l u m e ; 
     } 
 
     g e t   c u r r e n t V o l u m e ( )   { 
         c o n s t   {   o u t p u t V o l u m e   }   =   t h i s . a p p . g e t V o l u m e S e t t i n g s ( ) ; 
         r e t u r n   o u t p u t V o l u m e ; 
     } 
     
     g e t   i s H e a d p h o n e s ( )   { 
         c o n s t   o u t p u t D e v i c e   =   t h i s . a p p . d o S h e l l S c r i p t ( ' / u s r / l o c a l / b i n / S w i t c h A u d i o S o u r c e   - c ' ) ; 
 	 r e t u r n   o u t p u t D e v i c e   = = =   " E x t e r n a l   H e a d p h o n e s " ; 
     } 
 
     l i m i t V o l u m e ( )   { 
         i f   ( ! t h i s . i s H e a d p h o n e s )   { 
 	     r e t u r n ; 
 	 } 
 	 
         i f   ( t h i s . c u r r e n t V o l u m e   >   t h i s . m a x V o l u m e )   { 
             t h i s . a p p . b e e p ( ) ; 
             t h i s . a p p . s e t V o l u m e ( n u l l ,   {   o u t p u t V o l u m e :   t h i s . m a x V o l u m e   } ) ; 
         } 
     } 
 
     s h o w N o t i f i c a t i o n ( )   { 
         t h i s . a p p . d i s p l a y N o t i f i c a t i o n ( " " ,   { 
             w i t h T i t l e :   t h i s . a p p N a m e , 
             s u b t i t l e :   ` L i m i t i n g   y o u r  �<ߧ   v o l u m e   t o   $ { 
                 t h i s . m a x V o l u m e 
             } %   t o   p r o t e c t   y o u r   e a r s ` 
         } ) ; 
     } 
 } 
 
 c o n s t   P u r r f e c t V o l u m e   =   n e w   V o l i m i t e r ( " P u r r f e c t   v o l u m e  �=�8 " ,   2 5 ) ; 
 P u r r f e c t V o l u m e . s h o w N o t i f i c a t i o n ( ) ; 
 
 f u n c t i o n   i d l e ( )   { 
     P u r r f e c t V o l u m e . l i m i t V o l u m e ( ) ; 
     r e t u r n   0 . 5 ; 
 }                              �jscr  ��ޭ