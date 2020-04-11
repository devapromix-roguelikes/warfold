unit gm_data;

interface

uses
  zglHeader, gm_types, gm_patterns;

var
  WBlackTex   : zglPTexture;
  WWhiteTex   : zglPTexture;
  WShadowTex  : zglPTexture;
  ItemSlotTex : zglPTexture;
  BtnTex      : zglPTexture;
  Btn1Tex     : zglPTexture;
  DollTex     : zglPTexture;
  GlowTex     : zglPTexture;
  BagTex      : zglPTexture;
  StatsTex    : zglPTexture;
  SpellTex    : zglPTexture;
  ScrtsTex    : zglPTexture;
  Btn2Tex     : zglPTexture;
  FireTex     : zglPTexture;
  IceTex      : zglPTexture;

procedure Data_Load;
procedure Data_Free;

implementation

//==============================================================================
procedure Data_Load;
begin
  Fnt         := font_LoadFromFile( 'Data\Fonts\font.zfi' );
  Fnt2        := font_LoadFromFile( 'Data\Fonts\font2.zfi' );

  WBlackTex   := tex_LoadFromFile( 'Data\Sprites\wblack.png' );
  WWhiteTex   := tex_LoadFromFile( 'Data\Sprites\wwhite.png' );
  WShadowTex  := tex_LoadFromFile( 'Data\Sprites\wshadow.png' );
  ItemSlotTex := tex_LoadFromFile( 'Data\Sprites\itemslot.png' );
  BtnTex      := tex_LoadFromFile( 'Data\Sprites\btn.png' );
  Btn1Tex     := tex_LoadFromFile( 'Data\Sprites\chestbtn.png' );
  Btn2Tex     := tex_LoadFromFile( 'Data\Sprites\pmbtn.png' );
  DollTex     := tex_LoadFromFile( 'Data\Sprites\doll.png' );
  GlowTex     := tex_LoadFromFile( 'Data\Sprites\glow.png' );
  BagTex      := tex_LoadFromFile( 'Data\Sprites\bag.png' );
  StatsTex    := tex_LoadFromFile( 'Data\Sprites\stats.png' );
  SpellTex    := tex_LoadFromFile( 'Data\Sprites\spellbook.png' );
  ScrtsTex    := tex_LoadFromFile( 'Data\Sprites\scratches.png' );
  FireTex     := tex_LoadFromFile( 'Data\Sprites\fire.png' );
  IceTex      := tex_LoadFromFile( 'Data\Sprites\ice.png' );
  tex_SetFrameSize( BtnTex, 32, 32 );
  tex_SetFrameSize( Btn1Tex, 16, 16 );
  tex_SetFrameSize( Btn2Tex, 16, 16 );

  CrParam_Add( 'Strength', '����' );
  CrParam_Add( 'Agility', '��������' );
  CrParam_Add( 'Endurance', '������������' );
  CrParam_Add( 'Intelligence', '���������' );

  CrParam_Add( 'Sword', '���' );
  CrParam_Add( 'Axe', '�����' );
  CrParam_Add( 'Bow', '���' );
  CrParam_Add( 'Throwing', '�������' );  
  CrParam_Add( 'Unarmed', '��� ������' );
  CrParam_Add( 'Magic', '�����' );

  AddSpell( '�������', 3, 2 );
  AddSpell( '�������� ���', 3, 2 );
  AddSpell( '�����������', 3, 2 );
  AddSpell( '���������', 5, 2 );
  AddSpell( '������', 7, 5 );
  AddSpell( '���������', 3, 5 );
  AddSpell( '����� ������', 10, 5 );
  AddSpell( '����������', 30, 8 );

  LoadPatterns( 'Data\' );
end;

//==============================================================================
procedure Data_Free;
begin
  Patterns_Free;
end;

end.
