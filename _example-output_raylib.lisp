(define *path* (cons ".." *path*)) (define-library (lib raylib) (import (otus lisp) (otus ffi)) (export 
InitWindow
WindowShouldClose
CloseWindow
IsWindowReady
IsWindowFullscreen
IsWindowHidden
IsWindowMinimized
IsWindowMaximized
IsWindowFocused
IsWindowResized
IsWindowState
SetWindowState
ClearWindowState
ToggleFullscreen
MaximizeWindow
MinimizeWindow
RestoreWindow
SetWindowIcon
SetWindowTitle
SetWindowPosition
SetWindowMonitor
SetWindowMinSize
SetWindowSize
SetWindowOpacity
GetWindowHandle
GetScreenWidth
GetScreenHeight
GetRenderWidth
GetRenderHeight
GetMonitorCount
GetCurrentMonitor
GetMonitorPosition
GetMonitorWidth
GetMonitorHeight
GetMonitorPhysicalWidth
GetMonitorPhysicalHeight
GetMonitorRefreshRate
GetWindowPosition
GetWindowScaleDPI
GetMonitorName
SetClipboardText
GetClipboardText
EnableEventWaiting
DisableEventWaiting
SwapScreenBuffer
PollInputEvents
WaitTime
ShowCursor
HideCursor
IsCursorHidden
EnableCursor
DisableCursor
IsCursorOnScreen
ClearBackground
BeginDrawing
EndDrawing
BeginMode2D
EndMode2D
BeginMode3D
EndMode3D
BeginTextureMode
EndTextureMode
BeginShaderMode
EndShaderMode
BeginBlendMode
EndBlendMode
BeginScissorMode
EndScissorMode
BeginVrStereoMode
EndVrStereoMode
LoadVrStereoConfig
UnloadVrStereoConfig
LoadShader
LoadShaderFromMemory
GetShaderLocation
GetShaderLocationAttrib
SetShaderValue
SetShaderValueV
SetShaderValueMatrix
SetShaderValueTexture
UnloadShader
GetMouseRay
GetCameraMatrix
GetCameraMatrix2D
GetWorldToScreen
GetScreenToWorld2D
GetWorldToScreenEx
GetWorldToScreen2D
SetTargetFPS
GetFPS
GetFrameTime
GetTime
GetRandomValue
SetRandomSeed
TakeScreenshot
SetConfigFlags
TraceLog
SetTraceLogLevel
MemAlloc
MemRealloc
MemFree
OpenURL
SetTraceLogCallback
SetLoadFileDataCallback
SetSaveFileDataCallback
SetLoadFileTextCallback
SetSaveFileTextCallback
LoadFileData
UnloadFileData
SaveFileData
ExportDataAsCode
LoadFileText
UnloadFileText
SaveFileText
FileExists
DirectoryExists
IsFileExtension
GetFileLength
GetFileExtension
GetFileName
GetFileNameWithoutExt
GetDirectoryPath
GetPrevDirectoryPath
GetWorkingDirectory
GetApplicationDirectory
ChangeDirectory
IsPathFile
LoadDirectoryFiles
LoadDirectoryFilesEx
UnloadDirectoryFiles
IsFileDropped
LoadDroppedFiles
UnloadDroppedFiles
GetFileModTime
CompressData
DecompressData
EncodeDataBase64
DecodeDataBase64
IsKeyPressed
IsKeyDown
IsKeyReleased
IsKeyUp
SetExitKey
GetKeyPressed
GetCharPressed
IsGamepadAvailable
GetGamepadName
IsGamepadButtonPressed
IsGamepadButtonDown
IsGamepadButtonReleased
IsGamepadButtonUp
GetGamepadButtonPressed
GetGamepadAxisCount
GetGamepadAxisMovement
SetGamepadMappings
IsMouseButtonPressed
IsMouseButtonDown
IsMouseButtonReleased
IsMouseButtonUp
GetMouseX
GetMouseY
GetMousePosition
GetMouseDelta
SetMousePosition
SetMouseOffset
SetMouseScale
GetMouseWheelMove
GetMouseWheelMoveV
SetMouseCursor
GetTouchX
GetTouchY
GetTouchPosition
GetTouchPointId
GetTouchPointCount
SetGesturesEnabled
IsGestureDetected
GetGestureDetected
GetGestureHoldDuration
GetGestureDragVector
GetGestureDragAngle
GetGesturePinchVector
GetGesturePinchAngle
SetCameraMode
UpdateCamera
SetCameraPanControl
SetCameraAltControl
SetCameraSmoothZoomControl
SetCameraMoveControls
SetShapesTexture
DrawPixel
DrawPixelV
DrawLine
DrawLineV
DrawLineEx
DrawLineBezier
DrawLineBezierQuad
DrawLineBezierCubic
DrawLineStrip
DrawCircle
DrawCircleSector
DrawCircleSectorLines
DrawCircleGradient
DrawCircleV
DrawCircleLines
DrawEllipse
DrawEllipseLines
DrawRing
DrawRingLines
DrawRectangle
DrawRectangleV
DrawRectangleRec
DrawRectanglePro
DrawRectangleGradientV
DrawRectangleGradientH
DrawRectangleGradientEx
DrawRectangleLines
DrawRectangleLinesEx
DrawRectangleRounded
DrawRectangleRoundedLines
DrawTriangle
DrawTriangleLines
DrawTriangleFan
DrawTriangleStrip
DrawPoly
DrawPolyLines
DrawPolyLinesEx
CheckCollisionRecs
CheckCollisionCircles
CheckCollisionCircleRec
CheckCollisionPointRec
CheckCollisionPointCircle
CheckCollisionPointTriangle
CheckCollisionLines
CheckCollisionPointLine
GetCollisionRec
LoadImage
LoadImageRaw
LoadImageAnim
LoadImageFromMemory
LoadImageFromTexture
LoadImageFromScreen
UnloadImage
ExportImage
ExportImageAsCode
GenImageColor
GenImageGradientV
GenImageGradientH
GenImageGradientRadial
GenImageChecked
GenImageWhiteNoise
GenImageCellular
ImageCopy
ImageFromImage
ImageText
ImageTextEx
ImageFormat
ImageToPOT
ImageCrop
ImageAlphaCrop
ImageAlphaClear
ImageAlphaMask
ImageAlphaPremultiply
ImageResize
ImageResizeNN
ImageResizeCanvas
ImageMipmaps
ImageDither
ImageFlipVertical
ImageFlipHorizontal
ImageRotateCW
ImageRotateCCW
ImageColorTint
ImageColorInvert
ImageColorGrayscale
ImageColorContrast
ImageColorBrightness
ImageColorReplace
LoadImageColors
LoadImagePalette
UnloadImageColors
UnloadImagePalette
GetImageAlphaBorder
GetImageColor
ImageClearBackground
ImageDrawPixel
ImageDrawPixelV
ImageDrawLine
ImageDrawLineV
ImageDrawCircle
ImageDrawCircleV
ImageDrawRectangle
ImageDrawRectangleV
ImageDrawRectangleRec
ImageDrawRectangleLines
ImageDraw
ImageDrawText
ImageDrawTextEx
LoadTexture
LoadTextureFromImage
LoadTextureCubemap
LoadRenderTexture
UnloadTexture
UnloadRenderTexture
UpdateTexture
UpdateTextureRec
GenTextureMipmaps
SetTextureFilter
SetTextureWrap
DrawTexture
DrawTextureV
DrawTextureEx
DrawTextureRec
DrawTextureQuad
DrawTextureTiled
DrawTexturePro
DrawTextureNPatch
DrawTexturePoly
Fade
ColorToInt
ColorNormalize
ColorFromNormalized
ColorToHSV
ColorFromHSV
ColorAlpha
ColorAlphaBlend
GetColor
GetPixelColor
SetPixelColor
GetPixelDataSize
GetFontDefault
LoadFont
LoadFontEx
LoadFontFromImage
LoadFontFromMemory
LoadFontData
GenImageFontAtlas
UnloadFontData
UnloadFont
ExportFontAsCode
DrawFPS
DrawText
DrawTextEx
DrawTextPro
DrawTextCodepoint
DrawTextCodepoints
MeasureText
MeasureTextEx
GetGlyphIndex
GetGlyphInfo
GetGlyphAtlasRec
LoadCodepoints
UnloadCodepoints
GetCodepointCount
GetCodepoint
CodepointToUTF8
TextCodepointsToUTF8
TextCopy
TextIsEqual
TextLength
TextFormat
TextSubtext
TextReplace
TextInsert
TextJoin
TextSplit
TextAppend
TextFindIndex
TextToUpper
TextToLower
TextToPascal
TextToInteger
DrawLine3D
DrawPoint3D
DrawCircle3D
DrawTriangle3D
DrawTriangleStrip3D
DrawCube
DrawCubeV
DrawCubeWires
DrawCubeWiresV
DrawCubeTexture
DrawCubeTextureRec
DrawSphere
DrawSphereEx
DrawSphereWires
DrawCylinder
DrawCylinderEx
DrawCylinderWires
DrawCylinderWiresEx
DrawPlane
DrawRay
DrawGrid
LoadModel
LoadModelFromMesh
UnloadModel
UnloadModelKeepMeshes
GetModelBoundingBox
DrawModel
DrawModelEx
DrawModelWires
DrawModelWiresEx
DrawBoundingBox
DrawBillboard
DrawBillboardRec
DrawBillboardPro
UploadMesh
UpdateMeshBuffer
UnloadMesh
DrawMesh
DrawMeshInstanced
ExportMesh
GetMeshBoundingBox
GenMeshTangents
GenMeshPoly
GenMeshPlane
GenMeshCube
GenMeshSphere
GenMeshHemiSphere
GenMeshCylinder
GenMeshCone
GenMeshTorus
GenMeshKnot
GenMeshHeightmap
GenMeshCubicmap
LoadMaterials
LoadMaterialDefault
UnloadMaterial
SetMaterialTexture
SetModelMeshMaterial
LoadModelAnimations
UpdateModelAnimation
UnloadModelAnimation
UnloadModelAnimations
IsModelAnimationValid
CheckCollisionSpheres
CheckCollisionBoxes
CheckCollisionBoxSphere
GetRayCollisionSphere
GetRayCollisionBox
GetRayCollisionMesh
GetRayCollisionTriangle
GetRayCollisionQuad
InitAudioDevice
CloseAudioDevice
IsAudioDeviceReady
SetMasterVolume
LoadWave
LoadWaveFromMemory
LoadSound
LoadSoundFromWave
UpdateSound
UnloadWave
UnloadSound
ExportWave
ExportWaveAsCode
PlaySound
StopSound
PauseSound
ResumeSound
PlaySoundMulti
StopSoundMulti
GetSoundsPlaying
IsSoundPlaying
SetSoundVolume
SetSoundPitch
SetSoundPan
WaveCopy
WaveCrop
WaveFormat
LoadWaveSamples
UnloadWaveSamples
LoadMusicStream
LoadMusicStreamFromMemory
UnloadMusicStream
PlayMusicStream
IsMusicStreamPlaying
UpdateMusicStream
StopMusicStream
PauseMusicStream
ResumeMusicStream
SeekMusicStream
SetMusicVolume
SetMusicPitch
SetMusicPan
GetMusicTimeLength
GetMusicTimePlayed
LoadAudioStream
UnloadAudioStream
UpdateAudioStream
IsAudioStreamProcessed
PlayAudioStream
PauseAudioStream
ResumeAudioStream
IsAudioStreamPlaying
StopAudioStream
SetAudioStreamVolume
SetAudioStreamPitch
SetAudioStreamPan
SetAudioStreamBufferSizeDefault
SetAudioStreamCallback
AttachAudioStreamProcessor
DetachAudioStreamProcessor
)(cond-expand (Linux (begin (define raylib (load-dynamic-library "/tmp/raylib/src/libraylib.so")) (define raylib-err "Use, for example, sudo apt install libraylib.so"))) (else (runtime-error "nsupported platform" (uname)))) (begin (if (not raylib) (runtime-error "Can't load raylib library." raylib-err))(define InitWindow (raylib fft-void "InitWindow" fft-int fft-int fft-char))
(define WindowShouldClose (raylib fft-bool "WindowShouldClose"))
(define CloseWindow (raylib fft-void "CloseWindow"))
(define IsWindowReady (raylib fft-bool "IsWindowReady"))
(define IsWindowFullscreen (raylib fft-bool "IsWindowFullscreen"))
(define IsWindowHidden (raylib fft-bool "IsWindowHidden"))
(define IsWindowMinimized (raylib fft-bool "IsWindowMinimized"))
(define IsWindowMaximized (raylib fft-bool "IsWindowMaximized"))
(define IsWindowFocused (raylib fft-bool "IsWindowFocused"))
(define IsWindowResized (raylib fft-bool "IsWindowResized"))
(define IsWindowState (raylib fft-bool "IsWindowState" fft-unsigned-int))
(define SetWindowState (raylib fft-void "SetWindowState" fft-unsigned-int))
(define ClearWindowState (raylib fft-void "ClearWindowState" fft-unsigned-int))
(define ToggleFullscreen (raylib fft-void "ToggleFullscreen"))
(define MaximizeWindow (raylib fft-void "MaximizeWindow"))
(define MinimizeWindow (raylib fft-void "MinimizeWindow"))
(define RestoreWindow (raylib fft-void "RestoreWindow"))
(define SetWindowIcon (raylib fft-void "SetWindowIcon" fft-enum))
(define SetWindowTitle (raylib fft-void "SetWindowTitle" fft-char))
(define SetWindowPosition (raylib fft-void "SetWindowPosition" fft-int fft-int))
(define SetWindowMonitor (raylib fft-void "SetWindowMonitor" fft-int))
(define SetWindowMinSize (raylib fft-void "SetWindowMinSize" fft-int fft-int))
(define SetWindowSize (raylib fft-void "SetWindowSize" fft-int fft-int))
(define SetWindowOpacity (raylib fft-void "SetWindowOpacity" fft-float))
(define GetWindowHandle (raylib fft-void * "GetWindowHandle"))
(define GetScreenWidth (raylib fft-int "GetScreenWidth"))
(define GetScreenHeight (raylib fft-int "GetScreenHeight"))
(define GetRenderWidth (raylib fft-int "GetRenderWidth"))
(define GetRenderHeight (raylib fft-int "GetRenderHeight"))
(define GetMonitorCount (raylib fft-int "GetMonitorCount"))
(define GetCurrentMonitor (raylib fft-int "GetCurrentMonitor"))
(define GetMonitorPosition (raylib fft-Vector2 "GetMonitorPosition" fft-int))
(define GetMonitorWidth (raylib fft-int "GetMonitorWidth" fft-int))
(define GetMonitorHeight (raylib fft-int "GetMonitorHeight" fft-int))
(define GetMonitorPhysicalWidth (raylib fft-int "GetMonitorPhysicalWidth" fft-int))
(define GetMonitorPhysicalHeight (raylib fft-int "GetMonitorPhysicalHeight" fft-int))
(define GetMonitorRefreshRate (raylib fft-int "GetMonitorRefreshRate" fft-int))
(define GetWindowPosition (raylib fft-Vector2 "GetWindowPosition"))
(define GetWindowScaleDPI (raylib fft-Vector2 "GetWindowScaleDPI"))
(define GetMonitorName (raylib fft-const char * "GetMonitorName" fft-int))
(define SetClipboardText (raylib fft-void "SetClipboardText" fft-char))
(define GetClipboardText (raylib fft-const char * "GetClipboardText"))
(define EnableEventWaiting (raylib fft-void "EnableEventWaiting"))
(define DisableEventWaiting (raylib fft-void "DisableEventWaiting"))
(define SwapScreenBuffer (raylib fft-void "SwapScreenBuffer"))
(define PollInputEvents (raylib fft-void "PollInputEvents"))
(define WaitTime (raylib fft-void "WaitTime" fft-double))
(define ShowCursor (raylib fft-void "ShowCursor"))
(define HideCursor (raylib fft-void "HideCursor"))
(define IsCursorHidden (raylib fft-bool "IsCursorHidden"))
(define EnableCursor (raylib fft-void "EnableCursor"))
(define DisableCursor (raylib fft-void "DisableCursor"))
(define IsCursorOnScreen (raylib fft-bool "IsCursorOnScreen"))
(define ClearBackground (raylib fft-void "ClearBackground" fft-enum))
(define BeginDrawing (raylib fft-void "BeginDrawing"))
(define EndDrawing (raylib fft-void "EndDrawing"))
(define BeginMode2D (raylib fft-void "BeginMode2D" fft-enum))
(define EndMode2D (raylib fft-void "EndMode2D"))
(define BeginMode3D (raylib fft-void "BeginMode3D" fft-enum))
(define EndMode3D (raylib fft-void "EndMode3D"))
(define BeginTextureMode (raylib fft-void "BeginTextureMode" fft-enum))
(define EndTextureMode (raylib fft-void "EndTextureMode"))
(define BeginShaderMode (raylib fft-void "BeginShaderMode" fft-enum))
(define EndShaderMode (raylib fft-void "EndShaderMode"))
(define BeginBlendMode (raylib fft-void "BeginBlendMode" fft-int))
(define EndBlendMode (raylib fft-void "EndBlendMode"))
(define BeginScissorMode (raylib fft-void "BeginScissorMode" fft-int fft-int fft-int fft-int))
(define EndScissorMode (raylib fft-void "EndScissorMode"))
(define BeginVrStereoMode (raylib fft-void "BeginVrStereoMode" fft-enum))
(define EndVrStereoMode (raylib fft-void "EndVrStereoMode"))
(define LoadVrStereoConfig (raylib fft-VrStereoConfig "LoadVrStereoConfig" fft-VrDeviceInfo))
(define UnloadVrStereoConfig (raylib fft-void "UnloadVrStereoConfig" fft-enum))
(define LoadShader (raylib fft-Shader "LoadShader" fft-char fft-char))
(define LoadShaderFromMemory (raylib fft-Shader "LoadShaderFromMemory" fft-char fft-char))
(define GetShaderLocation (raylib fft-int "GetShaderLocation" fft-enum fft-char))
(define GetShaderLocationAttrib (raylib fft-int "GetShaderLocationAttrib" fft-enum fft-char))
(define SetShaderValue (raylib fft-void "SetShaderValue" fft-enum fft-int fft-void* fft-int))
(define SetShaderValueV (raylib fft-void "SetShaderValueV" fft-enum fft-int fft-void* fft-int fft-int))
(define SetShaderValueMatrix (raylib fft-void "SetShaderValueMatrix" fft-enum fft-int fft-enum))
(define SetShaderValueTexture (raylib fft-void "SetShaderValueTexture" fft-enum fft-int fft-enum))
(define UnloadShader (raylib fft-void "UnloadShader" fft-enum))
(define GetMouseRay (raylib fft-Ray "GetMouseRay" fft-enum fft-enum))
(define GetCameraMatrix (raylib fft-Matrix "GetCameraMatrix" fft-enum))
(define GetCameraMatrix2D (raylib fft-Matrix "GetCameraMatrix2D" fft-enum))
(define GetWorldToScreen (raylib fft-Vector2 "GetWorldToScreen" fft-enum fft-enum))
(define GetScreenToWorld2D (raylib fft-Vector2 "GetScreenToWorld2D" fft-enum fft-enum))
(define GetWorldToScreenEx (raylib fft-Vector2 "GetWorldToScreenEx" fft-enum fft-enum fft-int fft-int))
(define GetWorldToScreen2D (raylib fft-Vector2 "GetWorldToScreen2D" fft-enum fft-enum))
(define SetTargetFPS (raylib fft-void "SetTargetFPS" fft-int))
(define GetFPS (raylib fft-int "GetFPS"))
(define GetFrameTime (raylib fft-float "GetFrameTime"))
(define GetTime (raylib fft-double "GetTime"))
(define GetRandomValue (raylib fft-int "GetRandomValue" fft-int fft-int))
(define SetRandomSeed (raylib fft-void "SetRandomSeed" fft-unsigned-int))
(define TakeScreenshot (raylib fft-void "TakeScreenshot" fft-char))
(define SetConfigFlags (raylib fft-void "SetConfigFlags" fft-unsigned-int))
(define TraceLog (raylib fft-void "TraceLog" fft-int fft-char fft-enum))
(define SetTraceLogLevel (raylib fft-void "SetTraceLogLevel" fft-int))
(define MemAlloc (raylib fft-void * "MemAlloc" fft-int))
(define MemRealloc (raylib fft-void * "MemRealloc" fft-void* fft-int))
(define MemFree (raylib fft-void "MemFree" fft-void*))
(define OpenURL (raylib fft-void "OpenURL" fft-char))
(define SetTraceLogCallback (raylib fft-void "SetTraceLogCallback" fft-enum))
(define SetLoadFileDataCallback (raylib fft-void "SetLoadFileDataCallback" fft-enum))
(define SetSaveFileDataCallback (raylib fft-void "SetSaveFileDataCallback" fft-enum))
(define SetLoadFileTextCallback (raylib fft-void "SetLoadFileTextCallback" fft-enum))
(define SetSaveFileTextCallback (raylib fft-void "SetSaveFileTextCallback" fft-enum))
(define LoadFileData (raylib fft-unsigned char * "LoadFileData" fft-char fft-unsigned-int))
(define UnloadFileData (raylib fft-void "UnloadFileData" fft-unsigned-char))
(define SaveFileData (raylib fft-bool "SaveFileData" fft-char fft-void* fft-unsigned-int))
(define ExportDataAsCode (raylib fft-bool "ExportDataAsCode" fft-char fft-unsigned-int fft-char))
(define LoadFileText (raylib fft-char * "LoadFileText" fft-char))
(define UnloadFileText (raylib fft-void "UnloadFileText" fft-char))
(define SaveFileText (raylib fft-bool "SaveFileText" fft-char fft-char))
(define FileExists (raylib fft-bool "FileExists" fft-char))
(define DirectoryExists (raylib fft-bool "DirectoryExists" fft-char))
(define IsFileExtension (raylib fft-bool "IsFileExtension" fft-char fft-char))
(define GetFileLength (raylib fft-int "GetFileLength" fft-char))
(define GetFileExtension (raylib fft-const char * "GetFileExtension" fft-char))
(define GetFileName (raylib fft-const char * "GetFileName" fft-char))
(define GetFileNameWithoutExt (raylib fft-const char * "GetFileNameWithoutExt" fft-char))
(define GetDirectoryPath (raylib fft-const char * "GetDirectoryPath" fft-char))
(define GetPrevDirectoryPath (raylib fft-const char * "GetPrevDirectoryPath" fft-char))
(define GetWorkingDirectory (raylib fft-const char * "GetWorkingDirectory"))
(define GetApplicationDirectory (raylib fft-const char * "GetApplicationDirectory"))
(define ChangeDirectory (raylib fft-bool "ChangeDirectory" fft-char))
(define IsPathFile (raylib fft-bool "IsPathFile" fft-char))
(define LoadDirectoryFiles (raylib fft-FilePathList "LoadDirectoryFiles" fft-char))
(define LoadDirectoryFilesEx (raylib fft-FilePathList "LoadDirectoryFilesEx" fft-char fft-char fft-enum))
(define UnloadDirectoryFiles (raylib fft-void "UnloadDirectoryFiles" fft-enum))
(define IsFileDropped (raylib fft-bool "IsFileDropped"))
(define LoadDroppedFiles (raylib fft-FilePathList "LoadDroppedFiles"))
(define UnloadDroppedFiles (raylib fft-void "UnloadDroppedFiles" fft-enum))
(define GetFileModTime (raylib fft-long "GetFileModTime" fft-char))
(define CompressData (raylib fft-unsigned char * "CompressData" fft-const unsigned char * fft-int fft-int*))
(define DecompressData (raylib fft-unsigned char * "DecompressData" fft-const unsigned char * fft-int fft-int*))
(define EncodeDataBase64 (raylib fft-char * "EncodeDataBase64" fft-const unsigned char * fft-int fft-int*))
(define DecodeDataBase64 (raylib fft-unsigned char * "DecodeDataBase64" fft-const unsigned char * fft-int*))
(define IsKeyPressed (raylib fft-bool "IsKeyPressed" fft-int))
(define IsKeyDown (raylib fft-bool "IsKeyDown" fft-int))
(define IsKeyReleased (raylib fft-bool "IsKeyReleased" fft-int))
(define IsKeyUp (raylib fft-bool "IsKeyUp" fft-int))
(define SetExitKey (raylib fft-void "SetExitKey" fft-int))
(define GetKeyPressed (raylib fft-int "GetKeyPressed"))
(define GetCharPressed (raylib fft-int "GetCharPressed"))
(define IsGamepadAvailable (raylib fft-bool "IsGamepadAvailable" fft-int))
(define GetGamepadName (raylib fft-const char * "GetGamepadName" fft-int))
(define IsGamepadButtonPressed (raylib fft-bool "IsGamepadButtonPressed" fft-int fft-int))
(define IsGamepadButtonDown (raylib fft-bool "IsGamepadButtonDown" fft-int fft-int))
(define IsGamepadButtonReleased (raylib fft-bool "IsGamepadButtonReleased" fft-int fft-int))
(define IsGamepadButtonUp (raylib fft-bool "IsGamepadButtonUp" fft-int fft-int))
(define GetGamepadButtonPressed (raylib fft-int "GetGamepadButtonPressed"))
(define GetGamepadAxisCount (raylib fft-int "GetGamepadAxisCount" fft-int))
(define GetGamepadAxisMovement (raylib fft-float "GetGamepadAxisMovement" fft-int fft-int))
(define SetGamepadMappings (raylib fft-int "SetGamepadMappings" fft-char))
(define IsMouseButtonPressed (raylib fft-bool "IsMouseButtonPressed" fft-int))
(define IsMouseButtonDown (raylib fft-bool "IsMouseButtonDown" fft-int))
(define IsMouseButtonReleased (raylib fft-bool "IsMouseButtonReleased" fft-int))
(define IsMouseButtonUp (raylib fft-bool "IsMouseButtonUp" fft-int))
(define GetMouseX (raylib fft-int "GetMouseX"))
(define GetMouseY (raylib fft-int "GetMouseY"))
(define GetMousePosition (raylib fft-Vector2 "GetMousePosition"))
(define GetMouseDelta (raylib fft-Vector2 "GetMouseDelta"))
(define SetMousePosition (raylib fft-void "SetMousePosition" fft-int fft-int))
(define SetMouseOffset (raylib fft-void "SetMouseOffset" fft-int fft-int))
(define SetMouseScale (raylib fft-void "SetMouseScale" fft-float fft-float))
(define GetMouseWheelMove (raylib fft-float "GetMouseWheelMove"))
(define GetMouseWheelMoveV (raylib fft-Vector2 "GetMouseWheelMoveV"))
(define SetMouseCursor (raylib fft-void "SetMouseCursor" fft-int))
(define GetTouchX (raylib fft-int "GetTouchX"))
(define GetTouchY (raylib fft-int "GetTouchY"))
(define GetTouchPosition (raylib fft-Vector2 "GetTouchPosition" fft-int))
(define GetTouchPointId (raylib fft-int "GetTouchPointId" fft-int))
(define GetTouchPointCount (raylib fft-int "GetTouchPointCount"))
(define SetGesturesEnabled (raylib fft-void "SetGesturesEnabled" fft-unsigned-int))
(define IsGestureDetected (raylib fft-bool "IsGestureDetected" fft-int))
(define GetGestureDetected (raylib fft-int "GetGestureDetected"))
(define GetGestureHoldDuration (raylib fft-float "GetGestureHoldDuration"))
(define GetGestureDragVector (raylib fft-Vector2 "GetGestureDragVector"))
(define GetGestureDragAngle (raylib fft-float "GetGestureDragAngle"))
(define GetGesturePinchVector (raylib fft-Vector2 "GetGesturePinchVector"))
(define GetGesturePinchAngle (raylib fft-float "GetGesturePinchAngle"))
(define SetCameraMode (raylib fft-void "SetCameraMode" fft-enum fft-int))
(define UpdateCamera (raylib fft-void "UpdateCamera" fft-enum))
(define SetCameraPanControl (raylib fft-void "SetCameraPanControl" fft-int))
(define SetCameraAltControl (raylib fft-void "SetCameraAltControl" fft-int))
(define SetCameraSmoothZoomControl (raylib fft-void "SetCameraSmoothZoomControl" fft-int))
(define SetCameraMoveControls (raylib fft-void "SetCameraMoveControls" fft-int fft-int fft-int fft-int fft-int fft-int))
(define SetShapesTexture (raylib fft-void "SetShapesTexture" fft-enum fft-enum))
(define DrawPixel (raylib fft-void "DrawPixel" fft-int fft-int fft-enum))
(define DrawPixelV (raylib fft-void "DrawPixelV" fft-enum fft-enum))
(define DrawLine (raylib fft-void "DrawLine" fft-int fft-int fft-int fft-int fft-enum))
(define DrawLineV (raylib fft-void "DrawLineV" fft-enum fft-enum fft-enum))
(define DrawLineEx (raylib fft-void "DrawLineEx" fft-enum fft-enum fft-float fft-enum))
(define DrawLineBezier (raylib fft-void "DrawLineBezier" fft-enum fft-enum fft-float fft-enum))
(define DrawLineBezierQuad (raylib fft-void "DrawLineBezierQuad" fft-enum fft-enum fft-enum fft-float fft-enum))
(define DrawLineBezierCubic (raylib fft-void "DrawLineBezierCubic" fft-enum fft-enum fft-enum fft-enum fft-float fft-enum))
(define DrawLineStrip (raylib fft-void "DrawLineStrip" fft-enum fft-int fft-enum))
(define DrawCircle (raylib fft-void "DrawCircle" fft-int fft-int fft-float fft-enum))
(define DrawCircleSector (raylib fft-void "DrawCircleSector" fft-enum fft-float fft-float fft-float fft-int fft-enum))
(define DrawCircleSectorLines (raylib fft-void "DrawCircleSectorLines" fft-enum fft-float fft-float fft-float fft-int fft-enum))
(define DrawCircleGradient (raylib fft-void "DrawCircleGradient" fft-int fft-int fft-float fft-enum fft-enum))
(define DrawCircleV (raylib fft-void "DrawCircleV" fft-enum fft-float fft-enum))
(define DrawCircleLines (raylib fft-void "DrawCircleLines" fft-int fft-int fft-float fft-enum))
(define DrawEllipse (raylib fft-void "DrawEllipse" fft-int fft-int fft-float fft-float fft-enum))
(define DrawEllipseLines (raylib fft-void "DrawEllipseLines" fft-int fft-int fft-float fft-float fft-enum))
(define DrawRing (raylib fft-void "DrawRing" fft-enum fft-float fft-float fft-float fft-float fft-int fft-enum))
(define DrawRingLines (raylib fft-void "DrawRingLines" fft-enum fft-float fft-float fft-float fft-float fft-int fft-enum))
(define DrawRectangle (raylib fft-void "DrawRectangle" fft-int fft-int fft-int fft-int fft-enum))
(define DrawRectangleV (raylib fft-void "DrawRectangleV" fft-enum fft-enum fft-enum))
(define DrawRectangleRec (raylib fft-void "DrawRectangleRec" fft-enum fft-enum))
(define DrawRectanglePro (raylib fft-void "DrawRectanglePro" fft-enum fft-enum fft-float fft-enum))
(define DrawRectangleGradientV (raylib fft-void "DrawRectangleGradientV" fft-int fft-int fft-int fft-int fft-enum fft-enum))
(define DrawRectangleGradientH (raylib fft-void "DrawRectangleGradientH" fft-int fft-int fft-int fft-int fft-enum fft-enum))
(define DrawRectangleGradientEx (raylib fft-void "DrawRectangleGradientEx" fft-enum fft-enum fft-enum fft-enum fft-enum))
(define DrawRectangleLines (raylib fft-void "DrawRectangleLines" fft-int fft-int fft-int fft-int fft-enum))
(define DrawRectangleLinesEx (raylib fft-void "DrawRectangleLinesEx" fft-enum fft-float fft-enum))
(define DrawRectangleRounded (raylib fft-void "DrawRectangleRounded" fft-enum fft-float fft-int fft-enum))
(define DrawRectangleRoundedLines (raylib fft-void "DrawRectangleRoundedLines" fft-enum fft-float fft-int fft-float fft-enum))
(define DrawTriangle (raylib fft-void "DrawTriangle" fft-enum fft-enum fft-enum fft-enum))
(define DrawTriangleLines (raylib fft-void "DrawTriangleLines" fft-enum fft-enum fft-enum fft-enum))
(define DrawTriangleFan (raylib fft-void "DrawTriangleFan" fft-enum fft-int fft-enum))
(define DrawTriangleStrip (raylib fft-void "DrawTriangleStrip" fft-enum fft-int fft-enum))
(define DrawPoly (raylib fft-void "DrawPoly" fft-enum fft-int fft-float fft-float fft-enum))
(define DrawPolyLines (raylib fft-void "DrawPolyLines" fft-enum fft-int fft-float fft-float fft-enum))
(define DrawPolyLinesEx (raylib fft-void "DrawPolyLinesEx" fft-enum fft-int fft-float fft-float fft-float fft-enum))
(define CheckCollisionRecs (raylib fft-bool "CheckCollisionRecs" fft-enum fft-enum))
(define CheckCollisionCircles (raylib fft-bool "CheckCollisionCircles" fft-enum fft-float fft-enum fft-float))
(define CheckCollisionCircleRec (raylib fft-bool "CheckCollisionCircleRec" fft-enum fft-float fft-enum))
(define CheckCollisionPointRec (raylib fft-bool "CheckCollisionPointRec" fft-enum fft-enum))
(define CheckCollisionPointCircle (raylib fft-bool "CheckCollisionPointCircle" fft-enum fft-enum fft-float))
(define CheckCollisionPointTriangle (raylib fft-bool "CheckCollisionPointTriangle" fft-enum fft-enum fft-enum fft-enum))
(define CheckCollisionLines (raylib fft-bool "CheckCollisionLines" fft-enum fft-enum fft-enum fft-enum fft-enum))
(define CheckCollisionPointLine (raylib fft-bool "CheckCollisionPointLine" fft-enum fft-enum fft-enum fft-int))
(define GetCollisionRec (raylib fft-Rectangle "GetCollisionRec" fft-enum fft-enum))
(define LoadImage (raylib fft-Image "LoadImage" fft-char))
(define LoadImageRaw (raylib fft-Image "LoadImageRaw" fft-char fft-int fft-int fft-int fft-int))
(define LoadImageAnim (raylib fft-Image "LoadImageAnim" fft-char fft-int*))
(define LoadImageFromMemory (raylib fft-Image "LoadImageFromMemory" fft-char fft-const unsigned char * fft-int))
(define LoadImageFromTexture (raylib fft-Image "LoadImageFromTexture" fft-enum))
(define LoadImageFromScreen (raylib fft-Image "LoadImageFromScreen"))
(define UnloadImage (raylib fft-void "UnloadImage" fft-enum))
(define ExportImage (raylib fft-bool "ExportImage" fft-enum fft-char))
(define ExportImageAsCode (raylib fft-bool "ExportImageAsCode" fft-enum fft-char))
(define GenImageColor (raylib fft-Image "GenImageColor" fft-int fft-int fft-enum))
(define GenImageGradientV (raylib fft-Image "GenImageGradientV" fft-int fft-int fft-enum fft-enum))
(define GenImageGradientH (raylib fft-Image "GenImageGradientH" fft-int fft-int fft-enum fft-enum))
(define GenImageGradientRadial (raylib fft-Image "GenImageGradientRadial" fft-int fft-int fft-float fft-enum fft-enum))
(define GenImageChecked (raylib fft-Image "GenImageChecked" fft-int fft-int fft-int fft-int fft-enum fft-enum))
(define GenImageWhiteNoise (raylib fft-Image "GenImageWhiteNoise" fft-int fft-int fft-float))
(define GenImageCellular (raylib fft-Image "GenImageCellular" fft-int fft-int fft-int))
(define ImageCopy (raylib fft-Image "ImageCopy" fft-enum))
(define ImageFromImage (raylib fft-Image "ImageFromImage" fft-enum fft-enum))
(define ImageText (raylib fft-Image "ImageText" fft-char fft-int fft-enum))
(define ImageTextEx (raylib fft-Image "ImageTextEx" fft-enum fft-char fft-float fft-float fft-enum))
(define ImageFormat (raylib fft-void "ImageFormat" fft-enum fft-int))
(define ImageToPOT (raylib fft-void "ImageToPOT" fft-enum fft-enum))
(define ImageCrop (raylib fft-void "ImageCrop" fft-enum fft-enum))
(define ImageAlphaCrop (raylib fft-void "ImageAlphaCrop" fft-enum fft-float))
(define ImageAlphaClear (raylib fft-void "ImageAlphaClear" fft-enum fft-enum fft-float))
(define ImageAlphaMask (raylib fft-void "ImageAlphaMask" fft-enum fft-enum))
(define ImageAlphaPremultiply (raylib fft-void "ImageAlphaPremultiply" fft-enum))
(define ImageResize (raylib fft-void "ImageResize" fft-enum fft-int fft-int))
(define ImageResizeNN (raylib fft-void "ImageResizeNN" fft-enum fft-int fft-int))
(define ImageResizeCanvas (raylib fft-void "ImageResizeCanvas" fft-enum fft-int fft-int fft-int fft-int fft-enum))
(define ImageMipmaps (raylib fft-void "ImageMipmaps" fft-enum))
(define ImageDither (raylib fft-void "ImageDither" fft-enum fft-int fft-int fft-int fft-int))
(define ImageFlipVertical (raylib fft-void "ImageFlipVertical" fft-enum))
(define ImageFlipHorizontal (raylib fft-void "ImageFlipHorizontal" fft-enum))
(define ImageRotateCW (raylib fft-void "ImageRotateCW" fft-enum))
(define ImageRotateCCW (raylib fft-void "ImageRotateCCW" fft-enum))
(define ImageColorTint (raylib fft-void "ImageColorTint" fft-enum fft-enum))
(define ImageColorInvert (raylib fft-void "ImageColorInvert" fft-enum))
(define ImageColorGrayscale (raylib fft-void "ImageColorGrayscale" fft-enum))
(define ImageColorContrast (raylib fft-void "ImageColorContrast" fft-enum fft-float))
(define ImageColorBrightness (raylib fft-void "ImageColorBrightness" fft-enum fft-int))
(define ImageColorReplace (raylib fft-void "ImageColorReplace" fft-enum fft-enum fft-enum))
(define LoadImageColors (raylib fft-Color * "LoadImageColors" fft-enum))
(define LoadImagePalette (raylib fft-Color * "LoadImagePalette" fft-enum fft-int fft-int*))
(define UnloadImageColors (raylib fft-void "UnloadImageColors" fft-enum))
(define UnloadImagePalette (raylib fft-void "UnloadImagePalette" fft-enum))
(define GetImageAlphaBorder (raylib fft-Rectangle "GetImageAlphaBorder" fft-enum fft-float))
(define GetImageColor (raylib fft-Color "GetImageColor" fft-enum fft-int fft-int))
(define ImageClearBackground (raylib fft-void "ImageClearBackground" fft-enum fft-enum))
(define ImageDrawPixel (raylib fft-void "ImageDrawPixel" fft-enum fft-int fft-int fft-enum))
(define ImageDrawPixelV (raylib fft-void "ImageDrawPixelV" fft-enum fft-enum fft-enum))
(define ImageDrawLine (raylib fft-void "ImageDrawLine" fft-enum fft-int fft-int fft-int fft-int fft-enum))
(define ImageDrawLineV (raylib fft-void "ImageDrawLineV" fft-enum fft-enum fft-enum fft-enum))
(define ImageDrawCircle (raylib fft-void "ImageDrawCircle" fft-enum fft-int fft-int fft-int fft-enum))
(define ImageDrawCircleV (raylib fft-void "ImageDrawCircleV" fft-enum fft-enum fft-int fft-enum))
(define ImageDrawRectangle (raylib fft-void "ImageDrawRectangle" fft-enum fft-int fft-int fft-int fft-int fft-enum))
(define ImageDrawRectangleV (raylib fft-void "ImageDrawRectangleV" fft-enum fft-enum fft-enum fft-enum))
(define ImageDrawRectangleRec (raylib fft-void "ImageDrawRectangleRec" fft-enum fft-enum fft-enum))
(define ImageDrawRectangleLines (raylib fft-void "ImageDrawRectangleLines" fft-enum fft-enum fft-int fft-enum))
(define ImageDraw (raylib fft-void "ImageDraw" fft-enum fft-enum fft-enum fft-enum fft-enum))
(define ImageDrawText (raylib fft-void "ImageDrawText" fft-enum fft-char fft-int fft-int fft-int fft-enum))
(define ImageDrawTextEx (raylib fft-void "ImageDrawTextEx" fft-enum fft-enum fft-char fft-enum fft-float fft-float fft-enum))
(define LoadTexture (raylib fft-Texture2D "LoadTexture" fft-char))
(define LoadTextureFromImage (raylib fft-Texture2D "LoadTextureFromImage" fft-enum))
(define LoadTextureCubemap (raylib fft-TextureCubemap "LoadTextureCubemap" fft-enum fft-int))
(define LoadRenderTexture (raylib fft-RenderTexture2D "LoadRenderTexture" fft-int fft-int))
(define UnloadTexture (raylib fft-void "UnloadTexture" fft-enum))
(define UnloadRenderTexture (raylib fft-void "UnloadRenderTexture" fft-enum))
(define UpdateTexture (raylib fft-void "UpdateTexture" fft-enum fft-void*))
(define UpdateTextureRec (raylib fft-void "UpdateTextureRec" fft-enum fft-enum fft-void*))
(define GenTextureMipmaps (raylib fft-void "GenTextureMipmaps" fft-enum))
(define SetTextureFilter (raylib fft-void "SetTextureFilter" fft-enum fft-int))
(define SetTextureWrap (raylib fft-void "SetTextureWrap" fft-enum fft-int))
(define DrawTexture (raylib fft-void "DrawTexture" fft-enum fft-int fft-int fft-enum))
(define DrawTextureV (raylib fft-void "DrawTextureV" fft-enum fft-enum fft-enum))
(define DrawTextureEx (raylib fft-void "DrawTextureEx" fft-enum fft-enum fft-float fft-float fft-enum))
(define DrawTextureRec (raylib fft-void "DrawTextureRec" fft-enum fft-enum fft-enum fft-enum))
(define DrawTextureQuad (raylib fft-void "DrawTextureQuad" fft-enum fft-enum fft-enum fft-enum fft-enum))
(define DrawTextureTiled (raylib fft-void "DrawTextureTiled" fft-enum fft-enum fft-enum fft-enum fft-float fft-float fft-enum))
(define DrawTexturePro (raylib fft-void "DrawTexturePro" fft-enum fft-enum fft-enum fft-enum fft-float fft-enum))
(define DrawTextureNPatch (raylib fft-void "DrawTextureNPatch" fft-enum fft-enum fft-enum fft-enum fft-float fft-enum))
(define DrawTexturePoly (raylib fft-void "DrawTexturePoly" fft-enum fft-enum fft-enum fft-enum fft-int fft-enum))
(define Fade (raylib fft-Color "Fade" fft-enum fft-float))
(define ColorToInt (raylib fft-int "ColorToInt" fft-enum))
(define ColorNormalize (raylib fft-Vector4 "ColorNormalize" fft-enum))
(define ColorFromNormalized (raylib fft-Color "ColorFromNormalized" fft-Vector4))
(define ColorToHSV (raylib fft-Vector3 "ColorToHSV" fft-enum))
(define ColorFromHSV (raylib fft-Color "ColorFromHSV" fft-float fft-float fft-float))
(define ColorAlpha (raylib fft-Color "ColorAlpha" fft-enum fft-float))
(define ColorAlphaBlend (raylib fft-Color "ColorAlphaBlend" fft-enum fft-enum fft-enum))
(define GetColor (raylib fft-Color "GetColor" fft-unsigned-int))
(define GetPixelColor (raylib fft-Color "GetPixelColor" fft-void* fft-int))
(define SetPixelColor (raylib fft-void "SetPixelColor" fft-void* fft-enum fft-int))
(define GetPixelDataSize (raylib fft-int "GetPixelDataSize" fft-int fft-int fft-int))
(define GetFontDefault (raylib fft-Font "GetFontDefault"))
(define LoadFont (raylib fft-Font "LoadFont" fft-char))
(define LoadFontEx (raylib fft-Font "LoadFontEx" fft-char fft-int fft-int* fft-int))
(define LoadFontFromImage (raylib fft-Font "LoadFontFromImage" fft-enum fft-enum fft-int))
(define LoadFontFromMemory (raylib fft-Font "LoadFontFromMemory" fft-char fft-const unsigned char * fft-int fft-int fft-int* fft-int))
(define LoadFontData (raylib fft-GlyphInfo * "LoadFontData" fft-const unsigned char * fft-int fft-int fft-int* fft-int fft-int))
(define GenImageFontAtlas (raylib fft-Image "GenImageFontAtlas" fft-const GlyphInfo * fft-Rectangle ** fft-int fft-int fft-int fft-int))
(define UnloadFontData (raylib fft-void "UnloadFontData" fft-enum fft-int))
(define UnloadFont (raylib fft-void "UnloadFont" fft-enum))
(define ExportFontAsCode (raylib fft-bool "ExportFontAsCode" fft-enum fft-char))
(define DrawFPS (raylib fft-void "DrawFPS" fft-int fft-int))
(define DrawText (raylib fft-void "DrawText" fft-char fft-int fft-int fft-int fft-enum))
(define DrawTextEx (raylib fft-void "DrawTextEx" fft-enum fft-char fft-enum fft-float fft-float fft-enum))
(define DrawTextPro (raylib fft-void "DrawTextPro" fft-enum fft-char fft-enum fft-enum fft-float fft-float fft-float fft-enum))
(define DrawTextCodepoint (raylib fft-void "DrawTextCodepoint" fft-enum fft-int fft-enum fft-float fft-enum))
(define DrawTextCodepoints (raylib fft-void "DrawTextCodepoints" fft-enum fft-int* fft-int fft-enum fft-float fft-float fft-enum))
(define MeasureText (raylib fft-int "MeasureText" fft-char fft-int))
(define MeasureTextEx (raylib fft-Vector2 "MeasureTextEx" fft-enum fft-char fft-float fft-float))
(define GetGlyphIndex (raylib fft-int "GetGlyphIndex" fft-enum fft-int))
(define GetGlyphInfo (raylib fft-GlyphInfo "GetGlyphInfo" fft-enum fft-int))
(define GetGlyphAtlasRec (raylib fft-Rectangle "GetGlyphAtlasRec" fft-enum fft-int))
(define LoadCodepoints (raylib fft-int * "LoadCodepoints" fft-char fft-int*))
(define UnloadCodepoints (raylib fft-void "UnloadCodepoints" fft-int*))
(define GetCodepointCount (raylib fft-int "GetCodepointCount" fft-char))
(define GetCodepoint (raylib fft-int "GetCodepoint" fft-char fft-int*))
(define CodepointToUTF8 (raylib fft-const char * "CodepointToUTF8" fft-int fft-int*))
(define TextCodepointsToUTF8 (raylib fft-char * "TextCodepointsToUTF8" fft-int* fft-int))
(define TextCopy (raylib fft-int "TextCopy" fft-char fft-char))
(define TextIsEqual (raylib fft-bool "TextIsEqual" fft-char fft-char))
(define TextLength (raylib fft-unsigned int "TextLength" fft-char))
(define TextFormat (raylib fft-const char * "TextFormat" fft-char fft-enum))
(define TextSubtext (raylib fft-const char * "TextSubtext" fft-char fft-int fft-int))
(define TextReplace (raylib fft-char * "TextReplace" fft-char fft-char fft-char))
(define TextInsert (raylib fft-char * "TextInsert" fft-char fft-char fft-int))
(define TextJoin (raylib fft-const char * "TextJoin" fft-const char ** fft-int fft-char))
(define TextSplit (raylib fft-const char ** "TextSplit" fft-char fft-char fft-int*))
(define TextAppend (raylib fft-void "TextAppend" fft-char fft-char fft-int*))
(define TextFindIndex (raylib fft-int "TextFindIndex" fft-char fft-char))
(define TextToUpper (raylib fft-const char * "TextToUpper" fft-char))
(define TextToLower (raylib fft-const char * "TextToLower" fft-char))
(define TextToPascal (raylib fft-const char * "TextToPascal" fft-char))
(define TextToInteger (raylib fft-int "TextToInteger" fft-char))
(define DrawLine3D (raylib fft-void "DrawLine3D" fft-enum fft-enum fft-enum))
(define DrawPoint3D (raylib fft-void "DrawPoint3D" fft-enum fft-enum))
(define DrawCircle3D (raylib fft-void "DrawCircle3D" fft-enum fft-float fft-enum fft-float fft-enum))
(define DrawTriangle3D (raylib fft-void "DrawTriangle3D" fft-enum fft-enum fft-enum fft-enum))
(define DrawTriangleStrip3D (raylib fft-void "DrawTriangleStrip3D" fft-enum fft-int fft-enum))
(define DrawCube (raylib fft-void "DrawCube" fft-enum fft-float fft-float fft-float fft-enum))
(define DrawCubeV (raylib fft-void "DrawCubeV" fft-enum fft-enum fft-enum))
(define DrawCubeWires (raylib fft-void "DrawCubeWires" fft-enum fft-float fft-float fft-float fft-enum))
(define DrawCubeWiresV (raylib fft-void "DrawCubeWiresV" fft-enum fft-enum fft-enum))
(define DrawCubeTexture (raylib fft-void "DrawCubeTexture" fft-enum fft-enum fft-float fft-float fft-float fft-enum))
(define DrawCubeTextureRec (raylib fft-void "DrawCubeTextureRec" fft-enum fft-enum fft-enum fft-float fft-float fft-float fft-enum))
(define DrawSphere (raylib fft-void "DrawSphere" fft-enum fft-float fft-enum))
(define DrawSphereEx (raylib fft-void "DrawSphereEx" fft-enum fft-float fft-int fft-int fft-enum))
(define DrawSphereWires (raylib fft-void "DrawSphereWires" fft-enum fft-float fft-int fft-int fft-enum))
(define DrawCylinder (raylib fft-void "DrawCylinder" fft-enum fft-float fft-float fft-float fft-int fft-enum))
(define DrawCylinderEx (raylib fft-void "DrawCylinderEx" fft-enum fft-enum fft-float fft-float fft-int fft-enum))
(define DrawCylinderWires (raylib fft-void "DrawCylinderWires" fft-enum fft-float fft-float fft-float fft-int fft-enum))
(define DrawCylinderWiresEx (raylib fft-void "DrawCylinderWiresEx" fft-enum fft-enum fft-float fft-float fft-int fft-enum))
(define DrawPlane (raylib fft-void "DrawPlane" fft-enum fft-enum fft-enum))
(define DrawRay (raylib fft-void "DrawRay" fft-enum fft-enum))
(define DrawGrid (raylib fft-void "DrawGrid" fft-int fft-float))
(define LoadModel (raylib fft-Model "LoadModel" fft-char))
(define LoadModelFromMesh (raylib fft-Model "LoadModelFromMesh" fft-enum))
(define UnloadModel (raylib fft-void "UnloadModel" fft-enum))
(define UnloadModelKeepMeshes (raylib fft-void "UnloadModelKeepMeshes" fft-enum))
(define GetModelBoundingBox (raylib fft-BoundingBox "GetModelBoundingBox" fft-enum))
(define DrawModel (raylib fft-void "DrawModel" fft-enum fft-enum fft-float fft-enum))
(define DrawModelEx (raylib fft-void "DrawModelEx" fft-enum fft-enum fft-enum fft-float fft-enum fft-enum))
(define DrawModelWires (raylib fft-void "DrawModelWires" fft-enum fft-enum fft-float fft-enum))
(define DrawModelWiresEx (raylib fft-void "DrawModelWiresEx" fft-enum fft-enum fft-enum fft-float fft-enum fft-enum))
(define DrawBoundingBox (raylib fft-void "DrawBoundingBox" fft-enum fft-enum))
(define DrawBillboard (raylib fft-void "DrawBillboard" fft-enum fft-enum fft-enum fft-float fft-enum))
(define DrawBillboardRec (raylib fft-void "DrawBillboardRec" fft-enum fft-enum fft-enum fft-enum fft-enum fft-enum))
(define DrawBillboardPro (raylib fft-void "DrawBillboardPro" fft-enum fft-enum fft-enum fft-enum fft-enum fft-enum fft-enum fft-float fft-enum))
(define UploadMesh (raylib fft-void "UploadMesh" fft-enum fft-enum))
(define UpdateMeshBuffer (raylib fft-void "UpdateMeshBuffer" fft-enum fft-int fft-void* fft-int fft-int))
(define UnloadMesh (raylib fft-void "UnloadMesh" fft-enum))
(define DrawMesh (raylib fft-void "DrawMesh" fft-enum fft-enum fft-enum))
(define DrawMeshInstanced (raylib fft-void "DrawMeshInstanced" fft-enum fft-enum fft-enum fft-int))
(define ExportMesh (raylib fft-bool "ExportMesh" fft-enum fft-char))
(define GetMeshBoundingBox (raylib fft-BoundingBox "GetMeshBoundingBox" fft-enum))
(define GenMeshTangents (raylib fft-void "GenMeshTangents" fft-enum))
(define GenMeshPoly (raylib fft-Mesh "GenMeshPoly" fft-int fft-float))
(define GenMeshPlane (raylib fft-Mesh "GenMeshPlane" fft-float fft-float fft-int fft-int))
(define GenMeshCube (raylib fft-Mesh "GenMeshCube" fft-float fft-float fft-float))
(define GenMeshSphere (raylib fft-Mesh "GenMeshSphere" fft-float fft-int fft-int))
(define GenMeshHemiSphere (raylib fft-Mesh "GenMeshHemiSphere" fft-float fft-int fft-int))
(define GenMeshCylinder (raylib fft-Mesh "GenMeshCylinder" fft-float fft-float fft-int))
(define GenMeshCone (raylib fft-Mesh "GenMeshCone" fft-float fft-float fft-int))
(define GenMeshTorus (raylib fft-Mesh "GenMeshTorus" fft-float fft-float fft-int fft-int))
(define GenMeshKnot (raylib fft-Mesh "GenMeshKnot" fft-float fft-float fft-int fft-int))
(define GenMeshHeightmap (raylib fft-Mesh "GenMeshHeightmap" fft-enum fft-enum))
(define GenMeshCubicmap (raylib fft-Mesh "GenMeshCubicmap" fft-enum fft-enum))
(define LoadMaterials (raylib fft-Material * "LoadMaterials" fft-char fft-int*))
(define LoadMaterialDefault (raylib fft-Material "LoadMaterialDefault"))
(define UnloadMaterial (raylib fft-void "UnloadMaterial" fft-enum))
(define SetMaterialTexture (raylib fft-void "SetMaterialTexture" fft-enum fft-int fft-enum))
(define SetModelMeshMaterial (raylib fft-void "SetModelMeshMaterial" fft-enum fft-int fft-int))
(define LoadModelAnimations (raylib fft-ModelAnimation * "LoadModelAnimations" fft-char fft-unsigned-int))
(define UpdateModelAnimation (raylib fft-void "UpdateModelAnimation" fft-enum fft-enum fft-int))
(define UnloadModelAnimation (raylib fft-void "UnloadModelAnimation" fft-enum))
(define UnloadModelAnimations (raylib fft-void "UnloadModelAnimations" fft-enum fft-unsigned-int))
(define IsModelAnimationValid (raylib fft-bool "IsModelAnimationValid" fft-enum fft-enum))
(define CheckCollisionSpheres (raylib fft-bool "CheckCollisionSpheres" fft-enum fft-float fft-enum fft-float))
(define CheckCollisionBoxes (raylib fft-bool "CheckCollisionBoxes" fft-enum fft-enum))
(define CheckCollisionBoxSphere (raylib fft-bool "CheckCollisionBoxSphere" fft-enum fft-enum fft-float))
(define GetRayCollisionSphere (raylib fft-RayCollision "GetRayCollisionSphere" fft-enum fft-enum fft-float))
(define GetRayCollisionBox (raylib fft-RayCollision "GetRayCollisionBox" fft-enum fft-enum))
(define GetRayCollisionMesh (raylib fft-RayCollision "GetRayCollisionMesh" fft-enum fft-enum fft-enum))
(define GetRayCollisionTriangle (raylib fft-RayCollision "GetRayCollisionTriangle" fft-enum fft-enum fft-enum fft-enum))
(define GetRayCollisionQuad (raylib fft-RayCollision "GetRayCollisionQuad" fft-enum fft-enum fft-enum fft-enum fft-enum))
(define InitAudioDevice (raylib fft-void "InitAudioDevice"))
(define CloseAudioDevice (raylib fft-void "CloseAudioDevice"))
(define IsAudioDeviceReady (raylib fft-bool "IsAudioDeviceReady"))
(define SetMasterVolume (raylib fft-void "SetMasterVolume" fft-float))
(define LoadWave (raylib fft-Wave "LoadWave" fft-char))
(define LoadWaveFromMemory (raylib fft-Wave "LoadWaveFromMemory" fft-char fft-const unsigned char * fft-int))
(define LoadSound (raylib fft-Sound "LoadSound" fft-char))
(define LoadSoundFromWave (raylib fft-Sound "LoadSoundFromWave" fft-enum))
(define UpdateSound (raylib fft-void "UpdateSound" fft-enum fft-void* fft-int))
(define UnloadWave (raylib fft-void "UnloadWave" fft-enum))
(define UnloadSound (raylib fft-void "UnloadSound" fft-enum))
(define ExportWave (raylib fft-bool "ExportWave" fft-enum fft-char))
(define ExportWaveAsCode (raylib fft-bool "ExportWaveAsCode" fft-enum fft-char))
(define PlaySound (raylib fft-void "PlaySound" fft-enum))
(define StopSound (raylib fft-void "StopSound" fft-enum))
(define PauseSound (raylib fft-void "PauseSound" fft-enum))
(define ResumeSound (raylib fft-void "ResumeSound" fft-enum))
(define PlaySoundMulti (raylib fft-void "PlaySoundMulti" fft-enum))
(define StopSoundMulti (raylib fft-void "StopSoundMulti"))
(define GetSoundsPlaying (raylib fft-int "GetSoundsPlaying"))
(define IsSoundPlaying (raylib fft-bool "IsSoundPlaying" fft-enum))
(define SetSoundVolume (raylib fft-void "SetSoundVolume" fft-enum fft-float))
(define SetSoundPitch (raylib fft-void "SetSoundPitch" fft-enum fft-float))
(define SetSoundPan (raylib fft-void "SetSoundPan" fft-enum fft-float))
(define WaveCopy (raylib fft-Wave "WaveCopy" fft-enum))
(define WaveCrop (raylib fft-void "WaveCrop" fft-enum fft-int fft-int))
(define WaveFormat (raylib fft-void "WaveFormat" fft-enum fft-int fft-int fft-int))
(define LoadWaveSamples (raylib fft-float * "LoadWaveSamples" fft-enum))
(define UnloadWaveSamples (raylib fft-void "UnloadWaveSamples" fft-float))
(define LoadMusicStream (raylib fft-Music "LoadMusicStream" fft-char))
(define LoadMusicStreamFromMemory (raylib fft-Music "LoadMusicStreamFromMemory" fft-char fft-const unsigned char * fft-int))
(define UnloadMusicStream (raylib fft-void "UnloadMusicStream" fft-enum))
(define PlayMusicStream (raylib fft-void "PlayMusicStream" fft-enum))
(define IsMusicStreamPlaying (raylib fft-bool "IsMusicStreamPlaying" fft-enum))
(define UpdateMusicStream (raylib fft-void "UpdateMusicStream" fft-enum))
(define StopMusicStream (raylib fft-void "StopMusicStream" fft-enum))
(define PauseMusicStream (raylib fft-void "PauseMusicStream" fft-enum))
(define ResumeMusicStream (raylib fft-void "ResumeMusicStream" fft-enum))
(define SeekMusicStream (raylib fft-void "SeekMusicStream" fft-enum fft-float))
(define SetMusicVolume (raylib fft-void "SetMusicVolume" fft-enum fft-float))
(define SetMusicPitch (raylib fft-void "SetMusicPitch" fft-enum fft-float))
(define SetMusicPan (raylib fft-void "SetMusicPan" fft-enum fft-float))
(define GetMusicTimeLength (raylib fft-float "GetMusicTimeLength" fft-enum))
(define GetMusicTimePlayed (raylib fft-float "GetMusicTimePlayed" fft-enum))
(define LoadAudioStream (raylib fft-AudioStream "LoadAudioStream" fft-unsigned-int fft-unsigned-int fft-unsigned-int))
(define UnloadAudioStream (raylib fft-void "UnloadAudioStream" fft-enum))
(define UpdateAudioStream (raylib fft-void "UpdateAudioStream" fft-enum fft-void* fft-int))
(define IsAudioStreamProcessed (raylib fft-bool "IsAudioStreamProcessed" fft-enum))
(define PlayAudioStream (raylib fft-void "PlayAudioStream" fft-enum))
(define PauseAudioStream (raylib fft-void "PauseAudioStream" fft-enum))
(define ResumeAudioStream (raylib fft-void "ResumeAudioStream" fft-enum))
(define IsAudioStreamPlaying (raylib fft-bool "IsAudioStreamPlaying" fft-enum))
(define StopAudioStream (raylib fft-void "StopAudioStream" fft-enum))
(define SetAudioStreamVolume (raylib fft-void "SetAudioStreamVolume" fft-enum fft-float))
(define SetAudioStreamPitch (raylib fft-void "SetAudioStreamPitch" fft-enum fft-float))
(define SetAudioStreamPan (raylib fft-void "SetAudioStreamPan" fft-enum fft-float))
(define SetAudioStreamBufferSizeDefault (raylib fft-void "SetAudioStreamBufferSizeDefault" fft-int))
(define SetAudioStreamCallback (raylib fft-void "SetAudioStreamCallback" fft-enum fft-enum))
(define AttachAudioStreamProcessor (raylib fft-void "AttachAudioStreamProcessor" fft-enum fft-enum))
(define DetachAudioStreamProcessor (raylib fft-void "DetachAudioStreamProcessor" fft-enum fft-enum))
))