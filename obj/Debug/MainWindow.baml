   M S B A M L   `   `   `  ????Q  MyoutubeVideoDownloader, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:youtubeVideoDownloaderyoutubeVideoDownloader  5   	   '    !youtubeVideoDownloader.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6local$clr-namespace:youtubeVideoDownloader     5   	     ? Title$  YoutubeDownloader??5   	   $	??200??6#   $	??400??60    ? 
ResizeMode$ NoResize=?6<   ???	#FF1F1A1A
???????.??5	      ?  ? ColumnDefinitions 5
   
   ?? 5      $??20 ?6   ?? 5      $
??auto ?6   ?? 5      $??* ?6   ?? 5      $
??auto ?6   ?? 5      $??20 ?6    ? RowDefinitions 5   
   ?? 5      $??20 ?6   ?? 5      $
??auto ?6   ?? 5      $
??auto ?6   ?? 5      $
??auto ?6   ?? 5      $
??auto ?6   ?? 5      $??20 ?6   .+?5   
   ?? $??Format??6   $??1??6$   $??1??61   $??3??6A   .??5      ?? .+?5      	? -   5         	?Name$ rdbmp3??5      $	??MP3??6.   $??5 5 5 5q?6<   
???????6M   	? 5      -   5        $ rdbmp4??5      $	??MP4??6.   $?? 5 5 5 5q?6<   
???????6N   5      5      ?? 5!   
   -   5         ??Name$ txtFilePath??5!      $??2??6'   $??1??67   $??25 0 0 0q?6E   $??25??6W   $??0q?6c   ?? 5"   
   -   5         ??Name$ btnFilePath??5"      $??	Directory??6&   $??3??6:   $??1??6J   
???  ??
???????$??5 0 0 0q?6?   $??25??6?   $??0q?6?   ?? 5$   
   -   5        $ txtUrl??5$      $??4??6"   $??2??6/   $??25 0 0 0q?6?   $??25??6R   $??0q?6^   ?? 5%   
   -   5        $ btnDownload??5%      $??Download??6&   $??3??69   $??4??6I   
???  ??
???????$??5 0 0 0q?6?   $??25??6?   $??0q?6?   5&      5'      