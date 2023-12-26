(define-library (lib raylib) (import (otus lisp) (otus ffi)) (export 
LIGHTGRAY
GRAY
DARKGRAY
YELLOW
GOLD
ORANGE
PINK
RED
MAROON
GREEN
LIME
DARKGREEN
SKYBLUE
BLUE
DARKBLUE
PURPLE
VIOLET
DARKPURPLE
BEIGE
BROWN
DARKBROWN
WHITE
BLACK
BLANK
MAGENTA
RAYWHITE
FLAG_VSYNC_HINT
FLAG_FULLSCREEN_MODE
FLAG_WINDOW_RESIZABLE
FLAG_WINDOW_UNDECORATED
FLAG_WINDOW_HIDDEN
FLAG_WINDOW_MINIMIZED
FLAG_WINDOW_MAXIMIZED
FLAG_WINDOW_UNFOCUSED
FLAG_WINDOW_TOPMOST
FLAG_WINDOW_ALWAYS_RUN
FLAG_WINDOW_TRANSPARENT
FLAG_WINDOW_HIGHDPI
FLAG_WINDOW_MOUSE_PASSTHROUGH
FLAG_BORDERLESS_WINDOWED_MODE
FLAG_MSAA_4X_HINT
FLAG_INTERLACED_HINT
LOG_ALL
LOG_TRACE
LOG_DEBUG
LOG_INFO
LOG_WARNING
LOG_ERROR
LOG_FATAL
LOG_NONE
KEY_NULL
KEY_APOSTROPHE
KEY_COMMA
KEY_MINUS
KEY_PERIOD
KEY_SLASH
KEY_ZERO
KEY_ONE
KEY_TWO
KEY_THREE
KEY_FOUR
KEY_FIVE
KEY_SIX
KEY_SEVEN
KEY_EIGHT
KEY_NINE
KEY_SEMICOLON
KEY_EQUAL
KEY_A
KEY_B
KEY_C
KEY_D
KEY_E
KEY_F
KEY_G
KEY_H
KEY_I
KEY_J
KEY_K
KEY_L
KEY_M
KEY_N
KEY_O
KEY_P
KEY_Q
KEY_R
KEY_S
KEY_T
KEY_U
KEY_V
KEY_W
KEY_X
KEY_Y
KEY_Z
KEY_LEFT_BRACKET
KEY_BACKSLASH
KEY_RIGHT_BRACKET
KEY_GRAVE
KEY_SPACE
KEY_ESCAPE
KEY_ENTER
KEY_TAB
KEY_BACKSPACE
KEY_INSERT
KEY_DELETE
KEY_RIGHT
KEY_LEFT
KEY_DOWN
KEY_UP
KEY_PAGE_UP
KEY_PAGE_DOWN
KEY_HOME
KEY_END
KEY_CAPS_LOCK
KEY_SCROLL_LOCK
KEY_NUM_LOCK
KEY_PRINT_SCREEN
KEY_PAUSE
KEY_F1
KEY_F2
KEY_F3
KEY_F4
KEY_F5
KEY_F6
KEY_F7
KEY_F8
KEY_F9
KEY_F10
KEY_F11
KEY_F12
KEY_LEFT_SHIFT
KEY_LEFT_CONTROL
KEY_LEFT_ALT
KEY_LEFT_SUPER
KEY_RIGHT_SHIFT
KEY_RIGHT_CONTROL
KEY_RIGHT_ALT
KEY_RIGHT_SUPER
KEY_KB_MENU
KEY_KP_0
KEY_KP_1
KEY_KP_2
KEY_KP_3
KEY_KP_4
KEY_KP_5
KEY_KP_6
KEY_KP_7
KEY_KP_8
KEY_KP_9
KEY_KP_DECIMAL
KEY_KP_DIVIDE
KEY_KP_MULTIPLY
KEY_KP_SUBTRACT
KEY_KP_ADD
KEY_KP_ENTER
KEY_KP_EQUAL
KEY_BACK
KEY_MENU
KEY_VOLUME_UP
KEY_VOLUME_DOWN
MOUSE_BUTTON_LEFT
MOUSE_BUTTON_RIGHT
MOUSE_BUTTON_MIDDLE
MOUSE_BUTTON_SIDE
MOUSE_BUTTON_EXTRA
MOUSE_BUTTON_FORWARD
MOUSE_BUTTON_BACK
MOUSE_CURSOR_DEFAULT
MOUSE_CURSOR_ARROW
MOUSE_CURSOR_IBEAM
MOUSE_CURSOR_CROSSHAIR
MOUSE_CURSOR_POINTING_HAND
MOUSE_CURSOR_RESIZE_EW
MOUSE_CURSOR_RESIZE_NS
MOUSE_CURSOR_RESIZE_NWSE
MOUSE_CURSOR_RESIZE_NESW
MOUSE_CURSOR_RESIZE_ALL
MOUSE_CURSOR_NOT_ALLOWED
GAMEPAD_BUTTON_UNKNOWN
GAMEPAD_BUTTON_LEFT_FACE_UP
GAMEPAD_BUTTON_LEFT_FACE_RIGHT
GAMEPAD_BUTTON_LEFT_FACE_DOWN
GAMEPAD_BUTTON_LEFT_FACE_LEFT
GAMEPAD_BUTTON_RIGHT_FACE_UP
GAMEPAD_BUTTON_RIGHT_FACE_RIGHT
GAMEPAD_BUTTON_RIGHT_FACE_DOWN
GAMEPAD_BUTTON_RIGHT_FACE_LEFT
GAMEPAD_BUTTON_LEFT_TRIGGER_1
GAMEPAD_BUTTON_LEFT_TRIGGER_2
GAMEPAD_BUTTON_RIGHT_TRIGGER_1
GAMEPAD_BUTTON_RIGHT_TRIGGER_2
GAMEPAD_BUTTON_MIDDLE_LEFT
GAMEPAD_BUTTON_MIDDLE
GAMEPAD_BUTTON_MIDDLE_RIGHT
GAMEPAD_BUTTON_LEFT_THUMB
GAMEPAD_BUTTON_RIGHT_THUMB
GAMEPAD_AXIS_LEFT_X
GAMEPAD_AXIS_LEFT_Y
GAMEPAD_AXIS_RIGHT_X
GAMEPAD_AXIS_RIGHT_Y
GAMEPAD_AXIS_LEFT_TRIGGER
GAMEPAD_AXIS_RIGHT_TRIGGER
MATERIAL_MAP_ALBEDO
MATERIAL_MAP_METALNESS
MATERIAL_MAP_NORMAL
MATERIAL_MAP_ROUGHNESS
MATERIAL_MAP_OCCLUSION
MATERIAL_MAP_EMISSION
MATERIAL_MAP_HEIGHT
MATERIAL_MAP_CUBEMAP
MATERIAL_MAP_IRRADIANCE
MATERIAL_MAP_PREFILTER
MATERIAL_MAP_BRDF
SHADER_LOC_VERTEX_POSITION
SHADER_LOC_VERTEX_TEXCOORD01
SHADER_LOC_VERTEX_TEXCOORD02
SHADER_LOC_VERTEX_NORMAL
SHADER_LOC_VERTEX_TANGENT
SHADER_LOC_VERTEX_COLOR
SHADER_LOC_MATRIX_MVP
SHADER_LOC_MATRIX_VIEW
SHADER_LOC_MATRIX_PROJECTION
SHADER_LOC_MATRIX_MODEL
SHADER_LOC_MATRIX_NORMAL
SHADER_LOC_VECTOR_VIEW
SHADER_LOC_COLOR_DIFFUSE
SHADER_LOC_COLOR_SPECULAR
SHADER_LOC_COLOR_AMBIENT
SHADER_LOC_MAP_ALBEDO
SHADER_LOC_MAP_METALNESS
SHADER_LOC_MAP_NORMAL
SHADER_LOC_MAP_ROUGHNESS
SHADER_LOC_MAP_OCCLUSION
SHADER_LOC_MAP_EMISSION
SHADER_LOC_MAP_HEIGHT
SHADER_LOC_MAP_CUBEMAP
SHADER_LOC_MAP_IRRADIANCE
SHADER_LOC_MAP_PREFILTER
SHADER_LOC_MAP_BRDF
SHADER_UNIFORM_FLOAT
SHADER_UNIFORM_VEC2
SHADER_UNIFORM_VEC3
SHADER_UNIFORM_VEC4
SHADER_UNIFORM_INT
SHADER_UNIFORM_IVEC2
SHADER_UNIFORM_IVEC3
SHADER_UNIFORM_IVEC4
SHADER_UNIFORM_SAMPLER2D
SHADER_ATTRIB_FLOAT
SHADER_ATTRIB_VEC2
SHADER_ATTRIB_VEC3
SHADER_ATTRIB_VEC4
PIXELFORMAT_UNCOMPRESSED_GRAYSCALE
PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA
PIXELFORMAT_UNCOMPRESSED_R5G6B5
PIXELFORMAT_UNCOMPRESSED_R8G8B8
PIXELFORMAT_UNCOMPRESSED_R5G5B5A1
PIXELFORMAT_UNCOMPRESSED_R4G4B4A4
PIXELFORMAT_UNCOMPRESSED_R8G8B8A8
PIXELFORMAT_UNCOMPRESSED_R32
PIXELFORMAT_UNCOMPRESSED_R32G32B32
PIXELFORMAT_UNCOMPRESSED_R32G32B32A32
PIXELFORMAT_UNCOMPRESSED_R16
PIXELFORMAT_UNCOMPRESSED_R16G16B16
PIXELFORMAT_UNCOMPRESSED_R16G16B16A16
PIXELFORMAT_COMPRESSED_DXT1_RGB
PIXELFORMAT_COMPRESSED_DXT1_RGBA
PIXELFORMAT_COMPRESSED_DXT3_RGBA
PIXELFORMAT_COMPRESSED_DXT5_RGBA
PIXELFORMAT_COMPRESSED_ETC1_RGB
PIXELFORMAT_COMPRESSED_ETC2_RGB
PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA
PIXELFORMAT_COMPRESSED_PVRT_RGB
PIXELFORMAT_COMPRESSED_PVRT_RGBA
PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA
PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA
TEXTURE_FILTER_POINT
TEXTURE_FILTER_BILINEAR
TEXTURE_FILTER_TRILINEAR
TEXTURE_FILTER_ANISOTROPIC_4X
TEXTURE_FILTER_ANISOTROPIC_8X
TEXTURE_FILTER_ANISOTROPIC_16X
TEXTURE_WRAP_REPEAT
TEXTURE_WRAP_CLAMP
TEXTURE_WRAP_MIRROR_REPEAT
TEXTURE_WRAP_MIRROR_CLAMP
CUBEMAP_LAYOUT_AUTO_DETECT
CUBEMAP_LAYOUT_LINE_VERTICAL
CUBEMAP_LAYOUT_LINE_HORIZONTAL
CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR
CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE
CUBEMAP_LAYOUT_PANORAMA
FONT_DEFAULT
FONT_BITMAP
FONT_SDF
BLEND_ALPHA
BLEND_ADDITIVE
BLEND_MULTIPLIED
BLEND_ADD_COLORS
BLEND_SUBTRACT_COLORS
BLEND_ALPHA_PREMULTIPLY
BLEND_CUSTOM
BLEND_CUSTOM_SEPARATE
GESTURE_NONE
GESTURE_TAP
GESTURE_DOUBLETAP
GESTURE_HOLD
GESTURE_DRAG
GESTURE_SWIPE_RIGHT
GESTURE_SWIPE_LEFT
GESTURE_SWIPE_UP
GESTURE_SWIPE_DOWN
GESTURE_PINCH_IN
GESTURE_PINCH_OUT
CAMERA_CUSTOM
CAMERA_FREE
CAMERA_ORBITAL
CAMERA_FIRST_PERSON
CAMERA_THIRD_PERSON
CAMERA_PERSPECTIVE
CAMERA_ORTHOGRAPHIC
NPATCH_NINE_PATCH
NPATCH_THREE_PATCH_VERTICAL
NPATCH_THREE_PATCH_HORIZONTAL
Vector2
Vector3
Vector4
Matrix
Color
Rectangle
Image
Texture
RenderTexture
NPatchInfo
GlyphInfo
Font
Camera3D
Camera2D
Mesh
Shader
MaterialMap
Material
Transform
BoneInfo
Model
ModelAnimation
Ray
RayCollision
BoundingBox
Wave
AudioStream
Sound
Music
VrDeviceInfo
VrStereoConfig
FilePathList
AutomationEvent
AutomationEventList
InitWindow
CloseWindow
WindowShouldClose
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
ToggleBorderlessWindowed
MaximizeWindow
MinimizeWindow
RestoreWindow
SetWindowIcon
SetWindowIcons
SetWindowTitle
SetWindowPosition
SetWindowMonitor
SetWindowMinSize
SetWindowMaxSize
SetWindowSize
SetWindowOpacity
SetWindowFocused
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
IsShaderReady
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
GetFrameTime
GetTime
GetFPS
SwapScreenBuffer
PollInputEvents
WaitTime
SetRandomSeed
GetRandomValue
LoadRandomSequence
UnloadRandomSequence
TakeScreenshot
SetConfigFlags
OpenURL
TraceLog
SetTraceLogLevel
MemAlloc
MemRealloc
MemFree
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
LoadAutomationEventList
UnloadAutomationEventList
ExportAutomationEventList
SetAutomationEventList
SetAutomationEventBaseFrame
StartAutomationEventRecording
StopAutomationEventRecording
PlayAutomationEvent
IsKeyPressed
IsKeyPressedRepeat
IsKeyDown
IsKeyReleased
IsKeyUp
GetKeyPressed
GetCharPressed
SetExitKey
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
UpdateCamera
UpdateCameraPro
SetShapesTexture
DrawPixel
DrawPixelV
DrawLine
DrawLineV
DrawLineEx
DrawLineStrip
DrawLineBezier
DrawCircle
DrawCircleSector
DrawCircleSectorLines
DrawCircleGradient
DrawCircleV
DrawCircleLines
DrawCircleLinesV
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
DrawSplineLinear
DrawSplineBasis
DrawSplineCatmullRom
DrawSplineBezierQuadratic
DrawSplineBezierCubic
DrawSplineSegmentLinear
DrawSplineSegmentBasis
DrawSplineSegmentCatmullRom
DrawSplineSegmentBezierQuadratic
DrawSplineSegmentBezierCubic
GetSplinePointLinear
GetSplinePointBasis
GetSplinePointCatmullRom
GetSplinePointBezierQuad
GetSplinePointBezierCubic
CheckCollisionRecs
CheckCollisionCircles
CheckCollisionCircleRec
CheckCollisionPointRec
CheckCollisionPointCircle
CheckCollisionPointTriangle
CheckCollisionPointPoly
CheckCollisionLines
CheckCollisionPointLine
GetCollisionRec
LoadImage
LoadImageRaw
LoadImageSvg
LoadImageAnim
LoadImageFromMemory
LoadImageFromTexture
LoadImageFromScreen
IsImageReady
UnloadImage
ExportImage
ExportImageToMemory
ExportImageAsCode
GenImageColor
GenImageGradientLinear
GenImageGradientRadial
GenImageGradientSquare
GenImageChecked
GenImageWhiteNoise
GenImagePerlinNoise
GenImageCellular
GenImageText
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
ImageBlurGaussian
ImageKernelConvolution
ImageResize
ImageResizeNN
ImageResizeCanvas
ImageMipmaps
ImageDither
ImageFlipVertical
ImageFlipHorizontal
ImageRotate
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
ImageDrawCircleLines
ImageDrawCircleLinesV
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
IsTextureReady
UnloadTexture
IsRenderTextureReady
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
DrawTexturePro
DrawTextureNPatch
Fade
ColorToInt
ColorNormalize
ColorFromNormalized
ColorToHSV
ColorFromHSV
ColorTint
ColorBrightness
ColorContrast
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
IsFontReady
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
SetTextLineSpacing
MeasureText
MeasureTextEx
GetGlyphIndex
GetGlyphInfo
GetGlyphAtlasRec
LoadUTF8
UnloadUTF8
LoadCodepoints
UnloadCodepoints
GetCodepointCount
GetCodepoint
GetCodepointNext
GetCodepointPrevious
CodepointToUTF8
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
DrawSphere
DrawSphereEx
DrawSphereWires
DrawCylinder
DrawCylinderEx
DrawCylinderWires
DrawCylinderWiresEx
DrawCapsule
DrawCapsuleWires
DrawPlane
DrawRay
DrawGrid
LoadModel
LoadModelFromMesh
IsModelReady
UnloadModel
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
IsMaterialReady
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
GetMasterVolume
LoadWave
LoadWaveFromMemory
IsWaveReady
LoadSound
LoadSoundFromWave
LoadSoundAlias
IsSoundReady
UpdateSound
UnloadWave
UnloadSound
UnloadSoundAlias
ExportWave
ExportWaveAsCode
PlaySound
StopSound
PauseSound
ResumeSound
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
IsMusicReady
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
IsAudioStreamReady
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
AttachAudioMixedProcessor
DetachAudioMixedProcessor
)(cond-expand (Linux (begin (define raylib (load-dynamic-library "libraylib.so")) (define raylib-err "Use, for example, sudo apt install libraylib.so"))) (else (runtime-error "unsupported platform" (uname)))) (begin (if (not raylib) (runtime-error "Can't load raylib library." raylib-err))
(define fft-float* (fft* fft-float))
(define fft-void* (fft* fft-void))
(define fft-int* (fft* fft-int))
(define fft-double* (fft* fft-double))

;;;; Structs
;; Vector2, 2 components
(define Vector2 (list  fft-float fft-float))
;; Vector3, 3 components
(define Vector3 (list  fft-float fft-float fft-float))
;; Vector4, 4 components
(define Vector4 (list  fft-float fft-float fft-float fft-float))
;; Matrix, 4x4 components, column major, OpenGL style, right-handed
(define Matrix (list  fft-float fft-float fft-float fft-float fft-float fft-float fft-float fft-float fft-float fft-float fft-float fft-float fft-float fft-float fft-float fft-float))
;; Color, 4 components, R8G8B8A8 (32bit)
(define Color (list  fft-char fft-char fft-char fft-char))
;; Rectangle, 4 components
(define Rectangle (list  fft-float fft-float fft-float fft-float))
;; Image, pixel data stored in CPU memory (RAM)
(define Image (list  fft-void* fft-int fft-int fft-int fft-int))
;; Texture, tex data stored in GPU memory (VRAM)
(define Texture (list  fft-int fft-int fft-int fft-int fft-int))
;; RenderTexture, fbo for texture rendering
(define RenderTexture (list  fft-int Texture Texture))
;; NPatchInfo, n-patch layout info
(define NPatchInfo (list  Rectangle fft-int fft-int fft-int fft-int fft-int))
;; GlyphInfo, font characters glyphs info
(define GlyphInfo (list  fft-int fft-int fft-int fft-int Image))
;; Font, font texture and GlyphInfo array data
(define Font (list  fft-int fft-int fft-int Texture Rectangle GlyphInfo))
;; Camera, defines position/orientation in 3d space
(define Camera3D (list  Vector3 Vector3 Vector3 fft-float fft-int))
;; Camera2D, defines position/orientation in 2d space
(define Camera2D (list  Vector2 Vector2 fft-float fft-float))
;; Mesh, vertex data and vao/vbo
(define Mesh (list  fft-int fft-int fft-float* fft-float* fft-float* fft-float* fft-float* type-string fft-short fft-float* fft-float* type-string fft-float* fft-int fft-int*))
;; Shader
(define Shader (list  fft-int fft-int*))
;; MaterialMap
(define MaterialMap (list  Texture Color fft-float))
;; Material, includes shader and maps
(define Material (list  Shader MaterialMap fft-float))
;; Transform, vertex transformation data
(define Transform (list  Vector3 Vector4 Vector3))
;; Bone, skeletal animation bone
(define BoneInfo (list  type-string fft-int))
;; Model, meshes, materials and animation data
(define Model (list  Matrix fft-int fft-int Mesh Material fft-int* fft-int BoneInfo Transform))
;; ModelAnimation
(define ModelAnimation (list  fft-int fft-int BoneInfo Transform type-string))
;; Ray, ray for raycasting
(define Ray (list  Vector3 Vector3))
;; RayCollision, ray hit information
(define RayCollision (list  fft-bool fft-float Vector3 Vector3))
;; BoundingBox
(define BoundingBox (list  Vector3 Vector3))
;; Wave, audio wave data
(define Wave (list  fft-int fft-int fft-int fft-int fft-void*))
;; AudioStream, custom audio stream
(define AudioStream (list  fft-any fft-any fft-int fft-int fft-int))
;; Sound
(define Sound (list  AudioStream fft-int))
;; Music, audio stream, anything longer than ~10 seconds should be streamed
(define Music (list  AudioStream fft-int fft-bool fft-int fft-void*))
;; VrDeviceInfo, Head-Mounted-Display device parameters
(define VrDeviceInfo (list  fft-int fft-int fft-float fft-float fft-float fft-float fft-float fft-float fft-float fft-float))
;; VrStereoConfig, VR stereo rendering configuration for simulator
(define VrStereoConfig (list  fft-float fft-float fft-float fft-float fft-float fft-float))
;; File path list
(define FilePathList (list  fft-int fft-int type-string))
;; Automation event
(define AutomationEvent (list  fft-int fft-int fft-int))
;; Automation event list
(define AutomationEventList (list  fft-int fft-int AutomationEvent))

;;;; Functions
;; Initialize window and OpenGL context
(define InitWindow (raylib  fft-void "InitWindow" fft-int fft-int type-string))
;; Close window and unload OpenGL context
(define CloseWindow (raylib  fft-void "CloseWindow"))
;; Check if application should close (KEY_ESCAPE pressed or windows close icon clicked)
(define WindowShouldClose (raylib  fft-bool "WindowShouldClose"))
;; Check if window has been initialized successfully
(define IsWindowReady (raylib  fft-bool "IsWindowReady"))
;; Check if window is currently fullscreen
(define IsWindowFullscreen (raylib  fft-bool "IsWindowFullscreen"))
;; Check if window is currently hidden (only PLATFORM_DESKTOP)
(define IsWindowHidden (raylib  fft-bool "IsWindowHidden"))
;; Check if window is currently minimized (only PLATFORM_DESKTOP)
(define IsWindowMinimized (raylib  fft-bool "IsWindowMinimized"))
;; Check if window is currently maximized (only PLATFORM_DESKTOP)
(define IsWindowMaximized (raylib  fft-bool "IsWindowMaximized"))
;; Check if window is currently focused (only PLATFORM_DESKTOP)
(define IsWindowFocused (raylib  fft-bool "IsWindowFocused"))
;; Check if window has been resized last frame
(define IsWindowResized (raylib  fft-bool "IsWindowResized"))
;; Check if one specific window flag is enabled
(define IsWindowState (raylib  fft-bool "IsWindowState" fft-int))
;; Set window configuration state using flags (only PLATFORM_DESKTOP)
(define SetWindowState (raylib  fft-void "SetWindowState" fft-int))
;; Clear window configuration state flags
(define ClearWindowState (raylib  fft-void "ClearWindowState" fft-int))
;; Toggle window state: fullscreen/windowed (only PLATFORM_DESKTOP)
(define ToggleFullscreen (raylib  fft-void "ToggleFullscreen"))
;; Toggle window state: borderless windowed (only PLATFORM_DESKTOP)
(define ToggleBorderlessWindowed (raylib  fft-void "ToggleBorderlessWindowed"))
;; Set window state: maximized, if resizable (only PLATFORM_DESKTOP)
(define MaximizeWindow (raylib  fft-void "MaximizeWindow"))
;; Set window state: minimized, if resizable (only PLATFORM_DESKTOP)
(define MinimizeWindow (raylib  fft-void "MinimizeWindow"))
;; Set window state: not minimized/maximized (only PLATFORM_DESKTOP)
(define RestoreWindow (raylib  fft-void "RestoreWindow"))
;; Set icon for window (single image, RGBA 32bit, only PLATFORM_DESKTOP)
(define SetWindowIcon (raylib  fft-void "SetWindowIcon" Image))
;; Set icon for window (multiple images, RGBA 32bit, only PLATFORM_DESKTOP)
(define SetWindowIcons (raylib  fft-void "SetWindowIcons" Image fft-int))
;; Set title for window (only PLATFORM_DESKTOP and PLATFORM_WEB)
(define SetWindowTitle (raylib  fft-void "SetWindowTitle" type-string))
;; Set window position on screen (only PLATFORM_DESKTOP)
(define SetWindowPosition (raylib  fft-void "SetWindowPosition" fft-int fft-int))
;; Set monitor for the current window
(define SetWindowMonitor (raylib  fft-void "SetWindowMonitor" fft-int))
;; Set window minimum dimensions (for FLAG_WINDOW_RESIZABLE)
(define SetWindowMinSize (raylib  fft-void "SetWindowMinSize" fft-int fft-int))
;; Set window maximum dimensions (for FLAG_WINDOW_RESIZABLE)
(define SetWindowMaxSize (raylib  fft-void "SetWindowMaxSize" fft-int fft-int))
;; Set window dimensions
(define SetWindowSize (raylib  fft-void "SetWindowSize" fft-int fft-int))
;; Set window opacity [0.0f..1.0f] (only PLATFORM_DESKTOP)
(define SetWindowOpacity (raylib  fft-void "SetWindowOpacity" fft-float))
;; Set window focused (only PLATFORM_DESKTOP)
(define SetWindowFocused (raylib  fft-void "SetWindowFocused"))
;; Get native window handle
(define GetWindowHandle (raylib  fft-void* "GetWindowHandle"))
;; Get current screen width
(define GetScreenWidth (raylib  fft-int "GetScreenWidth"))
;; Get current screen height
(define GetScreenHeight (raylib  fft-int "GetScreenHeight"))
;; Get current render width (it considers HiDPI)
(define GetRenderWidth (raylib  fft-int "GetRenderWidth"))
;; Get current render height (it considers HiDPI)
(define GetRenderHeight (raylib  fft-int "GetRenderHeight"))
;; Get number of connected monitors
(define GetMonitorCount (raylib  fft-int "GetMonitorCount"))
;; Get current connected monitor
(define GetCurrentMonitor (raylib  fft-int "GetCurrentMonitor"))
;; Get specified monitor position
(define GetMonitorPosition (raylib  Vector2 "GetMonitorPosition" fft-int))
;; Get specified monitor width (current video mode used by monitor)
(define GetMonitorWidth (raylib  fft-int "GetMonitorWidth" fft-int))
;; Get specified monitor height (current video mode used by monitor)
(define GetMonitorHeight (raylib  fft-int "GetMonitorHeight" fft-int))
;; Get specified monitor physical width in millimetres
(define GetMonitorPhysicalWidth (raylib  fft-int "GetMonitorPhysicalWidth" fft-int))
;; Get specified monitor physical height in millimetres
(define GetMonitorPhysicalHeight (raylib  fft-int "GetMonitorPhysicalHeight" fft-int))
;; Get specified monitor refresh rate
(define GetMonitorRefreshRate (raylib  fft-int "GetMonitorRefreshRate" fft-int))
;; Get window position XY on monitor
(define GetWindowPosition (raylib  Vector2 "GetWindowPosition"))
;; Get window scale DPI factor
(define GetWindowScaleDPI (raylib  Vector2 "GetWindowScaleDPI"))
;; Get the human-readable, UTF-8 encoded name of the specified monitor
(define GetMonitorName (raylib  type-string "GetMonitorName" fft-int))
;; Set clipboard text content
(define SetClipboardText (raylib  fft-void "SetClipboardText" type-string))
;; Get clipboard text content
(define GetClipboardText (raylib  type-string "GetClipboardText"))
;; Enable waiting for events on EndDrawing(), no automatic event polling
(define EnableEventWaiting (raylib  fft-void "EnableEventWaiting"))
;; Disable waiting for events on EndDrawing(), automatic events polling
(define DisableEventWaiting (raylib  fft-void "DisableEventWaiting"))
;; Shows cursor
(define ShowCursor (raylib  fft-void "ShowCursor"))
;; Hides cursor
(define HideCursor (raylib  fft-void "HideCursor"))
;; Check if cursor is not visible
(define IsCursorHidden (raylib  fft-bool "IsCursorHidden"))
;; Enables cursor (unlock cursor)
(define EnableCursor (raylib  fft-void "EnableCursor"))
;; Disables cursor (lock cursor)
(define DisableCursor (raylib  fft-void "DisableCursor"))
;; Check if cursor is on the screen
(define IsCursorOnScreen (raylib  fft-bool "IsCursorOnScreen"))
;; Set background color (framebuffer clear color)
(define ClearBackground (raylib  fft-void "ClearBackground" Color))
;; Setup canvas (framebuffer) to start drawing
(define BeginDrawing (raylib  fft-void "BeginDrawing"))
;; End canvas drawing and swap buffers (double buffering)
(define EndDrawing (raylib  fft-void "EndDrawing"))
;; Begin 2D mode with custom camera (2D)
(define BeginMode2D (raylib  fft-void "BeginMode2D" Camera2D))
;; Ends 2D mode with custom camera
(define EndMode2D (raylib  fft-void "EndMode2D"))
;; Begin 3D mode with custom camera (3D)
(define BeginMode3D (raylib  fft-void "BeginMode3D" Camera3D))
;; Ends 3D mode and returns to default 2D orthographic mode
(define EndMode3D (raylib  fft-void "EndMode3D"))
;; Begin drawing to render texture
(define BeginTextureMode (raylib  fft-void "BeginTextureMode" RenderTexture))
;; Ends drawing to render texture
(define EndTextureMode (raylib  fft-void "EndTextureMode"))
;; Begin custom shader drawing
(define BeginShaderMode (raylib  fft-void "BeginShaderMode" Shader))
;; End custom shader drawing (use default shader)
(define EndShaderMode (raylib  fft-void "EndShaderMode"))
;; Begin blending mode (alpha, additive, multiplied, subtract, custom)
(define BeginBlendMode (raylib  fft-void "BeginBlendMode" fft-int))
;; End blending mode (reset to default: alpha blending)
(define EndBlendMode (raylib  fft-void "EndBlendMode"))
;; Begin scissor mode (define screen area for following drawing)
(define BeginScissorMode (raylib  fft-void "BeginScissorMode" fft-int fft-int fft-int fft-int))
;; End scissor mode
(define EndScissorMode (raylib  fft-void "EndScissorMode"))
;; Begin stereo rendering (requires VR simulator)
(define BeginVrStereoMode (raylib  fft-void "BeginVrStereoMode" VrStereoConfig))
;; End stereo rendering (requires VR simulator)
(define EndVrStereoMode (raylib  fft-void "EndVrStereoMode"))
;; Load VR stereo config for VR simulator device parameters
(define LoadVrStereoConfig (raylib  VrStereoConfig "LoadVrStereoConfig" VrDeviceInfo))
;; Unload VR stereo config
(define UnloadVrStereoConfig (raylib  fft-void "UnloadVrStereoConfig" VrStereoConfig))
;; Load shader from files and bind default locations
(define LoadShader (raylib  Shader "LoadShader" type-string type-string))
;; Load shader from code strings and bind default locations
(define LoadShaderFromMemory (raylib  Shader "LoadShaderFromMemory" type-string type-string))
;; Check if a shader is ready
(define IsShaderReady (raylib  fft-bool "IsShaderReady" Shader))
;; Get shader uniform location
(define GetShaderLocation (raylib  fft-int "GetShaderLocation" Shader type-string))
;; Get shader attribute location
(define GetShaderLocationAttrib (raylib  fft-int "GetShaderLocationAttrib" Shader type-string))
;; Set shader uniform value
(define SetShaderValue (raylib  fft-void "SetShaderValue" Shader fft-int fft-void* fft-int))
;; Set shader uniform value vector
(define SetShaderValueV (raylib  fft-void "SetShaderValueV" Shader fft-int fft-void* fft-int fft-int))
;; Set shader uniform value (matrix 4x4)
(define SetShaderValueMatrix (raylib  fft-void "SetShaderValueMatrix" Shader fft-int Matrix))
;; Set shader uniform value for texture (sampler2d)
(define SetShaderValueTexture (raylib  fft-void "SetShaderValueTexture" Shader fft-int Texture))
;; Unload shader from GPU memory (VRAM)
(define UnloadShader (raylib  fft-void "UnloadShader" Shader))
;; Get a ray trace from mouse position
(define GetMouseRay (raylib  Ray "GetMouseRay" Vector2))
;; Get camera transform matrix (view matrix)
(define GetCameraMatrix (raylib  Matrix "GetCameraMatrix"))
;; Get camera 2d transform matrix
(define GetCameraMatrix2D (raylib  Matrix "GetCameraMatrix2D" Camera2D))
;; Get the screen space position for a 3d world space position
(define GetWorldToScreen (raylib  Vector2 "GetWorldToScreen" Vector3))
;; Get the world space position for a 2d camera screen space position
(define GetScreenToWorld2D (raylib  Vector2 "GetScreenToWorld2D" Vector2 Camera2D))
;; Get size position for a 3d world space position
(define GetWorldToScreenEx (raylib  Vector2 "GetWorldToScreenEx" Vector3 fft-int fft-int))
;; Get the screen space position for a 2d camera world space position
(define GetWorldToScreen2D (raylib  Vector2 "GetWorldToScreen2D" Vector2 Camera2D))
;; Set target FPS (maximum)
(define SetTargetFPS (raylib  fft-void "SetTargetFPS" fft-int))
;; Get time in seconds for last frame drawn (delta time)
(define GetFrameTime (raylib  fft-float "GetFrameTime"))
;; Get elapsed time in seconds since InitWindow()
(define GetTime (raylib  fft-double "GetTime"))
;; Get current FPS
(define GetFPS (raylib  fft-int "GetFPS"))
;; Swap back buffer with front buffer (screen drawing)
(define SwapScreenBuffer (raylib  fft-void "SwapScreenBuffer"))
;; Register all input events
(define PollInputEvents (raylib  fft-void "PollInputEvents"))
;; Wait for some time (halt program execution)
(define WaitTime (raylib  fft-void "WaitTime" fft-double))
;; Set the seed for the random number generator
(define SetRandomSeed (raylib  fft-void "SetRandomSeed" fft-int))
;; Get a random value between min and max (both included)
(define GetRandomValue (raylib  fft-int "GetRandomValue" fft-int fft-int))
;; Load random values sequence, no values repeated
(define LoadRandomSequence (raylib  fft-int* "LoadRandomSequence" fft-int fft-int fft-int))
;; Unload random values sequence
(define UnloadRandomSequence (raylib  fft-void "UnloadRandomSequence" fft-int*))
;; Takes a screenshot of current screen (filename extension defines format)
(define TakeScreenshot (raylib  fft-void "TakeScreenshot" type-string))
;; Setup init configuration flags (view FLAGS)
(define SetConfigFlags (raylib  fft-void "SetConfigFlags" fft-int))
;; Open URL with default system browser (if available)
(define OpenURL (raylib  fft-void "OpenURL" type-string))
;; Show trace log messages (LOG_DEBUG, LOG_INFO, LOG_WARNING, LOG_ERROR...)
(define TraceLog (raylib  fft-void "TraceLog" fft-int type-string))
;; Set the current threshold (minimum) log level
(define SetTraceLogLevel (raylib  fft-void "SetTraceLogLevel" fft-int))
;; Internal memory allocator
(define MemAlloc (raylib  fft-void* "MemAlloc" fft-int))
;; Internal memory reallocator
(define MemRealloc (raylib  fft-void* "MemRealloc" fft-void* fft-int))
;; Internal memory free
(define MemFree (raylib  fft-void "MemFree" fft-void*))
;; Set custom trace log
(define SetTraceLogCallback (raylib  fft-void "SetTraceLogCallback"))
;; Set custom file binary data loader
(define SetLoadFileDataCallback (raylib  fft-void "SetLoadFileDataCallback"))
;; Set custom file binary data saver
(define SetSaveFileDataCallback (raylib  fft-void "SetSaveFileDataCallback"))
;; Set custom file text data loader
(define SetLoadFileTextCallback (raylib  fft-void "SetLoadFileTextCallback"))
;; Set custom file text data saver
(define SetSaveFileTextCallback (raylib  fft-void "SetSaveFileTextCallback"))
;; Load file data as byte array (read)
(define LoadFileData (raylib  type-string "LoadFileData" type-string fft-int*))
;; Unload file data allocated by LoadFileData()
(define UnloadFileData (raylib  fft-void "UnloadFileData" type-string))
;; Save data to file from byte array (write), returns true on success
(define SaveFileData (raylib  fft-bool "SaveFileData" type-string fft-void* fft-int))
;; Export data to code (.h), returns true on success
(define ExportDataAsCode (raylib  fft-bool "ExportDataAsCode" type-string fft-int type-string))
;; Load text data from file (read), returns a '\0' terminated string
(define LoadFileText (raylib  type-string "LoadFileText" type-string))
;; Unload file text data allocated by LoadFileText()
(define UnloadFileText (raylib  fft-void "UnloadFileText" type-string))
;; Save text data to file (write), string must be '\0' terminated, returns true on success
(define SaveFileText (raylib  fft-bool "SaveFileText" type-string type-string))
;; Check if file exists
(define FileExists (raylib  fft-bool "FileExists" type-string))
;; Check if a directory path exists
(define DirectoryExists (raylib  fft-bool "DirectoryExists" type-string))
;; Check file extension (including point: .png, .wav)
(define IsFileExtension (raylib  fft-bool "IsFileExtension" type-string type-string))
;; Get file length in bytes (NOTE: GetFileSize() conflicts with windows.h)
(define GetFileLength (raylib  fft-int "GetFileLength" type-string))
;; Get pointer to extension for a filename string (includes dot: '.png')
(define GetFileExtension (raylib  type-string "GetFileExtension" type-string))
;; Get pointer to filename for a path string
(define GetFileName (raylib  type-string "GetFileName" type-string))
;; Get filename string without extension (uses static string)
(define GetFileNameWithoutExt (raylib  type-string "GetFileNameWithoutExt" type-string))
;; Get full path for a given fileName with path (uses static string)
(define GetDirectoryPath (raylib  type-string "GetDirectoryPath" type-string))
;; Get previous directory path for a given path (uses static string)
(define GetPrevDirectoryPath (raylib  type-string "GetPrevDirectoryPath" type-string))
;; Get current working directory (uses static string)
(define GetWorkingDirectory (raylib  type-string "GetWorkingDirectory"))
;; Get the directory of the running application (uses static string)
(define GetApplicationDirectory (raylib  type-string "GetApplicationDirectory"))
;; Change working directory, return true on success
(define ChangeDirectory (raylib  fft-bool "ChangeDirectory" type-string))
;; Check if a given path is a file or a directory
(define IsPathFile (raylib  fft-bool "IsPathFile" type-string))
;; Load directory filepaths
(define LoadDirectoryFiles (raylib  FilePathList "LoadDirectoryFiles" type-string))
;; Load directory filepaths with extension filtering and recursive directory scan
(define LoadDirectoryFilesEx (raylib  FilePathList "LoadDirectoryFilesEx" type-string type-string fft-bool))
;; Unload filepaths
(define UnloadDirectoryFiles (raylib  fft-void "UnloadDirectoryFiles" FilePathList))
;; Check if a file has been dropped into window
(define IsFileDropped (raylib  fft-bool "IsFileDropped"))
;; Load dropped filepaths
(define LoadDroppedFiles (raylib  FilePathList "LoadDroppedFiles"))
;; Unload dropped filepaths
(define UnloadDroppedFiles (raylib  fft-void "UnloadDroppedFiles" FilePathList))
;; Get file modification time (last write time)
(define GetFileModTime (raylib  fft-long "GetFileModTime" type-string))
;; Compress data (DEFLATE algorithm), memory must be MemFree()
(define CompressData (raylib  type-string "CompressData" type-string fft-int fft-int*))
;; Decompress data (DEFLATE algorithm), memory must be MemFree()
(define DecompressData (raylib  type-string "DecompressData" type-string fft-int fft-int*))
;; Encode data to Base64 string, memory must be MemFree()
(define EncodeDataBase64 (raylib  type-string "EncodeDataBase64" type-string fft-int fft-int*))
;; Decode Base64 string data, memory must be MemFree()
(define DecodeDataBase64 (raylib  type-string "DecodeDataBase64" type-string fft-int*))
;; Load automation events list from file, NULL for empty list, capacity = MAX_AUTOMATION_EVENTS
(define LoadAutomationEventList (raylib  AutomationEventList "LoadAutomationEventList" type-string))
;; Unload automation events list from file
(define UnloadAutomationEventList (raylib  fft-void "UnloadAutomationEventList" AutomationEventList))
;; Export automation events list as text file
(define ExportAutomationEventList (raylib  fft-bool "ExportAutomationEventList" AutomationEventList type-string))
;; Set automation event list to record to
(define SetAutomationEventList (raylib  fft-void "SetAutomationEventList" AutomationEventList))
;; Set automation event internal base frame to start recording
(define SetAutomationEventBaseFrame (raylib  fft-void "SetAutomationEventBaseFrame" fft-int))
;; Start recording automation events (AutomationEventList must be set)
(define StartAutomationEventRecording (raylib  fft-void "StartAutomationEventRecording"))
;; Stop recording automation events
(define StopAutomationEventRecording (raylib  fft-void "StopAutomationEventRecording"))
;; Play a recorded automation event
(define PlayAutomationEvent (raylib  fft-void "PlayAutomationEvent" AutomationEvent))
;; Check if a key has been pressed once
(define IsKeyPressed (raylib  fft-bool "IsKeyPressed" fft-int))
;; Check if a key has been pressed again (Only PLATFORM_DESKTOP)
(define IsKeyPressedRepeat (raylib  fft-bool "IsKeyPressedRepeat" fft-int))
;; Check if a key is being pressed
(define IsKeyDown (raylib  fft-bool "IsKeyDown" fft-int))
;; Check if a key has been released once
(define IsKeyReleased (raylib  fft-bool "IsKeyReleased" fft-int))
;; Check if a key is NOT being pressed
(define IsKeyUp (raylib  fft-bool "IsKeyUp" fft-int))
;; Get key pressed (keycode), call it multiple times for keys queued, returns 0 when the queue is empty
(define GetKeyPressed (raylib  fft-int "GetKeyPressed"))
;; Get char pressed (unicode), call it multiple times for chars queued, returns 0 when the queue is empty
(define GetCharPressed (raylib  fft-int "GetCharPressed"))
;; Set a custom key to exit program (default is ESC)
(define SetExitKey (raylib  fft-void "SetExitKey" fft-int))
;; Check if a gamepad is available
(define IsGamepadAvailable (raylib  fft-bool "IsGamepadAvailable" fft-int))
;; Get gamepad internal name id
(define GetGamepadName (raylib  type-string "GetGamepadName" fft-int))
;; Check if a gamepad button has been pressed once
(define IsGamepadButtonPressed (raylib  fft-bool "IsGamepadButtonPressed" fft-int fft-int))
;; Check if a gamepad button is being pressed
(define IsGamepadButtonDown (raylib  fft-bool "IsGamepadButtonDown" fft-int fft-int))
;; Check if a gamepad button has been released once
(define IsGamepadButtonReleased (raylib  fft-bool "IsGamepadButtonReleased" fft-int fft-int))
;; Check if a gamepad button is NOT being pressed
(define IsGamepadButtonUp (raylib  fft-bool "IsGamepadButtonUp" fft-int fft-int))
;; Get the last gamepad button pressed
(define GetGamepadButtonPressed (raylib  fft-int "GetGamepadButtonPressed"))
;; Get gamepad axis count for a gamepad
(define GetGamepadAxisCount (raylib  fft-int "GetGamepadAxisCount" fft-int))
;; Get axis movement value for a gamepad axis
(define GetGamepadAxisMovement (raylib  fft-float "GetGamepadAxisMovement" fft-int fft-int))
;; Set internal gamepad mappings (SDL_GameControllerDB)
(define SetGamepadMappings (raylib  fft-int "SetGamepadMappings" type-string))
;; Check if a mouse button has been pressed once
(define IsMouseButtonPressed (raylib  fft-bool "IsMouseButtonPressed" fft-int))
;; Check if a mouse button is being pressed
(define IsMouseButtonDown (raylib  fft-bool "IsMouseButtonDown" fft-int))
;; Check if a mouse button has been released once
(define IsMouseButtonReleased (raylib  fft-bool "IsMouseButtonReleased" fft-int))
;; Check if a mouse button is NOT being pressed
(define IsMouseButtonUp (raylib  fft-bool "IsMouseButtonUp" fft-int))
;; Get mouse position X
(define GetMouseX (raylib  fft-int "GetMouseX"))
;; Get mouse position Y
(define GetMouseY (raylib  fft-int "GetMouseY"))
;; Get mouse position XY
(define GetMousePosition (raylib  Vector2 "GetMousePosition"))
;; Get mouse delta between frames
(define GetMouseDelta (raylib  Vector2 "GetMouseDelta"))
;; Set mouse position XY
(define SetMousePosition (raylib  fft-void "SetMousePosition" fft-int fft-int))
;; Set mouse offset
(define SetMouseOffset (raylib  fft-void "SetMouseOffset" fft-int fft-int))
;; Set mouse scaling
(define SetMouseScale (raylib  fft-void "SetMouseScale" fft-float fft-float))
;; Get mouse wheel movement for X or Y, whichever is larger
(define GetMouseWheelMove (raylib  fft-float "GetMouseWheelMove"))
;; Get mouse wheel movement for both X and Y
(define GetMouseWheelMoveV (raylib  Vector2 "GetMouseWheelMoveV"))
;; Set mouse cursor
(define SetMouseCursor (raylib  fft-void "SetMouseCursor" fft-int))
;; Get touch position X for touch point 0 (relative to screen size)
(define GetTouchX (raylib  fft-int "GetTouchX"))
;; Get touch position Y for touch point 0 (relative to screen size)
(define GetTouchY (raylib  fft-int "GetTouchY"))
;; Get touch position XY for a touch point index (relative to screen size)
(define GetTouchPosition (raylib  Vector2 "GetTouchPosition" fft-int))
;; Get touch point identifier for given index
(define GetTouchPointId (raylib  fft-int "GetTouchPointId" fft-int))
;; Get number of touch points
(define GetTouchPointCount (raylib  fft-int "GetTouchPointCount"))
;; Enable a set of gestures using flags
(define SetGesturesEnabled (raylib  fft-void "SetGesturesEnabled" fft-int))
;; Check if a gesture have been detected
(define IsGestureDetected (raylib  fft-bool "IsGestureDetected" fft-int))
;; Get latest detected gesture
(define GetGestureDetected (raylib  fft-int "GetGestureDetected"))
;; Get gesture hold time in milliseconds
(define GetGestureHoldDuration (raylib  fft-float "GetGestureHoldDuration"))
;; Get gesture drag vector
(define GetGestureDragVector (raylib  Vector2 "GetGestureDragVector"))
;; Get gesture drag angle
(define GetGestureDragAngle (raylib  fft-float "GetGestureDragAngle"))
;; Get gesture pinch delta
(define GetGesturePinchVector (raylib  Vector2 "GetGesturePinchVector"))
;; Get gesture pinch angle
(define GetGesturePinchAngle (raylib  fft-float "GetGesturePinchAngle"))
;; Update camera position for selected mode
(define UpdateCamera (raylib  fft-void "UpdateCamera" fft-int))
;; Update camera movement/rotation
(define UpdateCameraPro (raylib  fft-void "UpdateCameraPro" Vector3 Vector3 fft-float))
;; Set texture and rectangle to be used on shapes drawing
(define SetShapesTexture (raylib  fft-void "SetShapesTexture" Texture Rectangle))
;; Draw a pixel
(define DrawPixel (raylib  fft-void "DrawPixel" fft-int fft-int Color))
;; Draw a pixel (Vector version)
(define DrawPixelV (raylib  fft-void "DrawPixelV" Vector2 Color))
;; Draw a line
(define DrawLine (raylib  fft-void "DrawLine" fft-int fft-int fft-int fft-int Color))
;; Draw a line (using gl lines)
(define DrawLineV (raylib  fft-void "DrawLineV" Vector2 Vector2 Color))
;; Draw a line (using triangles/quads)
(define DrawLineEx (raylib  fft-void "DrawLineEx" Vector2 Vector2 fft-float Color))
;; Draw lines sequence (using gl lines)
(define DrawLineStrip (raylib  fft-void "DrawLineStrip" Vector2 fft-int Color))
;; Draw line segment cubic-bezier in-out interpolation
(define DrawLineBezier (raylib  fft-void "DrawLineBezier" Vector2 Vector2 fft-float Color))
;; Draw a color-filled circle
(define DrawCircle (raylib  fft-void "DrawCircle" fft-int fft-int fft-float Color))
;; Draw a piece of a circle
(define DrawCircleSector (raylib  fft-void "DrawCircleSector" Vector2 fft-float fft-float fft-float fft-int Color))
;; Draw circle sector outline
(define DrawCircleSectorLines (raylib  fft-void "DrawCircleSectorLines" Vector2 fft-float fft-float fft-float fft-int Color))
;; Draw a gradient-filled circle
(define DrawCircleGradient (raylib  fft-void "DrawCircleGradient" fft-int fft-int fft-float Color Color))
;; Draw a color-filled circle (Vector version)
(define DrawCircleV (raylib  fft-void "DrawCircleV" Vector2 fft-float Color))
;; Draw circle outline
(define DrawCircleLines (raylib  fft-void "DrawCircleLines" fft-int fft-int fft-float Color))
;; Draw circle outline (Vector version)
(define DrawCircleLinesV (raylib  fft-void "DrawCircleLinesV" Vector2 fft-float Color))
;; Draw ellipse
(define DrawEllipse (raylib  fft-void "DrawEllipse" fft-int fft-int fft-float fft-float Color))
;; Draw ellipse outline
(define DrawEllipseLines (raylib  fft-void "DrawEllipseLines" fft-int fft-int fft-float fft-float Color))
;; Draw ring
(define DrawRing (raylib  fft-void "DrawRing" Vector2 fft-float fft-float fft-float fft-float fft-int Color))
;; Draw ring outline
(define DrawRingLines (raylib  fft-void "DrawRingLines" Vector2 fft-float fft-float fft-float fft-float fft-int Color))
;; Draw a color-filled rectangle
(define DrawRectangle (raylib  fft-void "DrawRectangle" fft-int fft-int fft-int fft-int Color))
;; Draw a color-filled rectangle (Vector version)
(define DrawRectangleV (raylib  fft-void "DrawRectangleV" Vector2 Vector2 Color))
;; Draw a color-filled rectangle
(define DrawRectangleRec (raylib  fft-void "DrawRectangleRec" Rectangle Color))
;; Draw a color-filled rectangle with pro parameters
(define DrawRectanglePro (raylib  fft-void "DrawRectanglePro" Rectangle Vector2 fft-float Color))
;; Draw a vertical-gradient-filled rectangle
(define DrawRectangleGradientV (raylib  fft-void "DrawRectangleGradientV" fft-int fft-int fft-int fft-int Color Color))
;; Draw a horizontal-gradient-filled rectangle
(define DrawRectangleGradientH (raylib  fft-void "DrawRectangleGradientH" fft-int fft-int fft-int fft-int Color Color))
;; Draw a gradient-filled rectangle with custom vertex colors
(define DrawRectangleGradientEx (raylib  fft-void "DrawRectangleGradientEx" Rectangle Color Color Color Color))
;; Draw rectangle outline
(define DrawRectangleLines (raylib  fft-void "DrawRectangleLines" fft-int fft-int fft-int fft-int Color))
;; Draw rectangle outline with extended parameters
(define DrawRectangleLinesEx (raylib  fft-void "DrawRectangleLinesEx" Rectangle fft-float Color))
;; Draw rectangle with rounded edges
(define DrawRectangleRounded (raylib  fft-void "DrawRectangleRounded" Rectangle fft-float fft-int Color))
;; Draw rectangle with rounded edges outline
(define DrawRectangleRoundedLines (raylib  fft-void "DrawRectangleRoundedLines" Rectangle fft-float fft-int fft-float Color))
;; Draw a color-filled triangle (vertex in counter-clockwise order!)
(define DrawTriangle (raylib  fft-void "DrawTriangle" Vector2 Vector2 Vector2 Color))
;; Draw triangle outline (vertex in counter-clockwise order!)
(define DrawTriangleLines (raylib  fft-void "DrawTriangleLines" Vector2 Vector2 Vector2 Color))
;; Draw a triangle fan defined by points (first vertex is the center)
(define DrawTriangleFan (raylib  fft-void "DrawTriangleFan" Vector2 fft-int Color))
;; Draw a triangle strip defined by points
(define DrawTriangleStrip (raylib  fft-void "DrawTriangleStrip" Vector2 fft-int Color))
;; Draw a regular polygon (Vector version)
(define DrawPoly (raylib  fft-void "DrawPoly" Vector2 fft-int fft-float fft-float Color))
;; Draw a polygon outline of n sides
(define DrawPolyLines (raylib  fft-void "DrawPolyLines" Vector2 fft-int fft-float fft-float Color))
;; Draw a polygon outline of n sides with extended parameters
(define DrawPolyLinesEx (raylib  fft-void "DrawPolyLinesEx" Vector2 fft-int fft-float fft-float fft-float Color))
;; Draw spline: Linear, minimum 2 points
(define DrawSplineLinear (raylib  fft-void "DrawSplineLinear" Vector2 fft-int fft-float Color))
;; Draw spline: B-Spline, minimum 4 points
(define DrawSplineBasis (raylib  fft-void "DrawSplineBasis" Vector2 fft-int fft-float Color))
;; Draw spline: Catmull-Rom, minimum 4 points
(define DrawSplineCatmullRom (raylib  fft-void "DrawSplineCatmullRom" Vector2 fft-int fft-float Color))
;; Draw spline: Quadratic Bezier, minimum 3 points (1 control point): [p1, c2, p3, c4...]
(define DrawSplineBezierQuadratic (raylib  fft-void "DrawSplineBezierQuadratic" Vector2 fft-int fft-float Color))
;; Draw spline: Cubic Bezier, minimum 4 points (2 control points): [p1, c2, c3, p4, c5, c6...]
(define DrawSplineBezierCubic (raylib  fft-void "DrawSplineBezierCubic" Vector2 fft-int fft-float Color))
;; Draw spline segment: Linear, 2 points
(define DrawSplineSegmentLinear (raylib  fft-void "DrawSplineSegmentLinear" Vector2 Vector2 fft-float Color))
;; Draw spline segment: B-Spline, 4 points
(define DrawSplineSegmentBasis (raylib  fft-void "DrawSplineSegmentBasis" Vector2 Vector2 Vector2 Vector2 fft-float Color))
;; Draw spline segment: Catmull-Rom, 4 points
(define DrawSplineSegmentCatmullRom (raylib  fft-void "DrawSplineSegmentCatmullRom" Vector2 Vector2 Vector2 Vector2 fft-float Color))
;; Draw spline segment: Quadratic Bezier, 2 points, 1 control point
(define DrawSplineSegmentBezierQuadratic (raylib  fft-void "DrawSplineSegmentBezierQuadratic" Vector2 Vector2 Vector2 fft-float Color))
;; Draw spline segment: Cubic Bezier, 2 points, 2 control points
(define DrawSplineSegmentBezierCubic (raylib  fft-void "DrawSplineSegmentBezierCubic" Vector2 Vector2 Vector2 Vector2 fft-float Color))
;; Get (evaluate) spline point: Linear
(define GetSplinePointLinear (raylib  Vector2 "GetSplinePointLinear" Vector2 Vector2 fft-float))
;; Get (evaluate) spline point: B-Spline
(define GetSplinePointBasis (raylib  Vector2 "GetSplinePointBasis" Vector2 Vector2 Vector2 Vector2 fft-float))
;; Get (evaluate) spline point: Catmull-Rom
(define GetSplinePointCatmullRom (raylib  Vector2 "GetSplinePointCatmullRom" Vector2 Vector2 Vector2 Vector2 fft-float))
;; Get (evaluate) spline point: Quadratic Bezier
(define GetSplinePointBezierQuad (raylib  Vector2 "GetSplinePointBezierQuad" Vector2 Vector2 Vector2 fft-float))
;; Get (evaluate) spline point: Cubic Bezier
(define GetSplinePointBezierCubic (raylib  Vector2 "GetSplinePointBezierCubic" Vector2 Vector2 Vector2 Vector2 fft-float))
;; Check collision between two rectangles
(define CheckCollisionRecs (raylib  fft-bool "CheckCollisionRecs" Rectangle Rectangle))
;; Check collision between two circles
(define CheckCollisionCircles (raylib  fft-bool "CheckCollisionCircles" Vector2 fft-float Vector2 fft-float))
;; Check collision between circle and rectangle
(define CheckCollisionCircleRec (raylib  fft-bool "CheckCollisionCircleRec" Vector2 fft-float Rectangle))
;; Check if point is inside rectangle
(define CheckCollisionPointRec (raylib  fft-bool "CheckCollisionPointRec" Vector2 Rectangle))
;; Check if point is inside circle
(define CheckCollisionPointCircle (raylib  fft-bool "CheckCollisionPointCircle" Vector2 Vector2 fft-float))
;; Check if point is inside a triangle
(define CheckCollisionPointTriangle (raylib  fft-bool "CheckCollisionPointTriangle" Vector2 Vector2 Vector2 Vector2))
;; Check if point is within a polygon described by array of vertices
(define CheckCollisionPointPoly (raylib  fft-bool "CheckCollisionPointPoly" Vector2 Vector2 fft-int))
;; Check the collision between two lines defined by two points each, returns collision point by reference
(define CheckCollisionLines (raylib  fft-bool "CheckCollisionLines" Vector2 Vector2 Vector2 Vector2 Vector2))
;; Check if point belongs to line created between two points [p1] and [p2] with defined margin in pixels [threshold]
(define CheckCollisionPointLine (raylib  fft-bool "CheckCollisionPointLine" Vector2 Vector2 Vector2 fft-int))
;; Get collision rectangle for two rectangles collision
(define GetCollisionRec (raylib  Rectangle "GetCollisionRec" Rectangle Rectangle))
;; Load image from file into CPU memory (RAM)
(define LoadImage (raylib  Image "LoadImage" type-string))
;; Load image from RAW file data
(define LoadImageRaw (raylib  Image "LoadImageRaw" type-string fft-int fft-int fft-int fft-int))
;; Load image from SVG file data or string with specified size
(define LoadImageSvg (raylib  Image "LoadImageSvg" type-string fft-int fft-int))
;; Load image sequence from file (frames appended to image.data)
(define LoadImageAnim (raylib  Image "LoadImageAnim" type-string fft-int*))
;; Load image from memory buffer, fileType refers to extension: i.e. '.png'
(define LoadImageFromMemory (raylib  Image "LoadImageFromMemory" type-string type-string fft-int))
;; Load image from GPU texture data
(define LoadImageFromTexture (raylib  Image "LoadImageFromTexture" Texture))
;; Load image from screen buffer and (screenshot)
(define LoadImageFromScreen (raylib  Image "LoadImageFromScreen"))
;; Check if an image is ready
(define IsImageReady (raylib  fft-bool "IsImageReady" Image))
;; Unload image from CPU memory (RAM)
(define UnloadImage (raylib  fft-void "UnloadImage" Image))
;; Export image data to file, returns true on success
(define ExportImage (raylib  fft-bool "ExportImage" Image type-string))
;; Export image to memory buffer
(define ExportImageToMemory (raylib  type-string "ExportImageToMemory" Image type-string fft-int*))
;; Export image as code file defining an array of bytes, returns true on success
(define ExportImageAsCode (raylib  fft-bool "ExportImageAsCode" Image type-string))
;; Generate image: plain color
(define GenImageColor (raylib  Image "GenImageColor" fft-int fft-int Color))
;; Generate image: linear gradient, direction in degrees [0..360], 0=Vertical gradient
(define GenImageGradientLinear (raylib  Image "GenImageGradientLinear" fft-int fft-int fft-int Color Color))
;; Generate image: radial gradient
(define GenImageGradientRadial (raylib  Image "GenImageGradientRadial" fft-int fft-int fft-float Color Color))
;; Generate image: square gradient
(define GenImageGradientSquare (raylib  Image "GenImageGradientSquare" fft-int fft-int fft-float Color Color))
;; Generate image: checked
(define GenImageChecked (raylib  Image "GenImageChecked" fft-int fft-int fft-int fft-int Color Color))
;; Generate image: white noise
(define GenImageWhiteNoise (raylib  Image "GenImageWhiteNoise" fft-int fft-int fft-float))
;; Generate image: perlin noise
(define GenImagePerlinNoise (raylib  Image "GenImagePerlinNoise" fft-int fft-int fft-int fft-int fft-float))
;; Generate image: cellular algorithm, bigger tileSize means bigger cells
(define GenImageCellular (raylib  Image "GenImageCellular" fft-int fft-int fft-int))
;; Generate image: grayscale image from text data
(define GenImageText (raylib  Image "GenImageText" fft-int fft-int type-string))
;; Create an image duplicate (useful for transformations)
(define ImageCopy (raylib  Image "ImageCopy" Image))
;; Create an image from another image piece
(define ImageFromImage (raylib  Image "ImageFromImage" Image Rectangle))
;; Create an image from text (default font)
(define ImageText (raylib  Image "ImageText" type-string fft-int Color))
;; Create an image from text (custom sprite font)
(define ImageTextEx (raylib  Image "ImageTextEx" Font type-string fft-float fft-float Color))
;; Convert image data to desired format
(define ImageFormat (raylib  fft-void "ImageFormat" Image fft-int))
;; Convert image to POT (power-of-two)
(define ImageToPOT (raylib  fft-void "ImageToPOT" Image Color))
;; Crop an image to a defined rectangle
(define ImageCrop (raylib  fft-void "ImageCrop" Image Rectangle))
;; Crop image depending on alpha value
(define ImageAlphaCrop (raylib  fft-void "ImageAlphaCrop" Image fft-float))
;; Clear alpha channel to desired color
(define ImageAlphaClear (raylib  fft-void "ImageAlphaClear" Image Color fft-float))
;; Apply alpha mask to image
(define ImageAlphaMask (raylib  fft-void "ImageAlphaMask" Image Image))
;; Premultiply alpha channel
(define ImageAlphaPremultiply (raylib  fft-void "ImageAlphaPremultiply" Image))
;; Apply Gaussian blur using a box blur approximation
(define ImageBlurGaussian (raylib  fft-void "ImageBlurGaussian" Image fft-int))
;; Apply Custom Square image convolution kernel
(define ImageKernelConvolution (raylib  fft-void "ImageKernelConvolution" Image fft-float fft-int))
;; Resize image (Bicubic scaling algorithm)
(define ImageResize (raylib  fft-void "ImageResize" Image fft-int fft-int))
;; Resize image (Nearest-Neighbor scaling algorithm)
(define ImageResizeNN (raylib  fft-void "ImageResizeNN" Image fft-int fft-int))
;; Resize canvas and fill with color
(define ImageResizeCanvas (raylib  fft-void "ImageResizeCanvas" Image fft-int fft-int fft-int fft-int Color))
;; Compute all mipmap levels for a provided image
(define ImageMipmaps (raylib  fft-void "ImageMipmaps" Image))
;; Dither image data to 16bpp or lower (Floyd-Steinberg dithering)
(define ImageDither (raylib  fft-void "ImageDither" Image fft-int fft-int fft-int fft-int))
;; Flip image vertically
(define ImageFlipVertical (raylib  fft-void "ImageFlipVertical" Image))
;; Flip image horizontally
(define ImageFlipHorizontal (raylib  fft-void "ImageFlipHorizontal" Image))
;; Rotate image by input angle in degrees (-359 to 359)
(define ImageRotate (raylib  fft-void "ImageRotate" Image fft-int))
;; Rotate image clockwise 90deg
(define ImageRotateCW (raylib  fft-void "ImageRotateCW" Image))
;; Rotate image counter-clockwise 90deg
(define ImageRotateCCW (raylib  fft-void "ImageRotateCCW" Image))
;; Modify image color: tint
(define ImageColorTint (raylib  fft-void "ImageColorTint" Image Color))
;; Modify image color: invert
(define ImageColorInvert (raylib  fft-void "ImageColorInvert" Image))
;; Modify image color: grayscale
(define ImageColorGrayscale (raylib  fft-void "ImageColorGrayscale" Image))
;; Modify image color: contrast (-100 to 100)
(define ImageColorContrast (raylib  fft-void "ImageColorContrast" Image fft-float))
;; Modify image color: brightness (-255 to 255)
(define ImageColorBrightness (raylib  fft-void "ImageColorBrightness" Image fft-int))
;; Modify image color: replace color
(define ImageColorReplace (raylib  fft-void "ImageColorReplace" Image Color Color))
;; Load color data from image as a Color array (RGBA - 32bit)
(define LoadImageColors (raylib  Color "LoadImageColors" Image))
;; Load colors palette from image as a Color array (RGBA - 32bit)
(define LoadImagePalette (raylib  Color "LoadImagePalette" Image fft-int fft-int*))
;; Unload color data loaded with LoadImageColors()
(define UnloadImageColors (raylib  fft-void "UnloadImageColors" Color))
;; Unload colors palette loaded with LoadImagePalette()
(define UnloadImagePalette (raylib  fft-void "UnloadImagePalette" Color))
;; Get image alpha border rectangle
(define GetImageAlphaBorder (raylib  Rectangle "GetImageAlphaBorder" Image fft-float))
;; Get image pixel color at (x, y) position
(define GetImageColor (raylib  Color "GetImageColor" Image fft-int fft-int))
;; Clear image background with given color
(define ImageClearBackground (raylib  fft-void "ImageClearBackground" Image Color))
;; Draw pixel within an image
(define ImageDrawPixel (raylib  fft-void "ImageDrawPixel" Image fft-int fft-int Color))
;; Draw pixel within an image (Vector version)
(define ImageDrawPixelV (raylib  fft-void "ImageDrawPixelV" Image Vector2 Color))
;; Draw line within an image
(define ImageDrawLine (raylib  fft-void "ImageDrawLine" Image fft-int fft-int fft-int fft-int Color))
;; Draw line within an image (Vector version)
(define ImageDrawLineV (raylib  fft-void "ImageDrawLineV" Image Vector2 Vector2 Color))
;; Draw a filled circle within an image
(define ImageDrawCircle (raylib  fft-void "ImageDrawCircle" Image fft-int fft-int fft-int Color))
;; Draw a filled circle within an image (Vector version)
(define ImageDrawCircleV (raylib  fft-void "ImageDrawCircleV" Image Vector2 fft-int Color))
;; Draw circle outline within an image
(define ImageDrawCircleLines (raylib  fft-void "ImageDrawCircleLines" Image fft-int fft-int fft-int Color))
;; Draw circle outline within an image (Vector version)
(define ImageDrawCircleLinesV (raylib  fft-void "ImageDrawCircleLinesV" Image Vector2 fft-int Color))
;; Draw rectangle within an image
(define ImageDrawRectangle (raylib  fft-void "ImageDrawRectangle" Image fft-int fft-int fft-int fft-int Color))
;; Draw rectangle within an image (Vector version)
(define ImageDrawRectangleV (raylib  fft-void "ImageDrawRectangleV" Image Vector2 Vector2 Color))
;; Draw rectangle within an image
(define ImageDrawRectangleRec (raylib  fft-void "ImageDrawRectangleRec" Image Rectangle Color))
;; Draw rectangle lines within an image
(define ImageDrawRectangleLines (raylib  fft-void "ImageDrawRectangleLines" Image Rectangle fft-int Color))
;; Draw a source image within a destination image (tint applied to source)
(define ImageDraw (raylib  fft-void "ImageDraw" Image Image Rectangle Rectangle Color))
;; Draw text (using default font) within an image (destination)
(define ImageDrawText (raylib  fft-void "ImageDrawText" Image type-string fft-int fft-int fft-int Color))
;; Draw text (custom sprite font) within an image (destination)
(define ImageDrawTextEx (raylib  fft-void "ImageDrawTextEx" Image Font type-string Vector2 fft-float fft-float Color))
;; Load texture from file into GPU memory (VRAM)
(define LoadTexture (raylib  Texture "LoadTexture" type-string))
;; Load texture from image data
(define LoadTextureFromImage (raylib  Texture "LoadTextureFromImage" Image))
;; Load cubemap from image, multiple image cubemap layouts supported
(define LoadTextureCubemap (raylib  Texture "LoadTextureCubemap" Image fft-int))
;; Load texture for rendering (framebuffer)
(define LoadRenderTexture (raylib  RenderTexture "LoadRenderTexture" fft-int fft-int))
;; Check if a texture is ready
(define IsTextureReady (raylib  fft-bool "IsTextureReady" Texture))
;; Unload texture from GPU memory (VRAM)
(define UnloadTexture (raylib  fft-void "UnloadTexture" Texture))
;; Check if a render texture is ready
(define IsRenderTextureReady (raylib  fft-bool "IsRenderTextureReady" RenderTexture))
;; Unload render texture from GPU memory (VRAM)
(define UnloadRenderTexture (raylib  fft-void "UnloadRenderTexture" RenderTexture))
;; Update GPU texture with new data
(define UpdateTexture (raylib  fft-void "UpdateTexture" Texture fft-void*))
;; Update GPU texture rectangle with new data
(define UpdateTextureRec (raylib  fft-void "UpdateTextureRec" Texture Rectangle fft-void*))
;; Generate GPU mipmaps for a texture
(define GenTextureMipmaps (raylib  fft-void "GenTextureMipmaps"))
;; Set texture scaling filter mode
(define SetTextureFilter (raylib  fft-void "SetTextureFilter" Texture fft-int))
;; Set texture wrapping mode
(define SetTextureWrap (raylib  fft-void "SetTextureWrap" Texture fft-int))
;; Draw a Texture2D
(define DrawTexture (raylib  fft-void "DrawTexture" Texture fft-int fft-int Color))
;; Draw a Texture2D with position defined as Vector2
(define DrawTextureV (raylib  fft-void "DrawTextureV" Texture Vector2 Color))
;; Draw a Texture2D with extended parameters
(define DrawTextureEx (raylib  fft-void "DrawTextureEx" Texture Vector2 fft-float fft-float Color))
;; Draw a part of a texture defined by a rectangle
(define DrawTextureRec (raylib  fft-void "DrawTextureRec" Texture Rectangle Vector2 Color))
;; Draw a part of a texture defined by a rectangle with 'pro' parameters
(define DrawTexturePro (raylib  fft-void "DrawTexturePro" Texture Rectangle Rectangle Vector2 fft-float Color))
;; Draws a texture (or part of it) that stretches or shrinks nicely
(define DrawTextureNPatch (raylib  fft-void "DrawTextureNPatch" Texture NPatchInfo Rectangle Vector2 fft-float Color))
;; Get color with alpha applied, alpha goes from 0.0f to 1.0f
(define Fade (raylib  Color "Fade" Color fft-float))
;; Get hexadecimal value for a Color
(define ColorToInt (raylib  fft-int "ColorToInt" Color))
;; Get Color normalized as float [0..1]
(define ColorNormalize (raylib  Vector4 "ColorNormalize" Color))
;; Get Color from normalized values [0..1]
(define ColorFromNormalized (raylib  Color "ColorFromNormalized" Vector4))
;; Get HSV values for a Color, hue [0..360], saturation/value [0..1]
(define ColorToHSV (raylib  Vector3 "ColorToHSV" Color))
;; Get a Color from HSV values, hue [0..360], saturation/value [0..1]
(define ColorFromHSV (raylib  Color "ColorFromHSV" fft-float fft-float fft-float))
;; Get color multiplied with another color
(define ColorTint (raylib  Color "ColorTint" Color Color))
;; Get color with brightness correction, brightness factor goes from -1.0f to 1.0f
(define ColorBrightness (raylib  Color "ColorBrightness" Color fft-float))
;; Get color with contrast correction, contrast values between -1.0f and 1.0f
(define ColorContrast (raylib  Color "ColorContrast" Color fft-float))
;; Get color with alpha applied, alpha goes from 0.0f to 1.0f
(define ColorAlpha (raylib  Color "ColorAlpha" Color fft-float))
;; Get src alpha-blended into dst color with tint
(define ColorAlphaBlend (raylib  Color "ColorAlphaBlend" Color Color Color))
;; Get Color structure from hexadecimal value
(define GetColor (raylib  Color "GetColor" fft-int))
;; Get Color from a source pixel pointer of certain format
(define GetPixelColor (raylib  Color "GetPixelColor" fft-void* fft-int))
;; Set color formatted into destination pixel pointer
(define SetPixelColor (raylib  fft-void "SetPixelColor" fft-void* Color fft-int))
;; Get pixel data size in bytes for certain format
(define GetPixelDataSize (raylib  fft-int "GetPixelDataSize" fft-int fft-int fft-int))
;; Get the default Font
(define GetFontDefault (raylib  Font "GetFontDefault"))
;; Load font from file into GPU memory (VRAM)
(define LoadFont (raylib  Font "LoadFont" type-string))
;; Load font from file with extended parameters, use NULL for codepoints and 0 for codepointCount to load the default character setFont
(define LoadFontEx (raylib  Font "LoadFontEx" type-string fft-int fft-int* fft-int))
;; Load font from Image (XNA style)
(define LoadFontFromImage (raylib  Font "LoadFontFromImage" Image Color fft-int))
;; Load font from memory buffer, fileType refers to extension: i.e. '.ttf'
(define LoadFontFromMemory (raylib  Font "LoadFontFromMemory" type-string type-string fft-int fft-int fft-int* fft-int))
;; Check if a font is ready
(define IsFontReady (raylib  fft-bool "IsFontReady" Font))
;; Load font data for further use
(define LoadFontData (raylib  GlyphInfo "LoadFontData" type-string fft-int fft-int fft-int* fft-int fft-int))
;; Generate image font atlas using chars info
(define GenImageFontAtlas (raylib  Image "GenImageFontAtlas" GlyphInfo Rectangle fft-int fft-int fft-int fft-int))
;; Unload font chars info data (RAM)
(define UnloadFontData (raylib  fft-void "UnloadFontData" GlyphInfo fft-int))
;; Unload font from GPU memory (VRAM)
(define UnloadFont (raylib  fft-void "UnloadFont" Font))
;; Export font as code file, returns true on success
(define ExportFontAsCode (raylib  fft-bool "ExportFontAsCode" Font type-string))
;; Draw current FPS
(define DrawFPS (raylib  fft-void "DrawFPS" fft-int fft-int))
;; Draw text (using default font)
(define DrawText (raylib  fft-void "DrawText" type-string fft-int fft-int fft-int Color))
;; Draw text using font and additional parameters
(define DrawTextEx (raylib  fft-void "DrawTextEx" Font type-string Vector2 fft-float fft-float Color))
;; Draw text using Font and pro parameters (rotation)
(define DrawTextPro (raylib  fft-void "DrawTextPro" Font type-string Vector2 Vector2 fft-float fft-float fft-float Color))
;; Draw one character (codepoint)
(define DrawTextCodepoint (raylib  fft-void "DrawTextCodepoint" Font fft-int Vector2 fft-float Color))
;; Draw multiple character (codepoint)
(define DrawTextCodepoints (raylib  fft-void "DrawTextCodepoints" Font fft-int* fft-int Vector2 fft-float fft-float Color))
;; Set vertical line spacing when drawing with line-breaks
(define SetTextLineSpacing (raylib  fft-void "SetTextLineSpacing" fft-int))
;; Measure string width for default font
(define MeasureText (raylib  fft-int "MeasureText" type-string fft-int))
;; Measure string size for Font
(define MeasureTextEx (raylib  Vector2 "MeasureTextEx" Font type-string fft-float fft-float))
;; Get glyph index position in font for a codepoint (unicode character), fallback to '?' if not found
(define GetGlyphIndex (raylib  fft-int "GetGlyphIndex" Font fft-int))
;; Get glyph font info data for a codepoint (unicode character), fallback to '?' if not found
(define GetGlyphInfo (raylib  GlyphInfo "GetGlyphInfo" Font fft-int))
;; Get glyph rectangle in font atlas for a codepoint (unicode character), fallback to '?' if not found
(define GetGlyphAtlasRec (raylib  Rectangle "GetGlyphAtlasRec" Font fft-int))
;; Load UTF-8 text encoded from codepoints array
(define LoadUTF8 (raylib  type-string "LoadUTF8" fft-int* fft-int))
;; Unload UTF-8 text encoded from codepoints array
(define UnloadUTF8 (raylib  fft-void "UnloadUTF8" type-string))
;; Load all codepoints from a UTF-8 text string, codepoints count returned by parameter
(define LoadCodepoints (raylib  fft-int* "LoadCodepoints" type-string fft-int*))
;; Unload codepoints data from memory
(define UnloadCodepoints (raylib  fft-void "UnloadCodepoints" fft-int*))
;; Get total number of codepoints in a UTF-8 encoded string
(define GetCodepointCount (raylib  fft-int "GetCodepointCount" type-string))
;; Get next codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
(define GetCodepoint (raylib  fft-int "GetCodepoint" type-string fft-int*))
;; Get next codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
(define GetCodepointNext (raylib  fft-int "GetCodepointNext" type-string fft-int*))
;; Get previous codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
(define GetCodepointPrevious (raylib  fft-int "GetCodepointPrevious" type-string fft-int*))
;; Encode one codepoint into UTF-8 byte array (array length returned as parameter)
(define CodepointToUTF8 (raylib  type-string "CodepointToUTF8" fft-int fft-int*))
;; Copy one string to another, returns bytes copied
(define TextCopy (raylib  fft-int "TextCopy" type-string type-string))
;; Check if two text string are equal
(define TextIsEqual (raylib  fft-bool "TextIsEqual" type-string type-string))
;; Get text length, checks for '\0' ending
(define TextLength (raylib  fft-int "TextLength" type-string))
;; Text formatting with variables (sprintf() style)
(define TextFormat (raylib  type-string "TextFormat" type-string))
;; Get a piece of a text string
(define TextSubtext (raylib  type-string "TextSubtext" type-string fft-int fft-int))
;; Replace text string (WARNING: memory must be freed!)
(define TextReplace (raylib  type-string "TextReplace" type-string type-string type-string))
;; Insert text in a position (WARNING: memory must be freed!)
(define TextInsert (raylib  type-string "TextInsert" type-string type-string fft-int))
;; Join text strings with delimiter
(define TextJoin (raylib  type-string "TextJoin" type-string fft-int type-string))
;; Split text into multiple strings
(define TextSplit (raylib  type-string "TextSplit" type-string type-string fft-int*))
;; Append text at specific position and move cursor!
(define TextAppend (raylib  fft-void "TextAppend" type-string type-string fft-int*))
;; Find first text occurrence within a string
(define TextFindIndex (raylib  fft-int "TextFindIndex" type-string type-string))
;; Get upper case version of provided string
(define TextToUpper (raylib  type-string "TextToUpper" type-string))
;; Get lower case version of provided string
(define TextToLower (raylib  type-string "TextToLower" type-string))
;; Get Pascal case notation version of provided string
(define TextToPascal (raylib  type-string "TextToPascal" type-string))
;; Get integer value from text (negative values not supported)
(define TextToInteger (raylib  fft-int "TextToInteger" type-string))
;; Draw a line in 3D world space
(define DrawLine3D (raylib  fft-void "DrawLine3D" Vector3 Vector3 Color))
;; Draw a point in 3D space, actually a small line
(define DrawPoint3D (raylib  fft-void "DrawPoint3D" Vector3 Color))
;; Draw a circle in 3D world space
(define DrawCircle3D (raylib  fft-void "DrawCircle3D" Vector3 fft-float Vector3 fft-float Color))
;; Draw a color-filled triangle (vertex in counter-clockwise order!)
(define DrawTriangle3D (raylib  fft-void "DrawTriangle3D" Vector3 Vector3 Vector3 Color))
;; Draw a triangle strip defined by points
(define DrawTriangleStrip3D (raylib  fft-void "DrawTriangleStrip3D" Vector3 fft-int Color))
;; Draw cube
(define DrawCube (raylib  fft-void "DrawCube" Vector3 fft-float fft-float fft-float Color))
;; Draw cube (Vector version)
(define DrawCubeV (raylib  fft-void "DrawCubeV" Vector3 Vector3 Color))
;; Draw cube wires
(define DrawCubeWires (raylib  fft-void "DrawCubeWires" Vector3 fft-float fft-float fft-float Color))
;; Draw cube wires (Vector version)
(define DrawCubeWiresV (raylib  fft-void "DrawCubeWiresV" Vector3 Vector3 Color))
;; Draw sphere
(define DrawSphere (raylib  fft-void "DrawSphere" Vector3 fft-float Color))
;; Draw sphere with extended parameters
(define DrawSphereEx (raylib  fft-void "DrawSphereEx" Vector3 fft-float fft-int fft-int Color))
;; Draw sphere wires
(define DrawSphereWires (raylib  fft-void "DrawSphereWires" Vector3 fft-float fft-int fft-int Color))
;; Draw a cylinder/cone
(define DrawCylinder (raylib  fft-void "DrawCylinder" Vector3 fft-float fft-float fft-float fft-int Color))
;; Draw a cylinder with base at startPos and top at endPos
(define DrawCylinderEx (raylib  fft-void "DrawCylinderEx" Vector3 Vector3 fft-float fft-float fft-int Color))
;; Draw a cylinder/cone wires
(define DrawCylinderWires (raylib  fft-void "DrawCylinderWires" Vector3 fft-float fft-float fft-float fft-int Color))
;; Draw a cylinder wires with base at startPos and top at endPos
(define DrawCylinderWiresEx (raylib  fft-void "DrawCylinderWiresEx" Vector3 Vector3 fft-float fft-float fft-int Color))
;; Draw a capsule with the center of its sphere caps at startPos and endPos
(define DrawCapsule (raylib  fft-void "DrawCapsule" Vector3 Vector3 fft-float fft-int fft-int Color))
;; Draw capsule wireframe with the center of its sphere caps at startPos and endPos
(define DrawCapsuleWires (raylib  fft-void "DrawCapsuleWires" Vector3 Vector3 fft-float fft-int fft-int Color))
;; Draw a plane XZ
(define DrawPlane (raylib  fft-void "DrawPlane" Vector3 Vector2 Color))
;; Draw a ray line
(define DrawRay (raylib  fft-void "DrawRay" Ray Color))
;; Draw a grid (centered at (0, 0, 0))
(define DrawGrid (raylib  fft-void "DrawGrid" fft-int fft-float))
;; Load model from files (meshes and materials)
(define LoadModel (raylib  Model "LoadModel" type-string))
;; Load model from generated mesh (default material)
(define LoadModelFromMesh (raylib  Model "LoadModelFromMesh" Mesh))
;; Check if a model is ready
(define IsModelReady (raylib  fft-bool "IsModelReady" Model))
;; Unload model (including meshes) from memory (RAM and/or VRAM)
(define UnloadModel (raylib  fft-void "UnloadModel" Model))
;; Compute model bounding box limits (considers all meshes)
(define GetModelBoundingBox (raylib  BoundingBox "GetModelBoundingBox" Model))
;; Draw a model (with texture if set)
(define DrawModel (raylib  fft-void "DrawModel" Model Vector3 fft-float Color))
;; Draw a model with extended parameters
(define DrawModelEx (raylib  fft-void "DrawModelEx" Model Vector3 Vector3 fft-float Vector3 Color))
;; Draw a model wires (with texture if set)
(define DrawModelWires (raylib  fft-void "DrawModelWires" Model Vector3 fft-float Color))
;; Draw a model wires (with texture if set) with extended parameters
(define DrawModelWiresEx (raylib  fft-void "DrawModelWiresEx" Model Vector3 Vector3 fft-float Vector3 Color))
;; Draw bounding box (wires)
(define DrawBoundingBox (raylib  fft-void "DrawBoundingBox" BoundingBox Color))
;; Draw a billboard texture
(define DrawBillboard (raylib  fft-void "DrawBillboard" Texture Vector3 fft-float Color))
;; Draw a billboard texture defined by source
(define DrawBillboardRec (raylib  fft-void "DrawBillboardRec" Texture Rectangle Vector3 Vector2 Color))
;; Draw a billboard texture defined by source and rotation
(define DrawBillboardPro (raylib  fft-void "DrawBillboardPro" Texture Rectangle Vector3 Vector3 Vector2 Vector2 fft-float Color))
;; Upload mesh vertex data in GPU and provide VAO/VBO ids
(define UploadMesh (raylib  fft-void "UploadMesh" Mesh fft-bool))
;; Update mesh vertex data in GPU for a specific buffer index
(define UpdateMeshBuffer (raylib  fft-void "UpdateMeshBuffer" Mesh fft-int fft-void* fft-int fft-int))
;; Unload mesh data from CPU and GPU
(define UnloadMesh (raylib  fft-void "UnloadMesh" Mesh))
;; Draw a 3d mesh with material and transform
(define DrawMesh (raylib  fft-void "DrawMesh" Mesh Material Matrix))
;; Draw multiple mesh instances with material and different transforms
(define DrawMeshInstanced (raylib  fft-void "DrawMeshInstanced" Mesh Material Matrix fft-int))
;; Export mesh data to file, returns true on success
(define ExportMesh (raylib  fft-bool "ExportMesh" Mesh type-string))
;; Compute mesh bounding box limits
(define GetMeshBoundingBox (raylib  BoundingBox "GetMeshBoundingBox" Mesh))
;; Compute mesh tangents
(define GenMeshTangents (raylib  fft-void "GenMeshTangents" Mesh))
;; Generate polygonal mesh
(define GenMeshPoly (raylib  Mesh "GenMeshPoly" fft-int fft-float))
;; Generate plane mesh (with subdivisions)
(define GenMeshPlane (raylib  Mesh "GenMeshPlane" fft-float fft-float fft-int fft-int))
;; Generate cuboid mesh
(define GenMeshCube (raylib  Mesh "GenMeshCube" fft-float fft-float fft-float))
;; Generate sphere mesh (standard sphere)
(define GenMeshSphere (raylib  Mesh "GenMeshSphere" fft-float fft-int fft-int))
;; Generate half-sphere mesh (no bottom cap)
(define GenMeshHemiSphere (raylib  Mesh "GenMeshHemiSphere" fft-float fft-int fft-int))
;; Generate cylinder mesh
(define GenMeshCylinder (raylib  Mesh "GenMeshCylinder" fft-float fft-float fft-int))
;; Generate cone/pyramid mesh
(define GenMeshCone (raylib  Mesh "GenMeshCone" fft-float fft-float fft-int))
;; Generate torus mesh
(define GenMeshTorus (raylib  Mesh "GenMeshTorus" fft-float fft-float fft-int fft-int))
;; Generate trefoil knot mesh
(define GenMeshKnot (raylib  Mesh "GenMeshKnot" fft-float fft-float fft-int fft-int))
;; Generate heightmap mesh from image data
(define GenMeshHeightmap (raylib  Mesh "GenMeshHeightmap" Image Vector3))
;; Generate cubes-based map mesh from image data
(define GenMeshCubicmap (raylib  Mesh "GenMeshCubicmap" Image Vector3))
;; Load materials from model file
(define LoadMaterials (raylib  Material "LoadMaterials" type-string fft-int*))
;; Load default material (Supports: DIFFUSE, SPECULAR, NORMAL maps)
(define LoadMaterialDefault (raylib  Material "LoadMaterialDefault"))
;; Check if a material is ready
(define IsMaterialReady (raylib  fft-bool "IsMaterialReady" Material))
;; Unload material from GPU memory (VRAM)
(define UnloadMaterial (raylib  fft-void "UnloadMaterial" Material))
;; Set texture for a material map type (MATERIAL_MAP_DIFFUSE, MATERIAL_MAP_SPECULAR...)
(define SetMaterialTexture (raylib  fft-void "SetMaterialTexture" Material fft-int Texture))
;; Set material for a mesh
(define SetModelMeshMaterial (raylib  fft-void "SetModelMeshMaterial" Model fft-int fft-int))
;; Load model animations from file
(define LoadModelAnimations (raylib  ModelAnimation "LoadModelAnimations" type-string fft-int*))
;; Update model animation pose
(define UpdateModelAnimation (raylib  fft-void "UpdateModelAnimation" Model ModelAnimation fft-int))
;; Unload animation data
(define UnloadModelAnimation (raylib  fft-void "UnloadModelAnimation" ModelAnimation))
;; Unload animation array data
(define UnloadModelAnimations (raylib  fft-void "UnloadModelAnimations" ModelAnimation fft-int))
;; Check model animation skeleton match
(define IsModelAnimationValid (raylib  fft-bool "IsModelAnimationValid" Model ModelAnimation))
;; Check collision between two spheres
(define CheckCollisionSpheres (raylib  fft-bool "CheckCollisionSpheres" Vector3 fft-float Vector3 fft-float))
;; Check collision between two bounding boxes
(define CheckCollisionBoxes (raylib  fft-bool "CheckCollisionBoxes" BoundingBox BoundingBox))
;; Check collision between box and sphere
(define CheckCollisionBoxSphere (raylib  fft-bool "CheckCollisionBoxSphere" BoundingBox Vector3 fft-float))
;; Get collision info between ray and sphere
(define GetRayCollisionSphere (raylib  RayCollision "GetRayCollisionSphere" Ray Vector3 fft-float))
;; Get collision info between ray and box
(define GetRayCollisionBox (raylib  RayCollision "GetRayCollisionBox" Ray BoundingBox))
;; Get collision info between ray and mesh
(define GetRayCollisionMesh (raylib  RayCollision "GetRayCollisionMesh" Ray Mesh Matrix))
;; Get collision info between ray and triangle
(define GetRayCollisionTriangle (raylib  RayCollision "GetRayCollisionTriangle" Ray Vector3 Vector3 Vector3))
;; Get collision info between ray and quad
(define GetRayCollisionQuad (raylib  RayCollision "GetRayCollisionQuad" Ray Vector3 Vector3 Vector3 Vector3))
;; Initialize audio device and context
(define InitAudioDevice (raylib  fft-void "InitAudioDevice"))
;; Close the audio device and context
(define CloseAudioDevice (raylib  fft-void "CloseAudioDevice"))
;; Check if audio device has been initialized successfully
(define IsAudioDeviceReady (raylib  fft-bool "IsAudioDeviceReady"))
;; Set master volume (listener)
(define SetMasterVolume (raylib  fft-void "SetMasterVolume" fft-float))
;; Get master volume (listener)
(define GetMasterVolume (raylib  fft-float "GetMasterVolume"))
;; Load wave data from file
(define LoadWave (raylib  Wave "LoadWave" type-string))
;; Load wave from memory buffer, fileType refers to extension: i.e. '.wav'
(define LoadWaveFromMemory (raylib  Wave "LoadWaveFromMemory" type-string type-string fft-int))
;; Checks if wave data is ready
(define IsWaveReady (raylib  fft-bool "IsWaveReady" Wave))
;; Load sound from file
(define LoadSound (raylib  Sound "LoadSound" type-string))
;; Load sound from wave data
(define LoadSoundFromWave (raylib  Sound "LoadSoundFromWave" Wave))
;; Create a new sound that shares the same sample data as the source sound, does not own the sound data
(define LoadSoundAlias (raylib  Sound "LoadSoundAlias" Sound))
;; Checks if a sound is ready
(define IsSoundReady (raylib  fft-bool "IsSoundReady" Sound))
;; Update sound buffer with new data
(define UpdateSound (raylib  fft-void "UpdateSound" Sound fft-void* fft-int))
;; Unload wave data
(define UnloadWave (raylib  fft-void "UnloadWave" Wave))
;; Unload sound
(define UnloadSound (raylib  fft-void "UnloadSound" Sound))
;; Unload a sound alias (does not deallocate sample data)
(define UnloadSoundAlias (raylib  fft-void "UnloadSoundAlias" Sound))
;; Export wave data to file, returns true on success
(define ExportWave (raylib  fft-bool "ExportWave" Wave type-string))
;; Export wave sample data to code (.h), returns true on success
(define ExportWaveAsCode (raylib  fft-bool "ExportWaveAsCode" Wave type-string))
;; Play a sound
(define PlaySound (raylib  fft-void "PlaySound" Sound))
;; Stop playing a sound
(define StopSound (raylib  fft-void "StopSound" Sound))
;; Pause a sound
(define PauseSound (raylib  fft-void "PauseSound" Sound))
;; Resume a paused sound
(define ResumeSound (raylib  fft-void "ResumeSound" Sound))
;; Check if a sound is currently playing
(define IsSoundPlaying (raylib  fft-bool "IsSoundPlaying" Sound))
;; Set volume for a sound (1.0 is max level)
(define SetSoundVolume (raylib  fft-void "SetSoundVolume" Sound fft-float))
;; Set pitch for a sound (1.0 is base level)
(define SetSoundPitch (raylib  fft-void "SetSoundPitch" Sound fft-float))
;; Set pan for a sound (0.5 is center)
(define SetSoundPan (raylib  fft-void "SetSoundPan" Sound fft-float))
;; Copy a wave to a new wave
(define WaveCopy (raylib  Wave "WaveCopy" Wave))
;; Crop a wave to defined samples range
(define WaveCrop (raylib  fft-void "WaveCrop" Wave fft-int fft-int))
;; Convert wave data to desired format
(define WaveFormat (raylib  fft-void "WaveFormat" Wave fft-int fft-int fft-int))
;; Load samples data from wave as a 32bit float data array
(define LoadWaveSamples (raylib  fft-float* "LoadWaveSamples" Wave))
;; Unload samples data loaded with LoadWaveSamples()
(define UnloadWaveSamples (raylib  fft-void "UnloadWaveSamples" fft-float*))
;; Load music stream from file
(define LoadMusicStream (raylib  Music "LoadMusicStream" type-string))
;; Load music stream from data
(define LoadMusicStreamFromMemory (raylib  Music "LoadMusicStreamFromMemory" type-string type-string fft-int))
;; Checks if a music stream is ready
(define IsMusicReady (raylib  fft-bool "IsMusicReady" Music))
;; Unload music stream
(define UnloadMusicStream (raylib  fft-void "UnloadMusicStream" Music))
;; Start music playing
(define PlayMusicStream (raylib  fft-void "PlayMusicStream" Music))
;; Check if music is playing
(define IsMusicStreamPlaying (raylib  fft-bool "IsMusicStreamPlaying" Music))
;; Updates buffers for music streaming
(define UpdateMusicStream (raylib  fft-void "UpdateMusicStream" Music))
;; Stop music playing
(define StopMusicStream (raylib  fft-void "StopMusicStream" Music))
;; Pause music playing
(define PauseMusicStream (raylib  fft-void "PauseMusicStream" Music))
;; Resume playing paused music
(define ResumeMusicStream (raylib  fft-void "ResumeMusicStream" Music))
;; Seek music to a position (in seconds)
(define SeekMusicStream (raylib  fft-void "SeekMusicStream" Music fft-float))
;; Set volume for music (1.0 is max level)
(define SetMusicVolume (raylib  fft-void "SetMusicVolume" Music fft-float))
;; Set pitch for a music (1.0 is base level)
(define SetMusicPitch (raylib  fft-void "SetMusicPitch" Music fft-float))
;; Set pan for a music (0.5 is center)
(define SetMusicPan (raylib  fft-void "SetMusicPan" Music fft-float))
;; Get music time length (in seconds)
(define GetMusicTimeLength (raylib  fft-float "GetMusicTimeLength" Music))
;; Get current music time played (in seconds)
(define GetMusicTimePlayed (raylib  fft-float "GetMusicTimePlayed" Music))
;; Load audio stream (to stream raw audio pcm data)
(define LoadAudioStream (raylib  AudioStream "LoadAudioStream" fft-int fft-int fft-int))
;; Checks if an audio stream is ready
(define IsAudioStreamReady (raylib  fft-bool "IsAudioStreamReady" AudioStream))
;; Unload audio stream and free memory
(define UnloadAudioStream (raylib  fft-void "UnloadAudioStream" AudioStream))
;; Update audio stream buffers with data
(define UpdateAudioStream (raylib  fft-void "UpdateAudioStream" AudioStream fft-void* fft-int))
;; Check if any audio stream buffers requires refill
(define IsAudioStreamProcessed (raylib  fft-bool "IsAudioStreamProcessed" AudioStream))
;; Play audio stream
(define PlayAudioStream (raylib  fft-void "PlayAudioStream" AudioStream))
;; Pause audio stream
(define PauseAudioStream (raylib  fft-void "PauseAudioStream" AudioStream))
;; Resume audio stream
(define ResumeAudioStream (raylib  fft-void "ResumeAudioStream" AudioStream))
;; Check if audio stream is playing
(define IsAudioStreamPlaying (raylib  fft-bool "IsAudioStreamPlaying" AudioStream))
;; Stop audio stream
(define StopAudioStream (raylib  fft-void "StopAudioStream" AudioStream))
;; Set volume for audio stream (1.0 is max level)
(define SetAudioStreamVolume (raylib  fft-void "SetAudioStreamVolume" AudioStream fft-float))
;; Set pitch for audio stream (1.0 is base level)
(define SetAudioStreamPitch (raylib  fft-void "SetAudioStreamPitch" AudioStream fft-float))
;; Set pan for audio stream (0.5 is centered)
(define SetAudioStreamPan (raylib  fft-void "SetAudioStreamPan" AudioStream fft-float))
;; Default size for new audio streams
(define SetAudioStreamBufferSizeDefault (raylib  fft-void "SetAudioStreamBufferSizeDefault" fft-int))
;; Audio thread callback to request new data
(define SetAudioStreamCallback (raylib  fft-void "SetAudioStreamCallback" AudioStream))
;; Attach audio stream processor to stream, receives the samples as <float>s
(define AttachAudioStreamProcessor (raylib  fft-void "AttachAudioStreamProcessor" AudioStream))
;; Detach audio stream processor from stream
(define DetachAudioStreamProcessor (raylib  fft-void "DetachAudioStreamProcessor" AudioStream))
;; Attach audio stream processor to the entire audio pipeline, receives the samples as <float>s
(define AttachAudioMixedProcessor (raylib  fft-void "AttachAudioMixedProcessor"))
;; Detach audio stream processor from the entire audio pipeline
(define DetachAudioMixedProcessor (raylib  fft-void "DetachAudioMixedProcessor"))

;;;; Enums
;; ConfigFlags
(define FLAG_VSYNC_HINT 64)
(define FLAG_FULLSCREEN_MODE 2)
(define FLAG_WINDOW_RESIZABLE 4)
(define FLAG_WINDOW_UNDECORATED 8)
(define FLAG_WINDOW_HIDDEN 128)
(define FLAG_WINDOW_MINIMIZED 512)
(define FLAG_WINDOW_MAXIMIZED 1024)
(define FLAG_WINDOW_UNFOCUSED 2048)
(define FLAG_WINDOW_TOPMOST 4096)
(define FLAG_WINDOW_ALWAYS_RUN 256)
(define FLAG_WINDOW_TRANSPARENT 16)
(define FLAG_WINDOW_HIGHDPI 8192)
(define FLAG_WINDOW_MOUSE_PASSTHROUGH 16384)
(define FLAG_BORDERLESS_WINDOWED_MODE 32768)
(define FLAG_MSAA_4X_HINT 32)
(define FLAG_INTERLACED_HINT 65536)
;; TraceLogLevel
(define LOG_ALL 0)
(define LOG_TRACE 1)
(define LOG_DEBUG 2)
(define LOG_INFO 3)
(define LOG_WARNING 4)
(define LOG_ERROR 5)
(define LOG_FATAL 6)
(define LOG_NONE 7)
;; KeyboardKey
(define KEY_NULL 0)
(define KEY_APOSTROPHE 39)
(define KEY_COMMA 44)
(define KEY_MINUS 45)
(define KEY_PERIOD 46)
(define KEY_SLASH 47)
(define KEY_ZERO 48)
(define KEY_ONE 49)
(define KEY_TWO 50)
(define KEY_THREE 51)
(define KEY_FOUR 52)
(define KEY_FIVE 53)
(define KEY_SIX 54)
(define KEY_SEVEN 55)
(define KEY_EIGHT 56)
(define KEY_NINE 57)
(define KEY_SEMICOLON 59)
(define KEY_EQUAL 61)
(define KEY_A 65)
(define KEY_B 66)
(define KEY_C 67)
(define KEY_D 68)
(define KEY_E 69)
(define KEY_F 70)
(define KEY_G 71)
(define KEY_H 72)
(define KEY_I 73)
(define KEY_J 74)
(define KEY_K 75)
(define KEY_L 76)
(define KEY_M 77)
(define KEY_N 78)
(define KEY_O 79)
(define KEY_P 80)
(define KEY_Q 81)
(define KEY_R 82)
(define KEY_S 83)
(define KEY_T 84)
(define KEY_U 85)
(define KEY_V 86)
(define KEY_W 87)
(define KEY_X 88)
(define KEY_Y 89)
(define KEY_Z 90)
(define KEY_LEFT_BRACKET 91)
(define KEY_BACKSLASH 92)
(define KEY_RIGHT_BRACKET 93)
(define KEY_GRAVE 96)
(define KEY_SPACE 32)
(define KEY_ESCAPE 256)
(define KEY_ENTER 257)
(define KEY_TAB 258)
(define KEY_BACKSPACE 259)
(define KEY_INSERT 260)
(define KEY_DELETE 261)
(define KEY_RIGHT 262)
(define KEY_LEFT 263)
(define KEY_DOWN 264)
(define KEY_UP 265)
(define KEY_PAGE_UP 266)
(define KEY_PAGE_DOWN 267)
(define KEY_HOME 268)
(define KEY_END 269)
(define KEY_CAPS_LOCK 280)
(define KEY_SCROLL_LOCK 281)
(define KEY_NUM_LOCK 282)
(define KEY_PRINT_SCREEN 283)
(define KEY_PAUSE 284)
(define KEY_F1 290)
(define KEY_F2 291)
(define KEY_F3 292)
(define KEY_F4 293)
(define KEY_F5 294)
(define KEY_F6 295)
(define KEY_F7 296)
(define KEY_F8 297)
(define KEY_F9 298)
(define KEY_F10 299)
(define KEY_F11 300)
(define KEY_F12 301)
(define KEY_LEFT_SHIFT 340)
(define KEY_LEFT_CONTROL 341)
(define KEY_LEFT_ALT 342)
(define KEY_LEFT_SUPER 343)
(define KEY_RIGHT_SHIFT 344)
(define KEY_RIGHT_CONTROL 345)
(define KEY_RIGHT_ALT 346)
(define KEY_RIGHT_SUPER 347)
(define KEY_KB_MENU 348)
(define KEY_KP_0 320)
(define KEY_KP_1 321)
(define KEY_KP_2 322)
(define KEY_KP_3 323)
(define KEY_KP_4 324)
(define KEY_KP_5 325)
(define KEY_KP_6 326)
(define KEY_KP_7 327)
(define KEY_KP_8 328)
(define KEY_KP_9 329)
(define KEY_KP_DECIMAL 330)
(define KEY_KP_DIVIDE 331)
(define KEY_KP_MULTIPLY 332)
(define KEY_KP_SUBTRACT 333)
(define KEY_KP_ADD 334)
(define KEY_KP_ENTER 335)
(define KEY_KP_EQUAL 336)
(define KEY_BACK 4)
(define KEY_MENU 82)
(define KEY_VOLUME_UP 24)
(define KEY_VOLUME_DOWN 25)
;; MouseButton
(define MOUSE_BUTTON_LEFT 0)
(define MOUSE_BUTTON_RIGHT 1)
(define MOUSE_BUTTON_MIDDLE 2)
(define MOUSE_BUTTON_SIDE 3)
(define MOUSE_BUTTON_EXTRA 4)
(define MOUSE_BUTTON_FORWARD 5)
(define MOUSE_BUTTON_BACK 6)
;; MouseCursor
(define MOUSE_CURSOR_DEFAULT 0)
(define MOUSE_CURSOR_ARROW 1)
(define MOUSE_CURSOR_IBEAM 2)
(define MOUSE_CURSOR_CROSSHAIR 3)
(define MOUSE_CURSOR_POINTING_HAND 4)
(define MOUSE_CURSOR_RESIZE_EW 5)
(define MOUSE_CURSOR_RESIZE_NS 6)
(define MOUSE_CURSOR_RESIZE_NWSE 7)
(define MOUSE_CURSOR_RESIZE_NESW 8)
(define MOUSE_CURSOR_RESIZE_ALL 9)
(define MOUSE_CURSOR_NOT_ALLOWED 10)
;; GamepadButton
(define GAMEPAD_BUTTON_UNKNOWN 0)
(define GAMEPAD_BUTTON_LEFT_FACE_UP 1)
(define GAMEPAD_BUTTON_LEFT_FACE_RIGHT 2)
(define GAMEPAD_BUTTON_LEFT_FACE_DOWN 3)
(define GAMEPAD_BUTTON_LEFT_FACE_LEFT 4)
(define GAMEPAD_BUTTON_RIGHT_FACE_UP 5)
(define GAMEPAD_BUTTON_RIGHT_FACE_RIGHT 6)
(define GAMEPAD_BUTTON_RIGHT_FACE_DOWN 7)
(define GAMEPAD_BUTTON_RIGHT_FACE_LEFT 8)
(define GAMEPAD_BUTTON_LEFT_TRIGGER_1 9)
(define GAMEPAD_BUTTON_LEFT_TRIGGER_2 10)
(define GAMEPAD_BUTTON_RIGHT_TRIGGER_1 11)
(define GAMEPAD_BUTTON_RIGHT_TRIGGER_2 12)
(define GAMEPAD_BUTTON_MIDDLE_LEFT 13)
(define GAMEPAD_BUTTON_MIDDLE 14)
(define GAMEPAD_BUTTON_MIDDLE_RIGHT 15)
(define GAMEPAD_BUTTON_LEFT_THUMB 16)
(define GAMEPAD_BUTTON_RIGHT_THUMB 17)
;; GamepadAxis
(define GAMEPAD_AXIS_LEFT_X 0)
(define GAMEPAD_AXIS_LEFT_Y 1)
(define GAMEPAD_AXIS_RIGHT_X 2)
(define GAMEPAD_AXIS_RIGHT_Y 3)
(define GAMEPAD_AXIS_LEFT_TRIGGER 4)
(define GAMEPAD_AXIS_RIGHT_TRIGGER 5)
;; MaterialMapIndex
(define MATERIAL_MAP_ALBEDO 0)
(define MATERIAL_MAP_METALNESS 1)
(define MATERIAL_MAP_NORMAL 2)
(define MATERIAL_MAP_ROUGHNESS 3)
(define MATERIAL_MAP_OCCLUSION 4)
(define MATERIAL_MAP_EMISSION 5)
(define MATERIAL_MAP_HEIGHT 6)
(define MATERIAL_MAP_CUBEMAP 7)
(define MATERIAL_MAP_IRRADIANCE 8)
(define MATERIAL_MAP_PREFILTER 9)
(define MATERIAL_MAP_BRDF 10)
;; ShaderLocationIndex
(define SHADER_LOC_VERTEX_POSITION 0)
(define SHADER_LOC_VERTEX_TEXCOORD01 1)
(define SHADER_LOC_VERTEX_TEXCOORD02 2)
(define SHADER_LOC_VERTEX_NORMAL 3)
(define SHADER_LOC_VERTEX_TANGENT 4)
(define SHADER_LOC_VERTEX_COLOR 5)
(define SHADER_LOC_MATRIX_MVP 6)
(define SHADER_LOC_MATRIX_VIEW 7)
(define SHADER_LOC_MATRIX_PROJECTION 8)
(define SHADER_LOC_MATRIX_MODEL 9)
(define SHADER_LOC_MATRIX_NORMAL 10)
(define SHADER_LOC_VECTOR_VIEW 11)
(define SHADER_LOC_COLOR_DIFFUSE 12)
(define SHADER_LOC_COLOR_SPECULAR 13)
(define SHADER_LOC_COLOR_AMBIENT 14)
(define SHADER_LOC_MAP_ALBEDO 15)
(define SHADER_LOC_MAP_METALNESS 16)
(define SHADER_LOC_MAP_NORMAL 17)
(define SHADER_LOC_MAP_ROUGHNESS 18)
(define SHADER_LOC_MAP_OCCLUSION 19)
(define SHADER_LOC_MAP_EMISSION 20)
(define SHADER_LOC_MAP_HEIGHT 21)
(define SHADER_LOC_MAP_CUBEMAP 22)
(define SHADER_LOC_MAP_IRRADIANCE 23)
(define SHADER_LOC_MAP_PREFILTER 24)
(define SHADER_LOC_MAP_BRDF 25)
;; ShaderUniformDataType
(define SHADER_UNIFORM_FLOAT 0)
(define SHADER_UNIFORM_VEC2 1)
(define SHADER_UNIFORM_VEC3 2)
(define SHADER_UNIFORM_VEC4 3)
(define SHADER_UNIFORM_INT 4)
(define SHADER_UNIFORM_IVEC2 5)
(define SHADER_UNIFORM_IVEC3 6)
(define SHADER_UNIFORM_IVEC4 7)
(define SHADER_UNIFORM_SAMPLER2D 8)
;; ShaderAttributeDataType
(define SHADER_ATTRIB_FLOAT 0)
(define SHADER_ATTRIB_VEC2 1)
(define SHADER_ATTRIB_VEC3 2)
(define SHADER_ATTRIB_VEC4 3)
;; PixelFormat
(define PIXELFORMAT_UNCOMPRESSED_GRAYSCALE 1)
(define PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA 2)
(define PIXELFORMAT_UNCOMPRESSED_R5G6B5 3)
(define PIXELFORMAT_UNCOMPRESSED_R8G8B8 4)
(define PIXELFORMAT_UNCOMPRESSED_R5G5B5A1 5)
(define PIXELFORMAT_UNCOMPRESSED_R4G4B4A4 6)
(define PIXELFORMAT_UNCOMPRESSED_R8G8B8A8 7)
(define PIXELFORMAT_UNCOMPRESSED_R32 8)
(define PIXELFORMAT_UNCOMPRESSED_R32G32B32 9)
(define PIXELFORMAT_UNCOMPRESSED_R32G32B32A32 10)
(define PIXELFORMAT_UNCOMPRESSED_R16 11)
(define PIXELFORMAT_UNCOMPRESSED_R16G16B16 12)
(define PIXELFORMAT_UNCOMPRESSED_R16G16B16A16 13)
(define PIXELFORMAT_COMPRESSED_DXT1_RGB 14)
(define PIXELFORMAT_COMPRESSED_DXT1_RGBA 15)
(define PIXELFORMAT_COMPRESSED_DXT3_RGBA 16)
(define PIXELFORMAT_COMPRESSED_DXT5_RGBA 17)
(define PIXELFORMAT_COMPRESSED_ETC1_RGB 18)
(define PIXELFORMAT_COMPRESSED_ETC2_RGB 19)
(define PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA 20)
(define PIXELFORMAT_COMPRESSED_PVRT_RGB 21)
(define PIXELFORMAT_COMPRESSED_PVRT_RGBA 22)
(define PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA 23)
(define PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA 24)
;; TextureFilter
(define TEXTURE_FILTER_POINT 0)
(define TEXTURE_FILTER_BILINEAR 1)
(define TEXTURE_FILTER_TRILINEAR 2)
(define TEXTURE_FILTER_ANISOTROPIC_4X 3)
(define TEXTURE_FILTER_ANISOTROPIC_8X 4)
(define TEXTURE_FILTER_ANISOTROPIC_16X 5)
;; TextureWrap
(define TEXTURE_WRAP_REPEAT 0)
(define TEXTURE_WRAP_CLAMP 1)
(define TEXTURE_WRAP_MIRROR_REPEAT 2)
(define TEXTURE_WRAP_MIRROR_CLAMP 3)
;; CubemapLayout
(define CUBEMAP_LAYOUT_AUTO_DETECT 0)
(define CUBEMAP_LAYOUT_LINE_VERTICAL 1)
(define CUBEMAP_LAYOUT_LINE_HORIZONTAL 2)
(define CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR 3)
(define CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE 4)
(define CUBEMAP_LAYOUT_PANORAMA 5)
;; FontType
(define FONT_DEFAULT 0)
(define FONT_BITMAP 1)
(define FONT_SDF 2)
;; BlendMode
(define BLEND_ALPHA 0)
(define BLEND_ADDITIVE 1)
(define BLEND_MULTIPLIED 2)
(define BLEND_ADD_COLORS 3)
(define BLEND_SUBTRACT_COLORS 4)
(define BLEND_ALPHA_PREMULTIPLY 5)
(define BLEND_CUSTOM 6)
(define BLEND_CUSTOM_SEPARATE 7)
;; Gesture
(define GESTURE_NONE 0)
(define GESTURE_TAP 1)
(define GESTURE_DOUBLETAP 2)
(define GESTURE_HOLD 4)
(define GESTURE_DRAG 8)
(define GESTURE_SWIPE_RIGHT 16)
(define GESTURE_SWIPE_LEFT 32)
(define GESTURE_SWIPE_UP 64)
(define GESTURE_SWIPE_DOWN 128)
(define GESTURE_PINCH_IN 256)
(define GESTURE_PINCH_OUT 512)
;; CameraMode
(define CAMERA_CUSTOM 0)
(define CAMERA_FREE 1)
(define CAMERA_ORBITAL 2)
(define CAMERA_FIRST_PERSON 3)
(define CAMERA_THIRD_PERSON 4)
;; CameraProjection
(define CAMERA_PERSPECTIVE 0)
(define CAMERA_ORTHOGRAPHIC 1)
;; NPatchLayout
(define NPATCH_NINE_PATCH 0)
(define NPATCH_THREE_PATCH_VERTICAL 1)
(define NPATCH_THREE_PATCH_HORIZONTAL 2)

;;;; Colors
(define LIGHTGRAY (list  200 200 200 255 ))
(define GRAY (list  130 130 130 255 ))
(define DARKGRAY (list  80 80 80 255 ))
(define YELLOW (list  253 249 0 255 ))
(define GOLD (list  255 203 0 255 ))
(define ORANGE (list  255 161 0 255 ))
(define PINK (list  255 109 194 255 ))
(define RED (list  230 41 55 255 ))
(define MAROON (list  190 33 55 255 ))
(define GREEN (list  0 228 48 255 ))
(define LIME (list  0 158 47 255 ))
(define DARKGREEN (list  0 117 44 255 ))
(define SKYBLUE (list  102 191 255 255 ))
(define BLUE (list  0 121 241 255 ))
(define DARKBLUE (list  0 82 172 255 ))
(define PURPLE (list  200 122 255 255 ))
(define VIOLET (list  135 60 190 255 ))
(define DARKPURPLE (list  112 31 126 255 ))
(define BEIGE (list  211 176 131 255 ))
(define BROWN (list  127 106 79 255 ))
(define DARKBROWN (list  76 63 47 255 ))
(define WHITE (list  255 255 255 255 ))
(define BLACK (list  0 0 0 255 ))
(define BLANK (list  0 0 0 0 ))
(define MAGENTA (list  255 0 255 255 ))
(define RAYWHITE (list  245 245 245 255 ))
))