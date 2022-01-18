{==============================================================================
  ____  ____  _
 / ___||  _ \| |
 \___ \| | | | |
  ___) | |_| | |___
 |____/|____/|_____|
 Simple DirectMedia
  Layer for Delphi

 Pascal bindings that allow you to use SDL and other useful libraries with
 Delphi.

 Inclued:
   - SDL (https://github.com/libsdl-org/SDL)
   - SDL2_gfx (https://github.com/Semphriss/SDL2_gfx)
   - pl_mpeg (https://github.com/phoboslab/pl_mpeg)
   - Nuklear (https://github.com/Immediate-Mode-UI/Nuklear)
   - stb_image (https://github.com/nothings/stb)
   - stb_image_write (https://github.com/nothings/stb)
   - stb_truetype (https://github.com/nothings/stb)
   - miniaudio (https://github.com/mackron/miniaudio)
   - physfs (https://github.com/icculus/physfs)
   - minizip (https://github.com/madler/zlib)
   - enet (https://github.com/lsalzman/enet)

 Minimum Requirements:
   - Windows 10+ (64 bits)
   - Delphi Community Edition (Win64 platform only)

 Usage:
   You simply add SDL to your uses section and everything will be linked in
   and ready for use. You will have direct access to all the above
   libraries.

 NOTE: We're using SDL for our game projects therefore these bindings will
       always remain up to date.🆒

 Copyright © 2021-2022 tinyBigGAMES™ LLC
 All Rights Reserved.

 Website: https://tinybiggames.com
 Email  : support@tinybiggames.com

 Redistribution and use in source and binary forms, with or without
 modification, are permitted provided that the following conditions are met:

 1. The origin of this software must not be misrepresented; you must not
    claim that you wrote the original software. If you use this software in
    a product, an acknowledgment in the product documentation would be
    appreciated but is not required.
 2. Redistributions of source code must retain the above copyright
    notice, this list of conditions and the following disclaimer.

 3. Redistributions in binary form must reproduce the above copyright
    notice, this list of conditions and the following disclaimer in
    the documentation and/or other materials provided with the
    distribution.

 4. Neither the name of the copyright holder nor the names of its
    contributors may be used to endorse or promote products derived
    from this software without specific prior written permission.

 5. All video, audio, graphics and other content accessed through the
    software in this distro is the property of the applicable content owner
    and may be protected by applicable copyright law. This License gives
    Customer no rights to such content, and Company disclaims any liability
    for misuse of content.

 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
 LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 POSSIBILITY OF SUCH DAMAGE.
============================================================================= }

program ZipArc;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  uZipArc in 'uZipArc.pas',
  SDL in '..\SDL.pas';

begin
  ReportMemoryLeaksOnShutdown := True;
  try
    RunZipArc;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
