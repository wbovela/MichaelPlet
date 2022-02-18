VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form Form1 
   BackColor       =   &H0000FFFF&
   Caption         =   "Sprite Finder"
   ClientHeight    =   7995
   ClientLeft      =   135
   ClientTop       =   510
   ClientWidth     =   9135
   LinkTopic       =   "Form1"
   ScaleHeight     =   7995
   ScaleWidth      =   9135
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdDisplay 
      Caption         =   "Display as text"
      Height          =   372
      Left            =   3840
      TabIndex        =   3038
      Top             =   360
      Width           =   1332
   End
   Begin VB.HScrollBar hsbOffset 
      Height          =   252
      Left            =   8520
      Max             =   63
      TabIndex        =   3035
      Top             =   7440
      Width           =   492
   End
   Begin MSComDlg.CommonDialog cdcOpen 
      Left            =   2400
      Top             =   7080
      _ExtentX        =   688
      _ExtentY        =   688
      _Version        =   393216
   End
   Begin VB.HScrollBar hsbAddr 
      Height          =   252
      LargeChange     =   3
      Left            =   120
      Max             =   8188
      TabIndex        =   65
      Top             =   7440
      Width           =   6972
   End
   Begin VB.Label Label1 
      Caption         =   "Offset:"
      Height          =   252
      Left            =   7440
      TabIndex        =   3037
      Top             =   7440
      Width           =   612
   End
   Begin VB.Label lblOffset 
      Alignment       =   1  'Right Justify
      Caption         =   "0"
      Height          =   252
      Left            =   8160
      TabIndex        =   3036
      Top             =   7440
      Width           =   252
   End
   Begin VB.Label lblBank 
      Caption         =   "Bank:"
      Height          =   252
      Left            =   120
      TabIndex        =   3034
      Top             =   360
      Width           =   1212
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   3023
      Left            =   8880
      TabIndex        =   3032
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   3022
      Left            =   8760
      TabIndex        =   3031
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   3021
      Left            =   8640
      TabIndex        =   3030
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   3020
      Left            =   8520
      TabIndex        =   3029
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   3019
      Left            =   8400
      TabIndex        =   3028
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   3018
      Left            =   8280
      TabIndex        =   3027
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   3017
      Left            =   8160
      TabIndex        =   3026
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   3016
      Left            =   8040
      TabIndex        =   3025
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   3015
      Left            =   7920
      TabIndex        =   3024
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   3014
      Left            =   7800
      TabIndex        =   3023
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   3013
      Left            =   7680
      TabIndex        =   3022
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   3012
      Left            =   7560
      TabIndex        =   3021
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   3011
      Left            =   7440
      TabIndex        =   3020
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   3010
      Left            =   7320
      TabIndex        =   3019
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   3009
      Left            =   7200
      TabIndex        =   3018
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   3008
      Left            =   7080
      TabIndex        =   3017
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   3007
      Left            =   6960
      TabIndex        =   3016
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   3006
      Left            =   6840
      TabIndex        =   3015
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   3005
      Left            =   6720
      TabIndex        =   3014
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   3004
      Left            =   6600
      TabIndex        =   3013
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   3003
      Left            =   6480
      TabIndex        =   3012
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   3002
      Left            =   6360
      TabIndex        =   3011
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   3001
      Left            =   6240
      TabIndex        =   3010
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   3000
      Left            =   6120
      TabIndex        =   3009
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2999
      Left            =   8880
      TabIndex        =   3008
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2998
      Left            =   8760
      TabIndex        =   3007
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2997
      Left            =   8640
      TabIndex        =   3006
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2996
      Left            =   8520
      TabIndex        =   3005
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2995
      Left            =   8400
      TabIndex        =   3004
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2994
      Left            =   8280
      TabIndex        =   3003
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2993
      Left            =   8160
      TabIndex        =   3002
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2992
      Left            =   8040
      TabIndex        =   3001
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2991
      Left            =   7920
      TabIndex        =   3000
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2990
      Left            =   7800
      TabIndex        =   2999
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2989
      Left            =   7680
      TabIndex        =   2998
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2988
      Left            =   7560
      TabIndex        =   2997
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2987
      Left            =   7440
      TabIndex        =   2996
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2986
      Left            =   7320
      TabIndex        =   2995
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2985
      Left            =   7200
      TabIndex        =   2994
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2984
      Left            =   7080
      TabIndex        =   2993
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2983
      Left            =   6960
      TabIndex        =   2992
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2982
      Left            =   6840
      TabIndex        =   2991
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2981
      Left            =   6720
      TabIndex        =   2990
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2980
      Left            =   6600
      TabIndex        =   2989
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2979
      Left            =   6480
      TabIndex        =   2988
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2978
      Left            =   6360
      TabIndex        =   2987
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2977
      Left            =   6240
      TabIndex        =   2986
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2976
      Left            =   6120
      TabIndex        =   2985
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2975
      Left            =   8880
      TabIndex        =   2984
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2974
      Left            =   8760
      TabIndex        =   2983
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2973
      Left            =   8640
      TabIndex        =   2982
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2972
      Left            =   8520
      TabIndex        =   2981
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2971
      Left            =   8400
      TabIndex        =   2980
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2970
      Left            =   8280
      TabIndex        =   2979
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2969
      Left            =   8160
      TabIndex        =   2978
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2968
      Left            =   8040
      TabIndex        =   2977
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2967
      Left            =   7920
      TabIndex        =   2976
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2966
      Left            =   7800
      TabIndex        =   2975
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2965
      Left            =   7680
      TabIndex        =   2974
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2964
      Left            =   7560
      TabIndex        =   2973
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2963
      Left            =   7440
      TabIndex        =   2972
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2962
      Left            =   7320
      TabIndex        =   2971
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2961
      Left            =   7200
      TabIndex        =   2970
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2960
      Left            =   7080
      TabIndex        =   2969
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2959
      Left            =   6960
      TabIndex        =   2968
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2958
      Left            =   6840
      TabIndex        =   2967
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2957
      Left            =   6720
      TabIndex        =   2966
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2956
      Left            =   6600
      TabIndex        =   2965
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2955
      Left            =   6480
      TabIndex        =   2964
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2954
      Left            =   6360
      TabIndex        =   2963
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2953
      Left            =   6240
      TabIndex        =   2962
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2952
      Left            =   6120
      TabIndex        =   2961
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2951
      Left            =   8880
      TabIndex        =   2960
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2950
      Left            =   8760
      TabIndex        =   2959
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2949
      Left            =   8640
      TabIndex        =   2958
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2948
      Left            =   8520
      TabIndex        =   2957
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2947
      Left            =   8400
      TabIndex        =   2956
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2946
      Left            =   8280
      TabIndex        =   2955
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2945
      Left            =   8160
      TabIndex        =   2954
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2944
      Left            =   8040
      TabIndex        =   2953
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2943
      Left            =   7920
      TabIndex        =   2952
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2942
      Left            =   7800
      TabIndex        =   2951
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2941
      Left            =   7680
      TabIndex        =   2950
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2940
      Left            =   7560
      TabIndex        =   2949
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2939
      Left            =   7440
      TabIndex        =   2948
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2938
      Left            =   7320
      TabIndex        =   2947
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2937
      Left            =   7200
      TabIndex        =   2946
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2936
      Left            =   7080
      TabIndex        =   2945
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2935
      Left            =   6960
      TabIndex        =   2944
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2934
      Left            =   6840
      TabIndex        =   2943
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2933
      Left            =   6720
      TabIndex        =   2942
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2932
      Left            =   6600
      TabIndex        =   2941
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2931
      Left            =   6480
      TabIndex        =   2940
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2930
      Left            =   6360
      TabIndex        =   2939
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2929
      Left            =   6240
      TabIndex        =   2938
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2928
      Left            =   6120
      TabIndex        =   2937
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2927
      Left            =   8880
      TabIndex        =   2936
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2926
      Left            =   8760
      TabIndex        =   2935
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2925
      Left            =   8640
      TabIndex        =   2934
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2924
      Left            =   8520
      TabIndex        =   2933
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2923
      Left            =   8400
      TabIndex        =   2932
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2922
      Left            =   8280
      TabIndex        =   2931
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2921
      Left            =   8160
      TabIndex        =   2930
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2920
      Left            =   8040
      TabIndex        =   2929
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2919
      Left            =   7920
      TabIndex        =   2928
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2918
      Left            =   7800
      TabIndex        =   2927
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2917
      Left            =   7680
      TabIndex        =   2926
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2916
      Left            =   7560
      TabIndex        =   2925
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2915
      Left            =   7440
      TabIndex        =   2924
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2914
      Left            =   7320
      TabIndex        =   2923
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2913
      Left            =   7200
      TabIndex        =   2922
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2912
      Left            =   7080
      TabIndex        =   2921
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2911
      Left            =   6960
      TabIndex        =   2920
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2910
      Left            =   6840
      TabIndex        =   2919
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2909
      Left            =   6720
      TabIndex        =   2918
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2908
      Left            =   6600
      TabIndex        =   2917
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2907
      Left            =   6480
      TabIndex        =   2916
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2906
      Left            =   6360
      TabIndex        =   2915
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2905
      Left            =   6240
      TabIndex        =   2914
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2904
      Left            =   6120
      TabIndex        =   2913
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2903
      Left            =   8880
      TabIndex        =   2912
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2902
      Left            =   8760
      TabIndex        =   2911
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2901
      Left            =   8640
      TabIndex        =   2910
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2900
      Left            =   8520
      TabIndex        =   2909
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2899
      Left            =   8400
      TabIndex        =   2908
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2898
      Left            =   8280
      TabIndex        =   2907
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2897
      Left            =   8160
      TabIndex        =   2906
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2896
      Left            =   8040
      TabIndex        =   2905
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2895
      Left            =   7920
      TabIndex        =   2904
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2894
      Left            =   7800
      TabIndex        =   2903
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2893
      Left            =   7680
      TabIndex        =   2902
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2892
      Left            =   7560
      TabIndex        =   2901
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2891
      Left            =   7440
      TabIndex        =   2900
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2890
      Left            =   7320
      TabIndex        =   2899
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2889
      Left            =   7200
      TabIndex        =   2898
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2888
      Left            =   7080
      TabIndex        =   2897
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2887
      Left            =   6960
      TabIndex        =   2896
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2886
      Left            =   6840
      TabIndex        =   2895
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2885
      Left            =   6720
      TabIndex        =   2894
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2884
      Left            =   6600
      TabIndex        =   2893
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2883
      Left            =   6480
      TabIndex        =   2892
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2882
      Left            =   6360
      TabIndex        =   2891
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2881
      Left            =   6240
      TabIndex        =   2890
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2880
      Left            =   6120
      TabIndex        =   2889
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2879
      Left            =   8880
      TabIndex        =   2888
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2878
      Left            =   8760
      TabIndex        =   2887
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2877
      Left            =   8640
      TabIndex        =   2886
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2876
      Left            =   8520
      TabIndex        =   2885
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2875
      Left            =   8400
      TabIndex        =   2884
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2874
      Left            =   8280
      TabIndex        =   2883
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2873
      Left            =   8160
      TabIndex        =   2882
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2872
      Left            =   8040
      TabIndex        =   2881
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2871
      Left            =   7920
      TabIndex        =   2880
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2870
      Left            =   7800
      TabIndex        =   2879
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2869
      Left            =   7680
      TabIndex        =   2878
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2868
      Left            =   7560
      TabIndex        =   2877
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2867
      Left            =   7440
      TabIndex        =   2876
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2866
      Left            =   7320
      TabIndex        =   2875
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2865
      Left            =   7200
      TabIndex        =   2874
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2864
      Left            =   7080
      TabIndex        =   2873
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2863
      Left            =   6960
      TabIndex        =   2872
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2862
      Left            =   6840
      TabIndex        =   2871
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2861
      Left            =   6720
      TabIndex        =   2870
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2860
      Left            =   6600
      TabIndex        =   2869
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2859
      Left            =   6480
      TabIndex        =   2868
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2858
      Left            =   6360
      TabIndex        =   2867
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2857
      Left            =   6240
      TabIndex        =   2866
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2856
      Left            =   6120
      TabIndex        =   2865
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2855
      Left            =   8880
      TabIndex        =   2864
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2854
      Left            =   8760
      TabIndex        =   2863
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2853
      Left            =   8640
      TabIndex        =   2862
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2852
      Left            =   8520
      TabIndex        =   2861
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2851
      Left            =   8400
      TabIndex        =   2860
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2850
      Left            =   8280
      TabIndex        =   2859
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2849
      Left            =   8160
      TabIndex        =   2858
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2848
      Left            =   8040
      TabIndex        =   2857
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2847
      Left            =   7920
      TabIndex        =   2856
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2846
      Left            =   7800
      TabIndex        =   2855
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2845
      Left            =   7680
      TabIndex        =   2854
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2844
      Left            =   7560
      TabIndex        =   2853
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2843
      Left            =   7440
      TabIndex        =   2852
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2842
      Left            =   7320
      TabIndex        =   2851
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2841
      Left            =   7200
      TabIndex        =   2850
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2840
      Left            =   7080
      TabIndex        =   2849
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2839
      Left            =   6960
      TabIndex        =   2848
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2838
      Left            =   6840
      TabIndex        =   2847
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2837
      Left            =   6720
      TabIndex        =   2846
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2836
      Left            =   6600
      TabIndex        =   2845
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2835
      Left            =   6480
      TabIndex        =   2844
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2834
      Left            =   6360
      TabIndex        =   2843
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2833
      Left            =   6240
      TabIndex        =   2842
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2832
      Left            =   6120
      TabIndex        =   2841
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2831
      Left            =   8880
      TabIndex        =   2840
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2830
      Left            =   8760
      TabIndex        =   2839
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2829
      Left            =   8640
      TabIndex        =   2838
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2828
      Left            =   8520
      TabIndex        =   2837
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2827
      Left            =   8400
      TabIndex        =   2836
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2826
      Left            =   8280
      TabIndex        =   2835
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2825
      Left            =   8160
      TabIndex        =   2834
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2824
      Left            =   8040
      TabIndex        =   2833
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2823
      Left            =   7920
      TabIndex        =   2832
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2822
      Left            =   7800
      TabIndex        =   2831
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2821
      Left            =   7680
      TabIndex        =   2830
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2820
      Left            =   7560
      TabIndex        =   2829
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2819
      Left            =   7440
      TabIndex        =   2828
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2818
      Left            =   7320
      TabIndex        =   2827
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2817
      Left            =   7200
      TabIndex        =   2826
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2816
      Left            =   7080
      TabIndex        =   2825
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2815
      Left            =   6960
      TabIndex        =   2824
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2814
      Left            =   6840
      TabIndex        =   2823
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2813
      Left            =   6720
      TabIndex        =   2822
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2812
      Left            =   6600
      TabIndex        =   2821
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2811
      Left            =   6480
      TabIndex        =   2820
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2810
      Left            =   6360
      TabIndex        =   2819
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2809
      Left            =   6240
      TabIndex        =   2818
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2808
      Left            =   6120
      TabIndex        =   2817
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2807
      Left            =   8880
      TabIndex        =   2816
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2806
      Left            =   8760
      TabIndex        =   2815
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2805
      Left            =   8640
      TabIndex        =   2814
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2804
      Left            =   8520
      TabIndex        =   2813
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2803
      Left            =   8400
      TabIndex        =   2812
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2802
      Left            =   8280
      TabIndex        =   2811
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2801
      Left            =   8160
      TabIndex        =   2810
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2800
      Left            =   8040
      TabIndex        =   2809
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2799
      Left            =   7920
      TabIndex        =   2808
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2798
      Left            =   7800
      TabIndex        =   2807
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2797
      Left            =   7680
      TabIndex        =   2806
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2796
      Left            =   7560
      TabIndex        =   2805
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2795
      Left            =   7440
      TabIndex        =   2804
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2794
      Left            =   7320
      TabIndex        =   2803
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2793
      Left            =   7200
      TabIndex        =   2802
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2792
      Left            =   7080
      TabIndex        =   2801
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2791
      Left            =   6960
      TabIndex        =   2800
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2790
      Left            =   6840
      TabIndex        =   2799
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2789
      Left            =   6720
      TabIndex        =   2798
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2788
      Left            =   6600
      TabIndex        =   2797
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2787
      Left            =   6480
      TabIndex        =   2796
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2786
      Left            =   6360
      TabIndex        =   2795
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2785
      Left            =   6240
      TabIndex        =   2794
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2784
      Left            =   6120
      TabIndex        =   2793
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2783
      Left            =   8880
      TabIndex        =   2792
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2782
      Left            =   8760
      TabIndex        =   2791
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2781
      Left            =   8640
      TabIndex        =   2790
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2780
      Left            =   8520
      TabIndex        =   2789
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2779
      Left            =   8400
      TabIndex        =   2788
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2778
      Left            =   8280
      TabIndex        =   2787
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2777
      Left            =   8160
      TabIndex        =   2786
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2776
      Left            =   8040
      TabIndex        =   2785
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2775
      Left            =   7920
      TabIndex        =   2784
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2774
      Left            =   7800
      TabIndex        =   2783
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2773
      Left            =   7680
      TabIndex        =   2782
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2772
      Left            =   7560
      TabIndex        =   2781
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2771
      Left            =   7440
      TabIndex        =   2780
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2770
      Left            =   7320
      TabIndex        =   2779
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2769
      Left            =   7200
      TabIndex        =   2778
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2768
      Left            =   7080
      TabIndex        =   2777
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2767
      Left            =   6960
      TabIndex        =   2776
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2766
      Left            =   6840
      TabIndex        =   2775
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2765
      Left            =   6720
      TabIndex        =   2774
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2764
      Left            =   6600
      TabIndex        =   2773
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2763
      Left            =   6480
      TabIndex        =   2772
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2762
      Left            =   6360
      TabIndex        =   2771
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2761
      Left            =   6240
      TabIndex        =   2770
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2760
      Left            =   6120
      TabIndex        =   2769
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2759
      Left            =   8880
      TabIndex        =   2768
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2758
      Left            =   8760
      TabIndex        =   2767
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2757
      Left            =   8640
      TabIndex        =   2766
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2756
      Left            =   8520
      TabIndex        =   2765
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2755
      Left            =   8400
      TabIndex        =   2764
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2754
      Left            =   8280
      TabIndex        =   2763
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2753
      Left            =   8160
      TabIndex        =   2762
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2752
      Left            =   8040
      TabIndex        =   2761
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2751
      Left            =   7920
      TabIndex        =   2760
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2750
      Left            =   7800
      TabIndex        =   2759
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2749
      Left            =   7680
      TabIndex        =   2758
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2748
      Left            =   7560
      TabIndex        =   2757
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2747
      Left            =   7440
      TabIndex        =   2756
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2746
      Left            =   7320
      TabIndex        =   2755
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2745
      Left            =   7200
      TabIndex        =   2754
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2744
      Left            =   7080
      TabIndex        =   2753
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2743
      Left            =   6960
      TabIndex        =   2752
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2742
      Left            =   6840
      TabIndex        =   2751
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2741
      Left            =   6720
      TabIndex        =   2750
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2740
      Left            =   6600
      TabIndex        =   2749
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2739
      Left            =   6480
      TabIndex        =   2748
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2738
      Left            =   6360
      TabIndex        =   2747
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2737
      Left            =   6240
      TabIndex        =   2746
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2736
      Left            =   6120
      TabIndex        =   2745
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2735
      Left            =   8880
      TabIndex        =   2744
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2734
      Left            =   8760
      TabIndex        =   2743
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2733
      Left            =   8640
      TabIndex        =   2742
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2732
      Left            =   8520
      TabIndex        =   2741
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2731
      Left            =   8400
      TabIndex        =   2740
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2730
      Left            =   8280
      TabIndex        =   2739
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2729
      Left            =   8160
      TabIndex        =   2738
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2728
      Left            =   8040
      TabIndex        =   2737
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2727
      Left            =   7920
      TabIndex        =   2736
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2726
      Left            =   7800
      TabIndex        =   2735
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2725
      Left            =   7680
      TabIndex        =   2734
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2724
      Left            =   7560
      TabIndex        =   2733
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2723
      Left            =   7440
      TabIndex        =   2732
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2722
      Left            =   7320
      TabIndex        =   2731
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2721
      Left            =   7200
      TabIndex        =   2730
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2720
      Left            =   7080
      TabIndex        =   2729
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2719
      Left            =   6960
      TabIndex        =   2728
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2718
      Left            =   6840
      TabIndex        =   2727
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2717
      Left            =   6720
      TabIndex        =   2726
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2716
      Left            =   6600
      TabIndex        =   2725
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2715
      Left            =   6480
      TabIndex        =   2724
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2714
      Left            =   6360
      TabIndex        =   2723
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2713
      Left            =   6240
      TabIndex        =   2722
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2712
      Left            =   6120
      TabIndex        =   2721
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2711
      Left            =   8880
      TabIndex        =   2720
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2710
      Left            =   8760
      TabIndex        =   2719
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2709
      Left            =   8640
      TabIndex        =   2718
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2708
      Left            =   8520
      TabIndex        =   2717
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2707
      Left            =   8400
      TabIndex        =   2716
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2706
      Left            =   8280
      TabIndex        =   2715
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2705
      Left            =   8160
      TabIndex        =   2714
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2704
      Left            =   8040
      TabIndex        =   2713
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2703
      Left            =   7920
      TabIndex        =   2712
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2702
      Left            =   7800
      TabIndex        =   2711
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2701
      Left            =   7680
      TabIndex        =   2710
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2700
      Left            =   7560
      TabIndex        =   2709
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2699
      Left            =   7440
      TabIndex        =   2708
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2698
      Left            =   7320
      TabIndex        =   2707
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2697
      Left            =   7200
      TabIndex        =   2706
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2696
      Left            =   7080
      TabIndex        =   2705
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2695
      Left            =   6960
      TabIndex        =   2704
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2694
      Left            =   6840
      TabIndex        =   2703
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2693
      Left            =   6720
      TabIndex        =   2702
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2692
      Left            =   6600
      TabIndex        =   2701
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2691
      Left            =   6480
      TabIndex        =   2700
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2690
      Left            =   6360
      TabIndex        =   2699
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2689
      Left            =   6240
      TabIndex        =   2698
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2688
      Left            =   6120
      TabIndex        =   2697
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2687
      Left            =   8880
      TabIndex        =   2696
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2686
      Left            =   8760
      TabIndex        =   2695
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2685
      Left            =   8640
      TabIndex        =   2694
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2684
      Left            =   8520
      TabIndex        =   2693
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2683
      Left            =   8400
      TabIndex        =   2692
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2682
      Left            =   8280
      TabIndex        =   2691
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2681
      Left            =   8160
      TabIndex        =   2690
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2680
      Left            =   8040
      TabIndex        =   2689
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2679
      Left            =   7920
      TabIndex        =   2688
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2678
      Left            =   7800
      TabIndex        =   2687
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2677
      Left            =   7680
      TabIndex        =   2686
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2676
      Left            =   7560
      TabIndex        =   2685
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2675
      Left            =   7440
      TabIndex        =   2684
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2674
      Left            =   7320
      TabIndex        =   2683
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2673
      Left            =   7200
      TabIndex        =   2682
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2672
      Left            =   7080
      TabIndex        =   2681
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2671
      Left            =   6960
      TabIndex        =   2680
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2670
      Left            =   6840
      TabIndex        =   2679
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2669
      Left            =   6720
      TabIndex        =   2678
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2668
      Left            =   6600
      TabIndex        =   2677
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2667
      Left            =   6480
      TabIndex        =   2676
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2666
      Left            =   6360
      TabIndex        =   2675
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2665
      Left            =   6240
      TabIndex        =   2674
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2664
      Left            =   6120
      TabIndex        =   2673
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2663
      Left            =   8880
      TabIndex        =   2672
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2662
      Left            =   8760
      TabIndex        =   2671
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2661
      Left            =   8640
      TabIndex        =   2670
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2660
      Left            =   8520
      TabIndex        =   2669
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2659
      Left            =   8400
      TabIndex        =   2668
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2658
      Left            =   8280
      TabIndex        =   2667
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2657
      Left            =   8160
      TabIndex        =   2666
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2656
      Left            =   8040
      TabIndex        =   2665
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2655
      Left            =   7920
      TabIndex        =   2664
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2654
      Left            =   7800
      TabIndex        =   2663
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2653
      Left            =   7680
      TabIndex        =   2662
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2652
      Left            =   7560
      TabIndex        =   2661
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2651
      Left            =   7440
      TabIndex        =   2660
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2650
      Left            =   7320
      TabIndex        =   2659
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2649
      Left            =   7200
      TabIndex        =   2658
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2648
      Left            =   7080
      TabIndex        =   2657
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2647
      Left            =   6960
      TabIndex        =   2656
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2646
      Left            =   6840
      TabIndex        =   2655
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2645
      Left            =   6720
      TabIndex        =   2654
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2644
      Left            =   6600
      TabIndex        =   2653
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2643
      Left            =   6480
      TabIndex        =   2652
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2642
      Left            =   6360
      TabIndex        =   2651
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2641
      Left            =   6240
      TabIndex        =   2650
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2640
      Left            =   6120
      TabIndex        =   2649
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2639
      Left            =   8880
      TabIndex        =   2648
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2638
      Left            =   8760
      TabIndex        =   2647
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2637
      Left            =   8640
      TabIndex        =   2646
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2636
      Left            =   8520
      TabIndex        =   2645
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2635
      Left            =   8400
      TabIndex        =   2644
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2634
      Left            =   8280
      TabIndex        =   2643
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2633
      Left            =   8160
      TabIndex        =   2642
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2632
      Left            =   8040
      TabIndex        =   2641
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2631
      Left            =   7920
      TabIndex        =   2640
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2630
      Left            =   7800
      TabIndex        =   2639
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2629
      Left            =   7680
      TabIndex        =   2638
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2628
      Left            =   7560
      TabIndex        =   2637
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2627
      Left            =   7440
      TabIndex        =   2636
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2626
      Left            =   7320
      TabIndex        =   2635
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2625
      Left            =   7200
      TabIndex        =   2634
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2624
      Left            =   7080
      TabIndex        =   2633
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2623
      Left            =   6960
      TabIndex        =   2632
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2622
      Left            =   6840
      TabIndex        =   2631
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2621
      Left            =   6720
      TabIndex        =   2630
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2620
      Left            =   6600
      TabIndex        =   2629
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2619
      Left            =   6480
      TabIndex        =   2628
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2618
      Left            =   6360
      TabIndex        =   2627
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2617
      Left            =   6240
      TabIndex        =   2626
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2616
      Left            =   6120
      TabIndex        =   2625
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2615
      Left            =   8880
      TabIndex        =   2624
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2614
      Left            =   8760
      TabIndex        =   2623
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2613
      Left            =   8640
      TabIndex        =   2622
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2612
      Left            =   8520
      TabIndex        =   2621
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2611
      Left            =   8400
      TabIndex        =   2620
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2610
      Left            =   8280
      TabIndex        =   2619
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2609
      Left            =   8160
      TabIndex        =   2618
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2608
      Left            =   8040
      TabIndex        =   2617
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2607
      Left            =   7920
      TabIndex        =   2616
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2606
      Left            =   7800
      TabIndex        =   2615
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2605
      Left            =   7680
      TabIndex        =   2614
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2604
      Left            =   7560
      TabIndex        =   2613
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2603
      Left            =   7440
      TabIndex        =   2612
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2602
      Left            =   7320
      TabIndex        =   2611
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2601
      Left            =   7200
      TabIndex        =   2610
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2600
      Left            =   7080
      TabIndex        =   2609
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2599
      Left            =   6960
      TabIndex        =   2608
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2598
      Left            =   6840
      TabIndex        =   2607
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2597
      Left            =   6720
      TabIndex        =   2606
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2596
      Left            =   6600
      TabIndex        =   2605
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2595
      Left            =   6480
      TabIndex        =   2604
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2594
      Left            =   6360
      TabIndex        =   2603
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2593
      Left            =   6240
      TabIndex        =   2602
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2592
      Left            =   6120
      TabIndex        =   2601
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2591
      Left            =   8880
      TabIndex        =   2600
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2590
      Left            =   8760
      TabIndex        =   2599
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2589
      Left            =   8640
      TabIndex        =   2598
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2588
      Left            =   8520
      TabIndex        =   2597
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2587
      Left            =   8400
      TabIndex        =   2596
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2586
      Left            =   8280
      TabIndex        =   2595
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2585
      Left            =   8160
      TabIndex        =   2594
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2584
      Left            =   8040
      TabIndex        =   2593
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2583
      Left            =   7920
      TabIndex        =   2592
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2582
      Left            =   7800
      TabIndex        =   2591
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2581
      Left            =   7680
      TabIndex        =   2590
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2580
      Left            =   7560
      TabIndex        =   2589
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2579
      Left            =   7440
      TabIndex        =   2588
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2578
      Left            =   7320
      TabIndex        =   2587
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2577
      Left            =   7200
      TabIndex        =   2586
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2576
      Left            =   7080
      TabIndex        =   2585
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2575
      Left            =   6960
      TabIndex        =   2584
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2574
      Left            =   6840
      TabIndex        =   2583
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2573
      Left            =   6720
      TabIndex        =   2582
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2572
      Left            =   6600
      TabIndex        =   2581
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2571
      Left            =   6480
      TabIndex        =   2580
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2570
      Left            =   6360
      TabIndex        =   2579
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2569
      Left            =   6240
      TabIndex        =   2578
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2568
      Left            =   6120
      TabIndex        =   2577
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2567
      Left            =   8880
      TabIndex        =   2576
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2566
      Left            =   8760
      TabIndex        =   2575
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2565
      Left            =   8640
      TabIndex        =   2574
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2564
      Left            =   8520
      TabIndex        =   2573
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2563
      Left            =   8400
      TabIndex        =   2572
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2562
      Left            =   8280
      TabIndex        =   2571
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2561
      Left            =   8160
      TabIndex        =   2570
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2560
      Left            =   8040
      TabIndex        =   2569
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2559
      Left            =   7920
      TabIndex        =   2568
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2558
      Left            =   7800
      TabIndex        =   2567
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2557
      Left            =   7680
      TabIndex        =   2566
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2556
      Left            =   7560
      TabIndex        =   2565
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2555
      Left            =   7440
      TabIndex        =   2564
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2554
      Left            =   7320
      TabIndex        =   2563
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2553
      Left            =   7200
      TabIndex        =   2562
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2552
      Left            =   7080
      TabIndex        =   2561
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2551
      Left            =   6960
      TabIndex        =   2560
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2550
      Left            =   6840
      TabIndex        =   2559
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2549
      Left            =   6720
      TabIndex        =   2558
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2548
      Left            =   6600
      TabIndex        =   2557
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2547
      Left            =   6480
      TabIndex        =   2556
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2546
      Left            =   6360
      TabIndex        =   2555
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2545
      Left            =   6240
      TabIndex        =   2554
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2544
      Left            =   6120
      TabIndex        =   2553
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2543
      Left            =   8880
      TabIndex        =   2552
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2542
      Left            =   8760
      TabIndex        =   2551
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2541
      Left            =   8640
      TabIndex        =   2550
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2540
      Left            =   8520
      TabIndex        =   2549
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2539
      Left            =   8400
      TabIndex        =   2548
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2538
      Left            =   8280
      TabIndex        =   2547
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2537
      Left            =   8160
      TabIndex        =   2546
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2536
      Left            =   8040
      TabIndex        =   2545
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2535
      Left            =   7920
      TabIndex        =   2544
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2534
      Left            =   7800
      TabIndex        =   2543
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2533
      Left            =   7680
      TabIndex        =   2542
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2532
      Left            =   7560
      TabIndex        =   2541
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2531
      Left            =   7440
      TabIndex        =   2540
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2530
      Left            =   7320
      TabIndex        =   2539
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2529
      Left            =   7200
      TabIndex        =   2538
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2528
      Left            =   7080
      TabIndex        =   2537
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2527
      Left            =   6960
      TabIndex        =   2536
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2526
      Left            =   6840
      TabIndex        =   2535
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2525
      Left            =   6720
      TabIndex        =   2534
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2524
      Left            =   6600
      TabIndex        =   2533
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2523
      Left            =   6480
      TabIndex        =   2532
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2522
      Left            =   6360
      TabIndex        =   2531
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2521
      Left            =   6240
      TabIndex        =   2530
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2520
      Left            =   6120
      TabIndex        =   2529
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2519
      Left            =   5880
      TabIndex        =   2527
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2518
      Left            =   5760
      TabIndex        =   2526
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2517
      Left            =   5640
      TabIndex        =   2525
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2516
      Left            =   5520
      TabIndex        =   2524
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2515
      Left            =   5400
      TabIndex        =   2523
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2514
      Left            =   5280
      TabIndex        =   2522
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2513
      Left            =   5160
      TabIndex        =   2521
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2512
      Left            =   5040
      TabIndex        =   2520
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2511
      Left            =   4920
      TabIndex        =   2519
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2510
      Left            =   4800
      TabIndex        =   2518
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2509
      Left            =   4680
      TabIndex        =   2517
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2508
      Left            =   4560
      TabIndex        =   2516
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2507
      Left            =   4440
      TabIndex        =   2515
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2506
      Left            =   4320
      TabIndex        =   2514
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2505
      Left            =   4200
      TabIndex        =   2513
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2504
      Left            =   4080
      TabIndex        =   2512
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2503
      Left            =   3960
      TabIndex        =   2511
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2502
      Left            =   3840
      TabIndex        =   2510
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2501
      Left            =   3720
      TabIndex        =   2509
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2500
      Left            =   3600
      TabIndex        =   2508
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2499
      Left            =   3480
      TabIndex        =   2507
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2498
      Left            =   3360
      TabIndex        =   2506
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2497
      Left            =   3240
      TabIndex        =   2505
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2496
      Left            =   3120
      TabIndex        =   2504
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2495
      Left            =   5880
      TabIndex        =   2503
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2494
      Left            =   5760
      TabIndex        =   2502
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2493
      Left            =   5640
      TabIndex        =   2501
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2492
      Left            =   5520
      TabIndex        =   2500
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2491
      Left            =   5400
      TabIndex        =   2499
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2490
      Left            =   5280
      TabIndex        =   2498
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2489
      Left            =   5160
      TabIndex        =   2497
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2488
      Left            =   5040
      TabIndex        =   2496
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2487
      Left            =   4920
      TabIndex        =   2495
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2486
      Left            =   4800
      TabIndex        =   2494
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2485
      Left            =   4680
      TabIndex        =   2493
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2484
      Left            =   4560
      TabIndex        =   2492
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2483
      Left            =   4440
      TabIndex        =   2491
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2482
      Left            =   4320
      TabIndex        =   2490
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2481
      Left            =   4200
      TabIndex        =   2489
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2480
      Left            =   4080
      TabIndex        =   2488
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2479
      Left            =   3960
      TabIndex        =   2487
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2478
      Left            =   3840
      TabIndex        =   2486
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2477
      Left            =   3720
      TabIndex        =   2485
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2476
      Left            =   3600
      TabIndex        =   2484
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2475
      Left            =   3480
      TabIndex        =   2483
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2474
      Left            =   3360
      TabIndex        =   2482
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2473
      Left            =   3240
      TabIndex        =   2481
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2472
      Left            =   3120
      TabIndex        =   2480
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2471
      Left            =   5880
      TabIndex        =   2479
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2470
      Left            =   5760
      TabIndex        =   2478
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2469
      Left            =   5640
      TabIndex        =   2477
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2468
      Left            =   5520
      TabIndex        =   2476
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2467
      Left            =   5400
      TabIndex        =   2475
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2466
      Left            =   5280
      TabIndex        =   2474
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2465
      Left            =   5160
      TabIndex        =   2473
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2464
      Left            =   5040
      TabIndex        =   2472
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2463
      Left            =   4920
      TabIndex        =   2471
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2462
      Left            =   4800
      TabIndex        =   2470
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2461
      Left            =   4680
      TabIndex        =   2469
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2460
      Left            =   4560
      TabIndex        =   2468
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2459
      Left            =   4440
      TabIndex        =   2467
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2458
      Left            =   4320
      TabIndex        =   2466
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2457
      Left            =   4200
      TabIndex        =   2465
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2456
      Left            =   4080
      TabIndex        =   2464
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2455
      Left            =   3960
      TabIndex        =   2463
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2454
      Left            =   3840
      TabIndex        =   2462
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2453
      Left            =   3720
      TabIndex        =   2461
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2452
      Left            =   3600
      TabIndex        =   2460
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2451
      Left            =   3480
      TabIndex        =   2459
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2450
      Left            =   3360
      TabIndex        =   2458
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2449
      Left            =   3240
      TabIndex        =   2457
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2448
      Left            =   3120
      TabIndex        =   2456
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2447
      Left            =   5880
      TabIndex        =   2455
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2446
      Left            =   5760
      TabIndex        =   2454
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2445
      Left            =   5640
      TabIndex        =   2453
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2444
      Left            =   5520
      TabIndex        =   2452
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2443
      Left            =   5400
      TabIndex        =   2451
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2442
      Left            =   5280
      TabIndex        =   2450
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2441
      Left            =   5160
      TabIndex        =   2449
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2440
      Left            =   5040
      TabIndex        =   2448
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2439
      Left            =   4920
      TabIndex        =   2447
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2438
      Left            =   4800
      TabIndex        =   2446
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2437
      Left            =   4680
      TabIndex        =   2445
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2436
      Left            =   4560
      TabIndex        =   2444
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2435
      Left            =   4440
      TabIndex        =   2443
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2434
      Left            =   4320
      TabIndex        =   2442
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2433
      Left            =   4200
      TabIndex        =   2441
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2432
      Left            =   4080
      TabIndex        =   2440
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2431
      Left            =   3960
      TabIndex        =   2439
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2430
      Left            =   3840
      TabIndex        =   2438
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2429
      Left            =   3720
      TabIndex        =   2437
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2428
      Left            =   3600
      TabIndex        =   2436
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2427
      Left            =   3480
      TabIndex        =   2435
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2426
      Left            =   3360
      TabIndex        =   2434
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2425
      Left            =   3240
      TabIndex        =   2433
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2424
      Left            =   3120
      TabIndex        =   2432
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2423
      Left            =   5880
      TabIndex        =   2431
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2422
      Left            =   5760
      TabIndex        =   2430
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2421
      Left            =   5640
      TabIndex        =   2429
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2420
      Left            =   5520
      TabIndex        =   2428
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2419
      Left            =   5400
      TabIndex        =   2427
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2418
      Left            =   5280
      TabIndex        =   2426
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2417
      Left            =   5160
      TabIndex        =   2425
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2416
      Left            =   5040
      TabIndex        =   2424
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2415
      Left            =   4920
      TabIndex        =   2423
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2414
      Left            =   4800
      TabIndex        =   2422
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2413
      Left            =   4680
      TabIndex        =   2421
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2412
      Left            =   4560
      TabIndex        =   2420
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2411
      Left            =   4440
      TabIndex        =   2419
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2410
      Left            =   4320
      TabIndex        =   2418
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2409
      Left            =   4200
      TabIndex        =   2417
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2408
      Left            =   4080
      TabIndex        =   2416
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2407
      Left            =   3960
      TabIndex        =   2415
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2406
      Left            =   3840
      TabIndex        =   2414
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2405
      Left            =   3720
      TabIndex        =   2413
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2404
      Left            =   3600
      TabIndex        =   2412
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2403
      Left            =   3480
      TabIndex        =   2411
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2402
      Left            =   3360
      TabIndex        =   2410
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2401
      Left            =   3240
      TabIndex        =   2409
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2400
      Left            =   3120
      TabIndex        =   2408
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2399
      Left            =   5880
      TabIndex        =   2407
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2398
      Left            =   5760
      TabIndex        =   2406
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2397
      Left            =   5640
      TabIndex        =   2405
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2396
      Left            =   5520
      TabIndex        =   2404
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2395
      Left            =   5400
      TabIndex        =   2403
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2394
      Left            =   5280
      TabIndex        =   2402
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2393
      Left            =   5160
      TabIndex        =   2401
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2392
      Left            =   5040
      TabIndex        =   2400
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2391
      Left            =   4920
      TabIndex        =   2399
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2390
      Left            =   4800
      TabIndex        =   2398
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2389
      Left            =   4680
      TabIndex        =   2397
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2388
      Left            =   4560
      TabIndex        =   2396
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2387
      Left            =   4440
      TabIndex        =   2395
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2386
      Left            =   4320
      TabIndex        =   2394
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2385
      Left            =   4200
      TabIndex        =   2393
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2384
      Left            =   4080
      TabIndex        =   2392
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2383
      Left            =   3960
      TabIndex        =   2391
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2382
      Left            =   3840
      TabIndex        =   2390
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2381
      Left            =   3720
      TabIndex        =   2389
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2380
      Left            =   3600
      TabIndex        =   2388
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2379
      Left            =   3480
      TabIndex        =   2387
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2378
      Left            =   3360
      TabIndex        =   2386
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2377
      Left            =   3240
      TabIndex        =   2385
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2376
      Left            =   3120
      TabIndex        =   2384
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2375
      Left            =   5880
      TabIndex        =   2383
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2374
      Left            =   5760
      TabIndex        =   2382
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2373
      Left            =   5640
      TabIndex        =   2381
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2372
      Left            =   5520
      TabIndex        =   2380
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2371
      Left            =   5400
      TabIndex        =   2379
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2370
      Left            =   5280
      TabIndex        =   2378
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2369
      Left            =   5160
      TabIndex        =   2377
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2368
      Left            =   5040
      TabIndex        =   2376
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2367
      Left            =   4920
      TabIndex        =   2375
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2366
      Left            =   4800
      TabIndex        =   2374
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2365
      Left            =   4680
      TabIndex        =   2373
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2364
      Left            =   4560
      TabIndex        =   2372
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2363
      Left            =   4440
      TabIndex        =   2371
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2362
      Left            =   4320
      TabIndex        =   2370
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2361
      Left            =   4200
      TabIndex        =   2369
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2360
      Left            =   4080
      TabIndex        =   2368
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2359
      Left            =   3960
      TabIndex        =   2367
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2358
      Left            =   3840
      TabIndex        =   2366
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2357
      Left            =   3720
      TabIndex        =   2365
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2356
      Left            =   3600
      TabIndex        =   2364
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2355
      Left            =   3480
      TabIndex        =   2363
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2354
      Left            =   3360
      TabIndex        =   2362
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2353
      Left            =   3240
      TabIndex        =   2361
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2352
      Left            =   3120
      TabIndex        =   2360
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2351
      Left            =   5880
      TabIndex        =   2359
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2350
      Left            =   5760
      TabIndex        =   2358
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2349
      Left            =   5640
      TabIndex        =   2357
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2348
      Left            =   5520
      TabIndex        =   2356
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2347
      Left            =   5400
      TabIndex        =   2355
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2346
      Left            =   5280
      TabIndex        =   2354
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2345
      Left            =   5160
      TabIndex        =   2353
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2344
      Left            =   5040
      TabIndex        =   2352
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2343
      Left            =   4920
      TabIndex        =   2351
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2342
      Left            =   4800
      TabIndex        =   2350
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2341
      Left            =   4680
      TabIndex        =   2349
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2340
      Left            =   4560
      TabIndex        =   2348
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2339
      Left            =   4440
      TabIndex        =   2347
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2338
      Left            =   4320
      TabIndex        =   2346
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2337
      Left            =   4200
      TabIndex        =   2345
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2336
      Left            =   4080
      TabIndex        =   2344
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2335
      Left            =   3960
      TabIndex        =   2343
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2334
      Left            =   3840
      TabIndex        =   2342
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2333
      Left            =   3720
      TabIndex        =   2341
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2332
      Left            =   3600
      TabIndex        =   2340
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2331
      Left            =   3480
      TabIndex        =   2339
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2330
      Left            =   3360
      TabIndex        =   2338
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2329
      Left            =   3240
      TabIndex        =   2337
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2328
      Left            =   3120
      TabIndex        =   2336
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2327
      Left            =   5880
      TabIndex        =   2335
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2326
      Left            =   5760
      TabIndex        =   2334
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2325
      Left            =   5640
      TabIndex        =   2333
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2324
      Left            =   5520
      TabIndex        =   2332
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2323
      Left            =   5400
      TabIndex        =   2331
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2322
      Left            =   5280
      TabIndex        =   2330
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2321
      Left            =   5160
      TabIndex        =   2329
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2320
      Left            =   5040
      TabIndex        =   2328
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2319
      Left            =   4920
      TabIndex        =   2327
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2318
      Left            =   4800
      TabIndex        =   2326
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2317
      Left            =   4680
      TabIndex        =   2325
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2316
      Left            =   4560
      TabIndex        =   2324
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2315
      Left            =   4440
      TabIndex        =   2323
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2314
      Left            =   4320
      TabIndex        =   2322
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2313
      Left            =   4200
      TabIndex        =   2321
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2312
      Left            =   4080
      TabIndex        =   2320
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2311
      Left            =   3960
      TabIndex        =   2319
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2310
      Left            =   3840
      TabIndex        =   2318
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2309
      Left            =   3720
      TabIndex        =   2317
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2308
      Left            =   3600
      TabIndex        =   2316
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2307
      Left            =   3480
      TabIndex        =   2315
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2306
      Left            =   3360
      TabIndex        =   2314
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2305
      Left            =   3240
      TabIndex        =   2313
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2304
      Left            =   3120
      TabIndex        =   2312
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2303
      Left            =   5880
      TabIndex        =   2311
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2302
      Left            =   5760
      TabIndex        =   2310
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2301
      Left            =   5640
      TabIndex        =   2309
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2300
      Left            =   5520
      TabIndex        =   2308
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2299
      Left            =   5400
      TabIndex        =   2307
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2298
      Left            =   5280
      TabIndex        =   2306
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2297
      Left            =   5160
      TabIndex        =   2305
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2296
      Left            =   5040
      TabIndex        =   2304
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2295
      Left            =   4920
      TabIndex        =   2303
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2294
      Left            =   4800
      TabIndex        =   2302
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2293
      Left            =   4680
      TabIndex        =   2301
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2292
      Left            =   4560
      TabIndex        =   2300
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2291
      Left            =   4440
      TabIndex        =   2299
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2290
      Left            =   4320
      TabIndex        =   2298
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2289
      Left            =   4200
      TabIndex        =   2297
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2288
      Left            =   4080
      TabIndex        =   2296
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2287
      Left            =   3960
      TabIndex        =   2295
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2286
      Left            =   3840
      TabIndex        =   2294
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2285
      Left            =   3720
      TabIndex        =   2293
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2284
      Left            =   3600
      TabIndex        =   2292
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2283
      Left            =   3480
      TabIndex        =   2291
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2282
      Left            =   3360
      TabIndex        =   2290
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2281
      Left            =   3240
      TabIndex        =   2289
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2280
      Left            =   3120
      TabIndex        =   2288
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2279
      Left            =   5880
      TabIndex        =   2287
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2278
      Left            =   5760
      TabIndex        =   2286
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2277
      Left            =   5640
      TabIndex        =   2285
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2276
      Left            =   5520
      TabIndex        =   2284
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2275
      Left            =   5400
      TabIndex        =   2283
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2274
      Left            =   5280
      TabIndex        =   2282
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2273
      Left            =   5160
      TabIndex        =   2281
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2272
      Left            =   5040
      TabIndex        =   2280
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2271
      Left            =   4920
      TabIndex        =   2279
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2270
      Left            =   4800
      TabIndex        =   2278
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2269
      Left            =   4680
      TabIndex        =   2277
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2268
      Left            =   4560
      TabIndex        =   2276
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2267
      Left            =   4440
      TabIndex        =   2275
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2266
      Left            =   4320
      TabIndex        =   2274
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2265
      Left            =   4200
      TabIndex        =   2273
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2264
      Left            =   4080
      TabIndex        =   2272
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2263
      Left            =   3960
      TabIndex        =   2271
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2262
      Left            =   3840
      TabIndex        =   2270
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2261
      Left            =   3720
      TabIndex        =   2269
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2260
      Left            =   3600
      TabIndex        =   2268
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2259
      Left            =   3480
      TabIndex        =   2267
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2258
      Left            =   3360
      TabIndex        =   2266
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2257
      Left            =   3240
      TabIndex        =   2265
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2256
      Left            =   3120
      TabIndex        =   2264
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2255
      Left            =   5880
      TabIndex        =   2263
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2254
      Left            =   5760
      TabIndex        =   2262
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2253
      Left            =   5640
      TabIndex        =   2261
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2252
      Left            =   5520
      TabIndex        =   2260
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2251
      Left            =   5400
      TabIndex        =   2259
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2250
      Left            =   5280
      TabIndex        =   2258
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2249
      Left            =   5160
      TabIndex        =   2257
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2248
      Left            =   5040
      TabIndex        =   2256
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2247
      Left            =   4920
      TabIndex        =   2255
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2246
      Left            =   4800
      TabIndex        =   2254
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2245
      Left            =   4680
      TabIndex        =   2253
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2244
      Left            =   4560
      TabIndex        =   2252
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2243
      Left            =   4440
      TabIndex        =   2251
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2242
      Left            =   4320
      TabIndex        =   2250
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2241
      Left            =   4200
      TabIndex        =   2249
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2240
      Left            =   4080
      TabIndex        =   2248
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2239
      Left            =   3960
      TabIndex        =   2247
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2238
      Left            =   3840
      TabIndex        =   2246
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2237
      Left            =   3720
      TabIndex        =   2245
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2236
      Left            =   3600
      TabIndex        =   2244
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2235
      Left            =   3480
      TabIndex        =   2243
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2234
      Left            =   3360
      TabIndex        =   2242
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2233
      Left            =   3240
      TabIndex        =   2241
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2232
      Left            =   3120
      TabIndex        =   2240
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2231
      Left            =   5880
      TabIndex        =   2239
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2230
      Left            =   5760
      TabIndex        =   2238
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2229
      Left            =   5640
      TabIndex        =   2237
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2228
      Left            =   5520
      TabIndex        =   2236
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2227
      Left            =   5400
      TabIndex        =   2235
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2226
      Left            =   5280
      TabIndex        =   2234
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2225
      Left            =   5160
      TabIndex        =   2233
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2224
      Left            =   5040
      TabIndex        =   2232
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2223
      Left            =   4920
      TabIndex        =   2231
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2222
      Left            =   4800
      TabIndex        =   2230
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2221
      Left            =   4680
      TabIndex        =   2229
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2220
      Left            =   4560
      TabIndex        =   2228
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2219
      Left            =   4440
      TabIndex        =   2227
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2218
      Left            =   4320
      TabIndex        =   2226
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2217
      Left            =   4200
      TabIndex        =   2225
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2216
      Left            =   4080
      TabIndex        =   2224
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2215
      Left            =   3960
      TabIndex        =   2223
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2214
      Left            =   3840
      TabIndex        =   2222
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2213
      Left            =   3720
      TabIndex        =   2221
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2212
      Left            =   3600
      TabIndex        =   2220
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2211
      Left            =   3480
      TabIndex        =   2219
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2210
      Left            =   3360
      TabIndex        =   2218
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2209
      Left            =   3240
      TabIndex        =   2217
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2208
      Left            =   3120
      TabIndex        =   2216
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2207
      Left            =   5880
      TabIndex        =   2215
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2206
      Left            =   5760
      TabIndex        =   2214
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2205
      Left            =   5640
      TabIndex        =   2213
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2204
      Left            =   5520
      TabIndex        =   2212
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2203
      Left            =   5400
      TabIndex        =   2211
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2202
      Left            =   5280
      TabIndex        =   2210
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2201
      Left            =   5160
      TabIndex        =   2209
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2200
      Left            =   5040
      TabIndex        =   2208
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2199
      Left            =   4920
      TabIndex        =   2207
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2198
      Left            =   4800
      TabIndex        =   2206
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2197
      Left            =   4680
      TabIndex        =   2205
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2196
      Left            =   4560
      TabIndex        =   2204
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2195
      Left            =   4440
      TabIndex        =   2203
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2194
      Left            =   4320
      TabIndex        =   2202
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2193
      Left            =   4200
      TabIndex        =   2201
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2192
      Left            =   4080
      TabIndex        =   2200
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2191
      Left            =   3960
      TabIndex        =   2199
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2190
      Left            =   3840
      TabIndex        =   2198
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2189
      Left            =   3720
      TabIndex        =   2197
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2188
      Left            =   3600
      TabIndex        =   2196
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2187
      Left            =   3480
      TabIndex        =   2195
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2186
      Left            =   3360
      TabIndex        =   2194
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2185
      Left            =   3240
      TabIndex        =   2193
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2184
      Left            =   3120
      TabIndex        =   2192
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2183
      Left            =   5880
      TabIndex        =   2191
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2182
      Left            =   5760
      TabIndex        =   2190
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2181
      Left            =   5640
      TabIndex        =   2189
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2180
      Left            =   5520
      TabIndex        =   2188
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2179
      Left            =   5400
      TabIndex        =   2187
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2178
      Left            =   5280
      TabIndex        =   2186
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2177
      Left            =   5160
      TabIndex        =   2185
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2176
      Left            =   5040
      TabIndex        =   2184
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2175
      Left            =   4920
      TabIndex        =   2183
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2174
      Left            =   4800
      TabIndex        =   2182
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2173
      Left            =   4680
      TabIndex        =   2181
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2172
      Left            =   4560
      TabIndex        =   2180
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2171
      Left            =   4440
      TabIndex        =   2179
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2170
      Left            =   4320
      TabIndex        =   2178
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2169
      Left            =   4200
      TabIndex        =   2177
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2168
      Left            =   4080
      TabIndex        =   2176
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2167
      Left            =   3960
      TabIndex        =   2175
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2166
      Left            =   3840
      TabIndex        =   2174
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2165
      Left            =   3720
      TabIndex        =   2173
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2164
      Left            =   3600
      TabIndex        =   2172
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2163
      Left            =   3480
      TabIndex        =   2171
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2162
      Left            =   3360
      TabIndex        =   2170
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2161
      Left            =   3240
      TabIndex        =   2169
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2160
      Left            =   3120
      TabIndex        =   2168
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2159
      Left            =   5880
      TabIndex        =   2167
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2158
      Left            =   5760
      TabIndex        =   2166
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2157
      Left            =   5640
      TabIndex        =   2165
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2156
      Left            =   5520
      TabIndex        =   2164
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2155
      Left            =   5400
      TabIndex        =   2163
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2154
      Left            =   5280
      TabIndex        =   2162
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2153
      Left            =   5160
      TabIndex        =   2161
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2152
      Left            =   5040
      TabIndex        =   2160
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2151
      Left            =   4920
      TabIndex        =   2159
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2150
      Left            =   4800
      TabIndex        =   2158
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2149
      Left            =   4680
      TabIndex        =   2157
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2148
      Left            =   4560
      TabIndex        =   2156
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2147
      Left            =   4440
      TabIndex        =   2155
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2146
      Left            =   4320
      TabIndex        =   2154
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2145
      Left            =   4200
      TabIndex        =   2153
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2144
      Left            =   4080
      TabIndex        =   2152
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2143
      Left            =   3960
      TabIndex        =   2151
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2142
      Left            =   3840
      TabIndex        =   2150
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2141
      Left            =   3720
      TabIndex        =   2149
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2140
      Left            =   3600
      TabIndex        =   2148
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2139
      Left            =   3480
      TabIndex        =   2147
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2138
      Left            =   3360
      TabIndex        =   2146
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2137
      Left            =   3240
      TabIndex        =   2145
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2136
      Left            =   3120
      TabIndex        =   2144
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2135
      Left            =   5880
      TabIndex        =   2143
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2134
      Left            =   5760
      TabIndex        =   2142
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2133
      Left            =   5640
      TabIndex        =   2141
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2132
      Left            =   5520
      TabIndex        =   2140
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2131
      Left            =   5400
      TabIndex        =   2139
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2130
      Left            =   5280
      TabIndex        =   2138
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2129
      Left            =   5160
      TabIndex        =   2137
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2128
      Left            =   5040
      TabIndex        =   2136
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2127
      Left            =   4920
      TabIndex        =   2135
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2126
      Left            =   4800
      TabIndex        =   2134
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2125
      Left            =   4680
      TabIndex        =   2133
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2124
      Left            =   4560
      TabIndex        =   2132
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2123
      Left            =   4440
      TabIndex        =   2131
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2122
      Left            =   4320
      TabIndex        =   2130
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2121
      Left            =   4200
      TabIndex        =   2129
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2120
      Left            =   4080
      TabIndex        =   2128
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2119
      Left            =   3960
      TabIndex        =   2127
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2118
      Left            =   3840
      TabIndex        =   2126
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2117
      Left            =   3720
      TabIndex        =   2125
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2116
      Left            =   3600
      TabIndex        =   2124
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2115
      Left            =   3480
      TabIndex        =   2123
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2114
      Left            =   3360
      TabIndex        =   2122
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2113
      Left            =   3240
      TabIndex        =   2121
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2112
      Left            =   3120
      TabIndex        =   2120
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2111
      Left            =   5880
      TabIndex        =   2119
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2110
      Left            =   5760
      TabIndex        =   2118
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2109
      Left            =   5640
      TabIndex        =   2117
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2108
      Left            =   5520
      TabIndex        =   2116
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2107
      Left            =   5400
      TabIndex        =   2115
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2106
      Left            =   5280
      TabIndex        =   2114
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2105
      Left            =   5160
      TabIndex        =   2113
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2104
      Left            =   5040
      TabIndex        =   2112
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2103
      Left            =   4920
      TabIndex        =   2111
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2102
      Left            =   4800
      TabIndex        =   2110
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2101
      Left            =   4680
      TabIndex        =   2109
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2100
      Left            =   4560
      TabIndex        =   2108
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2099
      Left            =   4440
      TabIndex        =   2107
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2098
      Left            =   4320
      TabIndex        =   2106
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2097
      Left            =   4200
      TabIndex        =   2105
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2096
      Left            =   4080
      TabIndex        =   2104
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2095
      Left            =   3960
      TabIndex        =   2103
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2094
      Left            =   3840
      TabIndex        =   2102
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2093
      Left            =   3720
      TabIndex        =   2101
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2092
      Left            =   3600
      TabIndex        =   2100
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2091
      Left            =   3480
      TabIndex        =   2099
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2090
      Left            =   3360
      TabIndex        =   2098
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2089
      Left            =   3240
      TabIndex        =   2097
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2088
      Left            =   3120
      TabIndex        =   2096
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2087
      Left            =   5880
      TabIndex        =   2095
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2086
      Left            =   5760
      TabIndex        =   2094
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2085
      Left            =   5640
      TabIndex        =   2093
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2084
      Left            =   5520
      TabIndex        =   2092
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2083
      Left            =   5400
      TabIndex        =   2091
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2082
      Left            =   5280
      TabIndex        =   2090
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2081
      Left            =   5160
      TabIndex        =   2089
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2080
      Left            =   5040
      TabIndex        =   2088
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2079
      Left            =   4920
      TabIndex        =   2087
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2078
      Left            =   4800
      TabIndex        =   2086
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2077
      Left            =   4680
      TabIndex        =   2085
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2076
      Left            =   4560
      TabIndex        =   2084
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2075
      Left            =   4440
      TabIndex        =   2083
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2074
      Left            =   4320
      TabIndex        =   2082
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2073
      Left            =   4200
      TabIndex        =   2081
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2072
      Left            =   4080
      TabIndex        =   2080
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2071
      Left            =   3960
      TabIndex        =   2079
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2070
      Left            =   3840
      TabIndex        =   2078
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2069
      Left            =   3720
      TabIndex        =   2077
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2068
      Left            =   3600
      TabIndex        =   2076
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2067
      Left            =   3480
      TabIndex        =   2075
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2066
      Left            =   3360
      TabIndex        =   2074
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2065
      Left            =   3240
      TabIndex        =   2073
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2064
      Left            =   3120
      TabIndex        =   2072
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2063
      Left            =   5880
      TabIndex        =   2071
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2062
      Left            =   5760
      TabIndex        =   2070
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2061
      Left            =   5640
      TabIndex        =   2069
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2060
      Left            =   5520
      TabIndex        =   2068
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2059
      Left            =   5400
      TabIndex        =   2067
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2058
      Left            =   5280
      TabIndex        =   2066
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2057
      Left            =   5160
      TabIndex        =   2065
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2056
      Left            =   5040
      TabIndex        =   2064
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2055
      Left            =   4920
      TabIndex        =   2063
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2054
      Left            =   4800
      TabIndex        =   2062
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2053
      Left            =   4680
      TabIndex        =   2061
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2052
      Left            =   4560
      TabIndex        =   2060
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2051
      Left            =   4440
      TabIndex        =   2059
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2050
      Left            =   4320
      TabIndex        =   2058
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2049
      Left            =   4200
      TabIndex        =   2057
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2048
      Left            =   4080
      TabIndex        =   2056
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2047
      Left            =   3960
      TabIndex        =   2055
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2046
      Left            =   3840
      TabIndex        =   2054
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2045
      Left            =   3720
      TabIndex        =   2053
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2044
      Left            =   3600
      TabIndex        =   2052
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2043
      Left            =   3480
      TabIndex        =   2051
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2042
      Left            =   3360
      TabIndex        =   2050
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2041
      Left            =   3240
      TabIndex        =   2049
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2040
      Left            =   3120
      TabIndex        =   2048
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2039
      Left            =   5880
      TabIndex        =   2047
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2038
      Left            =   5760
      TabIndex        =   2046
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2037
      Left            =   5640
      TabIndex        =   2045
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2036
      Left            =   5520
      TabIndex        =   2044
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2035
      Left            =   5400
      TabIndex        =   2043
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2034
      Left            =   5280
      TabIndex        =   2042
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2033
      Left            =   5160
      TabIndex        =   2041
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2032
      Left            =   5040
      TabIndex        =   2040
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2031
      Left            =   4920
      TabIndex        =   2039
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2030
      Left            =   4800
      TabIndex        =   2038
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2029
      Left            =   4680
      TabIndex        =   2037
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2028
      Left            =   4560
      TabIndex        =   2036
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2027
      Left            =   4440
      TabIndex        =   2035
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2026
      Left            =   4320
      TabIndex        =   2034
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2025
      Left            =   4200
      TabIndex        =   2033
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2024
      Left            =   4080
      TabIndex        =   2032
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2023
      Left            =   3960
      TabIndex        =   2031
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2022
      Left            =   3840
      TabIndex        =   2030
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2021
      Left            =   3720
      TabIndex        =   2029
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2020
      Left            =   3600
      TabIndex        =   2028
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2019
      Left            =   3480
      TabIndex        =   2027
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2018
      Left            =   3360
      TabIndex        =   2026
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2017
      Left            =   3240
      TabIndex        =   2025
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2016
      Left            =   3120
      TabIndex        =   2024
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2015
      Left            =   2880
      TabIndex        =   2022
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2014
      Left            =   2760
      TabIndex        =   2021
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2013
      Left            =   2640
      TabIndex        =   2020
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2012
      Left            =   2520
      TabIndex        =   2019
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2011
      Left            =   2400
      TabIndex        =   2018
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2010
      Left            =   2280
      TabIndex        =   2017
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2009
      Left            =   2160
      TabIndex        =   2016
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2008
      Left            =   2040
      TabIndex        =   2015
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2007
      Left            =   1920
      TabIndex        =   2014
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2006
      Left            =   1800
      TabIndex        =   2013
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2005
      Left            =   1680
      TabIndex        =   2012
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2004
      Left            =   1560
      TabIndex        =   2011
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2003
      Left            =   1440
      TabIndex        =   2010
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2002
      Left            =   1320
      TabIndex        =   2009
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2001
      Left            =   1200
      TabIndex        =   2008
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2000
      Left            =   1080
      TabIndex        =   2007
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1999
      Left            =   960
      TabIndex        =   2006
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1998
      Left            =   840
      TabIndex        =   2005
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1997
      Left            =   720
      TabIndex        =   2004
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1996
      Left            =   600
      TabIndex        =   2003
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1995
      Left            =   480
      TabIndex        =   2002
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1994
      Left            =   360
      TabIndex        =   2001
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1993
      Left            =   240
      TabIndex        =   2000
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1992
      Left            =   120
      TabIndex        =   1999
      Top             =   6960
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1991
      Left            =   2880
      TabIndex        =   1998
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1990
      Left            =   2760
      TabIndex        =   1997
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1989
      Left            =   2640
      TabIndex        =   1996
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1988
      Left            =   2520
      TabIndex        =   1995
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1987
      Left            =   2400
      TabIndex        =   1994
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1986
      Left            =   2280
      TabIndex        =   1993
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1985
      Left            =   2160
      TabIndex        =   1992
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1984
      Left            =   2040
      TabIndex        =   1991
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1983
      Left            =   1920
      TabIndex        =   1990
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1982
      Left            =   1800
      TabIndex        =   1989
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1981
      Left            =   1680
      TabIndex        =   1988
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1980
      Left            =   1560
      TabIndex        =   1987
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1979
      Left            =   1440
      TabIndex        =   1986
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1978
      Left            =   1320
      TabIndex        =   1985
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1977
      Left            =   1200
      TabIndex        =   1984
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1976
      Left            =   1080
      TabIndex        =   1983
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1975
      Left            =   960
      TabIndex        =   1982
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1974
      Left            =   840
      TabIndex        =   1981
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1973
      Left            =   720
      TabIndex        =   1980
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1972
      Left            =   600
      TabIndex        =   1979
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1971
      Left            =   480
      TabIndex        =   1978
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1970
      Left            =   360
      TabIndex        =   1977
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1969
      Left            =   240
      TabIndex        =   1976
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1968
      Left            =   120
      TabIndex        =   1975
      Top             =   6840
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1967
      Left            =   2880
      TabIndex        =   1974
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1966
      Left            =   2760
      TabIndex        =   1973
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1965
      Left            =   2640
      TabIndex        =   1972
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1964
      Left            =   2520
      TabIndex        =   1971
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1963
      Left            =   2400
      TabIndex        =   1970
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1962
      Left            =   2280
      TabIndex        =   1969
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1961
      Left            =   2160
      TabIndex        =   1968
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1960
      Left            =   2040
      TabIndex        =   1967
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1959
      Left            =   1920
      TabIndex        =   1966
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1958
      Left            =   1800
      TabIndex        =   1965
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1957
      Left            =   1680
      TabIndex        =   1964
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1956
      Left            =   1560
      TabIndex        =   1963
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1955
      Left            =   1440
      TabIndex        =   1962
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1954
      Left            =   1320
      TabIndex        =   1961
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1953
      Left            =   1200
      TabIndex        =   1960
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1952
      Left            =   1080
      TabIndex        =   1959
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1951
      Left            =   960
      TabIndex        =   1958
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1950
      Left            =   840
      TabIndex        =   1957
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1949
      Left            =   720
      TabIndex        =   1956
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1948
      Left            =   600
      TabIndex        =   1955
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1947
      Left            =   480
      TabIndex        =   1954
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1946
      Left            =   360
      TabIndex        =   1953
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1945
      Left            =   240
      TabIndex        =   1952
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1944
      Left            =   120
      TabIndex        =   1951
      Top             =   6720
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1943
      Left            =   2880
      TabIndex        =   1950
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1942
      Left            =   2760
      TabIndex        =   1949
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1941
      Left            =   2640
      TabIndex        =   1948
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1940
      Left            =   2520
      TabIndex        =   1947
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1939
      Left            =   2400
      TabIndex        =   1946
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1938
      Left            =   2280
      TabIndex        =   1945
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1937
      Left            =   2160
      TabIndex        =   1944
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1936
      Left            =   2040
      TabIndex        =   1943
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1935
      Left            =   1920
      TabIndex        =   1942
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1934
      Left            =   1800
      TabIndex        =   1941
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1933
      Left            =   1680
      TabIndex        =   1940
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1932
      Left            =   1560
      TabIndex        =   1939
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1931
      Left            =   1440
      TabIndex        =   1938
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1930
      Left            =   1320
      TabIndex        =   1937
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1929
      Left            =   1200
      TabIndex        =   1936
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1928
      Left            =   1080
      TabIndex        =   1935
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1927
      Left            =   960
      TabIndex        =   1934
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1926
      Left            =   840
      TabIndex        =   1933
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1925
      Left            =   720
      TabIndex        =   1932
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1924
      Left            =   600
      TabIndex        =   1931
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1923
      Left            =   480
      TabIndex        =   1930
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1922
      Left            =   360
      TabIndex        =   1929
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1921
      Left            =   240
      TabIndex        =   1928
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1920
      Left            =   120
      TabIndex        =   1927
      Top             =   6600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1919
      Left            =   2880
      TabIndex        =   1926
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1918
      Left            =   2760
      TabIndex        =   1925
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1917
      Left            =   2640
      TabIndex        =   1924
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1916
      Left            =   2520
      TabIndex        =   1923
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1915
      Left            =   2400
      TabIndex        =   1922
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1914
      Left            =   2280
      TabIndex        =   1921
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1913
      Left            =   2160
      TabIndex        =   1920
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1912
      Left            =   2040
      TabIndex        =   1919
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1911
      Left            =   1920
      TabIndex        =   1918
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1910
      Left            =   1800
      TabIndex        =   1917
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1909
      Left            =   1680
      TabIndex        =   1916
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1908
      Left            =   1560
      TabIndex        =   1915
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1907
      Left            =   1440
      TabIndex        =   1914
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1906
      Left            =   1320
      TabIndex        =   1913
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1905
      Left            =   1200
      TabIndex        =   1912
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1904
      Left            =   1080
      TabIndex        =   1911
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1903
      Left            =   960
      TabIndex        =   1910
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1902
      Left            =   840
      TabIndex        =   1909
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1901
      Left            =   720
      TabIndex        =   1908
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1900
      Left            =   600
      TabIndex        =   1907
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1899
      Left            =   480
      TabIndex        =   1906
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1898
      Left            =   360
      TabIndex        =   1905
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1897
      Left            =   240
      TabIndex        =   1904
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1896
      Left            =   120
      TabIndex        =   1903
      Top             =   6480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1895
      Left            =   2880
      TabIndex        =   1902
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1894
      Left            =   2760
      TabIndex        =   1901
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1893
      Left            =   2640
      TabIndex        =   1900
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1892
      Left            =   2520
      TabIndex        =   1899
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1891
      Left            =   2400
      TabIndex        =   1898
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1890
      Left            =   2280
      TabIndex        =   1897
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1889
      Left            =   2160
      TabIndex        =   1896
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1888
      Left            =   2040
      TabIndex        =   1895
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1887
      Left            =   1920
      TabIndex        =   1894
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1886
      Left            =   1800
      TabIndex        =   1893
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1885
      Left            =   1680
      TabIndex        =   1892
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1884
      Left            =   1560
      TabIndex        =   1891
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1883
      Left            =   1440
      TabIndex        =   1890
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1882
      Left            =   1320
      TabIndex        =   1889
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1881
      Left            =   1200
      TabIndex        =   1888
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1880
      Left            =   1080
      TabIndex        =   1887
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1879
      Left            =   960
      TabIndex        =   1886
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1878
      Left            =   840
      TabIndex        =   1885
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1877
      Left            =   720
      TabIndex        =   1884
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1876
      Left            =   600
      TabIndex        =   1883
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1875
      Left            =   480
      TabIndex        =   1882
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1874
      Left            =   360
      TabIndex        =   1881
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1873
      Left            =   240
      TabIndex        =   1880
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1872
      Left            =   120
      TabIndex        =   1879
      Top             =   6360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1871
      Left            =   2880
      TabIndex        =   1878
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1870
      Left            =   2760
      TabIndex        =   1877
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1869
      Left            =   2640
      TabIndex        =   1876
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1868
      Left            =   2520
      TabIndex        =   1875
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1867
      Left            =   2400
      TabIndex        =   1874
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1866
      Left            =   2280
      TabIndex        =   1873
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1865
      Left            =   2160
      TabIndex        =   1872
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1864
      Left            =   2040
      TabIndex        =   1871
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1863
      Left            =   1920
      TabIndex        =   1870
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1862
      Left            =   1800
      TabIndex        =   1869
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1861
      Left            =   1680
      TabIndex        =   1868
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1860
      Left            =   1560
      TabIndex        =   1867
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1859
      Left            =   1440
      TabIndex        =   1866
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1858
      Left            =   1320
      TabIndex        =   1865
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1857
      Left            =   1200
      TabIndex        =   1864
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1856
      Left            =   1080
      TabIndex        =   1863
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1855
      Left            =   960
      TabIndex        =   1862
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1854
      Left            =   840
      TabIndex        =   1861
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1853
      Left            =   720
      TabIndex        =   1860
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1852
      Left            =   600
      TabIndex        =   1859
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1851
      Left            =   480
      TabIndex        =   1858
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1850
      Left            =   360
      TabIndex        =   1857
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1849
      Left            =   240
      TabIndex        =   1856
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1848
      Left            =   120
      TabIndex        =   1855
      Top             =   6240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1847
      Left            =   2880
      TabIndex        =   1854
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1846
      Left            =   2760
      TabIndex        =   1853
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1845
      Left            =   2640
      TabIndex        =   1852
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1844
      Left            =   2520
      TabIndex        =   1851
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1843
      Left            =   2400
      TabIndex        =   1850
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1842
      Left            =   2280
      TabIndex        =   1849
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1841
      Left            =   2160
      TabIndex        =   1848
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1840
      Left            =   2040
      TabIndex        =   1847
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1839
      Left            =   1920
      TabIndex        =   1846
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1838
      Left            =   1800
      TabIndex        =   1845
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1837
      Left            =   1680
      TabIndex        =   1844
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1836
      Left            =   1560
      TabIndex        =   1843
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1835
      Left            =   1440
      TabIndex        =   1842
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1834
      Left            =   1320
      TabIndex        =   1841
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1833
      Left            =   1200
      TabIndex        =   1840
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1832
      Left            =   1080
      TabIndex        =   1839
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1831
      Left            =   960
      TabIndex        =   1838
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1830
      Left            =   840
      TabIndex        =   1837
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1829
      Left            =   720
      TabIndex        =   1836
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1828
      Left            =   600
      TabIndex        =   1835
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1827
      Left            =   480
      TabIndex        =   1834
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1826
      Left            =   360
      TabIndex        =   1833
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1825
      Left            =   240
      TabIndex        =   1832
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1824
      Left            =   120
      TabIndex        =   1831
      Top             =   6120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1823
      Left            =   2880
      TabIndex        =   1830
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1822
      Left            =   2760
      TabIndex        =   1829
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1821
      Left            =   2640
      TabIndex        =   1828
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1820
      Left            =   2520
      TabIndex        =   1827
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1819
      Left            =   2400
      TabIndex        =   1826
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1818
      Left            =   2280
      TabIndex        =   1825
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1817
      Left            =   2160
      TabIndex        =   1824
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1816
      Left            =   2040
      TabIndex        =   1823
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1815
      Left            =   1920
      TabIndex        =   1822
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1814
      Left            =   1800
      TabIndex        =   1821
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1813
      Left            =   1680
      TabIndex        =   1820
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1812
      Left            =   1560
      TabIndex        =   1819
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1811
      Left            =   1440
      TabIndex        =   1818
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1810
      Left            =   1320
      TabIndex        =   1817
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1809
      Left            =   1200
      TabIndex        =   1816
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1808
      Left            =   1080
      TabIndex        =   1815
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1807
      Left            =   960
      TabIndex        =   1814
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1806
      Left            =   840
      TabIndex        =   1813
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1805
      Left            =   720
      TabIndex        =   1812
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1804
      Left            =   600
      TabIndex        =   1811
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1803
      Left            =   480
      TabIndex        =   1810
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1802
      Left            =   360
      TabIndex        =   1809
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1801
      Left            =   240
      TabIndex        =   1808
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1800
      Left            =   120
      TabIndex        =   1807
      Top             =   6000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1799
      Left            =   2880
      TabIndex        =   1806
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1798
      Left            =   2760
      TabIndex        =   1805
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1797
      Left            =   2640
      TabIndex        =   1804
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1796
      Left            =   2520
      TabIndex        =   1803
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1795
      Left            =   2400
      TabIndex        =   1802
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1794
      Left            =   2280
      TabIndex        =   1801
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1793
      Left            =   2160
      TabIndex        =   1800
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1792
      Left            =   2040
      TabIndex        =   1799
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1791
      Left            =   1920
      TabIndex        =   1798
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1790
      Left            =   1800
      TabIndex        =   1797
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1789
      Left            =   1680
      TabIndex        =   1796
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1788
      Left            =   1560
      TabIndex        =   1795
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1787
      Left            =   1440
      TabIndex        =   1794
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1786
      Left            =   1320
      TabIndex        =   1793
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1785
      Left            =   1200
      TabIndex        =   1792
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1784
      Left            =   1080
      TabIndex        =   1791
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1783
      Left            =   960
      TabIndex        =   1790
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1782
      Left            =   840
      TabIndex        =   1789
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1781
      Left            =   720
      TabIndex        =   1788
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1780
      Left            =   600
      TabIndex        =   1787
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1779
      Left            =   480
      TabIndex        =   1786
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1778
      Left            =   360
      TabIndex        =   1785
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1777
      Left            =   240
      TabIndex        =   1784
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1776
      Left            =   120
      TabIndex        =   1783
      Top             =   5880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1775
      Left            =   2880
      TabIndex        =   1782
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1774
      Left            =   2760
      TabIndex        =   1781
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1773
      Left            =   2640
      TabIndex        =   1780
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1772
      Left            =   2520
      TabIndex        =   1779
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1771
      Left            =   2400
      TabIndex        =   1778
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1770
      Left            =   2280
      TabIndex        =   1777
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1769
      Left            =   2160
      TabIndex        =   1776
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1768
      Left            =   2040
      TabIndex        =   1775
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1767
      Left            =   1920
      TabIndex        =   1774
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1766
      Left            =   1800
      TabIndex        =   1773
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1765
      Left            =   1680
      TabIndex        =   1772
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1764
      Left            =   1560
      TabIndex        =   1771
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1763
      Left            =   1440
      TabIndex        =   1770
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1762
      Left            =   1320
      TabIndex        =   1769
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1761
      Left            =   1200
      TabIndex        =   1768
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1760
      Left            =   1080
      TabIndex        =   1767
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1759
      Left            =   960
      TabIndex        =   1766
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1758
      Left            =   840
      TabIndex        =   1765
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1757
      Left            =   720
      TabIndex        =   1764
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1756
      Left            =   600
      TabIndex        =   1763
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1755
      Left            =   480
      TabIndex        =   1762
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1754
      Left            =   360
      TabIndex        =   1761
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1753
      Left            =   240
      TabIndex        =   1760
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1752
      Left            =   120
      TabIndex        =   1759
      Top             =   5760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1751
      Left            =   2880
      TabIndex        =   1758
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1750
      Left            =   2760
      TabIndex        =   1757
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1749
      Left            =   2640
      TabIndex        =   1756
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1748
      Left            =   2520
      TabIndex        =   1755
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1747
      Left            =   2400
      TabIndex        =   1754
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1746
      Left            =   2280
      TabIndex        =   1753
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1745
      Left            =   2160
      TabIndex        =   1752
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1744
      Left            =   2040
      TabIndex        =   1751
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1743
      Left            =   1920
      TabIndex        =   1750
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1742
      Left            =   1800
      TabIndex        =   1749
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1741
      Left            =   1680
      TabIndex        =   1748
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1740
      Left            =   1560
      TabIndex        =   1747
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1739
      Left            =   1440
      TabIndex        =   1746
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1738
      Left            =   1320
      TabIndex        =   1745
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1737
      Left            =   1200
      TabIndex        =   1744
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1736
      Left            =   1080
      TabIndex        =   1743
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1735
      Left            =   960
      TabIndex        =   1742
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1734
      Left            =   840
      TabIndex        =   1741
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1733
      Left            =   720
      TabIndex        =   1740
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1732
      Left            =   600
      TabIndex        =   1739
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1731
      Left            =   480
      TabIndex        =   1738
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1730
      Left            =   360
      TabIndex        =   1737
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1729
      Left            =   240
      TabIndex        =   1736
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1728
      Left            =   120
      TabIndex        =   1735
      Top             =   5640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1727
      Left            =   2880
      TabIndex        =   1734
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1726
      Left            =   2760
      TabIndex        =   1733
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1725
      Left            =   2640
      TabIndex        =   1732
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1724
      Left            =   2520
      TabIndex        =   1731
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1723
      Left            =   2400
      TabIndex        =   1730
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1722
      Left            =   2280
      TabIndex        =   1729
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1721
      Left            =   2160
      TabIndex        =   1728
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1720
      Left            =   2040
      TabIndex        =   1727
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1719
      Left            =   1920
      TabIndex        =   1726
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1718
      Left            =   1800
      TabIndex        =   1725
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1717
      Left            =   1680
      TabIndex        =   1724
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1716
      Left            =   1560
      TabIndex        =   1723
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1715
      Left            =   1440
      TabIndex        =   1722
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1714
      Left            =   1320
      TabIndex        =   1721
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1713
      Left            =   1200
      TabIndex        =   1720
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1712
      Left            =   1080
      TabIndex        =   1719
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1711
      Left            =   960
      TabIndex        =   1718
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1710
      Left            =   840
      TabIndex        =   1717
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1709
      Left            =   720
      TabIndex        =   1716
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1708
      Left            =   600
      TabIndex        =   1715
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1707
      Left            =   480
      TabIndex        =   1714
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1706
      Left            =   360
      TabIndex        =   1713
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1705
      Left            =   240
      TabIndex        =   1712
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1704
      Left            =   120
      TabIndex        =   1711
      Top             =   5520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1703
      Left            =   2880
      TabIndex        =   1710
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1702
      Left            =   2760
      TabIndex        =   1709
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1701
      Left            =   2640
      TabIndex        =   1708
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1700
      Left            =   2520
      TabIndex        =   1707
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1699
      Left            =   2400
      TabIndex        =   1706
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1698
      Left            =   2280
      TabIndex        =   1705
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1697
      Left            =   2160
      TabIndex        =   1704
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1696
      Left            =   2040
      TabIndex        =   1703
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1695
      Left            =   1920
      TabIndex        =   1702
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1694
      Left            =   1800
      TabIndex        =   1701
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1693
      Left            =   1680
      TabIndex        =   1700
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1692
      Left            =   1560
      TabIndex        =   1699
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1691
      Left            =   1440
      TabIndex        =   1698
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1690
      Left            =   1320
      TabIndex        =   1697
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1689
      Left            =   1200
      TabIndex        =   1696
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1688
      Left            =   1080
      TabIndex        =   1695
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1687
      Left            =   960
      TabIndex        =   1694
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1686
      Left            =   840
      TabIndex        =   1693
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1685
      Left            =   720
      TabIndex        =   1692
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1684
      Left            =   600
      TabIndex        =   1691
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1683
      Left            =   480
      TabIndex        =   1690
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1682
      Left            =   360
      TabIndex        =   1689
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1681
      Left            =   240
      TabIndex        =   1688
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1680
      Left            =   120
      TabIndex        =   1687
      Top             =   5400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1679
      Left            =   2880
      TabIndex        =   1686
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1678
      Left            =   2760
      TabIndex        =   1685
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1677
      Left            =   2640
      TabIndex        =   1684
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1676
      Left            =   2520
      TabIndex        =   1683
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1675
      Left            =   2400
      TabIndex        =   1682
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1674
      Left            =   2280
      TabIndex        =   1681
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1673
      Left            =   2160
      TabIndex        =   1680
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1672
      Left            =   2040
      TabIndex        =   1679
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1671
      Left            =   1920
      TabIndex        =   1678
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1670
      Left            =   1800
      TabIndex        =   1677
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1669
      Left            =   1680
      TabIndex        =   1676
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1668
      Left            =   1560
      TabIndex        =   1675
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1667
      Left            =   1440
      TabIndex        =   1674
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1666
      Left            =   1320
      TabIndex        =   1673
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1665
      Left            =   1200
      TabIndex        =   1672
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1664
      Left            =   1080
      TabIndex        =   1671
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1663
      Left            =   960
      TabIndex        =   1670
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1662
      Left            =   840
      TabIndex        =   1669
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1661
      Left            =   720
      TabIndex        =   1668
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1660
      Left            =   600
      TabIndex        =   1667
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1659
      Left            =   480
      TabIndex        =   1666
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1658
      Left            =   360
      TabIndex        =   1665
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1657
      Left            =   240
      TabIndex        =   1664
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1656
      Left            =   120
      TabIndex        =   1663
      Top             =   5280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1655
      Left            =   2880
      TabIndex        =   1662
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1654
      Left            =   2760
      TabIndex        =   1661
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1653
      Left            =   2640
      TabIndex        =   1660
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1652
      Left            =   2520
      TabIndex        =   1659
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1651
      Left            =   2400
      TabIndex        =   1658
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1650
      Left            =   2280
      TabIndex        =   1657
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1649
      Left            =   2160
      TabIndex        =   1656
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1648
      Left            =   2040
      TabIndex        =   1655
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1647
      Left            =   1920
      TabIndex        =   1654
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1646
      Left            =   1800
      TabIndex        =   1653
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1645
      Left            =   1680
      TabIndex        =   1652
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1644
      Left            =   1560
      TabIndex        =   1651
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1643
      Left            =   1440
      TabIndex        =   1650
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1642
      Left            =   1320
      TabIndex        =   1649
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1641
      Left            =   1200
      TabIndex        =   1648
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1640
      Left            =   1080
      TabIndex        =   1647
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1639
      Left            =   960
      TabIndex        =   1646
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1638
      Left            =   840
      TabIndex        =   1645
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1637
      Left            =   720
      TabIndex        =   1644
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1636
      Left            =   600
      TabIndex        =   1643
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1635
      Left            =   480
      TabIndex        =   1642
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1634
      Left            =   360
      TabIndex        =   1641
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1633
      Left            =   240
      TabIndex        =   1640
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1632
      Left            =   120
      TabIndex        =   1639
      Top             =   5160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1631
      Left            =   2880
      TabIndex        =   1638
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1630
      Left            =   2760
      TabIndex        =   1637
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1629
      Left            =   2640
      TabIndex        =   1636
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1628
      Left            =   2520
      TabIndex        =   1635
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1627
      Left            =   2400
      TabIndex        =   1634
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1626
      Left            =   2280
      TabIndex        =   1633
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1625
      Left            =   2160
      TabIndex        =   1632
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1624
      Left            =   2040
      TabIndex        =   1631
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1623
      Left            =   1920
      TabIndex        =   1630
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1622
      Left            =   1800
      TabIndex        =   1629
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1621
      Left            =   1680
      TabIndex        =   1628
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1620
      Left            =   1560
      TabIndex        =   1627
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1619
      Left            =   1440
      TabIndex        =   1626
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1618
      Left            =   1320
      TabIndex        =   1625
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1617
      Left            =   1200
      TabIndex        =   1624
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1616
      Left            =   1080
      TabIndex        =   1623
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1615
      Left            =   960
      TabIndex        =   1622
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1614
      Left            =   840
      TabIndex        =   1621
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1613
      Left            =   720
      TabIndex        =   1620
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1612
      Left            =   600
      TabIndex        =   1619
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1611
      Left            =   480
      TabIndex        =   1618
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1610
      Left            =   360
      TabIndex        =   1617
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1609
      Left            =   240
      TabIndex        =   1616
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1608
      Left            =   120
      TabIndex        =   1615
      Top             =   5040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1607
      Left            =   2880
      TabIndex        =   1614
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1606
      Left            =   2760
      TabIndex        =   1613
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1605
      Left            =   2640
      TabIndex        =   1612
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1604
      Left            =   2520
      TabIndex        =   1611
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1603
      Left            =   2400
      TabIndex        =   1610
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1602
      Left            =   2280
      TabIndex        =   1609
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1601
      Left            =   2160
      TabIndex        =   1608
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1600
      Left            =   2040
      TabIndex        =   1607
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1599
      Left            =   1920
      TabIndex        =   1606
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1598
      Left            =   1800
      TabIndex        =   1605
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1597
      Left            =   1680
      TabIndex        =   1604
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1596
      Left            =   1560
      TabIndex        =   1603
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1595
      Left            =   1440
      TabIndex        =   1602
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1594
      Left            =   1320
      TabIndex        =   1601
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1593
      Left            =   1200
      TabIndex        =   1600
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1592
      Left            =   1080
      TabIndex        =   1599
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1591
      Left            =   960
      TabIndex        =   1598
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1590
      Left            =   840
      TabIndex        =   1597
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1589
      Left            =   720
      TabIndex        =   1596
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1588
      Left            =   600
      TabIndex        =   1595
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1587
      Left            =   480
      TabIndex        =   1594
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1586
      Left            =   360
      TabIndex        =   1593
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1585
      Left            =   240
      TabIndex        =   1592
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1584
      Left            =   120
      TabIndex        =   1591
      Top             =   4920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1583
      Left            =   2880
      TabIndex        =   1590
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1582
      Left            =   2760
      TabIndex        =   1589
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1581
      Left            =   2640
      TabIndex        =   1588
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1580
      Left            =   2520
      TabIndex        =   1587
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1579
      Left            =   2400
      TabIndex        =   1586
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1578
      Left            =   2280
      TabIndex        =   1585
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1577
      Left            =   2160
      TabIndex        =   1584
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1576
      Left            =   2040
      TabIndex        =   1583
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1575
      Left            =   1920
      TabIndex        =   1582
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1574
      Left            =   1800
      TabIndex        =   1581
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1573
      Left            =   1680
      TabIndex        =   1580
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1572
      Left            =   1560
      TabIndex        =   1579
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1571
      Left            =   1440
      TabIndex        =   1578
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1570
      Left            =   1320
      TabIndex        =   1577
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1569
      Left            =   1200
      TabIndex        =   1576
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1568
      Left            =   1080
      TabIndex        =   1575
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1567
      Left            =   960
      TabIndex        =   1574
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1566
      Left            =   840
      TabIndex        =   1573
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1565
      Left            =   720
      TabIndex        =   1572
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1564
      Left            =   600
      TabIndex        =   1571
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1563
      Left            =   480
      TabIndex        =   1570
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1562
      Left            =   360
      TabIndex        =   1569
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1561
      Left            =   240
      TabIndex        =   1568
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1560
      Left            =   120
      TabIndex        =   1567
      Top             =   4800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1559
      Left            =   2880
      TabIndex        =   1566
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1558
      Left            =   2760
      TabIndex        =   1565
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1557
      Left            =   2640
      TabIndex        =   1564
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1556
      Left            =   2520
      TabIndex        =   1563
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1555
      Left            =   2400
      TabIndex        =   1562
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1554
      Left            =   2280
      TabIndex        =   1561
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1553
      Left            =   2160
      TabIndex        =   1560
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1552
      Left            =   2040
      TabIndex        =   1559
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1551
      Left            =   1920
      TabIndex        =   1558
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1550
      Left            =   1800
      TabIndex        =   1557
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1549
      Left            =   1680
      TabIndex        =   1556
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1548
      Left            =   1560
      TabIndex        =   1555
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1547
      Left            =   1440
      TabIndex        =   1554
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1546
      Left            =   1320
      TabIndex        =   1553
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1545
      Left            =   1200
      TabIndex        =   1552
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1544
      Left            =   1080
      TabIndex        =   1551
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1543
      Left            =   960
      TabIndex        =   1550
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1542
      Left            =   840
      TabIndex        =   1549
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1541
      Left            =   720
      TabIndex        =   1548
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1540
      Left            =   600
      TabIndex        =   1547
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1539
      Left            =   480
      TabIndex        =   1546
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1538
      Left            =   360
      TabIndex        =   1545
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1537
      Left            =   240
      TabIndex        =   1544
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1536
      Left            =   120
      TabIndex        =   1543
      Top             =   4680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1535
      Left            =   2880
      TabIndex        =   1542
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1534
      Left            =   2760
      TabIndex        =   1541
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1533
      Left            =   2640
      TabIndex        =   1540
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1532
      Left            =   2520
      TabIndex        =   1539
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1531
      Left            =   2400
      TabIndex        =   1538
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1530
      Left            =   2280
      TabIndex        =   1537
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1529
      Left            =   2160
      TabIndex        =   1536
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1528
      Left            =   2040
      TabIndex        =   1535
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1527
      Left            =   1920
      TabIndex        =   1534
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1526
      Left            =   1800
      TabIndex        =   1533
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1525
      Left            =   1680
      TabIndex        =   1532
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1524
      Left            =   1560
      TabIndex        =   1531
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1523
      Left            =   1440
      TabIndex        =   1530
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1522
      Left            =   1320
      TabIndex        =   1529
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1521
      Left            =   1200
      TabIndex        =   1528
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1520
      Left            =   1080
      TabIndex        =   1527
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1519
      Left            =   960
      TabIndex        =   1526
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1518
      Left            =   840
      TabIndex        =   1525
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1517
      Left            =   720
      TabIndex        =   1524
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1516
      Left            =   600
      TabIndex        =   1523
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1515
      Left            =   480
      TabIndex        =   1522
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1514
      Left            =   360
      TabIndex        =   1521
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1513
      Left            =   240
      TabIndex        =   1520
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1512
      Left            =   120
      TabIndex        =   1519
      Top             =   4560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1511
      Left            =   8880
      TabIndex        =   1518
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1510
      Left            =   8760
      TabIndex        =   1517
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1509
      Left            =   8640
      TabIndex        =   1516
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1508
      Left            =   8520
      TabIndex        =   1515
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1507
      Left            =   8400
      TabIndex        =   1514
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1506
      Left            =   8280
      TabIndex        =   1513
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1505
      Left            =   8160
      TabIndex        =   1512
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1504
      Left            =   8040
      TabIndex        =   1511
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1503
      Left            =   7920
      TabIndex        =   1510
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1502
      Left            =   7800
      TabIndex        =   1509
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1501
      Left            =   7680
      TabIndex        =   1508
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1500
      Left            =   7560
      TabIndex        =   1507
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1499
      Left            =   7440
      TabIndex        =   1506
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1498
      Left            =   7320
      TabIndex        =   1505
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1497
      Left            =   7200
      TabIndex        =   1504
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1496
      Left            =   7080
      TabIndex        =   1503
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1495
      Left            =   6960
      TabIndex        =   1502
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1494
      Left            =   6840
      TabIndex        =   1501
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1493
      Left            =   6720
      TabIndex        =   1500
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1492
      Left            =   6600
      TabIndex        =   1499
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1491
      Left            =   6480
      TabIndex        =   1498
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1490
      Left            =   6360
      TabIndex        =   1497
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1489
      Left            =   6240
      TabIndex        =   1496
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1488
      Left            =   6120
      TabIndex        =   1495
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1487
      Left            =   8880
      TabIndex        =   1494
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1486
      Left            =   8760
      TabIndex        =   1493
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1485
      Left            =   8640
      TabIndex        =   1492
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1484
      Left            =   8520
      TabIndex        =   1491
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1483
      Left            =   8400
      TabIndex        =   1490
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1482
      Left            =   8280
      TabIndex        =   1489
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1481
      Left            =   8160
      TabIndex        =   1488
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1480
      Left            =   8040
      TabIndex        =   1487
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1479
      Left            =   7920
      TabIndex        =   1486
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1478
      Left            =   7800
      TabIndex        =   1485
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1477
      Left            =   7680
      TabIndex        =   1484
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1476
      Left            =   7560
      TabIndex        =   1483
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1475
      Left            =   7440
      TabIndex        =   1482
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1474
      Left            =   7320
      TabIndex        =   1481
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1473
      Left            =   7200
      TabIndex        =   1480
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1472
      Left            =   7080
      TabIndex        =   1479
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1471
      Left            =   6960
      TabIndex        =   1478
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1470
      Left            =   6840
      TabIndex        =   1477
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1469
      Left            =   6720
      TabIndex        =   1476
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1468
      Left            =   6600
      TabIndex        =   1475
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1467
      Left            =   6480
      TabIndex        =   1474
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1466
      Left            =   6360
      TabIndex        =   1473
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1465
      Left            =   6240
      TabIndex        =   1472
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1464
      Left            =   6120
      TabIndex        =   1471
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1463
      Left            =   8880
      TabIndex        =   1470
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1462
      Left            =   8760
      TabIndex        =   1469
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1461
      Left            =   8640
      TabIndex        =   1468
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1460
      Left            =   8520
      TabIndex        =   1467
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1459
      Left            =   8400
      TabIndex        =   1466
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1458
      Left            =   8280
      TabIndex        =   1465
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1457
      Left            =   8160
      TabIndex        =   1464
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1456
      Left            =   8040
      TabIndex        =   1463
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1455
      Left            =   7920
      TabIndex        =   1462
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1454
      Left            =   7800
      TabIndex        =   1461
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1453
      Left            =   7680
      TabIndex        =   1460
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1452
      Left            =   7560
      TabIndex        =   1459
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1451
      Left            =   7440
      TabIndex        =   1458
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1450
      Left            =   7320
      TabIndex        =   1457
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1449
      Left            =   7200
      TabIndex        =   1456
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1448
      Left            =   7080
      TabIndex        =   1455
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1447
      Left            =   6960
      TabIndex        =   1454
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1446
      Left            =   6840
      TabIndex        =   1453
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1445
      Left            =   6720
      TabIndex        =   1452
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1444
      Left            =   6600
      TabIndex        =   1451
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1443
      Left            =   6480
      TabIndex        =   1450
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1442
      Left            =   6360
      TabIndex        =   1449
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1441
      Left            =   6240
      TabIndex        =   1448
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1440
      Left            =   6120
      TabIndex        =   1447
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1439
      Left            =   8880
      TabIndex        =   1446
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1438
      Left            =   8760
      TabIndex        =   1445
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1437
      Left            =   8640
      TabIndex        =   1444
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1436
      Left            =   8520
      TabIndex        =   1443
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1435
      Left            =   8400
      TabIndex        =   1442
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1434
      Left            =   8280
      TabIndex        =   1441
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1433
      Left            =   8160
      TabIndex        =   1440
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1432
      Left            =   8040
      TabIndex        =   1439
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1431
      Left            =   7920
      TabIndex        =   1438
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1430
      Left            =   7800
      TabIndex        =   1437
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1429
      Left            =   7680
      TabIndex        =   1436
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1428
      Left            =   7560
      TabIndex        =   1435
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1427
      Left            =   7440
      TabIndex        =   1434
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1426
      Left            =   7320
      TabIndex        =   1433
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1425
      Left            =   7200
      TabIndex        =   1432
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1424
      Left            =   7080
      TabIndex        =   1431
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1423
      Left            =   6960
      TabIndex        =   1430
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1422
      Left            =   6840
      TabIndex        =   1429
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1421
      Left            =   6720
      TabIndex        =   1428
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1420
      Left            =   6600
      TabIndex        =   1427
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1419
      Left            =   6480
      TabIndex        =   1426
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1418
      Left            =   6360
      TabIndex        =   1425
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1417
      Left            =   6240
      TabIndex        =   1424
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1416
      Left            =   6120
      TabIndex        =   1423
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1415
      Left            =   8880
      TabIndex        =   1422
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1414
      Left            =   8760
      TabIndex        =   1421
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1413
      Left            =   8640
      TabIndex        =   1420
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1412
      Left            =   8520
      TabIndex        =   1419
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1411
      Left            =   8400
      TabIndex        =   1418
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1410
      Left            =   8280
      TabIndex        =   1417
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1409
      Left            =   8160
      TabIndex        =   1416
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1408
      Left            =   8040
      TabIndex        =   1415
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1407
      Left            =   7920
      TabIndex        =   1414
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1406
      Left            =   7800
      TabIndex        =   1413
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1405
      Left            =   7680
      TabIndex        =   1412
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1404
      Left            =   7560
      TabIndex        =   1411
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1403
      Left            =   7440
      TabIndex        =   1410
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1402
      Left            =   7320
      TabIndex        =   1409
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1401
      Left            =   7200
      TabIndex        =   1408
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1400
      Left            =   7080
      TabIndex        =   1407
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1399
      Left            =   6960
      TabIndex        =   1406
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1398
      Left            =   6840
      TabIndex        =   1405
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1397
      Left            =   6720
      TabIndex        =   1404
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1396
      Left            =   6600
      TabIndex        =   1403
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1395
      Left            =   6480
      TabIndex        =   1402
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1394
      Left            =   6360
      TabIndex        =   1401
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1393
      Left            =   6240
      TabIndex        =   1400
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1392
      Left            =   6120
      TabIndex        =   1399
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1391
      Left            =   8880
      TabIndex        =   1398
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1390
      Left            =   8760
      TabIndex        =   1397
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1389
      Left            =   8640
      TabIndex        =   1396
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1388
      Left            =   8520
      TabIndex        =   1395
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1387
      Left            =   8400
      TabIndex        =   1394
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1386
      Left            =   8280
      TabIndex        =   1393
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1385
      Left            =   8160
      TabIndex        =   1392
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1384
      Left            =   8040
      TabIndex        =   1391
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1383
      Left            =   7920
      TabIndex        =   1390
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1382
      Left            =   7800
      TabIndex        =   1389
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1381
      Left            =   7680
      TabIndex        =   1388
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1380
      Left            =   7560
      TabIndex        =   1387
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1379
      Left            =   7440
      TabIndex        =   1386
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1378
      Left            =   7320
      TabIndex        =   1385
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1377
      Left            =   7200
      TabIndex        =   1384
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1376
      Left            =   7080
      TabIndex        =   1383
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1375
      Left            =   6960
      TabIndex        =   1382
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1374
      Left            =   6840
      TabIndex        =   1381
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1373
      Left            =   6720
      TabIndex        =   1380
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1372
      Left            =   6600
      TabIndex        =   1379
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1371
      Left            =   6480
      TabIndex        =   1378
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1370
      Left            =   6360
      TabIndex        =   1377
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1369
      Left            =   6240
      TabIndex        =   1376
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1368
      Left            =   6120
      TabIndex        =   1375
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1367
      Left            =   8880
      TabIndex        =   1374
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1366
      Left            =   8760
      TabIndex        =   1373
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1365
      Left            =   8640
      TabIndex        =   1372
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1364
      Left            =   8520
      TabIndex        =   1371
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1363
      Left            =   8400
      TabIndex        =   1370
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1362
      Left            =   8280
      TabIndex        =   1369
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1361
      Left            =   8160
      TabIndex        =   1368
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1360
      Left            =   8040
      TabIndex        =   1367
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1359
      Left            =   7920
      TabIndex        =   1366
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1358
      Left            =   7800
      TabIndex        =   1365
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1357
      Left            =   7680
      TabIndex        =   1364
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1356
      Left            =   7560
      TabIndex        =   1363
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1355
      Left            =   7440
      TabIndex        =   1362
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1354
      Left            =   7320
      TabIndex        =   1361
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1353
      Left            =   7200
      TabIndex        =   1360
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1352
      Left            =   7080
      TabIndex        =   1359
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1351
      Left            =   6960
      TabIndex        =   1358
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1350
      Left            =   6840
      TabIndex        =   1357
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1349
      Left            =   6720
      TabIndex        =   1356
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1348
      Left            =   6600
      TabIndex        =   1355
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1347
      Left            =   6480
      TabIndex        =   1354
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1346
      Left            =   6360
      TabIndex        =   1353
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1345
      Left            =   6240
      TabIndex        =   1352
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1344
      Left            =   6120
      TabIndex        =   1351
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1343
      Left            =   8880
      TabIndex        =   1350
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1342
      Left            =   8760
      TabIndex        =   1349
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1341
      Left            =   8640
      TabIndex        =   1348
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1340
      Left            =   8520
      TabIndex        =   1347
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1339
      Left            =   8400
      TabIndex        =   1346
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1338
      Left            =   8280
      TabIndex        =   1345
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1337
      Left            =   8160
      TabIndex        =   1344
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1336
      Left            =   8040
      TabIndex        =   1343
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1335
      Left            =   7920
      TabIndex        =   1342
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1334
      Left            =   7800
      TabIndex        =   1341
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1333
      Left            =   7680
      TabIndex        =   1340
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1332
      Left            =   7560
      TabIndex        =   1339
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1331
      Left            =   7440
      TabIndex        =   1338
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1330
      Left            =   7320
      TabIndex        =   1337
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1329
      Left            =   7200
      TabIndex        =   1336
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1328
      Left            =   7080
      TabIndex        =   1335
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1327
      Left            =   6960
      TabIndex        =   1334
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1326
      Left            =   6840
      TabIndex        =   1333
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1325
      Left            =   6720
      TabIndex        =   1332
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1324
      Left            =   6600
      TabIndex        =   1331
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1323
      Left            =   6480
      TabIndex        =   1330
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1322
      Left            =   6360
      TabIndex        =   1329
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1321
      Left            =   6240
      TabIndex        =   1328
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1320
      Left            =   6120
      TabIndex        =   1327
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1319
      Left            =   8880
      TabIndex        =   1326
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1318
      Left            =   8760
      TabIndex        =   1325
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1317
      Left            =   8640
      TabIndex        =   1324
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1316
      Left            =   8520
      TabIndex        =   1323
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1315
      Left            =   8400
      TabIndex        =   1322
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1314
      Left            =   8280
      TabIndex        =   1321
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1313
      Left            =   8160
      TabIndex        =   1320
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1312
      Left            =   8040
      TabIndex        =   1319
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1311
      Left            =   7920
      TabIndex        =   1318
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1310
      Left            =   7800
      TabIndex        =   1317
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1309
      Left            =   7680
      TabIndex        =   1316
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1308
      Left            =   7560
      TabIndex        =   1315
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1307
      Left            =   7440
      TabIndex        =   1314
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1306
      Left            =   7320
      TabIndex        =   1313
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1305
      Left            =   7200
      TabIndex        =   1312
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1304
      Left            =   7080
      TabIndex        =   1311
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1303
      Left            =   6960
      TabIndex        =   1310
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1302
      Left            =   6840
      TabIndex        =   1309
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1301
      Left            =   6720
      TabIndex        =   1308
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1300
      Left            =   6600
      TabIndex        =   1307
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1299
      Left            =   6480
      TabIndex        =   1306
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1298
      Left            =   6360
      TabIndex        =   1305
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1297
      Left            =   6240
      TabIndex        =   1304
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1296
      Left            =   6120
      TabIndex        =   1303
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1295
      Left            =   8880
      TabIndex        =   1302
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1294
      Left            =   8760
      TabIndex        =   1301
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1293
      Left            =   8640
      TabIndex        =   1300
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1292
      Left            =   8520
      TabIndex        =   1299
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1291
      Left            =   8400
      TabIndex        =   1298
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1290
      Left            =   8280
      TabIndex        =   1297
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1289
      Left            =   8160
      TabIndex        =   1296
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1288
      Left            =   8040
      TabIndex        =   1295
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1287
      Left            =   7920
      TabIndex        =   1294
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1286
      Left            =   7800
      TabIndex        =   1293
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1285
      Left            =   7680
      TabIndex        =   1292
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1284
      Left            =   7560
      TabIndex        =   1291
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1283
      Left            =   7440
      TabIndex        =   1290
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1282
      Left            =   7320
      TabIndex        =   1289
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1281
      Left            =   7200
      TabIndex        =   1288
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1280
      Left            =   7080
      TabIndex        =   1287
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1279
      Left            =   6960
      TabIndex        =   1286
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1278
      Left            =   6840
      TabIndex        =   1285
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1277
      Left            =   6720
      TabIndex        =   1284
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1276
      Left            =   6600
      TabIndex        =   1283
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1275
      Left            =   6480
      TabIndex        =   1282
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1274
      Left            =   6360
      TabIndex        =   1281
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1273
      Left            =   6240
      TabIndex        =   1280
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1272
      Left            =   6120
      TabIndex        =   1279
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1271
      Left            =   8880
      TabIndex        =   1278
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1270
      Left            =   8760
      TabIndex        =   1277
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1269
      Left            =   8640
      TabIndex        =   1276
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1268
      Left            =   8520
      TabIndex        =   1275
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1267
      Left            =   8400
      TabIndex        =   1274
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1266
      Left            =   8280
      TabIndex        =   1273
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1265
      Left            =   8160
      TabIndex        =   1272
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1264
      Left            =   8040
      TabIndex        =   1271
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1263
      Left            =   7920
      TabIndex        =   1270
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1262
      Left            =   7800
      TabIndex        =   1269
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1261
      Left            =   7680
      TabIndex        =   1268
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1260
      Left            =   7560
      TabIndex        =   1267
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1259
      Left            =   7440
      TabIndex        =   1266
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1258
      Left            =   7320
      TabIndex        =   1265
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1257
      Left            =   7200
      TabIndex        =   1264
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1256
      Left            =   7080
      TabIndex        =   1263
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1255
      Left            =   6960
      TabIndex        =   1262
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1254
      Left            =   6840
      TabIndex        =   1261
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1253
      Left            =   6720
      TabIndex        =   1260
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1252
      Left            =   6600
      TabIndex        =   1259
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1251
      Left            =   6480
      TabIndex        =   1258
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1250
      Left            =   6360
      TabIndex        =   1257
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1249
      Left            =   6240
      TabIndex        =   1256
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1248
      Left            =   6120
      TabIndex        =   1255
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1247
      Left            =   8880
      TabIndex        =   1254
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1246
      Left            =   8760
      TabIndex        =   1253
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1245
      Left            =   8640
      TabIndex        =   1252
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1244
      Left            =   8520
      TabIndex        =   1251
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1243
      Left            =   8400
      TabIndex        =   1250
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1242
      Left            =   8280
      TabIndex        =   1249
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1241
      Left            =   8160
      TabIndex        =   1248
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1240
      Left            =   8040
      TabIndex        =   1247
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1239
      Left            =   7920
      TabIndex        =   1246
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1238
      Left            =   7800
      TabIndex        =   1245
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1237
      Left            =   7680
      TabIndex        =   1244
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1236
      Left            =   7560
      TabIndex        =   1243
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1235
      Left            =   7440
      TabIndex        =   1242
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1234
      Left            =   7320
      TabIndex        =   1241
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1233
      Left            =   7200
      TabIndex        =   1240
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1232
      Left            =   7080
      TabIndex        =   1239
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1231
      Left            =   6960
      TabIndex        =   1238
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1230
      Left            =   6840
      TabIndex        =   1237
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1229
      Left            =   6720
      TabIndex        =   1236
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1228
      Left            =   6600
      TabIndex        =   1235
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1227
      Left            =   6480
      TabIndex        =   1234
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1226
      Left            =   6360
      TabIndex        =   1233
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1225
      Left            =   6240
      TabIndex        =   1232
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1224
      Left            =   6120
      TabIndex        =   1231
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1223
      Left            =   8880
      TabIndex        =   1230
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1222
      Left            =   8760
      TabIndex        =   1229
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1221
      Left            =   8640
      TabIndex        =   1228
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1220
      Left            =   8520
      TabIndex        =   1227
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1219
      Left            =   8400
      TabIndex        =   1226
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1218
      Left            =   8280
      TabIndex        =   1225
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1217
      Left            =   8160
      TabIndex        =   1224
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1216
      Left            =   8040
      TabIndex        =   1223
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1215
      Left            =   7920
      TabIndex        =   1222
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1214
      Left            =   7800
      TabIndex        =   1221
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1213
      Left            =   7680
      TabIndex        =   1220
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1212
      Left            =   7560
      TabIndex        =   1219
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1211
      Left            =   7440
      TabIndex        =   1218
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1210
      Left            =   7320
      TabIndex        =   1217
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1209
      Left            =   7200
      TabIndex        =   1216
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1208
      Left            =   7080
      TabIndex        =   1215
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1207
      Left            =   6960
      TabIndex        =   1214
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1206
      Left            =   6840
      TabIndex        =   1213
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1205
      Left            =   6720
      TabIndex        =   1212
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1204
      Left            =   6600
      TabIndex        =   1211
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1203
      Left            =   6480
      TabIndex        =   1210
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1202
      Left            =   6360
      TabIndex        =   1209
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1201
      Left            =   6240
      TabIndex        =   1208
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1200
      Left            =   6120
      TabIndex        =   1207
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1199
      Left            =   8880
      TabIndex        =   1206
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1198
      Left            =   8760
      TabIndex        =   1205
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1197
      Left            =   8640
      TabIndex        =   1204
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1196
      Left            =   8520
      TabIndex        =   1203
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1195
      Left            =   8400
      TabIndex        =   1202
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1194
      Left            =   8280
      TabIndex        =   1201
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1193
      Left            =   8160
      TabIndex        =   1200
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1192
      Left            =   8040
      TabIndex        =   1199
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1191
      Left            =   7920
      TabIndex        =   1198
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1190
      Left            =   7800
      TabIndex        =   1197
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1189
      Left            =   7680
      TabIndex        =   1196
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1188
      Left            =   7560
      TabIndex        =   1195
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1187
      Left            =   7440
      TabIndex        =   1194
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1186
      Left            =   7320
      TabIndex        =   1193
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1185
      Left            =   7200
      TabIndex        =   1192
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1184
      Left            =   7080
      TabIndex        =   1191
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1183
      Left            =   6960
      TabIndex        =   1190
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1182
      Left            =   6840
      TabIndex        =   1189
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1181
      Left            =   6720
      TabIndex        =   1188
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1180
      Left            =   6600
      TabIndex        =   1187
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1179
      Left            =   6480
      TabIndex        =   1186
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1178
      Left            =   6360
      TabIndex        =   1185
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1177
      Left            =   6240
      TabIndex        =   1184
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1176
      Left            =   6120
      TabIndex        =   1183
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1175
      Left            =   8880
      TabIndex        =   1182
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1174
      Left            =   8760
      TabIndex        =   1181
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1173
      Left            =   8640
      TabIndex        =   1180
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1172
      Left            =   8520
      TabIndex        =   1179
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1171
      Left            =   8400
      TabIndex        =   1178
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1170
      Left            =   8280
      TabIndex        =   1177
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1169
      Left            =   8160
      TabIndex        =   1176
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1168
      Left            =   8040
      TabIndex        =   1175
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1167
      Left            =   7920
      TabIndex        =   1174
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1166
      Left            =   7800
      TabIndex        =   1173
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1165
      Left            =   7680
      TabIndex        =   1172
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1164
      Left            =   7560
      TabIndex        =   1171
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1163
      Left            =   7440
      TabIndex        =   1170
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1162
      Left            =   7320
      TabIndex        =   1169
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1161
      Left            =   7200
      TabIndex        =   1168
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1160
      Left            =   7080
      TabIndex        =   1167
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1159
      Left            =   6960
      TabIndex        =   1166
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1158
      Left            =   6840
      TabIndex        =   1165
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1157
      Left            =   6720
      TabIndex        =   1164
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1156
      Left            =   6600
      TabIndex        =   1163
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1155
      Left            =   6480
      TabIndex        =   1162
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1154
      Left            =   6360
      TabIndex        =   1161
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1153
      Left            =   6240
      TabIndex        =   1160
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1152
      Left            =   6120
      TabIndex        =   1159
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1151
      Left            =   8880
      TabIndex        =   1158
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1150
      Left            =   8760
      TabIndex        =   1157
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1149
      Left            =   8640
      TabIndex        =   1156
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1148
      Left            =   8520
      TabIndex        =   1155
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1147
      Left            =   8400
      TabIndex        =   1154
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1146
      Left            =   8280
      TabIndex        =   1153
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1145
      Left            =   8160
      TabIndex        =   1152
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1144
      Left            =   8040
      TabIndex        =   1151
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1143
      Left            =   7920
      TabIndex        =   1150
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1142
      Left            =   7800
      TabIndex        =   1149
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1141
      Left            =   7680
      TabIndex        =   1148
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1140
      Left            =   7560
      TabIndex        =   1147
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1139
      Left            =   7440
      TabIndex        =   1146
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1138
      Left            =   7320
      TabIndex        =   1145
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1137
      Left            =   7200
      TabIndex        =   1144
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1136
      Left            =   7080
      TabIndex        =   1143
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1135
      Left            =   6960
      TabIndex        =   1142
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1134
      Left            =   6840
      TabIndex        =   1141
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1133
      Left            =   6720
      TabIndex        =   1140
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1132
      Left            =   6600
      TabIndex        =   1139
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1131
      Left            =   6480
      TabIndex        =   1138
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1130
      Left            =   6360
      TabIndex        =   1137
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1129
      Left            =   6240
      TabIndex        =   1136
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1128
      Left            =   6120
      TabIndex        =   1135
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1127
      Left            =   8880
      TabIndex        =   1134
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1126
      Left            =   8760
      TabIndex        =   1133
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1125
      Left            =   8640
      TabIndex        =   1132
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1124
      Left            =   8520
      TabIndex        =   1131
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1123
      Left            =   8400
      TabIndex        =   1130
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1122
      Left            =   8280
      TabIndex        =   1129
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1121
      Left            =   8160
      TabIndex        =   1128
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1120
      Left            =   8040
      TabIndex        =   1127
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1119
      Left            =   7920
      TabIndex        =   1126
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1118
      Left            =   7800
      TabIndex        =   1125
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1117
      Left            =   7680
      TabIndex        =   1124
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1116
      Left            =   7560
      TabIndex        =   1123
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1115
      Left            =   7440
      TabIndex        =   1122
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1114
      Left            =   7320
      TabIndex        =   1121
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1113
      Left            =   7200
      TabIndex        =   1120
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1112
      Left            =   7080
      TabIndex        =   1119
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1111
      Left            =   6960
      TabIndex        =   1118
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1110
      Left            =   6840
      TabIndex        =   1117
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1109
      Left            =   6720
      TabIndex        =   1116
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1108
      Left            =   6600
      TabIndex        =   1115
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1107
      Left            =   6480
      TabIndex        =   1114
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1106
      Left            =   6360
      TabIndex        =   1113
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1105
      Left            =   6240
      TabIndex        =   1112
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1104
      Left            =   6120
      TabIndex        =   1111
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1103
      Left            =   8880
      TabIndex        =   1110
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1102
      Left            =   8760
      TabIndex        =   1109
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1101
      Left            =   8640
      TabIndex        =   1108
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1100
      Left            =   8520
      TabIndex        =   1107
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1099
      Left            =   8400
      TabIndex        =   1106
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1098
      Left            =   8280
      TabIndex        =   1105
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1097
      Left            =   8160
      TabIndex        =   1104
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1096
      Left            =   8040
      TabIndex        =   1103
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1095
      Left            =   7920
      TabIndex        =   1102
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1094
      Left            =   7800
      TabIndex        =   1101
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1093
      Left            =   7680
      TabIndex        =   1100
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1092
      Left            =   7560
      TabIndex        =   1099
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1091
      Left            =   7440
      TabIndex        =   1098
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1090
      Left            =   7320
      TabIndex        =   1097
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1089
      Left            =   7200
      TabIndex        =   1096
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1088
      Left            =   7080
      TabIndex        =   1095
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1087
      Left            =   6960
      TabIndex        =   1094
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1086
      Left            =   6840
      TabIndex        =   1093
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1085
      Left            =   6720
      TabIndex        =   1092
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1084
      Left            =   6600
      TabIndex        =   1091
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1083
      Left            =   6480
      TabIndex        =   1090
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1082
      Left            =   6360
      TabIndex        =   1089
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1081
      Left            =   6240
      TabIndex        =   1088
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1080
      Left            =   6120
      TabIndex        =   1087
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1079
      Left            =   8880
      TabIndex        =   1086
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1078
      Left            =   8760
      TabIndex        =   1085
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1077
      Left            =   8640
      TabIndex        =   1084
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1076
      Left            =   8520
      TabIndex        =   1083
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1075
      Left            =   8400
      TabIndex        =   1082
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1074
      Left            =   8280
      TabIndex        =   1081
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1073
      Left            =   8160
      TabIndex        =   1080
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1072
      Left            =   8040
      TabIndex        =   1079
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1071
      Left            =   7920
      TabIndex        =   1078
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1070
      Left            =   7800
      TabIndex        =   1077
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1069
      Left            =   7680
      TabIndex        =   1076
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1068
      Left            =   7560
      TabIndex        =   1075
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1067
      Left            =   7440
      TabIndex        =   1074
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1066
      Left            =   7320
      TabIndex        =   1073
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1065
      Left            =   7200
      TabIndex        =   1072
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1064
      Left            =   7080
      TabIndex        =   1071
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1063
      Left            =   6960
      TabIndex        =   1070
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1062
      Left            =   6840
      TabIndex        =   1069
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1061
      Left            =   6720
      TabIndex        =   1068
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1060
      Left            =   6600
      TabIndex        =   1067
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1059
      Left            =   6480
      TabIndex        =   1066
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1058
      Left            =   6360
      TabIndex        =   1065
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1057
      Left            =   6240
      TabIndex        =   1064
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1056
      Left            =   6120
      TabIndex        =   1063
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1055
      Left            =   8880
      TabIndex        =   1062
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1054
      Left            =   8760
      TabIndex        =   1061
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1053
      Left            =   8640
      TabIndex        =   1060
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1052
      Left            =   8520
      TabIndex        =   1059
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1051
      Left            =   8400
      TabIndex        =   1058
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1050
      Left            =   8280
      TabIndex        =   1057
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1049
      Left            =   8160
      TabIndex        =   1056
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1048
      Left            =   8040
      TabIndex        =   1055
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1047
      Left            =   7920
      TabIndex        =   1054
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1046
      Left            =   7800
      TabIndex        =   1053
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1045
      Left            =   7680
      TabIndex        =   1052
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1044
      Left            =   7560
      TabIndex        =   1051
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1043
      Left            =   7440
      TabIndex        =   1050
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1042
      Left            =   7320
      TabIndex        =   1049
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1041
      Left            =   7200
      TabIndex        =   1048
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1040
      Left            =   7080
      TabIndex        =   1047
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1039
      Left            =   6960
      TabIndex        =   1046
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1038
      Left            =   6840
      TabIndex        =   1045
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1037
      Left            =   6720
      TabIndex        =   1044
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1036
      Left            =   6600
      TabIndex        =   1043
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1035
      Left            =   6480
      TabIndex        =   1042
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1034
      Left            =   6360
      TabIndex        =   1041
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1033
      Left            =   6240
      TabIndex        =   1040
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1032
      Left            =   6120
      TabIndex        =   1039
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1031
      Left            =   8880
      TabIndex        =   1038
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1030
      Left            =   8760
      TabIndex        =   1037
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1029
      Left            =   8640
      TabIndex        =   1036
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1028
      Left            =   8520
      TabIndex        =   1035
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1027
      Left            =   8400
      TabIndex        =   1034
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1026
      Left            =   8280
      TabIndex        =   1033
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1025
      Left            =   8160
      TabIndex        =   1032
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1024
      Left            =   8040
      TabIndex        =   1031
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1023
      Left            =   7920
      TabIndex        =   1030
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1022
      Left            =   7800
      TabIndex        =   1029
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1021
      Left            =   7680
      TabIndex        =   1028
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1020
      Left            =   7560
      TabIndex        =   1027
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1019
      Left            =   7440
      TabIndex        =   1026
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1018
      Left            =   7320
      TabIndex        =   1025
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1017
      Left            =   7200
      TabIndex        =   1024
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1016
      Left            =   7080
      TabIndex        =   1023
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1015
      Left            =   6960
      TabIndex        =   1022
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1014
      Left            =   6840
      TabIndex        =   1021
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1013
      Left            =   6720
      TabIndex        =   1020
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1012
      Left            =   6600
      TabIndex        =   1019
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1011
      Left            =   6480
      TabIndex        =   1018
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1010
      Left            =   6360
      TabIndex        =   1017
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1009
      Left            =   6240
      TabIndex        =   1016
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1008
      Left            =   6120
      TabIndex        =   1015
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1007
      Left            =   5880
      TabIndex        =   1014
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1006
      Left            =   5760
      TabIndex        =   1013
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1005
      Left            =   5640
      TabIndex        =   1012
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1004
      Left            =   5520
      TabIndex        =   1011
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1003
      Left            =   5400
      TabIndex        =   1010
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1002
      Left            =   5280
      TabIndex        =   1009
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1001
      Left            =   5160
      TabIndex        =   1008
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1000
      Left            =   5040
      TabIndex        =   1007
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   999
      Left            =   4920
      TabIndex        =   1006
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   998
      Left            =   4800
      TabIndex        =   1005
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   997
      Left            =   4680
      TabIndex        =   1004
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   996
      Left            =   4560
      TabIndex        =   1003
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   995
      Left            =   4440
      TabIndex        =   1002
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   994
      Left            =   4320
      TabIndex        =   1001
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   993
      Left            =   4200
      TabIndex        =   1000
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   992
      Left            =   4080
      TabIndex        =   999
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   991
      Left            =   3960
      TabIndex        =   998
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   990
      Left            =   3840
      TabIndex        =   997
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   989
      Left            =   3720
      TabIndex        =   996
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   988
      Left            =   3600
      TabIndex        =   995
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   987
      Left            =   3480
      TabIndex        =   994
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   986
      Left            =   3360
      TabIndex        =   993
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   985
      Left            =   3240
      TabIndex        =   992
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   984
      Left            =   3120
      TabIndex        =   991
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   983
      Left            =   5880
      TabIndex        =   990
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   982
      Left            =   5760
      TabIndex        =   989
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   981
      Left            =   5640
      TabIndex        =   988
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   980
      Left            =   5520
      TabIndex        =   987
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   979
      Left            =   5400
      TabIndex        =   986
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   978
      Left            =   5280
      TabIndex        =   985
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   977
      Left            =   5160
      TabIndex        =   984
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   976
      Left            =   5040
      TabIndex        =   983
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   975
      Left            =   4920
      TabIndex        =   982
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   974
      Left            =   4800
      TabIndex        =   981
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   973
      Left            =   4680
      TabIndex        =   980
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   972
      Left            =   4560
      TabIndex        =   979
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   971
      Left            =   4440
      TabIndex        =   978
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   970
      Left            =   4320
      TabIndex        =   977
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   969
      Left            =   4200
      TabIndex        =   976
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   968
      Left            =   4080
      TabIndex        =   975
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   967
      Left            =   3960
      TabIndex        =   974
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   966
      Left            =   3840
      TabIndex        =   973
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   965
      Left            =   3720
      TabIndex        =   972
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   964
      Left            =   3600
      TabIndex        =   971
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   963
      Left            =   3480
      TabIndex        =   970
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   962
      Left            =   3360
      TabIndex        =   969
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   961
      Left            =   3240
      TabIndex        =   968
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   960
      Left            =   3120
      TabIndex        =   967
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   959
      Left            =   5880
      TabIndex        =   966
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   958
      Left            =   5760
      TabIndex        =   965
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   957
      Left            =   5640
      TabIndex        =   964
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   956
      Left            =   5520
      TabIndex        =   963
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   955
      Left            =   5400
      TabIndex        =   962
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   954
      Left            =   5280
      TabIndex        =   961
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   953
      Left            =   5160
      TabIndex        =   960
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   952
      Left            =   5040
      TabIndex        =   959
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   951
      Left            =   4920
      TabIndex        =   958
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   950
      Left            =   4800
      TabIndex        =   957
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   949
      Left            =   4680
      TabIndex        =   956
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   948
      Left            =   4560
      TabIndex        =   955
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   947
      Left            =   4440
      TabIndex        =   954
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   946
      Left            =   4320
      TabIndex        =   953
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   945
      Left            =   4200
      TabIndex        =   952
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   944
      Left            =   4080
      TabIndex        =   951
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   943
      Left            =   3960
      TabIndex        =   950
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   942
      Left            =   3840
      TabIndex        =   949
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   941
      Left            =   3720
      TabIndex        =   948
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   940
      Left            =   3600
      TabIndex        =   947
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   939
      Left            =   3480
      TabIndex        =   946
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   938
      Left            =   3360
      TabIndex        =   945
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   937
      Left            =   3240
      TabIndex        =   944
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   936
      Left            =   3120
      TabIndex        =   943
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   935
      Left            =   5880
      TabIndex        =   942
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   934
      Left            =   5760
      TabIndex        =   941
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   933
      Left            =   5640
      TabIndex        =   940
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   932
      Left            =   5520
      TabIndex        =   939
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   931
      Left            =   5400
      TabIndex        =   938
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   930
      Left            =   5280
      TabIndex        =   937
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   929
      Left            =   5160
      TabIndex        =   936
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   928
      Left            =   5040
      TabIndex        =   935
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   927
      Left            =   4920
      TabIndex        =   934
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   926
      Left            =   4800
      TabIndex        =   933
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   925
      Left            =   4680
      TabIndex        =   932
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   924
      Left            =   4560
      TabIndex        =   931
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   923
      Left            =   4440
      TabIndex        =   930
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   922
      Left            =   4320
      TabIndex        =   929
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   921
      Left            =   4200
      TabIndex        =   928
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   920
      Left            =   4080
      TabIndex        =   927
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   919
      Left            =   3960
      TabIndex        =   926
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   918
      Left            =   3840
      TabIndex        =   925
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   917
      Left            =   3720
      TabIndex        =   924
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   916
      Left            =   3600
      TabIndex        =   923
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   915
      Left            =   3480
      TabIndex        =   922
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   914
      Left            =   3360
      TabIndex        =   921
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   913
      Left            =   3240
      TabIndex        =   920
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   912
      Left            =   3120
      TabIndex        =   919
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   911
      Left            =   5880
      TabIndex        =   918
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   910
      Left            =   5760
      TabIndex        =   917
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   909
      Left            =   5640
      TabIndex        =   916
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   908
      Left            =   5520
      TabIndex        =   915
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   907
      Left            =   5400
      TabIndex        =   914
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   906
      Left            =   5280
      TabIndex        =   913
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   905
      Left            =   5160
      TabIndex        =   912
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   904
      Left            =   5040
      TabIndex        =   911
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   903
      Left            =   4920
      TabIndex        =   910
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   902
      Left            =   4800
      TabIndex        =   909
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   901
      Left            =   4680
      TabIndex        =   908
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   900
      Left            =   4560
      TabIndex        =   907
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   899
      Left            =   4440
      TabIndex        =   906
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   898
      Left            =   4320
      TabIndex        =   905
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   897
      Left            =   4200
      TabIndex        =   904
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   896
      Left            =   4080
      TabIndex        =   903
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   895
      Left            =   3960
      TabIndex        =   902
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   894
      Left            =   3840
      TabIndex        =   901
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   893
      Left            =   3720
      TabIndex        =   900
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   892
      Left            =   3600
      TabIndex        =   899
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   891
      Left            =   3480
      TabIndex        =   898
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   890
      Left            =   3360
      TabIndex        =   897
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   889
      Left            =   3240
      TabIndex        =   896
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   888
      Left            =   3120
      TabIndex        =   895
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   887
      Left            =   5880
      TabIndex        =   894
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   886
      Left            =   5760
      TabIndex        =   893
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   885
      Left            =   5640
      TabIndex        =   892
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   884
      Left            =   5520
      TabIndex        =   891
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   883
      Left            =   5400
      TabIndex        =   890
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   882
      Left            =   5280
      TabIndex        =   889
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   881
      Left            =   5160
      TabIndex        =   888
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   880
      Left            =   5040
      TabIndex        =   887
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   879
      Left            =   4920
      TabIndex        =   886
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   878
      Left            =   4800
      TabIndex        =   885
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   877
      Left            =   4680
      TabIndex        =   884
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   876
      Left            =   4560
      TabIndex        =   883
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   875
      Left            =   4440
      TabIndex        =   882
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   874
      Left            =   4320
      TabIndex        =   881
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   873
      Left            =   4200
      TabIndex        =   880
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   872
      Left            =   4080
      TabIndex        =   879
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   871
      Left            =   3960
      TabIndex        =   878
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   870
      Left            =   3840
      TabIndex        =   877
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   869
      Left            =   3720
      TabIndex        =   876
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   868
      Left            =   3600
      TabIndex        =   875
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   867
      Left            =   3480
      TabIndex        =   874
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   866
      Left            =   3360
      TabIndex        =   873
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   865
      Left            =   3240
      TabIndex        =   872
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   864
      Left            =   3120
      TabIndex        =   871
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   863
      Left            =   5880
      TabIndex        =   870
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   862
      Left            =   5760
      TabIndex        =   869
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   861
      Left            =   5640
      TabIndex        =   868
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   860
      Left            =   5520
      TabIndex        =   867
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   859
      Left            =   5400
      TabIndex        =   866
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   858
      Left            =   5280
      TabIndex        =   865
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   857
      Left            =   5160
      TabIndex        =   864
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   856
      Left            =   5040
      TabIndex        =   863
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   855
      Left            =   4920
      TabIndex        =   862
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   854
      Left            =   4800
      TabIndex        =   861
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   853
      Left            =   4680
      TabIndex        =   860
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   852
      Left            =   4560
      TabIndex        =   859
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   851
      Left            =   4440
      TabIndex        =   858
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   850
      Left            =   4320
      TabIndex        =   857
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   849
      Left            =   4200
      TabIndex        =   856
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   848
      Left            =   4080
      TabIndex        =   855
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   847
      Left            =   3960
      TabIndex        =   854
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   846
      Left            =   3840
      TabIndex        =   853
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   845
      Left            =   3720
      TabIndex        =   852
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   844
      Left            =   3600
      TabIndex        =   851
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   843
      Left            =   3480
      TabIndex        =   850
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   842
      Left            =   3360
      TabIndex        =   849
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   841
      Left            =   3240
      TabIndex        =   848
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   840
      Left            =   3120
      TabIndex        =   847
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   839
      Left            =   5880
      TabIndex        =   846
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   838
      Left            =   5760
      TabIndex        =   845
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   837
      Left            =   5640
      TabIndex        =   844
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   836
      Left            =   5520
      TabIndex        =   843
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   835
      Left            =   5400
      TabIndex        =   842
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   834
      Left            =   5280
      TabIndex        =   841
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   833
      Left            =   5160
      TabIndex        =   840
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   832
      Left            =   5040
      TabIndex        =   839
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   831
      Left            =   4920
      TabIndex        =   838
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   830
      Left            =   4800
      TabIndex        =   837
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   829
      Left            =   4680
      TabIndex        =   836
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   828
      Left            =   4560
      TabIndex        =   835
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   827
      Left            =   4440
      TabIndex        =   834
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   826
      Left            =   4320
      TabIndex        =   833
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   825
      Left            =   4200
      TabIndex        =   832
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   824
      Left            =   4080
      TabIndex        =   831
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   823
      Left            =   3960
      TabIndex        =   830
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   822
      Left            =   3840
      TabIndex        =   829
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   821
      Left            =   3720
      TabIndex        =   828
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   820
      Left            =   3600
      TabIndex        =   827
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   819
      Left            =   3480
      TabIndex        =   826
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   818
      Left            =   3360
      TabIndex        =   825
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   817
      Left            =   3240
      TabIndex        =   824
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   816
      Left            =   3120
      TabIndex        =   823
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   815
      Left            =   5880
      TabIndex        =   822
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   814
      Left            =   5760
      TabIndex        =   821
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   813
      Left            =   5640
      TabIndex        =   820
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   812
      Left            =   5520
      TabIndex        =   819
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   811
      Left            =   5400
      TabIndex        =   818
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   810
      Left            =   5280
      TabIndex        =   817
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   809
      Left            =   5160
      TabIndex        =   816
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   808
      Left            =   5040
      TabIndex        =   815
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   807
      Left            =   4920
      TabIndex        =   814
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   806
      Left            =   4800
      TabIndex        =   813
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   805
      Left            =   4680
      TabIndex        =   812
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   804
      Left            =   4560
      TabIndex        =   811
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   803
      Left            =   4440
      TabIndex        =   810
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   802
      Left            =   4320
      TabIndex        =   809
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   801
      Left            =   4200
      TabIndex        =   808
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   800
      Left            =   4080
      TabIndex        =   807
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   799
      Left            =   3960
      TabIndex        =   806
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   798
      Left            =   3840
      TabIndex        =   805
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   797
      Left            =   3720
      TabIndex        =   804
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   796
      Left            =   3600
      TabIndex        =   803
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   795
      Left            =   3480
      TabIndex        =   802
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   794
      Left            =   3360
      TabIndex        =   801
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   793
      Left            =   3240
      TabIndex        =   800
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   792
      Left            =   3120
      TabIndex        =   799
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   791
      Left            =   5880
      TabIndex        =   798
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   790
      Left            =   5760
      TabIndex        =   797
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   789
      Left            =   5640
      TabIndex        =   796
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   788
      Left            =   5520
      TabIndex        =   795
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   787
      Left            =   5400
      TabIndex        =   794
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   786
      Left            =   5280
      TabIndex        =   793
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   785
      Left            =   5160
      TabIndex        =   792
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   784
      Left            =   5040
      TabIndex        =   791
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   783
      Left            =   4920
      TabIndex        =   790
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   782
      Left            =   4800
      TabIndex        =   789
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   781
      Left            =   4680
      TabIndex        =   788
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   780
      Left            =   4560
      TabIndex        =   787
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   779
      Left            =   4440
      TabIndex        =   786
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   778
      Left            =   4320
      TabIndex        =   785
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   777
      Left            =   4200
      TabIndex        =   784
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   776
      Left            =   4080
      TabIndex        =   783
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   775
      Left            =   3960
      TabIndex        =   782
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   774
      Left            =   3840
      TabIndex        =   781
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   773
      Left            =   3720
      TabIndex        =   780
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   772
      Left            =   3600
      TabIndex        =   779
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   771
      Left            =   3480
      TabIndex        =   778
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   770
      Left            =   3360
      TabIndex        =   777
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   769
      Left            =   3240
      TabIndex        =   776
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   768
      Left            =   3120
      TabIndex        =   775
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   767
      Left            =   5880
      TabIndex        =   774
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   766
      Left            =   5760
      TabIndex        =   773
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   765
      Left            =   5640
      TabIndex        =   772
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   764
      Left            =   5520
      TabIndex        =   771
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   763
      Left            =   5400
      TabIndex        =   770
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   762
      Left            =   5280
      TabIndex        =   769
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   761
      Left            =   5160
      TabIndex        =   768
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   760
      Left            =   5040
      TabIndex        =   767
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   759
      Left            =   4920
      TabIndex        =   766
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   758
      Left            =   4800
      TabIndex        =   765
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   757
      Left            =   4680
      TabIndex        =   764
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   756
      Left            =   4560
      TabIndex        =   763
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   755
      Left            =   4440
      TabIndex        =   762
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   754
      Left            =   4320
      TabIndex        =   761
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   753
      Left            =   4200
      TabIndex        =   760
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   752
      Left            =   4080
      TabIndex        =   759
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   751
      Left            =   3960
      TabIndex        =   758
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   750
      Left            =   3840
      TabIndex        =   757
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   749
      Left            =   3720
      TabIndex        =   756
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   748
      Left            =   3600
      TabIndex        =   755
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   747
      Left            =   3480
      TabIndex        =   754
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   746
      Left            =   3360
      TabIndex        =   753
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   745
      Left            =   3240
      TabIndex        =   752
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   744
      Left            =   3120
      TabIndex        =   751
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   743
      Left            =   5880
      TabIndex        =   750
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   742
      Left            =   5760
      TabIndex        =   749
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   741
      Left            =   5640
      TabIndex        =   748
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   740
      Left            =   5520
      TabIndex        =   747
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   739
      Left            =   5400
      TabIndex        =   746
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   738
      Left            =   5280
      TabIndex        =   745
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   737
      Left            =   5160
      TabIndex        =   744
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   736
      Left            =   5040
      TabIndex        =   743
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   735
      Left            =   4920
      TabIndex        =   742
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   734
      Left            =   4800
      TabIndex        =   741
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   733
      Left            =   4680
      TabIndex        =   740
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   732
      Left            =   4560
      TabIndex        =   739
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   731
      Left            =   4440
      TabIndex        =   738
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   730
      Left            =   4320
      TabIndex        =   737
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   729
      Left            =   4200
      TabIndex        =   736
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   728
      Left            =   4080
      TabIndex        =   735
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   727
      Left            =   3960
      TabIndex        =   734
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   726
      Left            =   3840
      TabIndex        =   733
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   725
      Left            =   3720
      TabIndex        =   732
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   724
      Left            =   3600
      TabIndex        =   731
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   723
      Left            =   3480
      TabIndex        =   730
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   722
      Left            =   3360
      TabIndex        =   729
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   721
      Left            =   3240
      TabIndex        =   728
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   720
      Left            =   3120
      TabIndex        =   727
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   719
      Left            =   5880
      TabIndex        =   726
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   718
      Left            =   5760
      TabIndex        =   725
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   717
      Left            =   5640
      TabIndex        =   724
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   716
      Left            =   5520
      TabIndex        =   723
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   715
      Left            =   5400
      TabIndex        =   722
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   714
      Left            =   5280
      TabIndex        =   721
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   713
      Left            =   5160
      TabIndex        =   720
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   712
      Left            =   5040
      TabIndex        =   719
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   711
      Left            =   4920
      TabIndex        =   718
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   710
      Left            =   4800
      TabIndex        =   717
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   709
      Left            =   4680
      TabIndex        =   716
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   708
      Left            =   4560
      TabIndex        =   715
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   707
      Left            =   4440
      TabIndex        =   714
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   706
      Left            =   4320
      TabIndex        =   713
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   705
      Left            =   4200
      TabIndex        =   712
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   704
      Left            =   4080
      TabIndex        =   711
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   703
      Left            =   3960
      TabIndex        =   710
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   702
      Left            =   3840
      TabIndex        =   709
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   701
      Left            =   3720
      TabIndex        =   708
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   700
      Left            =   3600
      TabIndex        =   707
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   699
      Left            =   3480
      TabIndex        =   706
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   698
      Left            =   3360
      TabIndex        =   705
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   697
      Left            =   3240
      TabIndex        =   704
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   696
      Left            =   3120
      TabIndex        =   703
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   695
      Left            =   5880
      TabIndex        =   702
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   694
      Left            =   5760
      TabIndex        =   701
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   693
      Left            =   5640
      TabIndex        =   700
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   692
      Left            =   5520
      TabIndex        =   699
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   691
      Left            =   5400
      TabIndex        =   698
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   690
      Left            =   5280
      TabIndex        =   697
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   689
      Left            =   5160
      TabIndex        =   696
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   688
      Left            =   5040
      TabIndex        =   695
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   687
      Left            =   4920
      TabIndex        =   694
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   686
      Left            =   4800
      TabIndex        =   693
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   685
      Left            =   4680
      TabIndex        =   692
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   684
      Left            =   4560
      TabIndex        =   691
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   683
      Left            =   4440
      TabIndex        =   690
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   682
      Left            =   4320
      TabIndex        =   689
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   681
      Left            =   4200
      TabIndex        =   688
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   680
      Left            =   4080
      TabIndex        =   687
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   679
      Left            =   3960
      TabIndex        =   686
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   678
      Left            =   3840
      TabIndex        =   685
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   677
      Left            =   3720
      TabIndex        =   684
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   676
      Left            =   3600
      TabIndex        =   683
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   675
      Left            =   3480
      TabIndex        =   682
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   674
      Left            =   3360
      TabIndex        =   681
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   673
      Left            =   3240
      TabIndex        =   680
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   672
      Left            =   3120
      TabIndex        =   679
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   671
      Left            =   5880
      TabIndex        =   678
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   670
      Left            =   5760
      TabIndex        =   677
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   669
      Left            =   5640
      TabIndex        =   676
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   668
      Left            =   5520
      TabIndex        =   675
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   667
      Left            =   5400
      TabIndex        =   674
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   666
      Left            =   5280
      TabIndex        =   673
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   665
      Left            =   5160
      TabIndex        =   672
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   664
      Left            =   5040
      TabIndex        =   671
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   663
      Left            =   4920
      TabIndex        =   670
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   662
      Left            =   4800
      TabIndex        =   669
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   661
      Left            =   4680
      TabIndex        =   668
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   660
      Left            =   4560
      TabIndex        =   667
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   659
      Left            =   4440
      TabIndex        =   666
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   658
      Left            =   4320
      TabIndex        =   665
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   657
      Left            =   4200
      TabIndex        =   664
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   656
      Left            =   4080
      TabIndex        =   663
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   655
      Left            =   3960
      TabIndex        =   662
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   654
      Left            =   3840
      TabIndex        =   661
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   653
      Left            =   3720
      TabIndex        =   660
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   652
      Left            =   3600
      TabIndex        =   659
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   651
      Left            =   3480
      TabIndex        =   658
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   650
      Left            =   3360
      TabIndex        =   657
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   649
      Left            =   3240
      TabIndex        =   656
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   648
      Left            =   3120
      TabIndex        =   655
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   647
      Left            =   5880
      TabIndex        =   654
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   646
      Left            =   5760
      TabIndex        =   653
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   645
      Left            =   5640
      TabIndex        =   652
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   644
      Left            =   5520
      TabIndex        =   651
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   643
      Left            =   5400
      TabIndex        =   650
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   642
      Left            =   5280
      TabIndex        =   649
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   641
      Left            =   5160
      TabIndex        =   648
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   640
      Left            =   5040
      TabIndex        =   647
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   639
      Left            =   4920
      TabIndex        =   646
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   638
      Left            =   4800
      TabIndex        =   645
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   637
      Left            =   4680
      TabIndex        =   644
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   636
      Left            =   4560
      TabIndex        =   643
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   635
      Left            =   4440
      TabIndex        =   642
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   634
      Left            =   4320
      TabIndex        =   641
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   633
      Left            =   4200
      TabIndex        =   640
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   632
      Left            =   4080
      TabIndex        =   639
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   631
      Left            =   3960
      TabIndex        =   638
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   630
      Left            =   3840
      TabIndex        =   637
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   629
      Left            =   3720
      TabIndex        =   636
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   628
      Left            =   3600
      TabIndex        =   635
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   627
      Left            =   3480
      TabIndex        =   634
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   626
      Left            =   3360
      TabIndex        =   633
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   625
      Left            =   3240
      TabIndex        =   632
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   624
      Left            =   3120
      TabIndex        =   631
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   623
      Left            =   5880
      TabIndex        =   630
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   622
      Left            =   5760
      TabIndex        =   629
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   621
      Left            =   5640
      TabIndex        =   628
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   620
      Left            =   5520
      TabIndex        =   627
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   619
      Left            =   5400
      TabIndex        =   626
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   618
      Left            =   5280
      TabIndex        =   625
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   617
      Left            =   5160
      TabIndex        =   624
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   616
      Left            =   5040
      TabIndex        =   623
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   615
      Left            =   4920
      TabIndex        =   622
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   614
      Left            =   4800
      TabIndex        =   621
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   613
      Left            =   4680
      TabIndex        =   620
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   612
      Left            =   4560
      TabIndex        =   619
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   611
      Left            =   4440
      TabIndex        =   618
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   610
      Left            =   4320
      TabIndex        =   617
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   609
      Left            =   4200
      TabIndex        =   616
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   608
      Left            =   4080
      TabIndex        =   615
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   607
      Left            =   3960
      TabIndex        =   614
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   606
      Left            =   3840
      TabIndex        =   613
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   605
      Left            =   3720
      TabIndex        =   612
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   604
      Left            =   3600
      TabIndex        =   611
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   603
      Left            =   3480
      TabIndex        =   610
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   602
      Left            =   3360
      TabIndex        =   609
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   601
      Left            =   3240
      TabIndex        =   608
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   600
      Left            =   3120
      TabIndex        =   607
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   599
      Left            =   5880
      TabIndex        =   606
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   598
      Left            =   5760
      TabIndex        =   605
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   597
      Left            =   5640
      TabIndex        =   604
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   596
      Left            =   5520
      TabIndex        =   603
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   595
      Left            =   5400
      TabIndex        =   602
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   594
      Left            =   5280
      TabIndex        =   601
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   593
      Left            =   5160
      TabIndex        =   600
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   592
      Left            =   5040
      TabIndex        =   599
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   591
      Left            =   4920
      TabIndex        =   598
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   590
      Left            =   4800
      TabIndex        =   597
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   589
      Left            =   4680
      TabIndex        =   596
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   588
      Left            =   4560
      TabIndex        =   595
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   587
      Left            =   4440
      TabIndex        =   594
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   586
      Left            =   4320
      TabIndex        =   593
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   585
      Left            =   4200
      TabIndex        =   592
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   584
      Left            =   4080
      TabIndex        =   591
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   583
      Left            =   3960
      TabIndex        =   590
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   582
      Left            =   3840
      TabIndex        =   589
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   581
      Left            =   3720
      TabIndex        =   588
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   580
      Left            =   3600
      TabIndex        =   587
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   579
      Left            =   3480
      TabIndex        =   586
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   578
      Left            =   3360
      TabIndex        =   585
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   577
      Left            =   3240
      TabIndex        =   584
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   576
      Left            =   3120
      TabIndex        =   583
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   575
      Left            =   5880
      TabIndex        =   582
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   574
      Left            =   5760
      TabIndex        =   581
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   573
      Left            =   5640
      TabIndex        =   580
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   572
      Left            =   5520
      TabIndex        =   579
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   571
      Left            =   5400
      TabIndex        =   578
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   570
      Left            =   5280
      TabIndex        =   577
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   569
      Left            =   5160
      TabIndex        =   576
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   568
      Left            =   5040
      TabIndex        =   575
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   567
      Left            =   4920
      TabIndex        =   574
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   566
      Left            =   4800
      TabIndex        =   573
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   565
      Left            =   4680
      TabIndex        =   572
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   564
      Left            =   4560
      TabIndex        =   571
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   563
      Left            =   4440
      TabIndex        =   570
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   562
      Left            =   4320
      TabIndex        =   569
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   561
      Left            =   4200
      TabIndex        =   568
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   560
      Left            =   4080
      TabIndex        =   567
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   559
      Left            =   3960
      TabIndex        =   566
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   558
      Left            =   3840
      TabIndex        =   565
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   557
      Left            =   3720
      TabIndex        =   564
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   556
      Left            =   3600
      TabIndex        =   563
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   555
      Left            =   3480
      TabIndex        =   562
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   554
      Left            =   3360
      TabIndex        =   561
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   553
      Left            =   3240
      TabIndex        =   560
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   552
      Left            =   3120
      TabIndex        =   559
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   551
      Left            =   5880
      TabIndex        =   558
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   550
      Left            =   5760
      TabIndex        =   557
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   549
      Left            =   5640
      TabIndex        =   556
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   548
      Left            =   5520
      TabIndex        =   555
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   547
      Left            =   5400
      TabIndex        =   554
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   546
      Left            =   5280
      TabIndex        =   553
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   545
      Left            =   5160
      TabIndex        =   552
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   544
      Left            =   5040
      TabIndex        =   551
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   543
      Left            =   4920
      TabIndex        =   550
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   542
      Left            =   4800
      TabIndex        =   549
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   541
      Left            =   4680
      TabIndex        =   548
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   540
      Left            =   4560
      TabIndex        =   547
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   539
      Left            =   4440
      TabIndex        =   546
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   538
      Left            =   4320
      TabIndex        =   545
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   537
      Left            =   4200
      TabIndex        =   544
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   536
      Left            =   4080
      TabIndex        =   543
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   535
      Left            =   3960
      TabIndex        =   542
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   534
      Left            =   3840
      TabIndex        =   541
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   533
      Left            =   3720
      TabIndex        =   540
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   532
      Left            =   3600
      TabIndex        =   539
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   531
      Left            =   3480
      TabIndex        =   538
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   530
      Left            =   3360
      TabIndex        =   537
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   529
      Left            =   3240
      TabIndex        =   536
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   528
      Left            =   3120
      TabIndex        =   535
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   527
      Left            =   5880
      TabIndex        =   534
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   526
      Left            =   5760
      TabIndex        =   533
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   525
      Left            =   5640
      TabIndex        =   532
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   524
      Left            =   5520
      TabIndex        =   531
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   523
      Left            =   5400
      TabIndex        =   530
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   522
      Left            =   5280
      TabIndex        =   529
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   521
      Left            =   5160
      TabIndex        =   528
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   520
      Left            =   5040
      TabIndex        =   527
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   519
      Left            =   4920
      TabIndex        =   526
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   518
      Left            =   4800
      TabIndex        =   525
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   517
      Left            =   4680
      TabIndex        =   524
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   516
      Left            =   4560
      TabIndex        =   523
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   515
      Left            =   4440
      TabIndex        =   522
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   514
      Left            =   4320
      TabIndex        =   521
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   513
      Left            =   4200
      TabIndex        =   520
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   512
      Left            =   4080
      TabIndex        =   519
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   511
      Left            =   3960
      TabIndex        =   518
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   510
      Left            =   3840
      TabIndex        =   517
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   509
      Left            =   3720
      TabIndex        =   516
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   508
      Left            =   3600
      TabIndex        =   515
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   507
      Left            =   3480
      TabIndex        =   514
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   506
      Left            =   3360
      TabIndex        =   513
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   505
      Left            =   3240
      TabIndex        =   512
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   504
      Left            =   3120
      TabIndex        =   511
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   503
      Left            =   2880
      TabIndex        =   510
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   502
      Left            =   2760
      TabIndex        =   509
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   501
      Left            =   2640
      TabIndex        =   508
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   500
      Left            =   2520
      TabIndex        =   507
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   499
      Left            =   2400
      TabIndex        =   506
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   498
      Left            =   2280
      TabIndex        =   505
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   497
      Left            =   2160
      TabIndex        =   504
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   496
      Left            =   2040
      TabIndex        =   503
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   495
      Left            =   1920
      TabIndex        =   502
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   494
      Left            =   1800
      TabIndex        =   501
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   493
      Left            =   1680
      TabIndex        =   500
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   492
      Left            =   1560
      TabIndex        =   499
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   491
      Left            =   1440
      TabIndex        =   498
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   490
      Left            =   1320
      TabIndex        =   497
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   489
      Left            =   1200
      TabIndex        =   496
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   488
      Left            =   1080
      TabIndex        =   495
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   487
      Left            =   960
      TabIndex        =   494
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   486
      Left            =   840
      TabIndex        =   493
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   485
      Left            =   720
      TabIndex        =   492
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   484
      Left            =   600
      TabIndex        =   491
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   483
      Left            =   480
      TabIndex        =   490
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   482
      Left            =   360
      TabIndex        =   489
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   481
      Left            =   240
      TabIndex        =   488
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   480
      Left            =   120
      TabIndex        =   487
      Top             =   3600
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   479
      Left            =   2880
      TabIndex        =   486
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   478
      Left            =   2760
      TabIndex        =   485
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   477
      Left            =   2640
      TabIndex        =   484
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   476
      Left            =   2520
      TabIndex        =   483
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   475
      Left            =   2400
      TabIndex        =   482
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   474
      Left            =   2280
      TabIndex        =   481
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   473
      Left            =   2160
      TabIndex        =   480
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   472
      Left            =   2040
      TabIndex        =   479
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   471
      Left            =   1920
      TabIndex        =   478
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   470
      Left            =   1800
      TabIndex        =   477
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   469
      Left            =   1680
      TabIndex        =   476
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   468
      Left            =   1560
      TabIndex        =   475
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   467
      Left            =   1440
      TabIndex        =   474
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   466
      Left            =   1320
      TabIndex        =   473
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   465
      Left            =   1200
      TabIndex        =   472
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   464
      Left            =   1080
      TabIndex        =   471
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   463
      Left            =   960
      TabIndex        =   470
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   462
      Left            =   840
      TabIndex        =   469
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   461
      Left            =   720
      TabIndex        =   468
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   460
      Left            =   600
      TabIndex        =   467
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   459
      Left            =   480
      TabIndex        =   466
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   458
      Left            =   360
      TabIndex        =   465
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   457
      Left            =   240
      TabIndex        =   464
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   456
      Left            =   120
      TabIndex        =   463
      Top             =   3480
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   455
      Left            =   2880
      TabIndex        =   462
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   454
      Left            =   2760
      TabIndex        =   461
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   453
      Left            =   2640
      TabIndex        =   460
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   452
      Left            =   2520
      TabIndex        =   459
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   451
      Left            =   2400
      TabIndex        =   458
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   450
      Left            =   2280
      TabIndex        =   457
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   449
      Left            =   2160
      TabIndex        =   456
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   448
      Left            =   2040
      TabIndex        =   455
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   447
      Left            =   1920
      TabIndex        =   454
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   446
      Left            =   1800
      TabIndex        =   453
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   445
      Left            =   1680
      TabIndex        =   452
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   444
      Left            =   1560
      TabIndex        =   451
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   443
      Left            =   1440
      TabIndex        =   450
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   442
      Left            =   1320
      TabIndex        =   449
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   441
      Left            =   1200
      TabIndex        =   448
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   440
      Left            =   1080
      TabIndex        =   447
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   439
      Left            =   960
      TabIndex        =   446
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   438
      Left            =   840
      TabIndex        =   445
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   437
      Left            =   720
      TabIndex        =   444
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   436
      Left            =   600
      TabIndex        =   443
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   435
      Left            =   480
      TabIndex        =   442
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   434
      Left            =   360
      TabIndex        =   441
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   433
      Left            =   240
      TabIndex        =   440
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   432
      Left            =   120
      TabIndex        =   439
      Top             =   3360
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   431
      Left            =   2880
      TabIndex        =   438
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   430
      Left            =   2760
      TabIndex        =   437
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   429
      Left            =   2640
      TabIndex        =   436
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   428
      Left            =   2520
      TabIndex        =   435
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   427
      Left            =   2400
      TabIndex        =   434
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   426
      Left            =   2280
      TabIndex        =   433
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   425
      Left            =   2160
      TabIndex        =   432
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   424
      Left            =   2040
      TabIndex        =   431
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   423
      Left            =   1920
      TabIndex        =   430
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   422
      Left            =   1800
      TabIndex        =   429
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   421
      Left            =   1680
      TabIndex        =   428
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   420
      Left            =   1560
      TabIndex        =   427
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   419
      Left            =   1440
      TabIndex        =   426
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   418
      Left            =   1320
      TabIndex        =   425
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   417
      Left            =   1200
      TabIndex        =   424
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   416
      Left            =   1080
      TabIndex        =   423
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   415
      Left            =   960
      TabIndex        =   422
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   414
      Left            =   840
      TabIndex        =   421
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   413
      Left            =   720
      TabIndex        =   420
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   412
      Left            =   600
      TabIndex        =   419
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   411
      Left            =   480
      TabIndex        =   418
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   410
      Left            =   360
      TabIndex        =   417
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   409
      Left            =   240
      TabIndex        =   416
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   408
      Left            =   120
      TabIndex        =   415
      Top             =   3240
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   407
      Left            =   2880
      TabIndex        =   414
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   406
      Left            =   2760
      TabIndex        =   413
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   405
      Left            =   2640
      TabIndex        =   412
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   404
      Left            =   2520
      TabIndex        =   411
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   403
      Left            =   2400
      TabIndex        =   410
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   402
      Left            =   2280
      TabIndex        =   409
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   401
      Left            =   2160
      TabIndex        =   408
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   400
      Left            =   2040
      TabIndex        =   407
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   399
      Left            =   1920
      TabIndex        =   406
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   398
      Left            =   1800
      TabIndex        =   405
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   397
      Left            =   1680
      TabIndex        =   404
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   396
      Left            =   1560
      TabIndex        =   403
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   395
      Left            =   1440
      TabIndex        =   402
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   394
      Left            =   1320
      TabIndex        =   401
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   393
      Left            =   1200
      TabIndex        =   400
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   392
      Left            =   1080
      TabIndex        =   399
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   391
      Left            =   960
      TabIndex        =   398
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   390
      Left            =   840
      TabIndex        =   397
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   389
      Left            =   720
      TabIndex        =   396
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   388
      Left            =   600
      TabIndex        =   395
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   387
      Left            =   480
      TabIndex        =   394
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   386
      Left            =   360
      TabIndex        =   393
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   385
      Left            =   240
      TabIndex        =   392
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   384
      Left            =   120
      TabIndex        =   391
      Top             =   3120
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   383
      Left            =   2880
      TabIndex        =   390
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   382
      Left            =   2760
      TabIndex        =   389
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   381
      Left            =   2640
      TabIndex        =   388
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   380
      Left            =   2520
      TabIndex        =   387
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   379
      Left            =   2400
      TabIndex        =   386
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   378
      Left            =   2280
      TabIndex        =   385
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   377
      Left            =   2160
      TabIndex        =   384
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   376
      Left            =   2040
      TabIndex        =   383
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   375
      Left            =   1920
      TabIndex        =   382
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   374
      Left            =   1800
      TabIndex        =   381
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   373
      Left            =   1680
      TabIndex        =   380
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   372
      Left            =   1560
      TabIndex        =   379
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   371
      Left            =   1440
      TabIndex        =   378
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   370
      Left            =   1320
      TabIndex        =   377
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   369
      Left            =   1200
      TabIndex        =   376
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   368
      Left            =   1080
      TabIndex        =   375
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   367
      Left            =   960
      TabIndex        =   374
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   366
      Left            =   840
      TabIndex        =   373
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   365
      Left            =   720
      TabIndex        =   372
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   364
      Left            =   600
      TabIndex        =   371
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   363
      Left            =   480
      TabIndex        =   370
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   362
      Left            =   360
      TabIndex        =   369
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   361
      Left            =   240
      TabIndex        =   368
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   360
      Left            =   120
      TabIndex        =   367
      Top             =   3000
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   359
      Left            =   2880
      TabIndex        =   366
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   358
      Left            =   2760
      TabIndex        =   365
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   357
      Left            =   2640
      TabIndex        =   364
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   356
      Left            =   2520
      TabIndex        =   363
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   355
      Left            =   2400
      TabIndex        =   362
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   354
      Left            =   2280
      TabIndex        =   361
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   353
      Left            =   2160
      TabIndex        =   360
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   352
      Left            =   2040
      TabIndex        =   359
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   351
      Left            =   1920
      TabIndex        =   358
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   350
      Left            =   1800
      TabIndex        =   357
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   349
      Left            =   1680
      TabIndex        =   356
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   348
      Left            =   1560
      TabIndex        =   355
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   347
      Left            =   1440
      TabIndex        =   354
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   346
      Left            =   1320
      TabIndex        =   353
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   345
      Left            =   1200
      TabIndex        =   352
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   344
      Left            =   1080
      TabIndex        =   351
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   343
      Left            =   960
      TabIndex        =   350
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   342
      Left            =   840
      TabIndex        =   349
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   341
      Left            =   720
      TabIndex        =   348
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   340
      Left            =   600
      TabIndex        =   347
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   339
      Left            =   480
      TabIndex        =   346
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   338
      Left            =   360
      TabIndex        =   345
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   337
      Left            =   240
      TabIndex        =   344
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   336
      Left            =   120
      TabIndex        =   343
      Top             =   2880
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   335
      Left            =   2880
      TabIndex        =   342
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   334
      Left            =   2760
      TabIndex        =   341
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   333
      Left            =   2640
      TabIndex        =   340
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   332
      Left            =   2520
      TabIndex        =   339
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   331
      Left            =   2400
      TabIndex        =   338
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   330
      Left            =   2280
      TabIndex        =   337
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   329
      Left            =   2160
      TabIndex        =   336
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   328
      Left            =   2040
      TabIndex        =   335
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   327
      Left            =   1920
      TabIndex        =   334
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   326
      Left            =   1800
      TabIndex        =   333
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   325
      Left            =   1680
      TabIndex        =   332
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   324
      Left            =   1560
      TabIndex        =   331
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   323
      Left            =   1440
      TabIndex        =   330
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   322
      Left            =   1320
      TabIndex        =   329
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   321
      Left            =   1200
      TabIndex        =   328
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   320
      Left            =   1080
      TabIndex        =   327
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   319
      Left            =   960
      TabIndex        =   326
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   318
      Left            =   840
      TabIndex        =   325
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   317
      Left            =   720
      TabIndex        =   324
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   316
      Left            =   600
      TabIndex        =   323
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   315
      Left            =   480
      TabIndex        =   322
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   314
      Left            =   360
      TabIndex        =   321
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   313
      Left            =   240
      TabIndex        =   320
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   312
      Left            =   120
      TabIndex        =   319
      Top             =   2760
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   311
      Left            =   2880
      TabIndex        =   318
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   310
      Left            =   2760
      TabIndex        =   317
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   309
      Left            =   2640
      TabIndex        =   316
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   308
      Left            =   2520
      TabIndex        =   315
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   307
      Left            =   2400
      TabIndex        =   314
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   306
      Left            =   2280
      TabIndex        =   313
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   305
      Left            =   2160
      TabIndex        =   312
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   304
      Left            =   2040
      TabIndex        =   311
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   303
      Left            =   1920
      TabIndex        =   310
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   302
      Left            =   1800
      TabIndex        =   309
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   301
      Left            =   1680
      TabIndex        =   308
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   300
      Left            =   1560
      TabIndex        =   307
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   299
      Left            =   1440
      TabIndex        =   306
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   298
      Left            =   1320
      TabIndex        =   305
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   297
      Left            =   1200
      TabIndex        =   304
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   296
      Left            =   1080
      TabIndex        =   303
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   295
      Left            =   960
      TabIndex        =   302
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   294
      Left            =   840
      TabIndex        =   301
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   293
      Left            =   720
      TabIndex        =   300
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   292
      Left            =   600
      TabIndex        =   299
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   291
      Left            =   480
      TabIndex        =   298
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   290
      Left            =   360
      TabIndex        =   297
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   289
      Left            =   240
      TabIndex        =   296
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   288
      Left            =   120
      TabIndex        =   295
      Top             =   2640
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   287
      Left            =   2880
      TabIndex        =   294
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   286
      Left            =   2760
      TabIndex        =   293
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   285
      Left            =   2640
      TabIndex        =   292
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   284
      Left            =   2520
      TabIndex        =   291
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   283
      Left            =   2400
      TabIndex        =   290
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   282
      Left            =   2280
      TabIndex        =   289
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   281
      Left            =   2160
      TabIndex        =   288
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   280
      Left            =   2040
      TabIndex        =   287
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   279
      Left            =   1920
      TabIndex        =   286
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   278
      Left            =   1800
      TabIndex        =   285
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   277
      Left            =   1680
      TabIndex        =   284
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   276
      Left            =   1560
      TabIndex        =   283
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   275
      Left            =   1440
      TabIndex        =   282
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   274
      Left            =   1320
      TabIndex        =   281
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   273
      Left            =   1200
      TabIndex        =   280
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   272
      Left            =   1080
      TabIndex        =   279
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   271
      Left            =   960
      TabIndex        =   278
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   270
      Left            =   840
      TabIndex        =   277
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   269
      Left            =   720
      TabIndex        =   276
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   268
      Left            =   600
      TabIndex        =   275
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   267
      Left            =   480
      TabIndex        =   274
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   266
      Left            =   360
      TabIndex        =   273
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   265
      Left            =   240
      TabIndex        =   272
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   264
      Left            =   120
      TabIndex        =   271
      Top             =   2520
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   263
      Left            =   2880
      TabIndex        =   270
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   262
      Left            =   2760
      TabIndex        =   269
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   261
      Left            =   2640
      TabIndex        =   268
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   260
      Left            =   2520
      TabIndex        =   267
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   259
      Left            =   2400
      TabIndex        =   266
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   258
      Left            =   2280
      TabIndex        =   265
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   257
      Left            =   2160
      TabIndex        =   264
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   256
      Left            =   2040
      TabIndex        =   263
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   255
      Left            =   1920
      TabIndex        =   262
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   254
      Left            =   1800
      TabIndex        =   261
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   253
      Left            =   1680
      TabIndex        =   260
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   252
      Left            =   1560
      TabIndex        =   259
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   251
      Left            =   1440
      TabIndex        =   258
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   250
      Left            =   1320
      TabIndex        =   257
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   249
      Left            =   1200
      TabIndex        =   256
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   248
      Left            =   1080
      TabIndex        =   255
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   247
      Left            =   960
      TabIndex        =   254
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   246
      Left            =   840
      TabIndex        =   253
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   245
      Left            =   720
      TabIndex        =   252
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   244
      Left            =   600
      TabIndex        =   251
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   243
      Left            =   480
      TabIndex        =   250
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   242
      Left            =   360
      TabIndex        =   249
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   241
      Left            =   240
      TabIndex        =   248
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   240
      Left            =   120
      TabIndex        =   247
      Top             =   2400
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   239
      Left            =   2880
      TabIndex        =   246
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   238
      Left            =   2760
      TabIndex        =   245
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   237
      Left            =   2640
      TabIndex        =   244
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   236
      Left            =   2520
      TabIndex        =   243
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   235
      Left            =   2400
      TabIndex        =   242
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   234
      Left            =   2280
      TabIndex        =   241
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   233
      Left            =   2160
      TabIndex        =   240
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   232
      Left            =   2040
      TabIndex        =   239
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   231
      Left            =   1920
      TabIndex        =   238
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   230
      Left            =   1800
      TabIndex        =   237
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   229
      Left            =   1680
      TabIndex        =   236
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   228
      Left            =   1560
      TabIndex        =   235
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   227
      Left            =   1440
      TabIndex        =   234
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   226
      Left            =   1320
      TabIndex        =   233
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   225
      Left            =   1200
      TabIndex        =   232
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   224
      Left            =   1080
      TabIndex        =   231
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   223
      Left            =   960
      TabIndex        =   230
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   222
      Left            =   840
      TabIndex        =   229
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   221
      Left            =   720
      TabIndex        =   228
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   220
      Left            =   600
      TabIndex        =   227
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   219
      Left            =   480
      TabIndex        =   226
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   218
      Left            =   360
      TabIndex        =   225
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   217
      Left            =   240
      TabIndex        =   224
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   216
      Left            =   120
      TabIndex        =   223
      Top             =   2280
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   215
      Left            =   2880
      TabIndex        =   222
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   214
      Left            =   2760
      TabIndex        =   221
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   213
      Left            =   2640
      TabIndex        =   220
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   212
      Left            =   2520
      TabIndex        =   219
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   211
      Left            =   2400
      TabIndex        =   218
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   210
      Left            =   2280
      TabIndex        =   217
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   209
      Left            =   2160
      TabIndex        =   216
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   208
      Left            =   2040
      TabIndex        =   215
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   207
      Left            =   1920
      TabIndex        =   214
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   206
      Left            =   1800
      TabIndex        =   213
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   205
      Left            =   1680
      TabIndex        =   212
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   204
      Left            =   1560
      TabIndex        =   211
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   203
      Left            =   1440
      TabIndex        =   210
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   202
      Left            =   1320
      TabIndex        =   209
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   201
      Left            =   1200
      TabIndex        =   208
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   200
      Left            =   1080
      TabIndex        =   207
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   199
      Left            =   960
      TabIndex        =   206
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   198
      Left            =   840
      TabIndex        =   205
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   197
      Left            =   720
      TabIndex        =   204
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   196
      Left            =   600
      TabIndex        =   203
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   195
      Left            =   480
      TabIndex        =   202
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   194
      Left            =   360
      TabIndex        =   201
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   193
      Left            =   240
      TabIndex        =   200
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   192
      Left            =   120
      TabIndex        =   199
      Top             =   2160
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   191
      Left            =   2880
      TabIndex        =   194
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   190
      Left            =   2760
      TabIndex        =   193
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   189
      Left            =   2640
      TabIndex        =   192
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   188
      Left            =   2520
      TabIndex        =   191
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   187
      Left            =   2400
      TabIndex        =   190
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   186
      Left            =   2280
      TabIndex        =   189
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   185
      Left            =   2160
      TabIndex        =   188
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   184
      Left            =   2040
      TabIndex        =   187
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   183
      Left            =   1920
      TabIndex        =   186
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   182
      Left            =   1800
      TabIndex        =   185
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   181
      Left            =   1680
      TabIndex        =   184
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   180
      Left            =   1560
      TabIndex        =   183
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   179
      Left            =   1440
      TabIndex        =   182
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   178
      Left            =   1320
      TabIndex        =   181
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   177
      Left            =   1200
      TabIndex        =   180
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   176
      Left            =   1080
      TabIndex        =   179
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   175
      Left            =   960
      TabIndex        =   178
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   174
      Left            =   840
      TabIndex        =   177
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   173
      Left            =   720
      TabIndex        =   176
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   172
      Left            =   600
      TabIndex        =   175
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   171
      Left            =   480
      TabIndex        =   174
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   170
      Left            =   360
      TabIndex        =   173
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   169
      Left            =   240
      TabIndex        =   172
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   168
      Left            =   120
      TabIndex        =   171
      Top             =   2040
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   167
      Left            =   2880
      TabIndex        =   170
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   166
      Left            =   2760
      TabIndex        =   169
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   165
      Left            =   2640
      TabIndex        =   168
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   164
      Left            =   2520
      TabIndex        =   167
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   163
      Left            =   2400
      TabIndex        =   166
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   162
      Left            =   2280
      TabIndex        =   165
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   161
      Left            =   2160
      TabIndex        =   164
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   160
      Left            =   2040
      TabIndex        =   163
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   159
      Left            =   1920
      TabIndex        =   162
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   158
      Left            =   1800
      TabIndex        =   161
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   157
      Left            =   1680
      TabIndex        =   160
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   156
      Left            =   1560
      TabIndex        =   159
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   155
      Left            =   1440
      TabIndex        =   158
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   154
      Left            =   1320
      TabIndex        =   157
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   153
      Left            =   1200
      TabIndex        =   156
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   152
      Left            =   1080
      TabIndex        =   155
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   151
      Left            =   960
      TabIndex        =   154
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   150
      Left            =   840
      TabIndex        =   153
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   149
      Left            =   720
      TabIndex        =   152
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   148
      Left            =   600
      TabIndex        =   151
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   147
      Left            =   480
      TabIndex        =   150
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   146
      Left            =   360
      TabIndex        =   149
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   145
      Left            =   240
      TabIndex        =   148
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   144
      Left            =   120
      TabIndex        =   147
      Top             =   1920
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   143
      Left            =   2880
      TabIndex        =   146
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   142
      Left            =   2760
      TabIndex        =   145
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   141
      Left            =   2640
      TabIndex        =   144
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   140
      Left            =   2520
      TabIndex        =   143
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   139
      Left            =   2400
      TabIndex        =   142
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   138
      Left            =   2280
      TabIndex        =   141
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   137
      Left            =   2160
      TabIndex        =   140
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   136
      Left            =   2040
      TabIndex        =   139
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   135
      Left            =   1920
      TabIndex        =   138
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   134
      Left            =   1800
      TabIndex        =   137
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   133
      Left            =   1680
      TabIndex        =   136
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   132
      Left            =   1560
      TabIndex        =   135
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   131
      Left            =   1440
      TabIndex        =   134
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   130
      Left            =   1320
      TabIndex        =   133
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   129
      Left            =   1200
      TabIndex        =   132
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   128
      Left            =   1080
      TabIndex        =   131
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   64
      Left            =   2040
      TabIndex        =   130
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   65
      Left            =   2160
      TabIndex        =   129
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   66
      Left            =   2280
      TabIndex        =   128
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   67
      Left            =   2400
      TabIndex        =   127
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   68
      Left            =   2520
      TabIndex        =   126
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   69
      Left            =   2640
      TabIndex        =   125
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   70
      Left            =   2760
      TabIndex        =   124
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   71
      Left            =   2880
      TabIndex        =   123
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   72
      Left            =   120
      TabIndex        =   122
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   73
      Left            =   240
      TabIndex        =   121
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   74
      Left            =   360
      TabIndex        =   120
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   75
      Left            =   480
      TabIndex        =   119
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   76
      Left            =   600
      TabIndex        =   118
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   77
      Left            =   720
      TabIndex        =   117
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   78
      Left            =   840
      TabIndex        =   116
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   79
      Left            =   960
      TabIndex        =   115
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   80
      Left            =   1080
      TabIndex        =   114
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   81
      Left            =   1200
      TabIndex        =   113
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   82
      Left            =   1320
      TabIndex        =   112
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   83
      Left            =   1440
      TabIndex        =   111
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   84
      Left            =   1560
      TabIndex        =   110
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   85
      Left            =   1680
      TabIndex        =   109
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   86
      Left            =   1800
      TabIndex        =   108
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   87
      Left            =   1920
      TabIndex        =   107
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   88
      Left            =   2040
      TabIndex        =   106
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   89
      Left            =   2160
      TabIndex        =   105
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   90
      Left            =   2280
      TabIndex        =   104
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   91
      Left            =   2400
      TabIndex        =   103
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   92
      Left            =   2520
      TabIndex        =   102
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   93
      Left            =   2640
      TabIndex        =   101
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   94
      Left            =   2760
      TabIndex        =   100
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   95
      Left            =   2880
      TabIndex        =   99
      Top             =   1560
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   96
      Left            =   120
      TabIndex        =   98
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   97
      Left            =   240
      TabIndex        =   97
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   98
      Left            =   360
      TabIndex        =   96
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   99
      Left            =   480
      TabIndex        =   95
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   100
      Left            =   600
      TabIndex        =   94
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   101
      Left            =   720
      TabIndex        =   93
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   102
      Left            =   840
      TabIndex        =   92
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   103
      Left            =   960
      TabIndex        =   91
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   104
      Left            =   1080
      TabIndex        =   90
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   105
      Left            =   1200
      TabIndex        =   89
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   106
      Left            =   1320
      TabIndex        =   88
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   107
      Left            =   1440
      TabIndex        =   87
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   108
      Left            =   1560
      TabIndex        =   86
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   109
      Left            =   1680
      TabIndex        =   85
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   110
      Left            =   1800
      TabIndex        =   84
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   111
      Left            =   1920
      TabIndex        =   83
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   112
      Left            =   2040
      TabIndex        =   82
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   113
      Left            =   2160
      TabIndex        =   81
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   114
      Left            =   2280
      TabIndex        =   80
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   115
      Left            =   2400
      TabIndex        =   79
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   116
      Left            =   2520
      TabIndex        =   78
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   117
      Left            =   2640
      TabIndex        =   77
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   118
      Left            =   2760
      TabIndex        =   76
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   119
      Left            =   2880
      TabIndex        =   75
      Top             =   1680
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   120
      Left            =   120
      TabIndex        =   74
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   121
      Left            =   240
      TabIndex        =   73
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   122
      Left            =   360
      TabIndex        =   72
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   123
      Left            =   480
      TabIndex        =   71
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   124
      Left            =   600
      TabIndex        =   70
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   125
      Left            =   720
      TabIndex        =   69
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   126
      Left            =   840
      TabIndex        =   68
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   127
      Left            =   960
      TabIndex        =   67
      Top             =   1800
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   63
      Left            =   1920
      TabIndex        =   63
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   62
      Left            =   1800
      TabIndex        =   62
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   61
      Left            =   1680
      TabIndex        =   61
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   60
      Left            =   1560
      TabIndex        =   60
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   59
      Left            =   1440
      TabIndex        =   59
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   58
      Left            =   1320
      TabIndex        =   58
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   57
      Left            =   1200
      TabIndex        =   57
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   56
      Left            =   1080
      TabIndex        =   56
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   55
      Left            =   960
      TabIndex        =   55
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   54
      Left            =   840
      TabIndex        =   54
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   53
      Left            =   720
      TabIndex        =   53
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   52
      Left            =   600
      TabIndex        =   52
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   51
      Left            =   480
      TabIndex        =   51
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   50
      Left            =   360
      TabIndex        =   50
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   49
      Left            =   240
      TabIndex        =   49
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   48
      Left            =   120
      TabIndex        =   48
      Top             =   1440
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   47
      Left            =   2880
      TabIndex        =   47
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   46
      Left            =   2760
      TabIndex        =   46
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   45
      Left            =   2640
      TabIndex        =   45
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   44
      Left            =   2520
      TabIndex        =   44
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   43
      Left            =   2400
      TabIndex        =   43
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   42
      Left            =   2280
      TabIndex        =   42
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   41
      Left            =   2160
      TabIndex        =   41
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   40
      Left            =   2040
      TabIndex        =   40
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   39
      Left            =   1920
      TabIndex        =   39
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   38
      Left            =   1800
      TabIndex        =   38
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   37
      Left            =   1680
      TabIndex        =   37
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   36
      Left            =   1560
      TabIndex        =   36
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   35
      Left            =   1440
      TabIndex        =   35
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   34
      Left            =   1320
      TabIndex        =   34
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   33
      Left            =   1200
      TabIndex        =   33
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   32
      Left            =   1080
      TabIndex        =   32
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   31
      Left            =   960
      TabIndex        =   31
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   30
      Left            =   840
      TabIndex        =   30
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   29
      Left            =   720
      TabIndex        =   29
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   28
      Left            =   600
      TabIndex        =   28
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   27
      Left            =   480
      TabIndex        =   27
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   26
      Left            =   360
      TabIndex        =   26
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   25
      Left            =   240
      TabIndex        =   25
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   24
      Left            =   120
      TabIndex        =   24
      Top             =   1320
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   23
      Left            =   2880
      TabIndex        =   23
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   22
      Left            =   2760
      TabIndex        =   22
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   21
      Left            =   2640
      TabIndex        =   21
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   20
      Left            =   2520
      TabIndex        =   20
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   19
      Left            =   2400
      TabIndex        =   19
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   18
      Left            =   2280
      TabIndex        =   18
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   17
      Left            =   2160
      TabIndex        =   17
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   16
      Left            =   2040
      TabIndex        =   16
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   15
      Left            =   1920
      TabIndex        =   15
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   14
      Left            =   1800
      TabIndex        =   14
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   13
      Left            =   1680
      TabIndex        =   13
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   12
      Left            =   1560
      TabIndex        =   12
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   11
      Left            =   1440
      TabIndex        =   11
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   10
      Left            =   1320
      TabIndex        =   10
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   9
      Left            =   1200
      TabIndex        =   9
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   8
      Left            =   1080
      TabIndex        =   8
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   7
      Left            =   960
      TabIndex        =   7
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   6
      Left            =   840
      TabIndex        =   6
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   5
      Left            =   720
      TabIndex        =   5
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   4
      Left            =   600
      TabIndex        =   4
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   3
      Left            =   480
      TabIndex        =   3
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   2
      Left            =   360
      TabIndex        =   2
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   1
      Left            =   240
      TabIndex        =   1
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblPixel 
      BackColor       =   &H8000000E&
      Height          =   132
      Index           =   0
      Left            =   120
      TabIndex        =   0
      Top             =   1200
      Width           =   132
   End
   Begin VB.Label lblAddr 
      Height          =   255
      Index           =   0
      Left            =   120
      TabIndex        =   64
      Top             =   960
      Width           =   1215
   End
   Begin VB.Label lblCode 
      Alignment       =   1  'Right Justify
      Height          =   252
      Index           =   0
      Left            =   2640
      TabIndex        =   196
      Top             =   3720
      Width           =   372
   End
   Begin VB.Label lblAddr 
      Height          =   255
      Index           =   1
      Left            =   3120
      TabIndex        =   66
      Top             =   960
      Width           =   1215
   End
   Begin VB.Label lblCode 
      Alignment       =   1  'Right Justify
      Height          =   252
      Index           =   1
      Left            =   5640
      TabIndex        =   197
      Top             =   3720
      Width           =   372
   End
   Begin VB.Label lblAddr 
      Height          =   255
      Index           =   2
      Left            =   6120
      TabIndex        =   195
      Top             =   960
      Width           =   1215
   End
   Begin VB.Label lblCode 
      Alignment       =   1  'Right Justify
      Height          =   252
      Index           =   2
      Left            =   8640
      TabIndex        =   198
      Top             =   3720
      Width           =   372
   End
   Begin VB.Label lblAddr 
      Height          =   255
      Index           =   3
      Left            =   120
      TabIndex        =   2023
      Top             =   4320
      Width           =   1215
   End
   Begin VB.Label lblAddr 
      Height          =   255
      Index           =   4
      Left            =   3120
      TabIndex        =   2528
      Top             =   4320
      Width           =   1215
   End
   Begin VB.Label lblAddr 
      Height          =   255
      Index           =   5
      Left            =   6120
      TabIndex        =   3033
      Top             =   4320
      Width           =   1215
   End
   Begin VB.Menu mnuFile 
      Caption         =   "File"
      Begin VB.Menu mnuOpen 
         Caption         =   "Open ..."
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim Memory(0 To 65535) As Byte

Dim StartAddr As Long
Dim EndAddr As Long
Dim CurrAddr As Long

Private Sub cmdDisplay_Click()
    Form2.Show vbModal
End Sub

Private Sub hsbAddr_Change()
    Show_Sprites
End Sub

Private Sub hsbAddr_Scroll()
    Show_Sprites
End Sub

Private Sub hsbOffset_Change()
    lblOffset.Caption = hsbOffset.Value
    
    Show_Sprites
End Sub

Private Sub Show_Sprites()
    CurrAddr = 64 * CLng(hsbAddr.Value) + hsbOffset.Value
    
    Show_Sprite
End Sub

Private Sub Show_Sprite()
    Dim i As Integer, j As Integer, k As Long
    Dim BC1 As Long, BC2 As Long, BC3 As Long, BC4 As Long
    
    lblBank.Caption = "Bank:  " & CurrAddr \ 16384
    
    For k = 0 To 2
        If k = 1 Then
            BC1 = vbWhite
            BC2 = vbBlack
            BC3 = vbRed
            BC4 = vbCyan
        Else
            BC1 = RGB(224, 224, 224)
            BC2 = RGB(96, 96, 96)
            BC3 = RGB(224, 96, 96)
            BC4 = RGB(96, 224, 224)
        End If
        
        lblAddr(k).Caption = Dec2Hex(CurrAddr + 64 * k, 4) & "    " & _
                             Dec2Hex(((CurrAddr + 64 * k) Mod 16384) \ 64, 2)
        'lblCode(k).Caption = ((CurrAddr + 64 * k) \ 8) Mod 256
    
        For i = 0 To 62
            For j = 0 To 7
                If (Memory(CurrAddr + 64 * k + i) And 2 ^ j) = 0 Then
                    lblPixel(504 * k + 8 * i + (7 - j)).BackColor = BC1
                Else
                    lblPixel(504 * k + 8 * i + (7 - j)).BackColor = BC2
                End If
            Next
        Next
        
        
        lblAddr(k + 3).Caption = CurrAddr + 64 * k & "    " & _
                                 ((CurrAddr + 64 * k) Mod 16384) \ 64
        ''lblCode(k + 3).Caption = ((CurrAddr + 64 * k) \ 8) Mod 256
    
        For i = 0 To 62
            For j = 0 To 6 Step 2
                If (Memory(CurrAddr + 64 * k + i) And 2 ^ j) = 0 Then
                    If (Memory(CurrAddr + 64 * k + i) And 2 ^ (j + 1)) = 0 Then
                        lblPixel(504 * (k + 3) + 8 * i + (7 - j)).BackColor = BC1
                        lblPixel(504 * (k + 3) + 8 * i + (6 - j)).BackColor = BC1
                    Else
                        lblPixel(504 * (k + 3) + 8 * i + (7 - j)).BackColor = BC3
                        lblPixel(504 * (k + 3) + 8 * i + (6 - j)).BackColor = BC3
                    End If
                Else
                    If (Memory(CurrAddr + 64 * k + i) And 2 ^ (j + 1)) = 0 Then
                        lblPixel(504 * (k + 3) + 8 * i + (7 - j)).BackColor = BC4
                        lblPixel(504 * (k + 3) + 8 * i + (6 - j)).BackColor = BC4
                    Else
                        lblPixel(504 * (k + 3) + 8 * i + (7 - j)).BackColor = BC2
                        lblPixel(504 * (k + 3) + 8 * i + (6 - j)).BackColor = BC2
                    End If
                End If
            Next
        Next
    Next
    
    DoEvents
End Sub

Private Sub mnuOpen_Click()
    cdcOpen.ShowOpen
    
    If cdcOpen.filename <> "" Then Read_File (cdcOpen.filename)
End Sub

Private Sub Read_File(filename As String)
    Dim byt As Byte, Address As Long

    Open filename For Binary As #1

    Get #1, , byt: Address = byt
    Get #1, , byt: Address = Address + 256 * CLng(byt)

    StartAddr = Address
    EndAddr = StartAddr + FileLen(filename) - 3

    'While Not EOF(1)
    For Address = StartAddr To EndAddr
        Get #1, , byt
        
        If Address <= 65535 Then
            Memory(Address) = byt
            'Address = Address + 1
        End If
    'Wend
    Next

    'EndAddr = Address - 1: 'MsgBox "EndAddr = " & EndAddr
    
    Close #1
    
    Caption = "Sprite Finder - " & cdcOpen.filename & "  " & Dec2Hex(StartAddr, 4) & "-" & Dec2Hex(EndAddr, 4)
    
    hsbAddr.Min = StartAddr \ 64
    hsbAddr.Max = EndAddr \ 64 - 2
    
    hsbAddr.Value = StartAddr \ 64
    
    Show_Sprites
End Sub

Private Function Dec2Hex(Dec As Long, HexLen As Integer) As String
    Dec2Hex = Right$("0000" & Hex(Dec), HexLen)
End Function
