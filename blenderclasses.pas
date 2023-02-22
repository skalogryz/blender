unit BlenderClasses;

interface

type
  float = single;
  short = Int16;
  int   = Int32;
  int64_t = Int64;
  uint64_t = uint64;
  PVoid = Pointer;
  PFileData = Pointer;

  uchar = widechar;
  ushort = UInt16;
  Long = int32;
  ulong = uint32;
  GPUTexture = PtrUInt;
  Anim = Pointer;
  MovieCache = Pointer;
  RenderResult = Pointer;
  ImBuf = Pointer;
  VFontData = Pointer;
  GHash = Pointer;
  EditFont = Pointer;
  BMEditMesh = Pointer;
  Cloth = Pointer;
  ClothHairData = Pointer;
  ClothSolverResult = Pointer;
  MVertTri = Pointer;
  BVHTree = Pointer;
  DerivedMesh = Pointer;
  BVHTreeFromMesh = Pointer;
  Ocean = Pointer;
  OceanCache = Pointer;
  SculptSession = Pointer;
  CurveCache = Pointer;
  RNG = Pointer;
  PTCacheEdit = Pointer;
  BodyPoint = Pointer;
  BodySpring = Pointer;
  SBScratch = Pointer;
  ColorSpace = Pointer;
  SceneStats = Pointer;
  Depsgraph = Pointer;
  DagForest = Pointer;
  RenderEngine = Pointer;
  ViewDepths = Pointer;
  SmoothView3DStore = Pointer;
  WmTimer = Pointer;
  GPUFX = Pointer;
  SmoothView2DStore = Pointer;
  BLI_mempool = Pointer;
  FileList = Pointer;
  FileLayout = Pointer;
  NodeInsertOfsData = Pointer;
  PanelType = Pointer;
  UiLayout = Pointer;
  UiListType = Pointer;
  UiListDyn = Pointer;
  SpaceType = Pointer;
  ARegionType = Pointer;
  Particle = Pointer;
  EditBone = Pointer;
  BNodeSocketType = Pointer;
  BNodeType = Pointer;
  UiBlock = Pointer;
  BNodeTreeType = Pointer;
  StructRNA = Pointer;
  BNodeInstanceHash = Pointer;
  BNodeTreeExec = Pointer;
  ParticleCacheKey = Pointer;
  LatticeDeformData = Pointer;
  ParticleRenderData = Pointer;
  KDTree = Pointer;
  ParticleDrawData = Pointer;
  LinkNode = Pointer;
  WmEvent = Pointer;
  WmSubWindow = Pointer;
  WmGesture = Pointer;
  WmIMEData = Pointer;
  PointerRNA = Pointer;
  WmOperatorType = Pointer;
  FLUID_3D = Pointer;
  WTURBULENCE = Pointer;
  MovieClipCache = Pointer;
  PaintSurfaceData = Pointer;


  Pchar = ^char;
  Puchar = ^uchar;
  Pshort = ^short;
  Pushort = ^ushort;
  Pint = ^int;
  Plong = ^long;
  Pulong = ^ulong;
  Pfloat = ^float;
  Pdouble = ^double;
  Pint64_t = ^int64_t;
  Puint64_t = ^uint64_t;
  PLink = ^Link;
  PLinkData = ^LinkData;
  PListBase = ^ListBase;
  Pvec2s = ^vec2s;
  Pvec2f = ^vec2f;
  Pvec3f = ^vec3f;
  Prcti = ^rcti;
  Prctf = ^rctf;
  PIDPropertyData = ^IDPropertyData;
  PIDProperty = ^IDProperty;
  PID = ^ID;
  PLibrary = ^Library_;
  PPackedFile = ^PackedFile;
  PPreviewImage = ^PreviewImage;
  PGPUTexture = ^GPUTexture;
  PIpoDriver = ^IpoDriver;
  PObject = ^Object_;
  PIpoCurve = ^IpoCurve;
  PBPoint = ^BPoint;
  PBezTriple = ^BezTriple;
  PIpo = ^Ipo;
  PKeyBlock = ^KeyBlock;
  PKey = ^Key;
  PAnimData = ^AnimData;
  PTextLine = ^TextLine;
  PText = ^Text;
  PGPUDOFSettings = ^GPUDOFSettings;
  PGPUSSAOSettings = ^GPUSSAOSettings;
  PGPUFXSettings = ^GPUFXSettings;
  PCameraStereoSettings = ^CameraStereoSettings;
  PCamera = ^Camera;
  PImageUser = ^ImageUser;
  PScene = ^Scene;
  PImageAnim = ^ImageAnim;
  Panim = ^anim;
  PImageView = ^ImageView;
  PImagePackedFile = ^ImagePackedFile;
  PRenderSlot = ^RenderSlot;
  PImage = ^Image;
  PMovieCache = ^MovieCache;
  PRenderResult = ^RenderResult;
  PColorManagedColorspaceSettings = ^ColorManagedColorspaceSettings;
  PStereo3dFormat = ^Stereo3dFormat;
  PMTex = ^MTex;
  PTex = ^Tex;
  PCBData = ^CBData;
  PColorBand = ^ColorBand;
  PEnvMap = ^EnvMap;
  PImBuf = ^ImBuf;
  PPointDensity = ^PointDensity;
  PCurveMapping = ^CurveMapping;
  PVoxelData = ^VoxelData;
  POceanTex = ^OceanTex;
  PbNodeTree = ^bNodeTree;
  PTexMapping = ^TexMapping;
  PColorMapping = ^ColorMapping;
  PLamp = ^Lamp;
  PVolumeSettings = ^VolumeSettings;
  PGameSettings = ^GameSettings;
  PTexPaintSlot = ^TexPaintSlot;
  PMaterial = ^Material;
  PGroup = ^Group;
  PVFont = ^VFont;
  PVFontData = ^VFontData;
  PMetaElem = ^MetaElem;
  PBoundBox = ^BoundBox;
  PMetaBall = ^MetaBall;
  PNurb = ^Nurb;
  PCharInfo = ^CharInfo;
  PTextBox = ^TextBox;
  PEditNurb = ^EditNurb;
  PGHash = ^GHash;
  PCurve = ^Curve;
  PEditFont = ^EditFont;
  PMesh = ^Mesh;
  PMSelect = ^MSelect;
  PMPoly = ^MPoly;
  PMTexPoly = ^MTexPoly;
  PMLoop = ^MLoop;
  PMLoopUV = ^MLoopUV;
  PMLoopCol = ^MLoopCol;
  PMFace = ^MFace;
  PMTFace = ^MTFace;
  PTFace = ^TFace;
  PMVert = ^MVert;
  PMEdge = ^MEdge;
  PMDeformVert = ^MDeformVert;
  PMCol = ^MCol;
  PBMEditMesh = ^BMEditMesh;
  PCustomData = ^CustomData;
  PMultires = ^Multires;
  PMDeformWeight = ^MDeformWeight;
  PMFloatProperty = ^MFloatProperty;
  PMIntProperty = ^MIntProperty;
  PMStringProperty = ^MStringProperty;
  POrigSpaceFace = ^OrigSpaceFace;
  POrigSpaceLoop = ^OrigSpaceLoop;
  PMDisps = ^MDisps;
  PMultiresCol = ^MultiresCol;
  PMultiresColFace = ^MultiresColFace;
  PMultiresFace = ^MultiresFace;
  PMultiresEdge = ^MultiresEdge;
  PMultiresLevel = ^MultiresLevel;
  PMRecast = ^MRecast;
  PGridPaintMask = ^GridPaintMask;
  PMVertSkin = ^MVertSkin;
  PFreestyleEdge = ^FreestyleEdge;
  PFreestyleFace = ^FreestyleFace;
  PModifierData = ^ModifierData;
  PMappingInfoModifierData = ^MappingInfoModifierData;
  PSubsurfModifierData = ^SubsurfModifierData;
  PLatticeModifierData = ^LatticeModifierData;
  PCurveModifierData = ^CurveModifierData;
  PBuildModifierData = ^BuildModifierData;
  PMaskModifierData = ^MaskModifierData;
  PArrayModifierData = ^ArrayModifierData;
  PMirrorModifierData = ^MirrorModifierData;
  PEdgeSplitModifierData = ^EdgeSplitModifierData;
  PBevelModifierData = ^BevelModifierData;
  PSmokeModifierData = ^SmokeModifierData;
  PSmokeDomainSettings = ^SmokeDomainSettings;
  PSmokeFlowSettings = ^SmokeFlowSettings;
  PSmokeCollSettings = ^SmokeCollSettings;
  PDisplaceModifierData = ^DisplaceModifierData;
  PUVProjectModifierData = ^UVProjectModifierData;
  PDecimateModifierData = ^DecimateModifierData;
  PSmoothModifierData = ^SmoothModifierData;
  PCastModifierData = ^CastModifierData;
  PWaveModifierData = ^WaveModifierData;
  PArmatureModifierData = ^ArmatureModifierData;
  PHookModifierData = ^HookModifierData;
  PSoftbodyModifierData = ^SoftbodyModifierData;
  PClothModifierData = ^ClothModifierData;
  PCloth = ^Cloth;
  PClothSimSettings = ^ClothSimSettings;
  PClothCollSettings = ^ClothCollSettings;
  PPointCache = ^PointCache;
  PClothHairData = ^ClothHairData;
  PClothSolverResult = ^ClothSolverResult;
  PCollisionModifierData = ^CollisionModifierData;
  PMVertTri = ^MVertTri;
  PBVHTree = ^BVHTree;
  PSurfaceModifierData = ^SurfaceModifierData;
  PDerivedMesh = ^DerivedMesh;
  PBVHTreeFromMesh = ^BVHTreeFromMesh;
  PBooleanModifierData = ^BooleanModifierData;
  PMDefInfluence = ^MDefInfluence;
  PMDefCell = ^MDefCell;
  PMeshDeformModifierData = ^MeshDeformModifierData;
  PParticleSystemModifierData = ^ParticleSystemModifierData;
  PParticleSystem = ^ParticleSystem;
  PParticleInstanceModifierData = ^ParticleInstanceModifierData;
  PExplodeModifierData = ^ExplodeModifierData;
  PMultiresModifierData = ^MultiresModifierData;
  PFluidsimModifierData = ^FluidsimModifierData;
  PFluidsimSettings = ^FluidsimSettings;
  PShrinkwrapModifierData = ^ShrinkwrapModifierData;
  PSimpleDeformModifierData = ^SimpleDeformModifierData;
  PShapeKeyModifierData = ^ShapeKeyModifierData;
  PSolidifyModifierData = ^SolidifyModifierData;
  PScrewModifierData = ^ScrewModifierData;
  POceanModifierData = ^OceanModifierData;
  POcean = ^Ocean;
  POceanCache = ^OceanCache;
  PWarpModifierData = ^WarpModifierData;
  PWeightVGEditModifierData = ^WeightVGEditModifierData;
  PWeightVGMixModifierData = ^WeightVGMixModifierData;
  PWeightVGProximityModifierData = ^WeightVGProximityModifierData;
  PDynamicPaintModifierData = ^DynamicPaintModifierData;
  PDynamicPaintCanvasSettings = ^DynamicPaintCanvasSettings;
  PDynamicPaintBrushSettings = ^DynamicPaintBrushSettings;
  PRemeshModifierData = ^RemeshModifierData;
  PSkinModifierData = ^SkinModifierData;
  PTriangulateModifierData = ^TriangulateModifierData;
  PLaplacianSmoothModifierData = ^LaplacianSmoothModifierData;
  PCorrectiveSmoothModifierData = ^CorrectiveSmoothModifierData;
  PUVWarpModifierData = ^UVWarpModifierData;
  PMeshCacheModifierData = ^MeshCacheModifierData;
  PLaplacianDeformModifierData = ^LaplacianDeformModifierData;
  PWireframeModifierData = ^WireframeModifierData;
  PDataTransferModifierData = ^DataTransferModifierData;
  PNormalEditModifierData = ^NormalEditModifierData;
  PEditLatt = ^EditLatt;
  PLattice = ^Lattice;
  PbDeformGroup = ^bDeformGroup;
  PLodLevel = ^LodLevel;
  PSculptSession = ^SculptSession;
  PbAction = ^bAction;
  PbPose = ^bPose;
  PbGPdata = ^bGPdata;
  PbAnimVizSettings = ^bAnimVizSettings;
  PbMotionPath = ^bMotionPath;
  PBulletSoftBody = ^BulletSoftBody;
  PPartDeflect = ^PartDeflect;
  PSoftBody = ^SoftBody;
  PCurveCache = ^CurveCache;
  PRigidBodyOb = ^RigidBodyOb;
  PRigidBodyCon = ^RigidBodyCon;
  PObHook = ^ObHook;
  PDupliObject = ^DupliObject;
  PRNG = ^RNG;
  PEffectorWeights = ^EffectorWeights;
  PPTCacheExtra = ^PTCacheExtra;
  PPTCacheMem = ^PTCacheMem;
  PPTCacheEdit = ^PTCacheEdit;
  PSBVertex = ^SBVertex;
  PBodyPoint = ^BodyPoint;
  PBodySpring = ^BodySpring;
  PSBScratch = ^SBScratch;
  PFluidVertexVelocity = ^FluidVertexVelocity;
  PWorld = ^World;
  PBase = ^Base;
  PAviCodecData = ^AviCodecData;
  PQuicktimeCodecData = ^QuicktimeCodecData;
  PQuicktimeCodecSettings = ^QuicktimeCodecSettings;
  PFFMpegCodecData = ^FFMpegCodecData;
  PAudioData = ^AudioData;
  PSceneRenderLayer = ^SceneRenderLayer;
  PFreestyleConfig = ^FreestyleConfig;
  PSceneRenderView = ^SceneRenderView;
  PImageFormatData = ^ImageFormatData;
  PColorManagedViewSettings = ^ColorManagedViewSettings;
  PColorManagedDisplaySettings = ^ColorManagedDisplaySettings;
  PBakeData = ^BakeData;
  PRenderData = ^RenderData;
  PRenderProfile = ^RenderProfile;
  PGameDome = ^GameDome;
  PGameFraming = ^GameFraming;
  PRecastData = ^RecastData;
  PGameData = ^GameData;
  PTimeMarker = ^TimeMarker;
  PPaint = ^Paint;
  PBrush = ^Brush;
  PPalette = ^Palette;
  PImagePaintSettings = ^ImagePaintSettings;
  PParticleBrushData = ^ParticleBrushData;
  PParticleEditSettings = ^ParticleEditSettings;
  PSculpt = ^Sculpt;
  PUvSculpt = ^UvSculpt;
  PVPaint = ^VPaint;
  PGP_EditBrush_Data = ^GP_EditBrush_Data;
  PGP_BrushEdit_Settings = ^GP_BrushEdit_Settings;
  PTransformOrientation = ^TransformOrientation;
  PUnifiedPaintSettings = ^UnifiedPaintSettings;
  PColorSpace = ^ColorSpace;
  PMeshStatVis = ^MeshStatVis;
  PToolSettings = ^ToolSettings;
  PbStats = ^bStats;
  PUnitSettings = ^UnitSettings;
  PPhysicsSettings = ^PhysicsSettings;
  PDisplaySafeAreas = ^DisplaySafeAreas;
  PEditing = ^Editing;
  PSceneStats = ^SceneStats;
  PDepsgraph = ^Depsgraph;
  PDagForest = ^DagForest;
  PMovieClip = ^MovieClip;
  PRigidBodyWorld = ^RigidBodyWorld;
  PBGpic = ^BGpic;
  PMovieClipUser = ^MovieClipUser;
  PRegionView3D = ^RegionView3D;
  PRenderEngine = ^RenderEngine;
  PViewDepths = ^ViewDepths;
  PSmoothView3DStore = ^SmoothView3DStore;
  PwmTimer = ^wmTimer;
  PGPUFX = ^GPUFX;
  PView3D = ^View3D;
  PSpaceLink = ^SpaceLink;
  PView2D = ^View2D;
  PSmoothView2DStore = ^SmoothView2DStore;
  PSpaceInfo = ^SpaceInfo;
  PSpaceButs = ^SpaceButs;
  PSpaceOops = ^SpaceOops;
  PBLI_mempool = ^BLI_mempool;
  PTreeStoreElem = ^TreeStoreElem;
  PSpaceIpo = ^SpaceIpo;
  PbDopeSheet = ^bDopeSheet;
  PSpaceNla = ^SpaceNla;
  PSpaceTimeCache = ^SpaceTimeCache;
  PSpaceTime = ^SpaceTime;
  PSpaceSeq = ^SpaceSeq;
  PSequencerScopes = ^SequencerScopes;
  PMaskSpaceInfo = ^MaskSpaceInfo;
  PMask = ^Mask;
  PFileSelectParams = ^FileSelectParams;
  PSpaceFile = ^SpaceFile;
  PFileList = ^FileList;
  PwmOperator = ^wmOperator;
  PFileLayout = ^FileLayout;
  PFSMenuEntry = ^FSMenuEntry;
  PAssetUUID = ^AssetUUID;
  PAssetUUIDList = ^AssetUUIDList;
  PFileDirEntryRevision = ^FileDirEntryRevision;
  PFileDirEntryVariant = ^FileDirEntryVariant;
  PFileDirEntry = ^FileDirEntry;
  PFileDirEntryArr = ^FileDirEntryArr;
  PSpaceImage = ^SpaceImage;
  PScopes = ^Scopes;
  PHistogram = ^Histogram;
  PSpaceText = ^SpaceText;
  PScript = ^Script;
  PSpaceScript = ^SpaceScript;
  PbNodeTreePath = ^bNodeTreePath;
  PbNodeInstanceKey = ^bNodeInstanceKey;
  PSpaceNode = ^SpaceNode;
  PNodeInsertOfsData = ^NodeInsertOfsData;
  PSpaceLogic = ^SpaceLogic;
  PConsoleLine = ^ConsoleLine;
  PSpaceConsole = ^SpaceConsole;
  PSpaceUserPref = ^SpaceUserPref;
  PSpaceClip = ^SpaceClip;
  PMovieClipScopes = ^MovieClipScopes;
  PuiFont = ^uiFont;
  PuiFontStyle = ^uiFontStyle;
  PuiStyle = ^uiStyle;
  PuiWidgetColors = ^uiWidgetColors;
  PuiWidgetStateColors = ^uiWidgetStateColors;
  PuiPanelColors = ^uiPanelColors;
  PuiGradientColors = ^uiGradientColors;
  PThemeUI = ^ThemeUI;
  PThemeSpace = ^ThemeSpace;
  PThemeWireColor = ^ThemeWireColor;
  PbTheme = ^bTheme;
  PbAddon = ^bAddon;
  PbPathCompare = ^bPathCompare;
  PSolidLight = ^SolidLight;
  PWalkNavigation = ^WalkNavigation;
  PUserDef = ^UserDef;
  PbScreen = ^bScreen;
  PScrVert = ^ScrVert;
  PScrEdge = ^ScrEdge;
  PPanel = ^Panel;
  PPanelType = ^PanelType;
  PuiLayout = ^uiLayout;
  PPanelCategoryStack = ^PanelCategoryStack;
  PuiList = ^uiList;
  PuiListType = ^uiListType;
  PuiListDyn = ^uiListDyn;
  PuiPreview = ^uiPreview;
  PScrArea = ^ScrArea;
  PSpaceType = ^SpaceType;
  PARegion = ^ARegion;
  PARegionType = ^ARegionType;
  PFileGlobal = ^FileGlobal;
  PStripAnim = ^StripAnim;
  PStripElem = ^StripElem;
  PStripCrop = ^StripCrop;
  PStripTransform = ^StripTransform;
  PStripColorBalance = ^StripColorBalance;
  PStripProxy = ^StripProxy;
  PStrip = ^Strip;
  PSequence = ^Sequence;
  PbSound = ^bSound;
  PMetaStack = ^MetaStack;
  PWipeVars = ^WipeVars;
  PGlowVars = ^GlowVars;
  PTransformVars = ^TransformVars;
  PSolidColorVars = ^SolidColorVars;
  PSpeedControlVars = ^SpeedControlVars;
  PGaussianBlurVars = ^GaussianBlurVars;
  PTextVars = ^TextVars;
  PSequenceModifierData = ^SequenceModifierData;
  PColorBalanceModifierData = ^ColorBalanceModifierData;
  PCurvesModifierData = ^CurvesModifierData;
  PHueCorrectModifierData = ^HueCorrectModifierData;
  PBrightContrastModifierData = ^BrightContrastModifierData;
  PSequencerMaskModifierData = ^SequencerMaskModifierData;
  PWhiteBalanceModifierData = ^WhiteBalanceModifierData;
  PSequencerTonemapModifierData = ^SequencerTonemapModifierData;
  PEffect = ^Effect;
  PBuildEff = ^BuildEff;
  PPartEff = ^PartEff;
  PParticle = ^Particle;
  PWaveEff = ^WaveEff;
  PTreeStore = ^TreeStore;
  PbProperty = ^bProperty;
  PbNearSensor = ^bNearSensor;
  PbMouseSensor = ^bMouseSensor;
  PbTouchSensor = ^bTouchSensor;
  PbKeyboardSensor = ^bKeyboardSensor;
  PbPropertySensor = ^bPropertySensor;
  PbActuatorSensor = ^bActuatorSensor;
  PbDelaySensor = ^bDelaySensor;
  PbCollisionSensor = ^bCollisionSensor;
  PbRadarSensor = ^bRadarSensor;
  PbRandomSensor = ^bRandomSensor;
  PbRaySensor = ^bRaySensor;
  PbArmatureSensor = ^bArmatureSensor;
  PbMessageSensor = ^bMessageSensor;
  PbSensor = ^bSensor;
  PbController = ^bController;
  PbJoystickSensor = ^bJoystickSensor;
  PbExpressionCont = ^bExpressionCont;
  PbPythonCont = ^bPythonCont;
  PbActuator = ^bActuator;
  PbAddObjectActuator = ^bAddObjectActuator;
  PbActionActuator = ^bActionActuator;
  PSound3D = ^Sound3D;
  PbSoundActuator = ^bSoundActuator;
  PbEditObjectActuator = ^bEditObjectActuator;
  PbSceneActuator = ^bSceneActuator;
  PbPropertyActuator = ^bPropertyActuator;
  PbObjectActuator = ^bObjectActuator;
  PbIpoActuator = ^bIpoActuator;
  PbCameraActuator = ^bCameraActuator;
  PbConstraintActuator = ^bConstraintActuator;
  PbGroupActuator = ^bGroupActuator;
  PbRandomActuator = ^bRandomActuator;
  PbMessageActuator = ^bMessageActuator;
  PbGameActuator = ^bGameActuator;
  PbVisibilityActuator = ^bVisibilityActuator;
  PbTwoDFilterActuator = ^bTwoDFilterActuator;
  PbParentActuator = ^bParentActuator;
  PbStateActuator = ^bStateActuator;
  PbArmatureActuator = ^bArmatureActuator;
  PbSteeringActuator = ^bSteeringActuator;
  PbMouseActuator = ^bMouseActuator;
  PGroupObject = ^GroupObject;
  PBone = ^Bone;
  PbArmature = ^bArmature;
  PEditBone = ^EditBone;
  PbMotionPathVert = ^bMotionPathVert;
  PbPoseChannel = ^bPoseChannel;
  PbIKParam = ^bIKParam;
  PbItasc = ^bItasc;
  PbActionGroup = ^bActionGroup;
  PSpaceAction = ^SpaceAction;
  PbActionChannel = ^bActionChannel;
  PbConstraintChannel = ^bConstraintChannel;
  PbConstraint = ^bConstraint;
  PbConstraintTarget = ^bConstraintTarget;
  PbPythonConstraint = ^bPythonConstraint;
  PbKinematicConstraint = ^bKinematicConstraint;
  PbSplineIKConstraint = ^bSplineIKConstraint;
  PbTrackToConstraint = ^bTrackToConstraint;
  PbRotateLikeConstraint = ^bRotateLikeConstraint;
  PbLocateLikeConstraint = ^bLocateLikeConstraint;
  PbSizeLikeConstraint = ^bSizeLikeConstraint;
  PbSameVolumeConstraint = ^bSameVolumeConstraint;
  PbTransLikeConstraint = ^bTransLikeConstraint;
  PbMinMaxConstraint = ^bMinMaxConstraint;
  PbActionConstraint = ^bActionConstraint;
  PbLockTrackConstraint = ^bLockTrackConstraint;
  PbDampTrackConstraint = ^bDampTrackConstraint;
  PbFollowPathConstraint = ^bFollowPathConstraint;
  PbStretchToConstraint = ^bStretchToConstraint;
  PbRigidBodyJointConstraint = ^bRigidBodyJointConstraint;
  PbClampToConstraint = ^bClampToConstraint;
  PbChildOfConstraint = ^bChildOfConstraint;
  PbTransformConstraint = ^bTransformConstraint;
  PbPivotConstraint = ^bPivotConstraint;
  PbLocLimitConstraint = ^bLocLimitConstraint;
  PbRotLimitConstraint = ^bRotLimitConstraint;
  PbSizeLimitConstraint = ^bSizeLimitConstraint;
  PbDistLimitConstraint = ^bDistLimitConstraint;
  PbShrinkwrapConstraint = ^bShrinkwrapConstraint;
  PbFollowTrackConstraint = ^bFollowTrackConstraint;
  PbCameraSolverConstraint = ^bCameraSolverConstraint;
  PbObjectSolverConstraint = ^bObjectSolverConstraint;
  PbActionModifier = ^bActionModifier;
  PbActionStrip = ^bActionStrip;
  PbNodeStack = ^bNodeStack;
  PbNodeSocket = ^bNodeSocket;
  PbNodeSocketType = ^bNodeSocketType;
  PbNodeLink = ^bNodeLink;
  PbNode = ^bNode;
  PbNodeType = ^bNodeType;
  PuiBlock = ^uiBlock;
  PbNodeInstanceHashEntry = ^bNodeInstanceHashEntry;
  PbNodePreview = ^bNodePreview;
  PbNodeTreeType = ^bNodeTreeType;
  PStructRNA = ^StructRNA;
  PbNodeInstanceHash = ^bNodeInstanceHash;
  PbNodeTreeExec = ^bNodeTreeExec;
  PbNodeSocketValueInt = ^bNodeSocketValueInt;
  PbNodeSocketValueFloat = ^bNodeSocketValueFloat;
  PbNodeSocketValueBoolean = ^bNodeSocketValueBoolean;
  PbNodeSocketValueVector = ^bNodeSocketValueVector;
  PbNodeSocketValueRGBA = ^bNodeSocketValueRGBA;
  PbNodeSocketValueString = ^bNodeSocketValueString;
  PNodeFrame = ^NodeFrame;
  PNodeImageAnim = ^NodeImageAnim;
  PColorCorrectionData = ^ColorCorrectionData;
  PNodeColorCorrection = ^NodeColorCorrection;
  PNodeBokehImage = ^NodeBokehImage;
  PNodeBoxMask = ^NodeBoxMask;
  PNodeEllipseMask = ^NodeEllipseMask;
  PNodeImageLayer = ^NodeImageLayer;
  PNodeBlurData = ^NodeBlurData;
  PNodeDBlurData = ^NodeDBlurData;
  PNodeBilateralBlurData = ^NodeBilateralBlurData;
  PNodeHueSat = ^NodeHueSat;
  PNodeImageFile = ^NodeImageFile;
  PNodeImageMultiFile = ^NodeImageMultiFile;
  PNodeImageMultiFileSocket = ^NodeImageMultiFileSocket;
  PNodeChroma = ^NodeChroma;
  PNodeTwoXYs = ^NodeTwoXYs;
  PNodeTwoFloats = ^NodeTwoFloats;
  PNodeGeometry = ^NodeGeometry;
  PNodeVertexCol = ^NodeVertexCol;
  PNodeDefocus = ^NodeDefocus;
  PNodeScriptDict = ^NodeScriptDict;
  PNodeGlare = ^NodeGlare;
  PNodeTonemap = ^NodeTonemap;
  PNodeLensDist = ^NodeLensDist;
  PNodeColorBalance = ^NodeColorBalance;
  PNodeColorspill = ^NodeColorspill;
  PNodeDilateErode = ^NodeDilateErode;
  PNodeMask = ^NodeMask;
  PNodeTexBase = ^NodeTexBase;
  PNodeTexSky = ^NodeTexSky;
  PNodeTexImage = ^NodeTexImage;
  PNodeTexChecker = ^NodeTexChecker;
  PNodeTexBrick = ^NodeTexBrick;
  PNodeTexEnvironment = ^NodeTexEnvironment;
  PNodeTexGradient = ^NodeTexGradient;
  PNodeTexNoise = ^NodeTexNoise;
  PNodeTexVoronoi = ^NodeTexVoronoi;
  PNodeTexMusgrave = ^NodeTexMusgrave;
  PNodeTexWave = ^NodeTexWave;
  PNodeTexMagic = ^NodeTexMagic;
  PNodeShaderAttribute = ^NodeShaderAttribute;
  PNodeShaderVectTransform = ^NodeShaderVectTransform;
  PNodeShaderTexPointDensity = ^NodeShaderTexPointDensity;
  PTexNodeOutput = ^TexNodeOutput;
  PNodeKeyingScreenData = ^NodeKeyingScreenData;
  PNodeKeyingData = ^NodeKeyingData;
  PNodeTrackPosData = ^NodeTrackPosData;
  PNodeTranslateData = ^NodeTranslateData;
  PNodePlaneTrackDeformData = ^NodePlaneTrackDeformData;
  PNodeShaderScript = ^NodeShaderScript;
  PNodeShaderTangent = ^NodeShaderTangent;
  PNodeShaderNormalMap = ^NodeShaderNormalMap;
  PNodeShaderUVMap = ^NodeShaderUVMap;
  PNodeSunBeams = ^NodeSunBeams;
  PCurveMapPoint = ^CurveMapPoint;
  PCurveMap = ^CurveMap;
  PBrushClone = ^BrushClone;
  PPaintCurve = ^PaintCurve;
  PPaletteColor = ^PaletteColor;
  PPaintCurvePoint = ^PaintCurvePoint;
  PCustomDataLayer = ^CustomDataLayer;
  PCustomDataExternal = ^CustomDataExternal;
  PHairKey = ^HairKey;
  PParticleKey = ^ParticleKey;
  PBoidParticle = ^BoidParticle;
  PBoidData = ^BoidData;
  PParticleSpring = ^ParticleSpring;
  PChildParticle = ^ChildParticle;
  PParticleTarget = ^ParticleTarget;
  PParticleDupliWeight = ^ParticleDupliWeight;
  PParticleData = ^ParticleData;
  PSPHFluidSettings = ^SPHFluidSettings;
  PParticleSettings = ^ParticleSettings;
  PBoidSettings = ^BoidSettings;
  PParticleCacheKey = ^ParticleCacheKey;
  PLatticeDeformData = ^LatticeDeformData;
  PParticleRenderData = ^ParticleRenderData;
  PKDTree = ^KDTree;
  PParticleDrawData = ^ParticleDrawData;
  PLinkNode = ^LinkNode;
  PbGPDspoint = ^bGPDspoint;
  PbGPDstroke = ^bGPDstroke;
  PbGPDframe = ^bGPDframe;
  PbGPDlayer = ^bGPDlayer;
  PReportList = ^ReportList;
  PwmWindowManager = ^wmWindowManager;
  PwmWindow = ^wmWindow;
  PwmKeyConfig = ^wmKeyConfig;
  PwmEvent = ^wmEvent;
  PwmSubWindow = ^wmSubWindow;
  PwmGesture = ^wmGesture;
  PwmIMEData = ^wmIMEData;
  PwmKeyMapItem = ^wmKeyMapItem;
  PPointerRNA = ^PointerRNA;
  PwmKeyMapDiffItem = ^wmKeyMapDiffItem;
  PwmKeyMap = ^wmKeyMap;
  PwmOperatorType = ^wmOperatorType;
  PFModifier = ^FModifier;
  PFMod_Generator = ^FMod_Generator;
  PFMod_FunctionGenerator = ^FMod_FunctionGenerator;
  PFCM_EnvelopeData = ^FCM_EnvelopeData;
  PFMod_Envelope = ^FMod_Envelope;
  PFMod_Cycles = ^FMod_Cycles;
  PFMod_Python = ^FMod_Python;
  PFMod_Limits = ^FMod_Limits;
  PFMod_Noise = ^FMod_Noise;
  PFMod_Stepped = ^FMod_Stepped;
  PDriverTarget = ^DriverTarget;
  PDriverVar = ^DriverVar;
  PChannelDriver = ^ChannelDriver;
  PFPoint = ^FPoint;
  PFCurve = ^FCurve;
  PAnimMapPair = ^AnimMapPair;
  PAnimMapper = ^AnimMapper;
  PNlaStrip = ^NlaStrip;
  PNlaTrack = ^NlaTrack;
  PKS_Path = ^KS_Path;
  PKeyingSet = ^KeyingSet;
  PAnimOverride = ^AnimOverride;
  PIdAdtTemplate = ^IdAdtTemplate;
  PBoidRule = ^BoidRule;
  PBoidRuleGoalAvoid = ^BoidRuleGoalAvoid;
  PBoidRuleAvoidCollision = ^BoidRuleAvoidCollision;
  PBoidRuleFollowLeader = ^BoidRuleFollowLeader;
  PBoidRuleAverageSpeed = ^BoidRuleAverageSpeed;
  PBoidRuleFight = ^BoidRuleFight;
  PBoidState = ^BoidState;
  PFLUID_3D = ^FLUID_3D;
  PWTURBULENCE = ^WTURBULENCE;
  PSpeaker = ^Speaker;
  PMovieClipProxy = ^MovieClipProxy;
  PMovieClipCache = ^MovieClipCache;
  PMovieTracking = ^MovieTracking;
  PMovieTrackingMarker = ^MovieTrackingMarker;
  PMovieTrackingTrack = ^MovieTrackingTrack;
  PMovieReconstructedCamera = ^MovieReconstructedCamera;
  PMovieTrackingCamera = ^MovieTrackingCamera;
  PMovieTrackingPlaneMarker = ^MovieTrackingPlaneMarker;
  PMovieTrackingPlaneTrack = ^MovieTrackingPlaneTrack;
  PMovieTrackingSettings = ^MovieTrackingSettings;
  PMovieTrackingStabilization = ^MovieTrackingStabilization;
  PMovieTrackingReconstruction = ^MovieTrackingReconstruction;
  PMovieTrackingObject = ^MovieTrackingObject;
  PMovieTrackingStats = ^MovieTrackingStats;
  PMovieTrackingDopesheetChannel = ^MovieTrackingDopesheetChannel;
  PMovieTrackingDopesheetCoverageSegment = ^MovieTrackingDopesheetCoverageSegment;
  PMovieTrackingDopesheet = ^MovieTrackingDopesheet;
  PDynamicPaintSurface = ^DynamicPaintSurface;
  PPaintSurfaceData = ^PaintSurfaceData;
  PMaskParent = ^MaskParent;
  PMaskSplinePointUW = ^MaskSplinePointUW;
  PMaskSplinePoint = ^MaskSplinePoint;
  PMaskSpline = ^MaskSpline;
  PMaskLayerShape = ^MaskLayerShape;
  PMaskLayer = ^MaskLayer;
  PFreestyleLineSet = ^FreestyleLineSet;
  PFreestyleLineStyle = ^FreestyleLineStyle;
  PFreestyleModuleConfig = ^FreestyleModuleConfig;
  PLineStyleModifier = ^LineStyleModifier;
  PLineStyleColorModifier_AlongStroke = ^LineStyleColorModifier_AlongStroke;
  PLineStyleAlphaModifier_AlongStroke = ^LineStyleAlphaModifier_AlongStroke;
  PLineStyleThicknessModifier_AlongStroke = ^LineStyleThicknessModifier_AlongStroke;
  PLineStyleColorModifier_DistanceFromCamera = ^LineStyleColorModifier_DistanceFromCamera;
  PLineStyleAlphaModifier_DistanceFromCamera = ^LineStyleAlphaModifier_DistanceFromCamera;
  PLineStyleThicknessModifier_DistanceFromCamera = ^LineStyleThicknessModifier_DistanceFromCamera;
  PLineStyleColorModifier_DistanceFromObject = ^LineStyleColorModifier_DistanceFromObject;
  PLineStyleAlphaModifier_DistanceFromObject = ^LineStyleAlphaModifier_DistanceFromObject;
  PLineStyleThicknessModifier_DistanceFromObject = ^LineStyleThicknessModifier_DistanceFromObject;
  PLineStyleColorModifier_Curvature_3D = ^LineStyleColorModifier_Curvature_3D;
  PLineStyleAlphaModifier_Curvature_3D = ^LineStyleAlphaModifier_Curvature_3D;
  PLineStyleThicknessModifier_Curvature_3D = ^LineStyleThicknessModifier_Curvature_3D;
  PLineStyleColorModifier_Noise = ^LineStyleColorModifier_Noise;
  PLineStyleAlphaModifier_Noise = ^LineStyleAlphaModifier_Noise;
  PLineStyleThicknessModifier_Noise = ^LineStyleThicknessModifier_Noise;
  PLineStyleColorModifier_CreaseAngle = ^LineStyleColorModifier_CreaseAngle;
  PLineStyleAlphaModifier_CreaseAngle = ^LineStyleAlphaModifier_CreaseAngle;
  PLineStyleThicknessModifier_CreaseAngle = ^LineStyleThicknessModifier_CreaseAngle;
  PLineStyleColorModifier_Tangent = ^LineStyleColorModifier_Tangent;
  PLineStyleAlphaModifier_Tangent = ^LineStyleAlphaModifier_Tangent;
  PLineStyleThicknessModifier_Tangent = ^LineStyleThicknessModifier_Tangent;
  PLineStyleColorModifier_Material = ^LineStyleColorModifier_Material;
  PLineStyleAlphaModifier_Material = ^LineStyleAlphaModifier_Material;
  PLineStyleThicknessModifier_Material = ^LineStyleThicknessModifier_Material;
  PLineStyleGeometryModifier_Sampling = ^LineStyleGeometryModifier_Sampling;
  PLineStyleGeometryModifier_BezierCurve = ^LineStyleGeometryModifier_BezierCurve;
  PLineStyleGeometryModifier_SinusDisplacement = ^LineStyleGeometryModifier_SinusDisplacement;
  PLineStyleGeometryModifier_SpatialNoise = ^LineStyleGeometryModifier_SpatialNoise;
  PLineStyleGeometryModifier_PerlinNoise1D = ^LineStyleGeometryModifier_PerlinNoise1D;
  PLineStyleGeometryModifier_PerlinNoise2D = ^LineStyleGeometryModifier_PerlinNoise2D;
  PLineStyleGeometryModifier_BackboneStretcher = ^LineStyleGeometryModifier_BackboneStretcher;
  PLineStyleGeometryModifier_TipRemover = ^LineStyleGeometryModifier_TipRemover;
  PLineStyleGeometryModifier_Polygonalization = ^LineStyleGeometryModifier_Polygonalization;
  PLineStyleGeometryModifier_GuidingLines = ^LineStyleGeometryModifier_GuidingLines;
  PLineStyleGeometryModifier_Blueprint = ^LineStyleGeometryModifier_Blueprint;
  PLineStyleGeometryModifier_2DOffset = ^LineStyleGeometryModifier_2DOffset;
  PLineStyleGeometryModifier_2DTransform = ^LineStyleGeometryModifier_2DTransform;
  PLineStyleGeometryModifier_Simplification = ^LineStyleGeometryModifier_Simplification;
  PLineStyleThicknessModifier_Calligraphy = ^LineStyleThicknessModifier_Calligraphy;

  Link = packed record
    next : PLink;
    prev : PLink;
  end;

  LinkData = packed record
    next : PLinkData;
    prev : PLinkData;
    data : Pvoid;
  end;

  ListBase = packed record
    first : Pvoid;
    last  : Pvoid;
  end;

  vec2s = packed record
    x : short;
    y : short;
  end;

  vec2f = packed record
    x : float;
    y : float;
  end;

  vec3f = packed record
    x : float;
    y : float;
    z : float;
  end;

  rcti = packed record
    xmin : int;
    xmax : int;
    ymin : int;
    ymax : int;
  end;

  rctf = packed record
    xmin : float;
    xmax : float;
    ymin : float;
    ymax : float;
  end;

  IDPropertyData = packed record
    pointer : Pvoid;
    group   : ListBase;
    val     : int;
    val2    : int;
  end;

  IDProperty = packed record
    next     : PIDProperty;
    prev     : PIDProperty;
    type_    : char;
    subtype  : char;
    flag     : short;
    name     : array [0..63] of char;
    saved    : int;
    data     : IDPropertyData;
    len      : int;
    totallen : int;
  end;

  ID = packed record
    next       : Pvoid;
    prev       : Pvoid;
    newid      : PID;
    lib        : PLibrary;
    name       : array [0..65] of char;
    flag       : short;
    tag        : short;
    pad_s1     : short;
    us         : int;
    icon_id    : int;
    properties : PIDProperty;
  end;

  Library_ = packed record
    id         : ID;
    idblock    : PID;
    filedata   : PFileData;
    name       : array [0..1023] of char;
    filepath   : array [0..1023] of char;
    parent     : PLibrary;
    packedfile : PPackedFile;
  end;

  PreviewImage = packed record
    w                 : array [0..1] of int;
    h                 : array [0..1] of int;
    flag              : array [0..1] of short;
    changed_timestamp : array [0..1] of short;
    rect              : array [0..1] of Pint;
    gputexture        : array [0..1] of PGPUTexture;
    icon_id           : int;
    pad               : array [0..2] of char;
    use_deferred      : char;
  end;

  IpoDriver = packed record
    ob        : PObject;
    blocktype : short;
    adrcode   : short;
    type_     : short;
    flag      : short;
    name      : array [0..127] of char;
  end;

  IpoCurve = packed record
    next      : PIpoCurve;
    prev      : PIpoCurve;
    bp        : PBPoint;
    bezt      : PBezTriple;
    maxrct    : rctf;
    totrct    : rctf;
    blocktype : short;
    adrcode   : short;
    vartype   : short;
    totvert   : short;
    ipo       : short;
    extrap    : short;
    flag      : short;
    rt        : short;
    ymin      : float;
    ymax      : float;
    bitmask   : int;
    slide_min : float;
    slide_max : float;
    curval    : float;
    driver    : PIpoDriver;
  end;

  Ipo = packed record
    id        : ID;
    curve     : ListBase;
    cur       : rctf;
    blocktype : short;
    showkey   : short;
    muteipo   : short;
    pad       : short;
  end;

  KeyBlock = packed record
    next      : PKeyBlock;
    prev      : PKeyBlock;
    pos       : float;
    curval    : float;
    type_     : short;
    pad1      : short;
    relative  : short;
    flag      : short;
    totelem   : int;
    uid       : int;
    data      : Pvoid;
    name      : array [0..63] of char;
    vgroup    : array [0..63] of char;
    slidermin : float;
    slidermax : float;
  end;

  Key = packed record
    id       : ID;
    adt      : PAnimData;
    refkey   : PKeyBlock;
    elemstr  : array [0..31] of char;
    elemsize : int;
    pad      : int;
    block    : ListBase;
    ipo      : PIpo;
    from     : PID;
    totkey   : int;
    flag     : short;
    type_    : char;
    pad2     : char;
    ctime    : float;
    uidgen   : int;
  end;

  TextLine = packed record
    next   : PTextLine;
    prev   : PTextLine;
    line   : Pchar;
    format : Pchar;
    len    : int;
    blen   : int;
  end;

  Text = packed record
    id       : ID;
    name     : Pchar;
    flags    : int;
    nlines   : int;
    lines    : ListBase;
    curl     : PTextLine;
    sell     : PTextLine;
    curc     : int;
    selc     : int;
    undo_buf : Pchar;
    undo_pos : int;
    undo_len : int;
    compiled : Pvoid;
    mtime    : double;
  end;

  PackedFile = packed record
    size : int;
    seek : int;
    data : Pvoid;
  end;

  GPUDOFSettings = packed record
    focus_distance : float;
    fstop          : float;
    focal_length   : float;
    sensor         : float;
    num_blades     : int;
    high_quality   : int;
  end;

  GPUSSAOSettings = packed record
    factor       : float;
    color        : array [0..2] of float;
    distance_max : float;
    attenuation  : float;
    samples      : int;
    pad          : int;
  end;

  GPUFXSettings = packed record
    dof     : PGPUDOFSettings;
    ssao    : PGPUSSAOSettings;
    fx_flag : char;
    pad     : array [0..6] of char;
  end;

  CameraStereoSettings = packed record
    interocular_distance : float;
    convergence_distance : float;
    convergence_mode     : short;
    pivot                : short;
    pad                  : short;
    pad2                 : short;
  end;

  Camera = packed record
    id             : ID;
    adt            : PAnimData;
    type_          : char;
    dtx            : char;
    flag           : short;
    passepartalpha : float;
    clipsta        : float;
    clipend        : float;
    lens           : float;
    ortho_scale    : float;
    drawsize       : float;
    sensor_x       : float;
    sensor_y       : float;
    shiftx         : float;
    shifty         : float;
    YF_dofdist     : float;
    ipo            : PIpo;
    dof_ob         : PObject;
    gpu_dof        : GPUDOFSettings;
    sensor_fit     : char;
    pad            : array [0..6] of char;
    stereo         : CameraStereoSettings;
  end;

  ImageUser = packed record
    scene         : PScene;
    framenr       : int;
    frames        : int;
    offset        : int;
    sfra          : int;
    fie_ima       : char;
    cycl          : char;
    ok            : char;
    multiview_eye : char;
    pass          : short;
    pad           : short;
    multi_index   : short;
    view          : short;
    layer         : short;
    flag          : short;
  end;

  ImageAnim = packed record
    next : PImageAnim;
    prev : PImageAnim;
    anim : Panim;
  end;

  ImageView = packed record
    next     : PImageView;
    prev     : PImageView;
    name     : array [0..63] of char;
    filepath : array [0..1023] of char;
  end;

  ImagePackedFile = packed record
    next       : PImagePackedFile;
    prev       : PImagePackedFile;
    packedfile : PPackedFile;
    filepath   : array [0..1023] of char;
  end;

  RenderSlot = packed record
    name : array [0..63] of char;
  end;

  ColorManagedColorspaceSettings = packed record
    name : array [0..63] of char;
  end;

  Image = packed record
    id                  : ID;
    name                : array [0..1023] of char;
    cache               : PMovieCache;
    gputexture          : array [0..1] of PGPUTexture;
    anims               : ListBase;
    rr                  : PRenderResult;
    renders             : array [0..7] of PRenderResult;
    render_slot         : short;
    last_render_slot    : short;
    flag                : int;
    source              : short;
    type_               : short;
    lastframe           : int;
    tpageflag           : short;
    totbind             : short;
    xrep                : short;
    yrep                : short;
    twsta               : short;
    twend               : short;
    bindcode            : array [0..1] of int;
    pad1                : array [0..3] of char;
    repbind             : Pint;
    packedfile          : PPackedFile;
    packedfiles         : ListBase;
    preview             : PPreviewImage;
    lastupdate          : float;
    lastused            : int;
    animspeed           : short;
    ok                  : short;
    gen_x               : int;
    gen_y               : int;
    gen_type            : char;
    gen_flag            : char;
    gen_depth           : short;
    gen_color           : array [0..3] of float;
    aspx                : float;
    aspy                : float;
    colorspace_settings : ColorManagedColorspaceSettings;
    alpha_mode          : char;
    pad                 : array [0..4] of char;
    eye                 : char;
    views_format        : char;
    views               : ListBase;
    stereo3d_format     : PStereo3dFormat;
    render_slots        : array [0..7] of RenderSlot;
  end;

  MTex = packed record
    texco            : short;
    mapto            : short;
    maptoneg         : short;
    blendtype        : short;
    object_          : PObject;
    tex              : PTex;
    uvname           : array [0..63] of char;
    projx            : char;
    projy            : char;
    projz            : char;
    mapping          : char;
    brush_map_mode   : char;
    brush_angle_mode : char;
    pad              : array [0..1] of char;
    ofs              : array [0..2] of float;
    size             : array [0..2] of float;
    rot              : float;
    random_angle     : float;
    texflag          : short;
    colormodel       : short;
    pmapto           : short;
    pmaptoneg        : short;
    normapspace      : short;
    which_output     : short;
    r                : float;
    g                : float;
    b                : float;
    k                : float;
    def_var          : float;
    rt               : float;
    colfac           : float;
    varfac           : float;
    norfac           : float;
    dispfac          : float;
    warpfac          : float;
    colspecfac       : float;
    mirrfac          : float;
    alphafac         : float;
    difffac          : float;
    specfac          : float;
    emitfac          : float;
    hardfac          : float;
    raymirrfac       : float;
    translfac        : float;
    ambfac           : float;
    colemitfac       : float;
    colreflfac       : float;
    coltransfac      : float;
    densfac          : float;
    scatterfac       : float;
    reflfac          : float;
    timefac          : float;
    lengthfac        : float;
    clumpfac         : float;
    dampfac          : float;
    kinkfac          : float;
    kinkampfac       : float;
    roughfac         : float;
    padensfac        : float;
    gravityfac       : float;
    lifefac          : float;
    sizefac          : float;
    ivelfac          : float;
    fieldfac         : float;
    pad2             : int;
    shadowfac        : float;
    zenupfac         : float;
    zendownfac       : float;
    blendfac         : float;
  end;

  CBData = packed record
    r   : float;
    g   : float;
    b   : float;
    a   : float;
    pos : float;
    cur : int;
  end;

  ColorBand = packed record
    tot         : short;
    cur         : short;
    ipotype     : char;
    ipotype_hue : char;
    color_mode  : char;
    pad         : array [0..0] of char;
    data        : array [0..31] of CBData;
  end;

  EnvMap = packed record
    object_   : PObject;
    ima       : PImage;
    cube      : array [0..5] of PImBuf;
    imat      : array [0..3,0..3] of float;
    obimat    : array [0..2,0..2] of float;
    type_     : short;
    stype     : short;
    clipsta   : float;
    clipend   : float;
    viewscale : float;
    notlay    : int;
    cuberes   : short;
    depth     : short;
    ok        : int;
    lastframe : int;
    recalc    : short;
    lastsize  : short;
  end;

  PointDensity = packed record
    flag                : short;
    falloff_type        : short;
    falloff_softness    : float;
    radius              : float;
    source              : short;
    color_source        : short;
    totpoints           : int;
    pdpad               : int;
    object_             : PObject;
    psys                : int;
    psys_cache_space    : short;
    ob_cache_space      : short;
    point_tree          : Pvoid;
    point_data          : Pfloat;
    noise_size          : float;
    noise_depth         : short;
    noise_influence     : short;
    noise_basis         : short;
    pdpad3              : array [0..2] of short;
    noise_fac           : float;
    speed_scale         : float;
    falloff_speed_scale : float;
    pdpad2              : float;
    coba                : PColorBand;
    falloff_curve       : PCurveMapping;
  end;

  VoxelData = packed record
    resol          : array [0..2] of int;
    interp_type    : int;
    file_format    : short;
    flag           : short;
    extend         : short;
    smoked_type    : short;
    hair_type      : short;
    data_type      : short;
    _pad           : int;
    object_        : PObject;
    int_multiplier : float;
    still_frame    : int;
    source_path    : array [0..1023] of char;
    dataset        : Pfloat;
    cachedframe    : int;
    ok             : int;
  end;

  OceanTex = packed record
    object_  : PObject;
    oceanmod : array [0..63] of char;
    output   : int;
    pad      : int;
  end;

  Tex = packed record
    id            : ID;
    adt           : PAnimData;
    noisesize     : float;
    turbul        : float;
    bright        : float;
    contrast      : float;
    saturation    : float;
    rfac          : float;
    gfac          : float;
    bfac          : float;
    filtersize    : float;
    pad2          : float;
    mg_H          : float;
    mg_lacunarity : float;
    mg_octaves    : float;
    mg_offset     : float;
    mg_gain       : float;
    dist_amount   : float;
    ns_outscale   : float;
    vn_w1         : float;
    vn_w2         : float;
    vn_w3         : float;
    vn_w4         : float;
    vn_mexp       : float;
    vn_distm      : short;
    vn_coltype    : short;
    noisedepth    : short;
    noisetype     : short;
    noisebasis    : short;
    noisebasis2   : short;
    imaflag       : short;
    flag          : short;
    type_         : short;
    stype         : short;
    cropxmin      : float;
    cropymin      : float;
    cropxmax      : float;
    cropymax      : float;
    texfilter     : int;
    afmax         : int;
    xrepeat       : short;
    yrepeat       : short;
    extend        : short;
    fie_ima       : short;
    len           : int;
    frames        : int;
    offset        : int;
    sfra          : int;
    checkerdist   : float;
    nabla         : float;
    pad1          : float;
    iuser         : ImageUser;
    nodetree      : PbNodeTree;
    ipo           : PIpo;
    ima           : PImage;
    coba          : PColorBand;
    env           : PEnvMap;
    preview       : PPreviewImage;
    pd            : PPointDensity;
    vd            : PVoxelData;
    ot            : POceanTex;
    use_nodes     : char;
    pad           : array [0..6] of char;
  end;

  TexMapping = packed record
    loc     : array [0..2] of float;
    rot     : array [0..2] of float;
    size    : array [0..2] of float;
    flag    : int;
    projx   : char;
    projy   : char;
    projz   : char;
    mapping : char;
    type_   : int;
    mat     : array [0..3,0..3] of float;
    min     : array [0..2] of float;
    max     : array [0..2] of float;
    ob      : PObject;
  end;

  ColorMapping = packed record
    coba         : ColorBand;
    bright       : float;
    contrast     : float;
    saturation   : float;
    flag         : int;
    blend_color  : array [0..2] of float;
    blend_factor : float;
    blend_type   : int;
    pad          : array [0..2] of int;
  end;

  Lamp = packed record
    id                      : ID;
    adt                     : PAnimData;
    type_                   : short;
    flag                    : short;
    mode                    : int;
    colormodel              : short;
    totex                   : short;
    r                       : float;
    g                       : float;
    b                       : float;
    k                       : float;
    shdwr                   : float;
    shdwg                   : float;
    shdwb                   : float;
    shdwpad                 : float;
    energy                  : float;
    dist                    : float;
    spotsize                : float;
    spotblend               : float;
    haint                   : float;
    att1                    : float;
    att2                    : float;
    curfalloff              : PCurveMapping;
    falloff_type            : short;
    pad2                    : short;
    clipsta                 : float;
    clipend                 : float;
    bias                    : float;
    soft                    : float;
    compressthresh          : float;
    bleedbias               : float;
    pad5                    : float;
    bufsize                 : short;
    samp                    : short;
    buffers                 : short;
    filtertype              : short;
    bufflag                 : char;
    buftype                 : char;
    ray_samp                : short;
    ray_sampy               : short;
    ray_sampz               : short;
    ray_samp_type           : short;
    area_shape              : short;
    area_size               : float;
    area_sizey              : float;
    area_sizez              : float;
    adapt_thresh            : float;
    ray_samp_method         : short;
    shadowmap_type          : short;
    texact                  : short;
    shadhalostep            : short;
    sun_effect_type         : short;
    skyblendtype            : short;
    horizon_brightness      : float;
    spread                  : float;
    sun_brightness          : float;
    sun_size                : float;
    backscattered_light     : float;
    sun_intensity           : float;
    atm_turbidity           : float;
    atm_inscattering_factor : float;
    atm_extinction_factor   : float;
    atm_distance_factor     : float;
    skyblendfac             : float;
    sky_exposure            : float;
    shadow_frustum_size     : float;
    sky_colorspace          : short;
    pad4                    : array [0..1] of char;
    ipo                     : PIpo;
    mtex                    : array [0..17] of PMTex;
    pr_texture              : short;
    use_nodes               : short;
    pad6                    : array [0..3] of char;
    preview                 : PPreviewImage;
    nodetree                : PbNodeTree;
  end;

  VolumeSettings = packed record
    density             : float;
    emission            : float;
    scattering          : float;
    reflection          : float;
    emission_col        : array [0..2] of float;
    transmission_col    : array [0..2] of float;
    reflection_col      : array [0..2] of float;
    density_scale       : float;
    depth_cutoff        : float;
    asymmetry           : float;
    stepsize_type       : short;
    shadeflag           : short;
    shade_type          : short;
    precache_resolution : short;
    stepsize            : float;
    ms_diff             : float;
    ms_intensity        : float;
    ms_spread           : float;
  end;

  GameSettings = packed record
    flag             : int;
    alpha_blend      : int;
    face_orientation : int;
    pad1             : int;
  end;

  TexPaintSlot = packed record
    ima    : PImage;
    uvname : Pchar;
    index  : int;
    pad    : int;
  end;

  Material = packed record
    id                : ID;
    adt               : PAnimData;
    material_type     : short;
    flag              : short;
    r                 : float;
    g                 : float;
    b                 : float;
    specr             : float;
    specg             : float;
    specb             : float;
    mirr              : float;
    mirg              : float;
    mirb              : float;
    ambr              : float;
    ambb              : float;
    ambg              : float;
    amb               : float;
    emit              : float;
    ang               : float;
    spectra           : float;
    ray_mirror        : float;
    alpha             : float;
    ref               : float;
    spec              : float;
    zoffs             : float;
    add               : float;
    translucency      : float;
    vol               : VolumeSettings;
    game              : GameSettings;
    fresnel_mir       : float;
    fresnel_mir_i     : float;
    fresnel_tra       : float;
    fresnel_tra_i     : float;
    filter            : float;
    tx_limit          : float;
    tx_falloff        : float;
    ray_depth         : short;
    ray_depth_tra     : short;
    har               : short;
    seed1             : char;
    seed2             : char;
    gloss_mir         : float;
    gloss_tra         : float;
    samp_gloss_mir    : short;
    samp_gloss_tra    : short;
    adapt_thresh_mir  : float;
    adapt_thresh_tra  : float;
    aniso_gloss_mir   : float;
    dist_mir          : float;
    fadeto_mir        : short;
    shade_flag        : short;
    mode              : int;
    mode_l            : int;
    mode2             : int;
    mode2_l           : int;
    flarec            : short;
    starc             : short;
    linec             : short;
    ringc             : short;
    hasize            : float;
    flaresize         : float;
    subsize           : float;
    flareboost        : float;
    strand_sta        : float;
    strand_end        : float;
    strand_ease       : float;
    strand_surfnor    : float;
    strand_min        : float;
    strand_widthfade  : float;
    strand_uvname     : array [0..63] of char;
    sbias             : float;
    lbias             : float;
    shad_alpha        : float;
    septex            : int;
    rgbsel            : char;
    texact            : char;
    pr_type           : char;
    use_nodes         : char;
    pr_lamp           : short;
    pr_texture        : short;
    ml_flag           : short;
    mapflag           : char;
    pad               : char;
    diff_shader       : short;
    spec_shader       : short;
    roughness         : float;
    refrac            : float;
    param             : array [0..3] of float;
    rms               : float;
    darkness          : float;
    texco             : short;
    mapto             : short;
    ramp_col          : PColorBand;
    ramp_spec         : PColorBand;
    rampin_col        : char;
    rampin_spec       : char;
    rampblend_col     : char;
    rampblend_spec    : char;
    ramp_show         : short;
    pad3              : short;
    rampfac_col       : float;
    rampfac_spec      : float;
    mtex              : array [0..17] of PMTex;
    nodetree          : PbNodeTree;
    ipo               : PIpo;
    group             : PGroup;
    preview           : PPreviewImage;
    friction          : float;
    fh                : float;
    reflect           : float;
    fhdist            : float;
    xyfrict           : float;
    dynamode          : short;
    pad2              : short;
    sss_radius        : array [0..2] of float;
    sss_col           : array [0..2] of float;
    sss_error         : float;
    sss_scale         : float;
    sss_ior           : float;
    sss_colfac        : float;
    sss_texfac        : float;
    sss_front         : float;
    sss_back          : float;
    sss_flag          : short;
    sss_preset        : short;
    mapto_textured    : int;
    shadowonly_flag   : short;
    index             : short;
    line_col          : array [0..3] of float;
    line_priority     : short;
    vcol_alpha        : short;
    paint_active_slot : short;
    paint_clone_slot  : short;
    tot_slots         : short;
    pad4              : array [0..2] of short;
    texpaintslot      : PTexPaintSlot;
    gpumaterial       : ListBase;
  end;

  VFont = packed record
    id         : ID;
    name       : array [0..1023] of char;
    data       : PVFontData;
    packedfile : PPackedFile;
    temp_pf    : PPackedFile;
  end;

  MetaElem = packed record
    next    : PMetaElem;
    prev    : PMetaElem;
    bb      : PBoundBox;
    type_   : short;
    flag    : short;
    selcol1 : short;
    selcol2 : short;
    x       : float;
    y       : float;
    z       : float;
    quat    : array [0..3] of float;
    expx    : float;
    expy    : float;
    expz    : float;
    rad     : float;
    rad2    : float;
    s       : float;
    len     : float;
    mat     : Pfloat;
    imat    : Pfloat;
  end;

  MetaBall = packed record
    id         : ID;
    adt        : PAnimData;
    elems      : ListBase;
    disp       : ListBase;
    editelems  : PListBase;
    ipo        : PIpo;
    mat        : ^PMaterial;
    flag       : char;
    flag2      : char;
    totcol     : short;
    texflag    : short;
    pad        : short;
    loc        : array [0..2] of float;
    size       : array [0..2] of float;
    rot        : array [0..2] of float;
    wiresize   : float;
    rendersize : float;
    thresh     : float;
    lastelem   : PMetaElem;
  end;

  BezTriple = packed record
    vec       : array [0..2,0..2] of float;
    alfa      : float;
    weight    : float;
    radius    : float;
    ipo       : char;
    h1        : char;
    h2        : char;
    f1        : char;
    f2        : char;
    f3        : char;
    hide      : char;
    easing    : char;
    back      : float;
    amplitude : float;
    period    : float;
    pad       : array [0..3] of char;
  end;

  BPoint = packed record
    vec    : array [0..3] of float;
    alfa   : float;
    weight : float;
    f1     : short;
    hide   : short;
    radius : float;
    pad    : float;
  end;

  Nurb = packed record
    next          : PNurb;
    prev          : PNurb;
    type_         : short;
    mat_nr        : short;
    hide          : short;
    flag          : short;
    pntsu         : int;
    pntsv         : int;
    pad           : array [0..1] of short;
    resolu        : short;
    resolv        : short;
    orderu        : short;
    orderv        : short;
    flagu         : short;
    flagv         : short;
    knotsu        : Pfloat;
    knotsv        : Pfloat;
    bp            : PBPoint;
    bezt          : PBezTriple;
    tilt_interp   : short;
    radius_interp : short;
    charidx       : int;
  end;

  CharInfo = packed record
    kern   : short;
    mat_nr : short;
    flag   : char;
    pad    : char;
    pad2   : short;
  end;

  TextBox = packed record
    x : float;
    y : float;
    w : float;
    h : float;
  end;

  EditNurb = packed record
    nurbs    : ListBase;
    keyindex : PGHash;
    shapenr  : int;
    pad      : array [0..3] of char;
  end;

  Curve = packed record
    id              : ID;
    adt             : PAnimData;
    bb              : PBoundBox;
    nurb            : ListBase;
    editnurb        : PEditNurb;
    bevobj          : PObject;
    taperobj        : PObject;
    textoncurve     : PObject;
    ipo             : PIpo;
    key             : PKey;
    mat             : ^PMaterial;
    loc             : array [0..2] of float;
    size            : array [0..2] of float;
    rot             : array [0..2] of float;
    type_           : short;
    texflag         : short;
    drawflag        : short;
    twist_mode      : short;
    twist_smooth    : float;
    smallcaps_scale : float;
    pathlen         : int;
    bevresol        : short;
    totcol          : short;
    flag            : int;
    width           : float;
    ext1            : float;
    ext2            : float;
    resolu          : short;
    resolv          : short;
    resolu_ren      : short;
    resolv_ren      : short;
    actnu           : int;
    actvert         : int;
    pad             : array [0..3] of char;
    lines           : short;
    spacemode       : char;
    pad1            : char;
    spacing         : float;
    linedist        : float;
    shear           : float;
    fsize           : float;
    wordspace       : float;
    ulpos           : float;
    ulheight        : float;
    xof             : float;
    yof             : float;
    linewidth       : float;
    pos             : int;
    selstart        : int;
    selend          : int;
    len_wchar       : int;
    len             : int;
    str             : Pchar;
    editfont        : PEditFont;
    family          : array [0..63] of char;
    vfont           : PVFont;
    vfontb          : PVFont;
    vfonti          : PVFont;
    vfontbi         : PVFont;
    tb              : PTextBox;
    totbox          : int;
    actbox          : int;
    strinfo         : PCharInfo;
    curinfo         : CharInfo;
    ctime           : float;
    bevfac1         : float;
    bevfac2         : float;
    bevfac1_mapping : char;
    bevfac2_mapping : char;
    pad2            : array [0..1] of char;
  end;

  CustomData = packed record
    layers   : PCustomDataLayer;
    typemap  : array [0..41] of int;
    pad_i1   : int;
    totlayer : int;
    maxlayer : int;
    totsize  : int;
    pool     : PBLI_mempool;
    external : PCustomDataExternal;
  end;

  Mesh = packed record
    id          : ID;
    adt         : PAnimData;
    bb          : PBoundBox;
    ipo         : PIpo;
    key         : PKey;
    mat         : ^PMaterial;
    mselect     : PMSelect;
    mpoly       : PMPoly;
    mtpoly      : PMTexPoly;
    mloop       : PMLoop;
    mloopuv     : PMLoopUV;
    mloopcol    : PMLoopCol;
    mface       : PMFace;
    mtface      : PMTFace;
    tface       : PTFace;
    mvert       : PMVert;
    medge       : PMEdge;
    dvert       : PMDeformVert;
    mcol        : PMCol;
    texcomesh   : PMesh;
    edit_btmesh : PBMEditMesh;
    vdata       : CustomData;
    edata       : CustomData;
    fdata       : CustomData;
    pdata       : CustomData;
    ldata       : CustomData;
    totvert     : int;
    totedge     : int;
    totface     : int;
    totselect   : int;
    totpoly     : int;
    totloop     : int;
    act_face    : int;
    loc         : array [0..2] of float;
    size        : array [0..2] of float;
    rot         : array [0..2] of float;
    drawflag    : int;
    texflag     : short;
    flag        : short;
    smoothresh  : float;
    pad2        : int;
    cd_flag     : char;
    pad         : char;
    subdiv      : char;
    subdivr     : char;
    subsurftype : char;
    editflag    : char;
    totcol      : short;
    mr          : PMultires;
  end;

  TFace = packed record
    tpage  : Pvoid;
    uv     : array [0..3,0..1] of float;
    col    : array [0..3] of int;
    flag   : char;
    transp : char;
    mode   : short;
    tile   : short;
    unwrap : short;
  end;

  MFace = packed record
    v1     : int;
    v2     : int;
    v3     : int;
    v4     : int;
    mat_nr : short;
    edcode : char;
    flag   : char;
  end;

  MEdge = packed record
    v1      : int;
    v2      : int;
    crease  : char;
    bweight : char;
    flag    : short;
  end;

  MDeformWeight = packed record
    def_nr : int;
    weight : float;
  end;

  MDeformVert = packed record
    dw        : PMDeformWeight;
    totweight : int;
    flag      : int;
  end;

  MVert = packed record
    co      : array [0..2] of float;
    no      : array [0..2] of short;
    flag    : char;
    bweight : char;
  end;

  MCol = packed record
    a : char;
    r : char;
    g : char;
    b : char;
  end;

  MPoly = packed record
    loopstart : int;
    totloop   : int;
    mat_nr    : short;
    flag      : char;
    pad       : char;
  end;

  MLoop = packed record
    v : int;
    e : int;
  end;

  MTexPoly = packed record
    tpage  : PImage;
    flag   : char;
    transp : char;
    mode   : short;
    tile   : short;
    pad    : short;
  end;

  MLoopUV = packed record
    uv   : array [0..1] of float;
    flag : int;
  end;

  MLoopCol = packed record
    r : char;
    g : char;
    b : char;
    a : char;
  end;

  MSelect = packed record
    index : int;
    type_ : int;
  end;

  MTFace = packed record
    uv     : array [0..3,0..1] of float;
    tpage  : PImage;
    flag   : char;
    transp : char;
    mode   : short;
    tile   : short;
    unwrap : short;
  end;

  MFloatProperty = packed record
    f : float;
  end;

  MIntProperty = packed record
    i : int;
  end;

  MStringProperty = packed record
    s     : array [0..254] of char;
    s_len : char;
  end;

  OrigSpaceFace = packed record
    uv : array [0..3,0..1] of float;
  end;

  OrigSpaceLoop = packed record
    uv : array [0..1] of float;
  end;

  MDisps = packed record
    totdisp : int;
    level   : int;
    disps   : Pointer;
    hidden  : Pint;
  end;

  MultiresCol = packed record
    a : float;
    r : float;
    g : float;
    b : float;
  end;

  MultiresColFace = packed record
    col : array [0..3] of MultiresCol;
  end;

  MultiresFace = packed record
    v      : array [0..3] of int;
    mid    : int;
    flag   : char;
    mat_nr : char;
    pad    : array [0..1] of char;
  end;

  MultiresEdge = packed record
    v   : array [0..1] of int;
    mid : int;
  end;

  MultiresLevel = packed record
    next     : PMultiresLevel;
    prev     : PMultiresLevel;
    faces    : PMultiresFace;
    colfaces : PMultiresColFace;
    edges    : PMultiresEdge;
    totvert  : int;
    totface  : int;
    totedge  : int;
    pad      : int;
    verts    : PMVert;
  end;

  Multires = packed record
    levels       : ListBase;
    verts        : PMVert;
    level_count  : char;
    current      : char;
    newlvl       : char;
    edgelvl      : char;
    pinlvl       : char;
    renderlvl    : char;
    use_col      : char;
    flag         : char;
    vdata        : CustomData;
    fdata        : CustomData;
    edge_flags   : Pshort;
    edge_creases : Pchar;
  end;

  MRecast = packed record
    i : int;
  end;

  GridPaintMask = packed record
    data  : Pfloat;
    level : int;
    pad   : int;
  end;

  MVertSkin = packed record
    radius : array [0..2] of float;
    flag   : int;
  end;

  FreestyleEdge = packed record
    flag : char;
    pad  : array [0..2] of char;
  end;

  FreestyleFace = packed record
    flag : char;
    pad  : array [0..2] of char;
  end;

  ModifierData = packed record
    next       : PModifierData;
    prev       : PModifierData;
    type_      : int;
    mode       : int;
    stackindex : int;
    pad        : int;
    name       : array [0..63] of char;
    scene      : PScene;
    error      : Pchar;
  end;

  MappingInfoModifierData = packed record
    modifier     : ModifierData;
    texture      : PTex;
    map_object   : PObject;
    uvlayer_name : array [0..63] of char;
    uvlayer_tmp  : int;
    texmapping   : int;
  end;

  SubsurfModifierData = packed record
    modifier       : ModifierData;
    subdivType     : short;
    levels         : short;
    renderLevels   : short;
    flags          : short;
    use_opensubdiv : short;
    pad            : array [0..2] of short;
    emCache        : Pvoid;
    mCache         : Pvoid;
  end;

  LatticeModifierData = packed record
    modifier : ModifierData;
    object_  : PObject;
    name     : array [0..63] of char;
    strength : float;
    pad      : array [0..3] of char;
  end;

  CurveModifierData = packed record
    modifier : ModifierData;
    object_  : PObject;
    name     : array [0..63] of char;
    defaxis  : short;
    pad      : array [0..5] of char;
  end;

  BuildModifierData = packed record
    modifier  : ModifierData;
    start     : float;
    length    : float;
    flag      : short;
    randomize : short;
    seed      : int;
  end;

  MaskModifierData = packed record
    modifier : ModifierData;
    ob_arm   : PObject;
    vgroup   : array [0..63] of char;
    mode     : int;
    flag     : int;
  end;

  ArrayModifierData = packed record
    modifier    : ModifierData;
    start_cap   : PObject;
    end_cap     : PObject;
    curve_ob    : PObject;
    offset_ob   : PObject;
    offset      : array [0..2] of float;
    scale       : array [0..2] of float;
    length      : float;
    merge_dist  : float;
    fit_type    : int;
    offset_type : int;
    flags       : int;
    count       : int;
  end;

  MirrorModifierData = packed record
    modifier  : ModifierData;
    axis      : short;
    flag      : short;
    tolerance : float;
    mirror_ob : PObject;
  end;

  EdgeSplitModifierData = packed record
    modifier    : ModifierData;
    split_angle : float;
    flags       : int;
  end;

  BevelModifierData = packed record
    modifier    : ModifierData;
    value       : float;
    res         : int;
    flags       : short;
    val_flags   : short;
    lim_flags   : short;
    e_flags     : short;
    mat         : short;
    pad         : short;
    pad2        : int;
    profile     : float;
    bevel_angle : float;
    defgrp_name : array [0..63] of char;
  end;

  SmokeModifierData = packed record
    modifier : ModifierData;
    domain   : PSmokeDomainSettings;
    flow     : PSmokeFlowSettings;
    coll     : PSmokeCollSettings;
    time     : float;
    type_    : int;
  end;

  DisplaceModifierData = packed record
    modifier     : ModifierData;
    texture      : PTex;
    map_object   : PObject;
    uvlayer_name : array [0..63] of char;
    uvlayer_tmp  : int;
    texmapping   : int;
    strength     : float;
    direction    : int;
    defgrp_name  : array [0..63] of char;
    midlevel     : float;
    pad          : int;
  end;

  UVProjectModifierData = packed record
    modifier       : ModifierData;
    projectors     : array [0..9] of PObject;
    image          : PImage;
    flags          : int;
    num_projectors : int;
    aspectx        : float;
    aspecty        : float;
    scalex         : float;
    scaley         : float;
    uvlayer_name   : array [0..63] of char;
    uvlayer_tmp    : int;
    pad            : int;
  end;

  DecimateModifierData = packed record
    modifier      : ModifierData;
    percent       : float;
    iter          : short;
    delimit       : char;
    symmetry_axis : char;
    angle         : float;
    defgrp_name   : array [0..63] of char;
    defgrp_factor : float;
    flag          : short;
    mode          : short;
    face_count    : int;
  end;

  SmoothModifierData = packed record
    modifier    : ModifierData;
    fac         : float;
    defgrp_name : array [0..63] of char;
    flag        : short;
    repeat_     : short;
  end;

  CastModifierData = packed record
    modifier    : ModifierData;
    object_     : PObject;
    fac         : float;
    radius      : float;
    size        : float;
    defgrp_name : array [0..63] of char;
    flag        : short;
    type_       : short;
  end;

  WaveModifierData = packed record
    modifier     : ModifierData;
    texture      : PTex;
    map_object   : PObject;
    uvlayer_name : array [0..63] of char;
    uvlayer_tmp  : int;
    texmapping   : int;
    objectcenter : PObject;
    defgrp_name  : array [0..63] of char;
    flag         : short;
    pad          : short;
    startx       : float;
    starty       : float;
    height       : float;
    width        : float;
    narrow       : float;
    speed        : float;
    damp         : float;
    falloff      : float;
    timeoffs     : float;
    lifetime     : float;
    pad1         : float;
  end;

  ArmatureModifierData = packed record
    modifier    : ModifierData;
    deformflag  : short;
    multi       : short;
    pad2        : int;
    object_     : PObject;
    prevCos     : Pfloat;
    defgrp_name : array [0..63] of char;
  end;

  HookModifierData = packed record
    modifier     : ModifierData;
    object_      : PObject;
    subtarget    : array [0..63] of char;
    flag         : char;
    falloff_type : char;
    pad          : array [0..5] of char;
    parentinv    : array [0..3,0..3] of float;
    cent         : array [0..2] of float;
    falloff      : float;
    curfalloff   : PCurveMapping;
    indexar      : Pint;
    totindex     : int;
    force        : float;
    name         : array [0..63] of char;
  end;

  SoftbodyModifierData = packed record
    modifier : ModifierData;
  end;

  ClothModifierData = packed record
    modifier           : ModifierData;
    scene              : PScene;
    clothObject        : PCloth;
    sim_parms          : PClothSimSettings;
    coll_parms         : PClothCollSettings;
    point_cache        : PPointCache;
    ptcaches           : ListBase;
    hairdata           : PClothHairData;
    hair_grid_min      : array [0..2] of float;
    hair_grid_max      : array [0..2] of float;
    hair_grid_res      : array [0..2] of int;
    hair_grid_cellsize : float;
    solver_result      : PClothSolverResult;
  end;

  CollisionModifierData = packed record
    modifier     : ModifierData;
    x            : PMVert;
    xnew         : PMVert;
    xold         : PMVert;
    current_xnew : PMVert;
    current_x    : PMVert;
    current_v    : PMVert;
    tri          : PMVertTri;
    mvert_num    : int;
    tri_num      : int;
    time_x       : float;
    time_xnew    : float;
    bvhtree      : PBVHTree;
  end;

  SurfaceModifierData = packed record
    modifier : ModifierData;
    x        : PMVert;
    v        : PMVert;
    dm       : PDerivedMesh;
    bvhtree  : PBVHTreeFromMesh;
    cfra     : int;
    numverts : int;
  end;

  BooleanModifierData = packed record
    modifier  : ModifierData;
    object_   : PObject;
    operation : char;
    bm_flag   : char;
    pad       : array [0..1] of char;
    threshold : float;
  end;

  MDefInfluence = packed record
    vertex : int;
    weight : float;
  end;

  MDefCell = packed record
    offset       : int;
    totinfluence : int;
  end;

  MeshDeformModifierData = packed record
    modifier       : ModifierData;
    object_        : PObject;
    defgrp_name    : array [0..63] of char;
    gridsize       : short;
    flag           : short;
    pad            : array [0..1] of short;
    bindinfluences : PMDefInfluence;
    bindoffsets    : Pint;
    bindcagecos    : Pfloat;
    totvert        : int;
    totcagevert    : int;
    dyngrid        : PMDefCell;
    dyninfluences  : PMDefInfluence;
    dynverts       : Pint;
    dyngridsize    : int;
    totinfluence   : int;
    dyncellmin     : array [0..2] of float;
    dyncellwidth   : float;
    bindmat        : array [0..3,0..3] of float;
    bindweights    : Pfloat;
    bindcos        : Pfloat;
    bindfunc       : Pointer;
  end;

  ParticleSystemModifierData = packed record
    modifier    : ModifierData;
    psys        : PParticleSystem;
    dm_final    : PDerivedMesh;
    dm_deformed : PDerivedMesh;
    totdmvert   : int;
    totdmedge   : int;
    totdmface   : int;
    flag        : short;
    pad         : short;
  end;

  ParticleInstanceModifierData = packed record
    modifier        : ModifierData;
    ob              : PObject;
    psys            : short;
    flag            : short;
    axis            : short;
    pad             : short;
    position        : float;
    random_position : float;
  end;

  ExplodeModifierData = packed record
    modifier : ModifierData;
    facepa   : Pint;
    flag     : short;
    vgroup   : short;
    protect  : float;
    uvname   : array [0..63] of char;
  end;

  MultiresModifierData = packed record
    modifier  : ModifierData;
    lvl       : char;
    sculptlvl : char;
    renderlvl : char;
    totlvl    : char;
    simple    : char;
    flags     : char;
    pad       : array [0..1] of char;
  end;

  FluidsimModifierData = packed record
    modifier    : ModifierData;
    fss         : PFluidsimSettings;
    point_cache : PPointCache;
  end;

  ShrinkwrapModifierData = packed record
    modifier      : ModifierData;
    target        : PObject;
    auxTarget     : PObject;
    vgroup_name   : array [0..63] of char;
    keepDist      : float;
    shrinkType    : short;
    shrinkOpts    : char;
    pad1          : char;
    projLimit     : float;
    projAxis      : char;
    subsurfLevels : char;
    pad           : array [0..1] of char;
  end;

  SimpleDeformModifierData = packed record
    modifier    : ModifierData;
    origin      : PObject;
    vgroup_name : array [0..63] of char;
    factor      : float;
    limit       : array [0..1] of float;
    mode        : char;
    axis        : char;
    pad         : array [0..1] of char;
  end;

  ShapeKeyModifierData = packed record
    modifier : ModifierData;
  end;

  SolidifyModifierData = packed record
    modifier      : ModifierData;
    defgrp_name   : array [0..63] of char;
    offset        : float;
    offset_fac    : float;
    offset_fac_vg : float;
    offset_clamp  : float;
    pad           : float;
    crease_inner  : float;
    crease_outer  : float;
    crease_rim    : float;
    flag          : int;
    mat_ofs       : short;
    mat_ofs_rim   : short;
  end;

  ScrewModifierData = packed record
    modifier     : ModifierData;
    ob_axis      : PObject;
    steps        : int;
    render_steps : int;
    iter         : int;
    screw_ofs    : float;
    angle        : float;
    axis         : char;
    pad          : char;
    flag         : short;
  end;

  OceanModifierData = packed record
    modifier       : ModifierData;
    ocean          : POcean;
    oceancache     : POceanCache;
    resolution     : int;
    spatial_size   : int;
    wind_velocity  : float;
    damp           : float;
    smallest_wave  : float;
    depth          : float;
    wave_alignment : float;
    wave_direction : float;
    wave_scale     : float;
    chop_amount    : float;
    foam_coverage  : float;
    time           : float;
    bakestart      : int;
    bakeend        : int;
    cachepath      : array [0..1023] of char;
    foamlayername  : array [0..63] of char;
    cached         : char;
    geometry_mode  : char;
    flag           : char;
    refresh        : char;
    repeat_x       : short;
    repeat_y       : short;
    seed           : int;
    size           : float;
    foam_fade      : float;
    pad            : int;
  end;

  WarpModifierData = packed record
    modifier       : ModifierData;
    texture        : PTex;
    map_object     : PObject;
    uvlayer_name   : array [0..63] of char;
    uvlayer_tmp    : int;
    texmapping     : int;
    object_from    : PObject;
    object_to      : PObject;
    curfalloff     : PCurveMapping;
    defgrp_name    : array [0..63] of char;
    strength       : float;
    falloff_radius : float;
    flag           : char;
    falloff_type   : char;
    pad            : array [0..5] of char;
  end;

  WeightVGEditModifierData = packed record
    modifier              : ModifierData;
    defgrp_name           : array [0..63] of char;
    edit_flags            : short;
    falloff_type          : short;
    default_weight        : float;
    cmap_curve            : PCurveMapping;
    add_threshold         : float;
    rem_threshold         : float;
    mask_constant         : float;
    mask_defgrp_name      : array [0..63] of char;
    mask_tex_use_channel  : int;
    mask_texture          : PTex;
    mask_tex_map_obj      : PObject;
    mask_tex_mapping      : int;
    mask_tex_uvlayer_name : array [0..63] of char;
    pad_i1                : int;
  end;

  WeightVGMixModifierData = packed record
    modifier              : ModifierData;
    defgrp_name_a         : array [0..63] of char;
    defgrp_name_b         : array [0..63] of char;
    default_weight_a      : float;
    default_weight_b      : float;
    mix_mode              : char;
    mix_set               : char;
    pad_c1                : array [0..5] of char;
    mask_constant         : float;
    mask_defgrp_name      : array [0..63] of char;
    mask_tex_use_channel  : int;
    mask_texture          : PTex;
    mask_tex_map_obj      : PObject;
    mask_tex_mapping      : int;
    mask_tex_uvlayer_name : array [0..63] of char;
    pad_i1                : int;
  end;

  WeightVGProximityModifierData = packed record
    modifier              : ModifierData;
    defgrp_name           : array [0..63] of char;
    proximity_mode        : int;
    proximity_flags       : int;
    proximity_ob_target   : PObject;
    mask_constant         : float;
    mask_defgrp_name      : array [0..63] of char;
    mask_tex_use_channel  : int;
    mask_texture          : PTex;
    mask_tex_map_obj      : PObject;
    mask_tex_mapping      : int;
    mask_tex_uvlayer_name : array [0..63] of char;
    min_dist              : float;
    max_dist              : float;
    falloff_type          : short;
    pad_s1                : short;
  end;

  DynamicPaintModifierData = packed record
    modifier : ModifierData;
    canvas   : PDynamicPaintCanvasSettings;
    brush    : PDynamicPaintBrushSettings;
    type_    : int;
    pad      : int;
  end;

  RemeshModifierData = packed record
    modifier    : ModifierData;
    threshold   : float;
    scale       : float;
    hermite_num : float;
    depth       : char;
    flag        : char;
    mode        : char;
    pad         : char;
  end;

  SkinModifierData = packed record
    modifier         : ModifierData;
    branch_smoothing : float;
    flag             : char;
    symmetry_axes    : char;
    pad              : array [0..1] of char;
  end;

  TriangulateModifierData = packed record
    modifier    : ModifierData;
    flag        : int;
    quad_method : int;
    ngon_method : int;
    pad         : int;
  end;

  LaplacianSmoothModifierData = packed record
    modifier      : ModifierData;
    lambda        : float;
    lambda_border : float;
    pad1          : float;
    defgrp_name   : array [0..63] of char;
    flag          : short;
    repeat_       : short;
  end;

  CorrectiveSmoothModifierData = packed record
    modifier        : ModifierData;
    bind_coords     : Pointer;
    bind_coords_num : int;
    lambda          : float;
    repeat_         : short;
    flag            : short;
    smooth_type     : char;
    rest_source     : char;
    pad             : array [0..1] of char;
    defgrp_name     : array [0..63] of char;
    delta_cache     : Pointer;
    delta_cache_num : int;
    pad2            : array [0..3] of char;
  end;

  UVWarpModifierData = packed record
    modifier     : ModifierData;
    axis_u       : char;
    axis_v       : char;
    pad          : array [0..5] of char;
    center       : array [0..1] of float;
    object_src   : PObject;
    bone_src     : array [0..63] of char;
    object_dst   : PObject;
    bone_dst     : array [0..63] of char;
    vgroup_name  : array [0..63] of char;
    uvlayer_name : array [0..63] of char;
  end;

  MeshCacheModifierData = packed record
    modifier     : ModifierData;
    flag         : char;
    type_        : char;
    time_mode    : char;
    play_mode    : char;
    forward_axis : char;
    up_axis      : char;
    flip_axis    : char;
    interp       : char;
    factor       : float;
    deform_mode  : char;
    pad          : array [0..6] of char;
    frame_start  : float;
    frame_scale  : float;
    eval_frame   : float;
    eval_time    : float;
    eval_factor  : float;
    filepath     : array [0..1023] of char;
  end;

  LaplacianDeformModifierData = packed record
    modifier        : ModifierData;
    anchor_grp_name : array [0..63] of char;
    total_verts     : int;
    repeat_         : int;
    vertexco        : Pfloat;
    cache_system    : Pvoid;
    flag            : short;
    pad             : array [0..2] of short;
  end;

  WireframeModifierData = packed record
    modifier      : ModifierData;
    defgrp_name   : array [0..63] of char;
    offset        : float;
    offset_fac    : float;
    offset_fac_vg : float;
    crease_weight : float;
    flag          : short;
    mat_ofs       : short;
    pad           : array [0..1] of short;
  end;

  DataTransferModifierData = packed record
    modifier          : ModifierData;
    ob_source         : PObject;
    data_types        : int;
    vmap_mode         : int;
    emap_mode         : int;
    lmap_mode         : int;
    pmap_mode         : int;
    map_max_distance  : float;
    map_ray_radius    : float;
    islands_precision : float;
    pad_i1            : int;
    layers_select_src : array [0..3] of int;
    layers_select_dst : array [0..3] of int;
    mix_mode          : int;
    mix_factor        : float;
    defgrp_name       : array [0..63] of char;
    flags             : int;
  end;

  NormalEditModifierData = packed record
    modifier    : ModifierData;
    defgrp_name : array [0..63] of char;
    target      : PObject;
    mode        : short;
    flag        : short;
    mix_mode    : short;
    pad         : array [0..1] of char;
    mix_factor  : float;
    offset      : array [0..2] of float;
  end;

  EditLatt = packed record
    latt    : PLattice;
    shapenr : int;
    pad     : array [0..3] of char;
  end;

  Lattice = packed record
    id       : ID;
    adt      : PAnimData;
    pntsu    : short;
    pntsv    : short;
    pntsw    : short;
    flag     : short;
    opntsu   : short;
    opntsv   : short;
    opntsw   : short;
    pad2     : short;
    typeu    : char;
    typev    : char;
    typew    : char;
    pad3     : char;
    actbp    : int;
    fu       : float;
    fv       : float;
    fw       : float;
    du       : float;
    dv       : float;
    dw       : float;
    def      : PBPoint;
    ipo      : PIpo;
    key      : PKey;
    dvert    : PMDeformVert;
    vgroup   : array [0..63] of char;
    editlatt : PEditLatt;
  end;

  bDeformGroup = packed record
    next : PbDeformGroup;
    prev : PbDeformGroup;
    name : array [0..63] of char;
    flag : char;
    pad  : array [0..6] of char;
  end;

  BoundBox = packed record
    vec  : array [0..7,0..2] of float;
    flag : int;
    pad  : int;
  end;

  LodLevel = packed record
    next         : PLodLevel;
    prev         : PLodLevel;
    source       : PObject;
    flags        : int;
    distance     : float;
    pad          : float;
    obhysteresis : int;
  end;

  bAnimVizSettings = packed record
    ghost_sf      : int;
    ghost_ef      : int;
    ghost_bc      : int;
    ghost_ac      : int;
    ghost_type    : short;
    ghost_step    : short;
    ghost_flag    : short;
    recalc        : short;
    path_type     : short;
    path_step     : short;
    path_viewflag : short;
    path_bakeflag : short;
    path_sf       : int;
    path_ef       : int;
    path_bc       : int;
    path_ac       : int;
  end;

  Object_ = packed record
    id                   : ID;
    adt                  : PAnimData;
    sculpt               : PSculptSession;
    type_                : short;
    partype              : short;
    par1                 : int;
    par2                 : int;
    par3                 : int;
    parsubstr            : array [0..63] of char;
    parent               : PObject;
    track                : PObject;
    proxy                : PObject;
    proxy_group          : PObject;
    proxy_from           : PObject;
    ipo                  : PIpo;
    bb                   : PBoundBox;
    action               : PbAction;
    poselib              : PbAction;
    pose                 : PbPose;
    data                 : Pvoid;
    gpd                  : PbGPdata;
    avs                  : bAnimVizSettings;
    mpath                : PbMotionPath;
    constraintChannels   : ListBase;
    effect               : ListBase;
    defbase              : ListBase;
    modifiers            : ListBase;
    mode                 : int;
    restore_mode         : int;
    mat                  : ^PMaterial;
    matbits              : Pchar;
    totcol               : int;
    actcol               : int;
    loc                  : array [0..2] of float;
    dloc                 : array [0..2] of float;
    orig                 : array [0..2] of float;
    size                 : array [0..2] of float;
    dsize                : array [0..2] of float;
    dscale               : array [0..2] of float;
    rot                  : array [0..2] of float;
    drot                 : array [0..2] of float;
    quat                 : array [0..3] of float;
    dquat                : array [0..3] of float;
    rotAxis              : array [0..2] of float;
    drotAxis             : array [0..2] of float;
    rotAngle             : float;
    drotAngle            : float;
    obmat                : array [0..3,0..3] of float;
    parentinv            : array [0..3,0..3] of float;
    constinv             : array [0..3,0..3] of float;
    imat                 : array [0..3,0..3] of float;
    imat_ren             : array [0..3,0..3] of float;
    lay                  : int;
    flag                 : short;
    colbits              : short;
    transflag            : short;
    protectflag          : short;
    trackflag            : short;
    upflag               : short;
    nlaflag              : short;
    scaflag              : short;
    scavisflag           : char;
    depsflag             : char;
    lastNeedMapping      : char;
    pad                  : char;
    dupon                : int;
    dupoff               : int;
    dupsta               : int;
    dupend               : int;
    mass                 : float;
    damping              : float;
    inertia              : float;
    formfactor           : float;
    rdamping             : float;
    margin               : float;
    max_vel              : float;
    min_vel              : float;
    max_angvel           : float;
    min_angvel           : float;
    obstacleRad          : float;
    step_height          : float;
    jump_speed           : float;
    fall_speed           : float;
    max_jumps            : char;
    pad2                 : array [0..2] of char;
    col_group            : short;
    col_mask             : short;
    rotmode              : short;
    boundtype            : char;
    collision_boundtype  : char;
    dtx                  : short;
    dt                   : char;
    empty_drawtype       : char;
    empty_drawsize       : float;
    dupfacesca           : float;
    prop                 : ListBase;
    sensors              : ListBase;
    controllers          : ListBase;
    actuators            : ListBase;
    sf                   : float;
    index                : short;
    actdef               : short;
    col                  : array [0..3] of float;
    gameflag             : int;
    gameflag2            : int;
    bsoft                : PBulletSoftBody;
    restrictflag         : char;
    recalc               : char;
    softflag             : short;
    anisotropicFriction  : array [0..2] of float;
    constraints          : ListBase;
    nlastrips            : ListBase;
    hooks                : ListBase;
    particlesystem       : ListBase;
    pd                   : PPartDeflect;
    soft                 : PSoftBody;
    dup_group            : PGroup;
    body_type            : char;
    shapeflag            : char;
    shapenr              : short;
    smoothresh           : float;
    fluidsimSettings     : PFluidsimSettings;
    curve_cache          : PCurveCache;
    derivedDeform        : PDerivedMesh;
    derivedFinal         : PDerivedMesh;
    lastDataMask         : uint64_t;
    customdata_mask      : uint64_t;
    state                : int;
    init_state           : int;
    gpulamp              : ListBase;
    pc_ids               : ListBase;
    duplilist            : PListBase;
    rigidbody_object     : PRigidBodyOb;
    rigidbody_constraint : PRigidBodyCon;
    ima_ofs              : array [0..1] of float;
    iuser                : PImageUser;
    lodlevels            : ListBase;
    currentlod           : PLodLevel;
    preview              : PPreviewImage;
  end;

  ObHook = packed record
    next      : PObHook;
    prev      : PObHook;
    parent    : PObject;
    parentinv : array [0..3,0..3] of float;
    mat       : array [0..3,0..3] of float;
    cent      : array [0..2] of float;
    falloff   : float;
    name      : array [0..63] of char;
    indexar   : Pint;
    totindex  : int;
    curindex  : int;
    type_     : short;
    active    : short;
    force     : float;
  end;

  DupliObject = packed record
    next            : PDupliObject;
    prev            : PDupliObject;
    ob              : PObject;
    mat             : array [0..3,0..3] of float;
    orco            : array [0..2] of float;
    uv              : array [0..1] of float;
    type_           : short;
    no_draw         : char;
    animated        : char;
    persistent_id   : array [0..7] of int;
    particle_system : PParticleSystem;
  end;

  PartDeflect = packed record
    flag           : int;
    deflect        : short;
    forcefield     : short;
    falloff        : short;
    shape          : short;
    tex_mode       : short;
    kink           : short;
    kink_axis      : short;
    zdir           : short;
    f_strength     : float;
    f_damp         : float;
    f_flow         : float;
    f_size         : float;
    f_power        : float;
    maxdist        : float;
    mindist        : float;
    f_power_r      : float;
    maxrad         : float;
    minrad         : float;
    pdef_damp      : float;
    pdef_rdamp     : float;
    pdef_perm      : float;
    pdef_frict     : float;
    pdef_rfrict    : float;
    pdef_stickness : float;
    absorption     : float;
    pdef_sbdamp    : float;
    pdef_sbift     : float;
    pdef_sboft     : float;
    clump_fac      : float;
    clump_pow      : float;
    kink_freq      : float;
    kink_shape     : float;
    kink_amp       : float;
    free_end       : float;
    tex_nabla      : float;
    tex            : PTex;
    rng            : PRNG;
    f_noise        : float;
    seed           : int;
    f_source       : PObject;
  end;

  EffectorWeights = packed record
    group          : PGroup;
    weight         : array [0..13] of float;
    global_gravity : float;
    flag           : short;
    rt             : array [0..2] of short;
    pad            : int;
  end;

  PTCacheExtra = packed record
    next    : PPTCacheExtra;
    prev    : PPTCacheExtra;
    type_   : int;
    totdata : int;
    data    : Pvoid;
  end;

  PTCacheMem = packed record
    next       : PPTCacheMem;
    prev       : PPTCacheMem;
    frame      : int;
    totpoint   : int;
    data_types : int;
    flag       : int;
    data       : array [0..7] of Pvoid;
    cur        : array [0..7] of Pvoid;
    extradata  : ListBase;
  end;

  PointCache = packed record
    next          : PPointCache;
    prev          : PPointCache;
    flag          : int;
    step          : int;
    simframe      : int;
    startframe    : int;
    endframe      : int;
    editframe     : int;
    last_exact    : int;
    last_valid    : int;
    pad           : int;
    totpoint      : int;
    index         : int;
    compression   : short;
    rt            : short;
    name          : array [0..63] of char;
    prev_name     : array [0..63] of char;
    info          : array [0..63] of char;
    path          : array [0..1023] of char;
    cached_frames : Pchar;
    mem_cache     : ListBase;
    edit          : PPTCacheEdit;
    free_edit     : Pointer;
  end;

  SBVertex = packed record
    vec : array [0..3] of float;
  end;

  BulletSoftBody = packed record
    flag                 : int;
    linStiff             : float;
    angStiff             : float;
    volume               : float;
    viterations          : int;
    piterations          : int;
    diterations          : int;
    citerations          : int;
    kSRHR_CL             : float;
    kSKHR_CL             : float;
    kSSHR_CL             : float;
    kSR_SPLT_CL          : float;
    kSK_SPLT_CL          : float;
    kSS_SPLT_CL          : float;
    kVCF                 : float;
    kDP                  : float;
    kDG                  : float;
    kLF                  : float;
    kPR                  : float;
    kVC                  : float;
    kDF                  : float;
    kMT                  : float;
    kCHR                 : float;
    kKHR                 : float;
    kSHR                 : float;
    kAHR                 : float;
    collisionflags       : int;
    numclusteriterations : int;
    welding              : float;
    margin               : float;
  end;

  SoftBody = packed record
    totpoint         : int;
    totspring        : int;
    bpoint           : PBodyPoint;
    bspring          : PBodySpring;
    pad              : char;
    msg_lock         : char;
    msg_value        : short;
    nodemass         : float;
    namedVG_Mass     : array [0..63] of char;
    grav             : float;
    mediafrict       : float;
    rklimit          : float;
    physics_speed    : float;
    goalspring       : float;
    goalfrict        : float;
    mingoal          : float;
    maxgoal          : float;
    defgoal          : float;
    vertgroup        : short;
    namedVG_Softgoal : array [0..63] of char;
    fuzzyness        : short;
    inspring         : float;
    infrict          : float;
    namedVG_Spring_K : array [0..63] of char;
    sfra             : int;
    efra             : int;
    interval         : int;
    local            : short;
    solverflags      : short;
    keys             : ^PSBVertex;
    totpointkey      : int;
    totkey           : int;
    secondspring     : float;
    colball          : float;
    balldamp         : float;
    ballstiff        : float;
    sbc_mode         : short;
    aeroedge         : short;
    minloops         : short;
    maxloops         : short;
    choke            : short;
    solver_ID        : short;
    plastic          : short;
    springpreload    : short;
    scratch          : PSBScratch;
    shearstiff       : float;
    inpush           : float;
    pointcache       : PPointCache;
    ptcaches         : ListBase;
    effector_weights : PEffectorWeights;
    lcom             : array [0..2] of float;
    lrot             : array [0..2,0..2] of float;
    lscale           : array [0..2,0..2] of float;
    last_frame       : int;
  end;

  FluidVertexVelocity = packed record
    vel : array [0..2] of float;
  end;

  FluidsimSettings = packed record
    fmd                   : PFluidsimModifierData;
    threads               : int;
    pad1                  : int;
    type_                 : short;
    show_advancedoptions  : short;
    resolutionxyz         : short;
    previewresxyz         : short;
    realsize              : float;
    guiDisplayMode        : short;
    renderDisplayMode     : short;
    viscosityValue        : float;
    viscosityMode         : short;
    viscosityExponent     : short;
    grav                  : array [0..2] of float;
    animStart             : float;
    animEnd               : float;
    bakeStart             : int;
    bakeEnd               : int;
    frameOffset           : int;
    pad2                  : int;
    gstar                 : float;
    maxRefine             : int;
    iniVelx               : float;
    iniVely               : float;
    iniVelz               : float;
    surfdataPath          : array [0..1023] of char;
    bbStart               : array [0..2] of float;
    bbSize                : array [0..2] of float;
    ipo                   : PIpo;
    typeFlags             : short;
    domainNovecgen        : char;
    volumeInitType        : char;
    partSlipValue         : float;
    generateTracers       : int;
    generateParticles     : float;
    surfaceSmoothing      : float;
    surfaceSubdivs        : int;
    flag                  : int;
    particleInfSize       : float;
    particleInfAlpha      : float;
    farFieldSize          : float;
    meshVelocities        : PFluidVertexVelocity;
    totvert               : int;
    cpsTimeStart          : float;
    cpsTimeEnd            : float;
    cpsQuality            : float;
    attractforceStrength  : float;
    attractforceRadius    : float;
    velocityforceStrength : float;
    velocityforceRadius   : float;
    lastgoodframe         : int;
    animRate              : float;
  end;

  World = packed record
    id                   : ID;
    adt                  : PAnimData;
    colormodel           : short;
    totex                : short;
    texact               : short;
    mistype              : short;
    horr                 : float;
    horg                 : float;
    horb                 : float;
    zenr                 : float;
    zeng                 : float;
    zenb                 : float;
    ambr                 : float;
    ambg                 : float;
    ambb                 : float;
    exposure             : float;
    exp                  : float;
    range                : float;
    linfac               : float;
    logfac               : float;
    gravity              : float;
    activityBoxRadius    : float;
    skytype              : short;
    mode                 : short;
    occlusionRes         : short;
    physicsEngine        : short;
    ticrate              : short;
    maxlogicstep         : short;
    physubstep           : short;
    maxphystep           : short;
    misi                 : float;
    miststa              : float;
    mistdist             : float;
    misthi               : float;
    starr                : float;
    starg                : float;
    starb                : float;
    stark                : float;
    starsize             : float;
    starmindist          : float;
    stardist             : float;
    starcolnoise         : float;
    dofsta               : short;
    dofend               : short;
    dofmin               : short;
    dofmax               : short;
    aodist               : float;
    aodistfac            : float;
    aoenergy             : float;
    aobias               : float;
    aomode               : short;
    aosamp               : short;
    aomix                : short;
    aocolor              : short;
    ao_adapt_thresh      : float;
    ao_adapt_speed_fac   : float;
    ao_approx_error      : float;
    ao_approx_correction : float;
    ao_indirect_energy   : float;
    ao_env_energy        : float;
    ao_pad2              : float;
    ao_indirect_bounces  : short;
    ao_pad               : short;
    ao_samp_method       : short;
    ao_gather_method     : short;
    ao_approx_passes     : short;
    flag                 : short;
    aosphere             : Pfloat;
    aotables             : Pfloat;
    ipo                  : PIpo;
    mtex                 : array [0..17] of PMTex;
    pr_texture           : short;
    use_nodes            : short;
    pad                  : array [0..1] of short;
    preview              : PPreviewImage;
    nodetree             : PbNodeTree;
    gpumaterial          : ListBase;
  end;

  Base = packed record
    next    : PBase;
    prev    : PBase;
    lay     : int;
    selcol  : int;
    flag    : int;
    sx      : short;
    sy      : short;
    object_ : PObject;
  end;

  AviCodecData = packed record
    lpFormat          : Pvoid;
    lpParms           : Pvoid;
    cbFormat          : int;
    cbParms           : int;
    fccType           : int;
    fccHandler        : int;
    dwKeyFrameEvery   : int;
    dwQuality         : int;
    dwBytesPerSecond  : int;
    dwFlags           : int;
    dwInterleaveEvery : int;
    pad               : int;
    avicodecname      : array [0..127] of char;
  end;

  QuicktimeCodecData = packed record
    cdParms     : Pvoid;
    pad         : Pvoid;
    cdSize      : int;
    pad2        : int;
    qtcodecname : array [0..127] of char;
  end;

  QuicktimeCodecSettings = packed record
    codecType            : int;
    codecSpatialQuality  : int;
    codec                : int;
    codecFlags           : int;
    colorDepth           : int;
    codecTemporalQuality : int;
    minSpatialQuality    : int;
    minTemporalQuality   : int;
    keyFrameRate         : int;
    bitRate              : int;
    audiocodecType       : int;
    audioSampleRate      : int;
    audioBitDepth        : short;
    audioChannels        : short;
    audioCodecFlags      : int;
    audioBitRate         : int;
    pad1                 : int;
  end;

  FFMpegCodecData = packed record
    type_           : int;
    codec           : int;
    audio_codec     : int;
    video_bitrate   : int;
    audio_bitrate   : int;
    audio_mixrate   : int;
    audio_channels  : int;
    audio_pad       : int;
    audio_volume    : float;
    gop_size        : int;
    flags           : int;
    rc_min_rate     : int;
    rc_max_rate     : int;
    rc_buffer_size  : int;
    mux_packet_size : int;
    mux_rate        : int;
    properties      : PIDProperty;
  end;

  AudioData = packed record
    mixrate        : int;
    main           : float;
    speed_of_sound : float;
    doppler_factor : float;
    distance_model : int;
    flag           : short;
    pad            : short;
    volume         : float;
    pad2           : float;
  end;

  FreestyleConfig = packed record
    modules              : ListBase;
    mode                 : int;
    raycasting_algorithm : int;
    flags                : int;
    sphere_radius        : float;
    dkr_epsilon          : float;
    crease_angle         : float;
    linesets             : ListBase;
  end;


  SceneRenderLayer = packed record
    next                 : PSceneRenderLayer;
    prev                 : PSceneRenderLayer;
    name                 : array [0..63] of char;
    mat_override         : PMaterial;
    light_override       : PGroup;
    lay                  : int;
    lay_zmask            : int;
    lay_exclude          : int;
    layflag              : int;
    passflag             : int;
    pass_xor             : int;
    samples              : int;
    pass_alpha_threshold : float;
    freestyleConfig      : FreestyleConfig;
  end;

  SceneRenderView = packed record
    next     : PSceneRenderView;
    prev     : PSceneRenderView;
    name     : array [0..63] of char;
    suffix   : array [0..63] of char;
    viewflag : int;
    pad      : array [0..1] of int;
    pad2     : array [0..3] of char;
  end;

  Stereo3dFormat = packed record
    flag           : short;
    display_mode   : char;
    anaglyph_type  : char;
    interlace_type : char;
    pad            : array [0..2] of char;
  end;

  ColorManagedViewSettings = packed record
    flag           : int;
    pad            : int;
    look           : array [0..63] of char;
    view_transform : array [0..63] of char;
    exposure       : float;
    gamma          : float;
    curve_mapping  : PCurveMapping;
    pad2           : Pvoid;
  end;

  ColorManagedDisplaySettings = packed record
    display_device : array [0..63] of char;
  end;

  ImageFormatData = packed record
    imtype           : char;
    depth            : char;
    planes           : char;
    flag             : char;
    quality          : char;
    compress         : char;
    exr_codec        : char;
    cineon_flag      : char;
    cineon_white     : short;
    cineon_black     : short;
    cineon_gamma     : float;
    jp2_flag         : char;
    jp2_codec        : char;
    tiff_codec       : char;
    pad              : array [0..3] of char;
    views_format     : char;
    stereo3d_format  : Stereo3dFormat;
    view_settings    : ColorManagedViewSettings;
    display_settings : ColorManagedDisplaySettings;
  end;

  BakeData = packed record
    im_format      : ImageFormatData;
    filepath       : array [0..1023] of char;
    width          : short;
    height         : short;
    margin         : short;
    flag           : short;
    cage_extrusion : float;
    pass_filter    : int;
    normal_swizzle : array [0..2] of char;
    normal_space   : char;
    save_mode      : char;
    pad            : array [0..2] of char;
    cage           : array [0..63] of char;
  end;

  CurveMap = packed record
    totpoint       : short;
    flag           : short;
    range          : float;
    mintable       : float;
    maxtable       : float;
    ext_in         : array [0..1] of float;
    ext_out        : array [0..1] of float;
    curve          : PCurveMapPoint;
    table          : PCurveMapPoint;
    premultable    : PCurveMapPoint;
    premul_ext_in  : array [0..1] of float;
    premul_ext_out : array [0..1] of float;
  end;

  CurveMapping = packed record
    flag              : int;
    cur               : int;
    preset            : int;
    changed_timestamp : int;
    curr              : rctf;
    clipr             : rctf;
    cm                : array [0..3] of CurveMap;
    black             : array [0..2] of float;
    white             : array [0..2] of float;
    bwmul             : array [0..2] of float;
    sample            : array [0..2] of float;
  end;


  RenderData = packed record
    im_format                 : ImageFormatData;
    avicodecdata              : PAviCodecData;
    qtcodecdata               : PQuicktimeCodecData;
    qtcodecsettings           : QuicktimeCodecSettings;
    ffcodecdata               : FFMpegCodecData;
    cfra                      : int;
    sfra                      : int;
    efra                      : int;
    subframe                  : float;
    psfra                     : int;
    pefra                     : int;
    images                    : int;
    framapto                  : int;
    flag                      : short;
    threads                   : short;
    framelen                  : float;
    blurfac                   : float;
    edgeR                     : float;
    edgeG                     : float;
    edgeB                     : float;
    fullscreen                : short;
    xplay                     : short;
    yplay                     : short;
    freqplay                  : short;
    depth                     : short;
    attrib                    : short;
    frame_step                : int;
    stereomode                : short;
    dimensionspreset          : short;
    filtertype                : short;
    size                      : short;
    maximsize                 : short;
    pad6                      : short;
    xsch                      : int;
    ysch                      : int;
    xparts                    : short;
    yparts                    : short;
    tilex                     : int;
    tiley                     : int;
    planes                    : short;
    imtype                    : short;
    subimtype                 : short;
    quality                   : short;
    displaymode               : short;
    use_lock_interface        : char;
    pad7                      : char;
    scemode                   : int;
    mode                      : int;
    raytrace_options          : int;
    raytrace_structure        : short;
    pad1                      : short;
    ocres                     : short;
    pad4                      : short;
    alphamode                 : short;
    osa                       : short;
    frs_sec                   : short;
    edgeint                   : short;
    safety                    : rctf;
    border                    : rctf;
    disprect                  : rcti;
    layers                    : ListBase;
    actlay                    : short;
    mblur_samples             : short;
    xasp                      : float;
    yasp                      : float;
    frs_sec_base              : float;
    gauss                     : float;
    color_mgt_flag            : int;
    postgamma                 : float;
    posthue                   : float;
    postsat                   : float;
    dither_intensity          : float;
    bake_osa                  : short;
    bake_filter               : short;
    bake_mode                 : short;
    bake_flag                 : short;
    bake_normal_space         : short;
    bake_quad_split           : short;
    bake_maxdist              : float;
    bake_biasdist             : float;
    bake_samples              : short;
    bake_pad                  : short;
    bake_user_scale           : float;
    bake_pad1                 : float;
    pic                       : array [0..1023] of char;
    stamp                     : int;
    stamp_font_id             : short;
    pad3                      : short;
    stamp_udata               : array [0..767] of char;
    fg_stamp                  : array [0..3] of float;
    bg_stamp                  : array [0..3] of float;
    seq_prev_type             : char;
    seq_rend_type             : char;
    seq_flag                  : char;
    pad5                      : array [0..4] of char;
    simplify_flag             : int;
    simplify_subsurf          : short;
    simplify_subsurf_render   : short;
    simplify_shadowsamples    : short;
    pad9                      : short;
    simplify_particles        : float;
    simplify_particles_render : float;
    simplify_aosss            : float;
    cineonwhite               : short;
    cineonblack               : short;
    cineongamma               : float;
    jp2_preset                : short;
    jp2_depth                 : short;
    rpad3                     : int;
    domeres                   : short;
    domemode                  : short;
    domeangle                 : short;
    dometilt                  : short;
    domeresbuf                : float;
    pad2                      : float;
    dometext                  : PText;
    line_thickness_mode       : int;
    unit_line_thickness       : float;
    engine                    : array [0..31] of char;
    bake                      : BakeData;
    preview_start_resolution  : int;
    debug_pass_type           : short;
    pad                       : short;
    views                     : ListBase;
    actview                   : short;
    views_format              : short;
    pad8                      : array [0..1] of short;
    mblur_shutter_curve       : CurveMapping;
  end;

  RenderProfile = packed record
    next              : PRenderProfile;
    prev              : PRenderProfile;
    name              : array [0..31] of char;
    particle_perc     : short;
    subsurf_max       : short;
    shadbufsample_max : short;
    pad1              : short;
    ao_error          : float;
    pad2              : float;
  end;

  GameDome = packed record
    res      : short;
    mode     : short;
    angle    : short;
    tilt     : short;
    resbuf   : float;
    pad2     : float;
    warptext : PText;
  end;

  GameFraming = packed record
    col   : array [0..2] of float;
    type_ : char;
    pad1  : char;
    pad2  : char;
    pad3  : char;
  end;

  RecastData = packed record
    cellsize             : float;
    cellheight           : float;
    agentmaxslope        : float;
    agentmaxclimb        : float;
    agentheight          : float;
    agentradius          : float;
    edgemaxlen           : float;
    edgemaxerror         : float;
    regionminsize        : float;
    regionmergesize      : float;
    vertsperpoly         : int;
    detailsampledist     : float;
    detailsamplemaxerror : float;
    pad1                 : short;
    pad2                 : short;
  end;

  GameData = packed record
    framing               : GameFraming;
    playerflag            : short;
    xplay                 : short;
    yplay                 : short;
    freqplay              : short;
    depth                 : short;
    attrib                : short;
    rt1                   : short;
    rt2                   : short;
    aasamples             : short;
    pad4                  : array [0..2] of short;
    dome                  : GameDome;
    stereoflag            : short;
    stereomode            : short;
    eyeseparation         : float;
    recastData            : RecastData;
    gravity               : float;
    activityBoxRadius     : float;
    flag                  : int;
    mode                  : short;
    matmode               : short;
    occlusionRes          : short;
    physicsEngine         : short;
    exitkey               : short;
    vsync                 : short;
    ticrate               : short;
    maxlogicstep          : short;
    physubstep            : short;
    maxphystep            : short;
    obstacleSimulation    : short;
    raster_storage        : short;
    levelHeight           : float;
    deactivationtime      : float;
    lineardeactthreshold  : float;
    angulardeactthreshold : float;
    lodflag               : short;
    pad2                  : short;
    scehysteresis         : int;
    pad5                  : int;
  end;

  TimeMarker = packed record
    next   : PTimeMarker;
    prev   : PTimeMarker;
    frame  : int;
    name   : array [0..63] of char;
    flag   : int;
    camera : PObject;
  end;

  Paint = packed record
    brush             : PBrush;
    palette           : PPalette;
    cavity_curve      : PCurveMapping;
    paint_cursor      : Pvoid;
    paint_cursor_col  : array [0..3] of char;
    flags             : int;
    num_input_samples : int;
    symmetry_flags    : int;
    tile_offset       : array [0..2] of float;
    pad2              : int;
  end;

  ImagePaintSettings = packed record
    paint            : Paint;
    flag             : short;
    missing_data     : short;
    seam_bleed       : short;
    normal_angle     : short;
    screen_grab_size : array [0..1] of short;
    mode             : int;
    paintcursor      : Pvoid;
    stencil          : PImage;
    clone            : PImage;
    canvas           : PImage;
    stencil_col      : array [0..2] of float;
    dither           : float;
  end;

  ParticleBrushData = packed record
    size     : short;
    step     : short;
    invert   : short;
    count    : short;
    flag     : int;
    strength : float;
  end;

  ParticleEditSettings = packed record
    flag         : short;
    totrekey     : short;
    totaddkey    : short;
    brushtype    : short;
    brush        : array [0..6] of ParticleBrushData;
    paintcursor  : Pvoid;
    emitterdist  : float;
    rt           : float;
    selectmode   : int;
    edittype     : int;
    draw_step    : int;
    fade_frames  : int;
    scene        : PScene;
    object_      : PObject;
    shape_object : PObject;
  end;

  Sculpt = packed record
    paint                : Paint;
    flags                : int;
    radial_symm          : array [0..2] of int;
    detail_size          : float;
    symmetrize_direction : int;
    gravity_factor       : float;
    constant_detail      : float;
    detail_percent       : float;
    pad                  : float;
    gravity_object       : PObject;
  end;

  UvSculpt = packed record
    paint : Paint;
  end;

  VPaint = packed record
    paint       : Paint;
    flag        : short;
    pad         : short;
    tot         : int;
    vpaint_prev : Pint;
    wpaint_prev : PMDeformVert;
    paintcursor : Pvoid;
  end;

  GP_EditBrush_Data = packed record
    size     : short;
    flag     : short;
    strength : float;
  end;

  GP_BrushEdit_Settings = packed record
    brush       : array [0..9] of GP_EditBrush_Data;
    paintcursor : Pvoid;
    brushtype   : int;
    flag        : int;
  end;

  TransformOrientation = packed record
    next : PTransformOrientation;
    prev : PTransformOrientation;
    name : array [0..63] of char;
    mat  : array [0..2,0..2] of float;
    pad  : int;
  end;

  UnifiedPaintSettings = packed record
    size                   : int;
    unprojected_radius     : float;
    alpha                  : float;
    weight                 : float;
    rgb                    : array [0..2] of float;
    secondary_rgb          : array [0..2] of float;
    flag                   : int;
    last_rake              : array [0..1] of float;
    last_rake_angle        : float;
    last_stroke_valid      : int;
    average_stroke_accum   : array [0..2] of float;
    average_stroke_counter : int;
    brush_rotation         : float;
    brush_rotation_sec     : float;
    anchored_size          : int;
    overlap_factor         : float;
    draw_inverted          : char;
    stroke_active          : char;
    draw_anchored          : char;
    do_linear_conversion   : char;
    last_location          : array [0..2] of float;
    last_hit               : int;
    anchored_initial_mouse : array [0..1] of float;
    pixel_radius           : float;
    size_pressure_value    : float;
    tex_mouse              : array [0..1] of float;
    mask_tex_mouse         : array [0..1] of float;
    colorspace             : PColorSpace;
  end;

  MeshStatVis = packed record
    type_             : char;
    _pad1             : array [0..1] of char;
    overhang_axis     : char;
    overhang_min      : float;
    overhang_max      : float;
    thickness_min     : float;
    thickness_max     : float;
    thickness_samples : char;
    _pad2             : array [0..2] of char;
    distort_min       : float;
    distort_max       : float;
    sharp_min         : float;
    sharp_max         : float;
  end;

  ToolSettings = packed record
    vpaint                                  : PVPaint;
    wpaint                                  : PVPaint;
    sculpt                                  : PSculpt;
    uvsculpt                                : PUvSculpt;
    vgroup_weight                           : float;
    doublimit                               : float;
    normalsize                              : float;
    automerge                               : short;
    selectmode                              : short;
    unwrapper                               : char;
    uvcalc_flag                             : char;
    uv_flag                                 : char;
    uv_selectmode                           : char;
    uvcalc_margin                           : float;
    autoik_chainlen                         : short;
    gpencil_flags                           : char;
    gpencil_src                             : char;
    gpencil_v3d_align                       : char;
    gpencil_v2d_align                       : char;
    gpencil_seq_align                       : char;
    gpencil_ima_align                       : char;
    gp_sculpt                               : GP_BrushEdit_Settings;
    imapaint                                : ImagePaintSettings;
    particle                                : ParticleEditSettings;
    proportional_size                       : float;
    select_thresh                           : float;
    autokey_mode                            : short;
    autokey_flag                            : short;
    multires_subdiv_type                    : char;
    pad3                                    : array [0..0] of char;
    skgen_resolution                        : short;
    skgen_threshold_internal                : float;
    skgen_threshold_external                : float;
    skgen_length_ratio                      : float;
    skgen_length_limit                      : float;
    skgen_angle_limit                       : float;
    skgen_correlation_limit                 : float;
    skgen_symmetry_limit                    : float;
    skgen_retarget_angle_weight             : float;
    skgen_retarget_length_weight            : float;
    skgen_retarget_distance_weight          : float;
    skgen_options                           : short;
    skgen_postpro                           : char;
    skgen_postpro_passes                    : char;
    skgen_subdivisions                      : array [0..2] of char;
    skgen_multi_level                       : char;
    skgen_template                          : PObject;
    bone_sketching                          : char;
    bone_sketching_convert                  : char;
    skgen_subdivision_number                : char;
    skgen_retarget_options                  : char;
    skgen_retarget_roll                     : char;
    skgen_side_string                       : array [0..7] of char;
    skgen_num_string                        : array [0..7] of char;
    edge_mode                               : char;
    edge_mode_live_unwrap                   : char;
    snap_mode                               : char;
    snap_node_mode                          : char;
    snap_uv_mode                            : char;
    snap_flag                               : short;
    snap_target                             : short;
    proportional                            : short;
    prop_mode                               : short;
    proportional_objects                    : char;
    proportional_mask                       : char;
    proportional_action                     : char;
    proportional_fcurve                     : char;
    lock_markers                            : char;
    pad4                                    : array [0..4] of char;
    auto_normalize                          : char;
    multipaint                              : char;
    weightuser                              : char;
    vgroupsubset                            : char;
    use_uv_sculpt                           : int;
    uv_sculpt_settings                      : int;
    uv_sculpt_tool                          : int;
    uv_relax_method                         : int;
    sculpt_paint_settings                   : short;
    pad5                                    : short;
    sculpt_paint_unified_size               : int;
    sculpt_paint_unified_unprojected_radius : float;
    sculpt_paint_unified_alpha              : float;
    unified_paint_settings                  : UnifiedPaintSettings;
    statvis                                 : MeshStatVis;
  end;

  bStats = packed record
    totobj      : int;
    totlamp     : int;
    totobjsel   : int;
    totcurve    : int;
    totmesh     : int;
    totarmature : int;
    totvert     : int;
    totface     : int;
  end;

  UnitSettings = packed record
    scale_length    : float;
    system          : char;
    system_rotation : char;
    flag            : short;
  end;

  PhysicsSettings = packed record
    gravity          : array [0..2] of float;
    flag             : int;
    quick_cache_step : int;
    rt               : int;
  end;

  DisplaySafeAreas = packed record
    title         : array [0..1] of float;
    action        : array [0..1] of float;
    title_center  : array [0..1] of float;
    action_center : array [0..1] of float;
  end;

  Scene = packed record
    id_                           : ID;
    adt                           : PAnimData;
    camera                        : PObject;
    world                         : PWorld;
    set_                          : PScene;
    base                          : ListBase;
    basact                        : PBase;
    obedit                        : PObject;
    cursor                        : array [0..2] of float;
    twcent                        : array [0..2] of float;
    twmin                         : array [0..2] of float;
    twmax                         : array [0..2] of float;
    lay                           : int;
    layact                        : int;
    lay_updated                   : int;
    flag                          : short;
    use_nodes                     : char;
    pad                           : array [0..0] of char;
    nodetree                      : PbNodeTree;
    ed                            : PEditing;
    toolsettings                  : PToolSettings;
    stats                         : PSceneStats;
    safe_areas                    : DisplaySafeAreas;
    r                             : RenderData;
    audio                         : AudioData;
    markers                       : ListBase;
    transform_spaces              : ListBase;
    sound_scene                   : Pvoid;
    playback_handle               : Pvoid;
    sound_scrub_handle            : Pvoid;
    speaker_handles               : Pvoid;
    fps_info                      : Pvoid;
    depsgraph                     : PDepsgraph;
    pad1                          : Pvoid;
    theDag                        : PDagForest;
    dagflags                      : short;
    pad3                          : short;
    active_keyingset              : int;
    keyingsets                    : ListBase;
    framing                       : GameFraming;
    gm                            : GameData;
    unit_                         : UnitSettings;
    gpd                           : PbGPdata;
    physics_settings              : PhysicsSettings;
    clip                          : PMovieClip;
    customdata_mask               : uint64_t;
    customdata_mask_modal         : uint64_t;
    view_settings                 : ColorManagedViewSettings;
    display_settings              : ColorManagedDisplaySettings;
    sequencer_colorspace_settings : ColorManagedColorspaceSettings;
    rigidbody_world               : PRigidBodyWorld;
    preview                       : PPreviewImage;
  end;

  MovieClipUser = packed record
    framenr     : int;
    render_size : short;
    render_flag : short;
  end;


  BGpic = packed record
    next     : PBGpic;
    prev     : PBGpic;
    ima      : PImage;
    iuser    : ImageUser;
    clip     : PMovieClip;
    cuser    : MovieClipUser;
    xof      : float;
    yof      : float;
    size     : float;
    blend    : float;
    rotation : float;
    view     : short;
    flag     : short;
    source   : short;
    pad      : array [0..5] of char;
  end;

  RegionView3D = packed record
    winmat          : array [0..3,0..3] of float;
    viewmat         : array [0..3,0..3] of float;
    viewinv         : array [0..3,0..3] of float;
    persmat         : array [0..3,0..3] of float;
    persinv         : array [0..3,0..3] of float;
    viewcamtexcofac : array [0..3] of float;
    viewmatob       : array [0..3,0..3] of float;
    persmatob       : array [0..3,0..3] of float;
    clip            : array [0..5,0..3] of float;
    clip_local      : array [0..5,0..3] of float;
    clipbb          : PBoundBox;
    localvd         : PRegionView3D;
    render_engine   : PRenderEngine;
    depths          : PViewDepths;
    gpuoffscreen    : Pvoid;
    sms             : PSmoothView3DStore;
    smooth_timer    : PwmTimer;
    twmat           : array [0..3,0..3] of float;
    viewquat        : array [0..3] of float;
    dist            : float;
    camdx           : float;
    camdy           : float;
    pixsize         : float;
    ofs             : array [0..2] of float;
    camzoom         : float;
    is_persp        : char;
    persp           : char;
    view            : char;
    viewlock        : char;
    viewlock_quad   : char;
    pad             : array [0..2] of char;
    ofs_lock        : array [0..1] of float;
    twdrawflag      : short;
    rflag           : short;
    lviewquat       : array [0..3] of float;
    lpersp          : short;
    lview           : short;
    gridview        : float;
    tw_idot         : array [0..2] of float;
    rot_angle       : float;
    rot_axis        : array [0..2] of float;
    compositor      : PGPUFX;
  end;

  View3D = packed record
    next                        : PSpaceLink;
    prev                        : PSpaceLink;
    regionbase                  : ListBase;
    spacetype                   : int;
    blockscale                  : float;
    blockhandler                : array [0..7] of short;
    viewquat                    : array [0..3] of float;
    dist                        : float;
    bundle_size                 : float;
    bundle_drawtype             : char;
    pad                         : array [0..2] of char;
    lay_prev                    : int;
    lay_used                    : int;
    persp                       : short;
    view                        : short;
    camera                      : PObject;
    ob_centre                   : PObject;
    render_border               : rctf;
    bgpicbase                   : ListBase;
    bgpic                       : PBGpic;
    localvd                     : PView3D;
    ob_centre_bone              : array [0..63] of char;
    lay                         : int;
    layact                      : int;
    drawtype                    : short;
    ob_centre_cursor            : short;
    scenelock                   : short;
    around                      : short;
    flag                        : short;
    flag2                       : short;
    lens                        : float;
    grid                        : float;
    near                        : float;
    far                         : float;
    ofs                         : array [0..2] of float;
    cursor                      : array [0..2] of float;
    matcap_icon                 : short;
    gridlines                   : short;
    gridsubdiv                  : short;
    gridflag                    : char;
    twtype                      : char;
    twmode                      : char;
    twflag                      : char;
    flag3                       : short;
    afterdraw_transp            : ListBase;
    afterdraw_xray              : ListBase;
    afterdraw_xraytransp        : ListBase;
    zbuf                        : char;
    transp                      : char;
    xray                        : char;
    multiview_eye               : char;
    pad3                        : array [0..3] of char;
    fx_settings                 : GPUFXSettings;
    properties_storage          : Pvoid;
    defmaterial                 : PMaterial;
    gpd                         : PbGPdata;
    stereo3d_flag               : short;
    stereo3d_camera             : char;
    pad4                        : char;
    stereo3d_convergence_factor : float;
    stereo3d_volume_alpha       : float;
    stereo3d_convergence_alpha  : float;
  end;

  View2D = packed record
    tot          : rctf;
    cur          : rctf;
    vert         : rcti;
    hor          : rcti;
    mask         : rcti;
    min          : array [0..1] of float;
    max          : array [0..1] of float;
    minzoom      : float;
    maxzoom      : float;
    scroll       : short;
    scroll_ui    : short;
    keeptot      : short;
    keepzoom     : short;
    keepofs      : short;
    flag         : short;
    align        : short;
    winx         : short;
    winy         : short;
    oldwinx      : short;
    oldwiny      : short;
    around       : short;
    tab_offset   : Pfloat;
    tab_num      : int;
    tab_cur      : int;
    sms          : PSmoothView2DStore;
    smooth_timer : PwmTimer;
  end;

  SpaceLink = packed record
    next         : PSpaceLink;
    prev         : PSpaceLink;
    regionbase   : ListBase;
    spacetype    : int;
    blockscale   : float;
    blockhandler : array [0..7] of short;
  end;

  SpaceInfo = packed record
    next         : PSpaceLink;
    prev         : PSpaceLink;
    regionbase   : ListBase;
    spacetype    : int;
    blockscale   : float;
    blockhandler : array [0..7] of short;
    rpt_mask     : char;
    pad          : array [0..6] of char;
  end;

  SpaceButs = packed record
    next                 : PSpaceLink;
    prev                 : PSpaceLink;
    regionbase           : ListBase;
    spacetype            : int;
    blockscale           : float;
    blockhandler         : array [0..7] of short;
    v2d                  : View2D;
    mainb                : short;
    mainbo               : short;
    mainbuser            : short;
    re_align             : short;
    align                : short;
    preview              : short;
    texture_context      : short;
    texture_context_prev : short;
    flag                 : char;
    pad                  : array [0..6] of char;
    path                 : Pvoid;
    pathflag             : int;
    dataicon             : int;
    pinid                : PID;
    texuser              : Pvoid;
  end;

  TreeStoreElem = packed record
    type_ : short;
    nr    : short;
    flag  : short;
    used  : short;
    id    : PID;
  end;

  SpaceOops = packed record
    next          : PSpaceLink;
    prev          : PSpaceLink;
    regionbase    : ListBase;
    spacetype     : int;
    blockscale    : float;
    blockhandler  : array [0..7] of short;
    v2d           : View2D;
    tree          : ListBase;
    treestore     : PBLI_mempool;
    search_string : array [0..31] of char;
    search_tse    : TreeStoreElem;
    flag          : short;
    outlinevis    : short;
    storeflag     : short;
    search_flags  : short;
    treehash      : Pvoid;
  end;

  SpaceIpo = packed record
    next         : PSpaceLink;
    prev         : PSpaceLink;
    regionbase   : ListBase;
    spacetype    : int;
    blockscale   : float;
    blockhandler : array [0..7] of short;
    v2d          : View2D;
    ads          : PbDopeSheet;
    ghostCurves  : ListBase;
    mode         : short;
    autosnap     : short;
    flag         : int;
    cursorTime   : float;
    cursorVal    : float;
    around       : int;
    pad          : int;
  end;

  SpaceNla = packed record
    next         : PSpaceLink;
    prev         : PSpaceLink;
    regionbase   : ListBase;
    spacetype    : int;
    blockscale   : float;
    blockhandler : array [0..7] of short;
    autosnap     : short;
    flag         : short;
    pad          : int;
    ads          : PbDopeSheet;
    v2d          : View2D;
  end;

  SpaceTimeCache = packed record
    next   : PSpaceTimeCache;
    prev   : PSpaceTimeCache;
    array_ : Pfloat;
  end;

  SpaceTime = packed record
    next          : PSpaceLink;
    prev          : PSpaceLink;
    regionbase    : ListBase;
    spacetype     : int;
    blockscale    : float;
    v2d           : View2D;
    caches        : ListBase;
    cache_display : int;
    flag          : int;
  end;

  SequencerScopes = packed record
    reference_ibuf    : PImBuf;
    zebra_ibuf        : PImBuf;
    waveform_ibuf     : PImBuf;
    sep_waveform_ibuf : PImBuf;
    vector_ibuf       : PImBuf;
    histogram_ibuf    : PImBuf;
  end;

  SpaceSeq = packed record
    next          : PSpaceLink;
    prev          : PSpaceLink;
    regionbase    : ListBase;
    spacetype     : int;
    blockscale    : float;
    blockhandler  : array [0..7] of short;
    v2d           : View2D;
    xof           : float;
    yof           : float;
    mainb         : short;
    render_size   : short;
    chanshown     : short;
    zebra         : short;
    flag          : int;
    zoom          : float;
    view          : int;
    overlay_type  : int;
    draw_flag     : int;
    pad           : int;
    gpd           : PbGPdata;
    scopes        : SequencerScopes;
    multiview_eye : char;
    pad2          : array [0..6] of char;
  end;

  MaskSpaceInfo = packed record
    mask         : PMask;
    draw_flag    : char;
    draw_type    : char;
    overlay_mode : char;
    pad3         : array [0..4] of char;
  end;

  FileSelectParams = packed record
    title           : array [0..95] of char;
    dir             : array [0..1089] of char;
    pad_c1          : array [0..1] of char;
    file_           : array [0..255] of char;
    renamefile      : array [0..255] of char;
    renameedit      : array [0..255] of char;
    filter_glob     : array [0..255] of char;
    filter_search   : array [0..63] of char;
    filter_id       : int;
    active_file     : int;
    highlight_file  : int;
    sel_first       : int;
    sel_last        : int;
    thumbnail_size  : short;
    pad             : short;
    type_           : short;
    flag            : short;
    sort            : short;
    display         : short;
    filter          : int;
    recursion_level : short;
    f_fp            : short;
    fp_str          : array [0..7] of char;
  end;

  SpaceFile = packed record
    next               : PSpaceLink;
    prev               : PSpaceLink;
    regionbase         : ListBase;
    spacetype          : int;
    scroll_offset      : int;
    params             : PFileSelectParams;
    files              : PFileList;
    folders_prev       : PListBase;
    folders_next       : PListBase;
    op                 : PwmOperator;
    smoothscroll_timer : PwmTimer;
    previews_timer     : PwmTimer;
    layout             : PFileLayout;
    recentnr           : short;
    bookmarknr         : short;
    systemnr           : short;
    system_bookmarknr  : short;
  end;

  FSMenuEntry = packed record
    next  : PFSMenuEntry;
    path  : Pchar;
    name  : array [0..255] of char;
    save  : short;
    valid : short;
    pad   : array [0..1] of short;
  end;

  AssetUUID = packed record
    uuid_asset    : array [0..3] of int;
    uuid_variant  : array [0..3] of int;
    uuid_revision : array [0..3] of int;
  end;

  AssetUUIDList = packed record
    uuids     : PAssetUUID;
    nbr_uuids : int;
    pad       : int;
  end;

  FileDirEntryRevision = packed record
    next     : PFileDirEntryRevision;
    prev     : PFileDirEntryRevision;
    comment  : Pchar;
    pad      : Pvoid;
    uuid     : array [0..3] of int;
    size     : uint64_t;
    time     : int64_t;
    size_str : array [0..15] of char;
    time_str : array [0..7] of char;
    date_str : array [0..15] of char;
  end;

  FileDirEntryVariant = packed record
    next          : PFileDirEntryVariant;
    prev          : PFileDirEntryVariant;
    uuid          : array [0..3] of int;
    name          : Pchar;
    description   : Pchar;
    revisions     : ListBase;
    nbr_revisions : int;
    act_revision  : int;
  end;

  FileDirEntry = packed record
    next         : PFileDirEntry;
    prev         : PFileDirEntry;
    uuid         : array [0..3] of int;
    name         : Pchar;
    description  : Pchar;
    entry        : PFileDirEntryRevision;
    typeflag     : int;
    blentype     : int;
    relpath      : Pchar;
    poin         : Pvoid;
    image        : PImBuf;
    tags         : ^Pchar;
    nbr_tags     : int;
    status       : short;
    flags        : short;
    variants     : ListBase;
    nbr_variants : int;
    act_variant  : int;
  end;

  FileDirEntryArr = packed record
    entries              : ListBase;
    nbr_entries          : int;
    nbr_entries_filtered : int;
    entry_idx_start      : int;
    entry_idx_end        : int;
    root                 : array [0..1023] of char;
  end;

  Histogram = packed record
    channels     : int;
    x_resolution : int;
    data_luma    : array [0..255] of float;
    data_r       : array [0..255] of float;
    data_g       : array [0..255] of float;
    data_b       : array [0..255] of float;
    data_a       : array [0..255] of float;
    xmax         : float;
    ymax         : float;
    mode         : short;
    flag         : short;
    height       : int;
    co           : array [0..1,0..1] of float;
  end;

  Scopes = packed record
    ok              : int;
    sample_full     : int;
    sample_lines    : int;
    accuracy        : float;
    wavefrm_mode    : int;
    wavefrm_alpha   : float;
    wavefrm_yfac    : float;
    wavefrm_height  : int;
    vecscope_alpha  : float;
    vecscope_height : int;
    minmax          : array [0..2,0..1] of float;
    hist            : Histogram;
    waveform_1      : Pfloat;
    waveform_2      : Pfloat;
    waveform_3      : Pfloat;
    vecscope        : Pfloat;
    waveform_tot    : int;
    pad             : int;
  end;


  SpaceImage = packed record
    next             : PSpaceLink;
    prev             : PSpaceLink;
    regionbase       : ListBase;
    spacetype        : int;
    flag             : int;
    image            : PImage;
    iuser            : ImageUser;
    cumap            : PCurveMapping;
    scopes           : Scopes;
    sample_line_hist : Histogram;
    gpd              : PbGPdata;
    cursor           : array [0..1] of float;
    xof              : float;
    yof              : float;
    zoom             : float;
    centx            : float;
    centy            : float;
    mode             : char;
    pin              : char;
    pad              : short;
    curtile          : short;
    lock             : short;
    dt_uv            : char;
    sticky           : char;
    dt_uvstretch     : char;
    around           : char;
    mask_info        : MaskSpaceInfo;
  end;

  SpaceText = packed record
    next          : PSpaceLink;
    prev          : PSpaceLink;
    regionbase    : ListBase;
    spacetype     : int;
    blockscale    : float;
    blockhandler  : array [0..7] of short;
    text          : PText;
    top           : int;
    viewlines     : int;
    flags         : short;
    menunr        : short;
    lheight       : short;
    cwidth        : char;
    linenrs_tot   : char;
    left          : int;
    showlinenrs   : int;
    tabnumber     : int;
    showsyntax    : short;
    line_hlight   : short;
    overwrite     : short;
    live_edit     : short;
    pix_per_line  : float;
    txtscroll     : rcti;
    txtbar        : rcti;
    wordwrap      : int;
    doplugins     : int;
    findstr       : array [0..255] of char;
    replacestr    : array [0..255] of char;
    margin_column : short;
    lheight_dpi   : short;
    pad           : array [0..3] of char;
    drawcache     : Pvoid;
    scroll_accum  : array [0..1] of float;
  end;

  Script = packed record
    id                 : ID;
    py_draw            : Pvoid;
    py_event           : Pvoid;
    py_button          : Pvoid;
    py_browsercallback : Pvoid;
    py_globaldict      : Pvoid;
    flags              : int;
    lastspace          : int;
    scriptname         : array [0..1023] of char;
    scriptarg          : array [0..255] of char;
  end;

  SpaceScript = packed record
    next       : PSpaceLink;
    prev       : PSpaceLink;
    regionbase : ListBase;
    spacetype  : int;
    blockscale : float;
    script     : PScript;
    flags      : short;
    menunr     : short;
    pad1       : int;
    but_refs   : Pvoid;
  end;

  bNodeInstanceKey = packed record
    value : int;
  end;


  bNodeTreePath = packed record
    next        : PbNodeTreePath;
    prev        : PbNodeTreePath;
    nodetree    : PbNodeTree;
    parent_key  : bNodeInstanceKey;
    pad         : int;
    view_center : array [0..1] of float;
    node_name   : array [0..63] of char;
  end;

  SpaceNode = packed record
    next           : PSpaceLink;
    prev           : PSpaceLink;
    regionbase     : ListBase;
    spacetype      : int;
    blockscale     : float;
    blockhandler   : array [0..7] of short;
    v2d            : View2D;
    id             : PID;
    from           : PID;
    flag           : short;
    pad1           : short;
    aspect         : float;
    pad2           : float;
    xof            : float;
    yof            : float;
    zoom           : float;
    cursor         : array [0..1] of float;
    treepath       : ListBase;
    nodetree       : PbNodeTree;
    edittree       : PbNodeTree;
    tree_idname    : array [0..63] of char;
    treetype       : int;
    pad3           : int;
    texfrom        : short;
    shaderfrom     : short;
    recalc         : short;
    insert_ofs_dir : char;
    pad4           : char;
    linkdrag       : ListBase;
    iofsd          : PNodeInsertOfsData;
    gpd            : PbGPdata;
  end;

  SpaceLogic = packed record
    next         : PSpaceLink;
    prev         : PSpaceLink;
    regionbase   : ListBase;
    spacetype    : int;
    blockscale   : float;
    blockhandler : array [0..7] of short;
    flag         : short;
    scaflag      : short;
    pad          : int;
    gpd          : PbGPdata;
  end;

  ConsoleLine = packed record
    next      : PConsoleLine;
    prev      : PConsoleLine;
    len_alloc : int;
    len       : int;
    line      : Pchar;
    cursor    : int;
    type_     : int;
  end;

  SpaceConsole = packed record
    next         : PSpaceLink;
    prev         : PSpaceLink;
    regionbase   : ListBase;
    spacetype    : int;
    blockscale   : float;
    blockhandler : array [0..7] of short;
    lheight      : int;
    pad          : int;
    scrollback   : ListBase;
    history      : ListBase;
    prompt       : array [0..255] of char;
    language     : array [0..31] of char;
    sel_start    : int;
    sel_end      : int;
  end;

  SpaceUserPref = packed record
    next        : PSpaceLink;
    prev        : PSpaceLink;
    regionbase  : ListBase;
    spacetype   : int;
    pad         : array [0..2] of char;
    filter_type : char;
    filter      : array [0..63] of char;
  end;

  MovieTrackingMarker = packed record
    pos             : array [0..1] of float;
    pattern_corners : array [0..3,0..1] of float;
    search_min      : array [0..1] of float;
    search_max      : array [0..1] of float;
    framenr         : int;
    flag            : int;
  end;


  MovieClipScopes = packed record
    ok                   : short;
    use_track_mask       : short;
    track_preview_height : int;
    frame_width          : int;
    frame_height         : int;
    undist_marker        : MovieTrackingMarker;
    track_search         : PImBuf;
    track_preview        : PImBuf;
    track_pos            : array [0..1] of float;
    track_disabled       : short;
    track_locked         : short;
    framenr              : int;
    track                : PMovieTrackingTrack;
    marker               : PMovieTrackingMarker;
    slide_scale          : array [0..1] of float;
  end;


  SpaceClip = packed record
    next          : PSpaceLink;
    prev          : PSpaceLink;
    regionbase    : ListBase;
    spacetype     : int;
    xof           : float;
    yof           : float;
    xlockof       : float;
    ylockof       : float;
    zoom          : float;
    user          : MovieClipUser;
    clip          : PMovieClip;
    scopes        : MovieClipScopes;
    flag          : int;
    mode          : short;
    view          : short;
    path_length   : int;
    loc           : array [0..1] of float;
    scale         : float;
    angle         : float;
    pad           : int;
    stabmat       : array [0..3,0..3] of float;
    unistabmat    : array [0..3,0..3] of float;
    postproc_flag : int;
    gpencil_src   : short;
    pad2          : short;
    around        : int;
    pad4          : int;
    cursor        : array [0..1] of float;
    mask_info     : MaskSpaceInfo;
  end;

  uiFont = packed record
    next      : PuiFont;
    prev      : PuiFont;
    filename  : array [0..1023] of char;
    blf_id    : short;
    uifont_id : short;
    r_to_l    : short;
    hinting   : short;
  end;

  uiFontStyle = packed record
    uifont_id   : short;
    points      : short;
    kerning     : short;
    word_wrap   : char;
    pad         : array [0..4] of char;
    italic      : short;
    bold        : short;
    shadow      : short;
    shadx       : short;
    shady       : short;
    align       : short;
    shadowalpha : float;
    shadowcolor : float;
  end;

  uiStyle = packed record
    next           : PuiStyle;
    prev           : PuiStyle;
    name           : array [0..63] of char;
    paneltitle     : uiFontStyle;
    grouplabel     : uiFontStyle;
    widgetlabel    : uiFontStyle;
    widget         : uiFontStyle;
    panelzoom      : float;
    minlabelchars  : short;
    minwidgetchars : short;
    columnspace    : short;
    templatespace  : short;
    boxspace       : short;
    buttonspacex   : short;
    buttonspacey   : short;
    panelspace     : short;
    panelouter     : short;
    pad            : short;
  end;

  uiWidgetColors = packed record
    outline     : array [0..3] of char;
    inner       : array [0..3] of char;
    inner_sel   : array [0..3] of char;
    item        : array [0..3] of char;
    text        : array [0..3] of char;
    text_sel    : array [0..3] of char;
    shaded      : short;
    shadetop    : short;
    shadedown   : short;
    alpha_check : short;
  end;

  uiWidgetStateColors = packed record
    inner_anim       : array [0..3] of char;
    inner_anim_sel   : array [0..3] of char;
    inner_key        : array [0..3] of char;
    inner_key_sel    : array [0..3] of char;
    inner_driven     : array [0..3] of char;
    inner_driven_sel : array [0..3] of char;
    blend            : float;
    pad              : float;
  end;

  uiPanelColors = packed record
    header      : array [0..3] of char;
    back        : array [0..3] of char;
    show_header : short;
    show_back   : short;
    pad         : int;
  end;

  uiGradientColors = packed record
    gradient      : array [0..3] of char;
    high_gradient : array [0..3] of char;
    show_grad     : int;
    pad2          : int;
  end;

  ThemeUI = packed record
    wcol_regular      : uiWidgetColors;
    wcol_tool         : uiWidgetColors;
    wcol_text         : uiWidgetColors;
    wcol_radio        : uiWidgetColors;
    wcol_option       : uiWidgetColors;
    wcol_toggle       : uiWidgetColors;
    wcol_num          : uiWidgetColors;
    wcol_numslider    : uiWidgetColors;
    wcol_menu         : uiWidgetColors;
    wcol_pulldown     : uiWidgetColors;
    wcol_menu_back    : uiWidgetColors;
    wcol_menu_item    : uiWidgetColors;
    wcol_tooltip      : uiWidgetColors;
    wcol_box          : uiWidgetColors;
    wcol_scroll       : uiWidgetColors;
    wcol_progress     : uiWidgetColors;
    wcol_list_item    : uiWidgetColors;
    wcol_pie_menu     : uiWidgetColors;
    wcol_state        : uiWidgetStateColors;
    panel             : uiPanelColors;
    widget_emboss     : array [0..3] of char;
    menu_shadow_fac   : float;
    menu_shadow_width : short;
    pad               : array [0..2] of short;
    iconfile          : array [0..255] of char;
    icon_alpha        : float;
    xaxis             : array [0..3] of char;
    yaxis             : array [0..3] of char;
    zaxis             : array [0..3] of char;
  end;

  ThemeSpace = packed record
    back                        : array [0..3] of char;
    title                       : array [0..3] of char;
    text                        : array [0..3] of char;
    text_hi                     : array [0..3] of char;
    header                      : array [0..3] of char;
    header_title                : array [0..3] of char;
    header_text                 : array [0..3] of char;
    header_text_hi              : array [0..3] of char;
    tab_active                  : array [0..3] of char;
    tab_inactive                : array [0..3] of char;
    tab_back                    : array [0..3] of char;
    tab_outline                 : array [0..3] of char;
    button                      : array [0..3] of char;
    button_title                : array [0..3] of char;
    button_text                 : array [0..3] of char;
    button_text_hi              : array [0..3] of char;
    list                        : array [0..3] of char;
    list_title                  : array [0..3] of char;
    list_text                   : array [0..3] of char;
    list_text_hi                : array [0..3] of char;
    panelcolors                 : uiPanelColors;
    gradients                   : uiGradientColors;
    shade1                      : array [0..3] of char;
    shade2                      : array [0..3] of char;
    hilite                      : array [0..3] of char;
    grid                        : array [0..3] of char;
    view_overlay                : array [0..3] of char;
    wire                        : array [0..3] of char;
    wire_edit                   : array [0..3] of char;
    select                      : array [0..3] of char;
    lamp                        : array [0..3] of char;
    speaker                     : array [0..3] of char;
    empty                       : array [0..3] of char;
    camera                      : array [0..3] of char;
    active                      : array [0..3] of char;
    group                       : array [0..3] of char;
    group_active                : array [0..3] of char;
    transform                   : array [0..3] of char;
    vertex                      : array [0..3] of char;
    vertex_select               : array [0..3] of char;
    vertex_unreferenced         : array [0..3] of char;
    edge                        : array [0..3] of char;
    edge_select                 : array [0..3] of char;
    edge_seam                   : array [0..3] of char;
    edge_sharp                  : array [0..3] of char;
    edge_facesel                : array [0..3] of char;
    edge_crease                 : array [0..3] of char;
    face                        : array [0..3] of char;
    face_select                 : array [0..3] of char;
    face_dot                    : array [0..3] of char;
    extra_edge_len              : array [0..3] of char;
    extra_edge_angle            : array [0..3] of char;
    extra_face_angle            : array [0..3] of char;
    extra_face_area             : array [0..3] of char;
    normal                      : array [0..3] of char;
    vertex_normal               : array [0..3] of char;
    loop_normal                 : array [0..3] of char;
    bone_solid                  : array [0..3] of char;
    bone_pose                   : array [0..3] of char;
    bone_pose_active            : array [0..3] of char;
    strip                       : array [0..3] of char;
    strip_select                : array [0..3] of char;
    cframe                      : array [0..3] of char;
    time_keyframe               : array [0..3] of char;
    time_gp_keyframe            : array [0..3] of char;
    freestyle_edge_mark         : array [0..3] of char;
    freestyle_face_mark         : array [0..3] of char;
    nurb_uline                  : array [0..3] of char;
    nurb_vline                  : array [0..3] of char;
    act_spline                  : array [0..3] of char;
    nurb_sel_uline              : array [0..3] of char;
    nurb_sel_vline              : array [0..3] of char;
    lastsel_point               : array [0..3] of char;
    handle_free                 : array [0..3] of char;
    handle_auto                 : array [0..3] of char;
    handle_vect                 : array [0..3] of char;
    handle_align                : array [0..3] of char;
    handle_auto_clamped         : array [0..3] of char;
    handle_sel_free             : array [0..3] of char;
    handle_sel_auto             : array [0..3] of char;
    handle_sel_vect             : array [0..3] of char;
    handle_sel_align            : array [0..3] of char;
    handle_sel_auto_clamped     : array [0..3] of char;
    ds_channel                  : array [0..3] of char;
    ds_subchannel               : array [0..3] of char;
    keytype_keyframe            : array [0..3] of char;
    keytype_extreme             : array [0..3] of char;
    keytype_breakdown           : array [0..3] of char;
    keytype_jitter              : array [0..3] of char;
    keytype_keyframe_select     : array [0..3] of char;
    keytype_extreme_select      : array [0..3] of char;
    keytype_breakdown_select    : array [0..3] of char;
    keytype_jitter_select       : array [0..3] of char;
    keyborder                   : array [0..3] of char;
    keyborder_select            : array [0..3] of char;
    console_output              : array [0..3] of char;
    console_input               : array [0..3] of char;
    console_info                : array [0..3] of char;
    console_error               : array [0..3] of char;
    console_cursor              : array [0..3] of char;
    console_select              : array [0..3] of char;
    vertex_size                 : char;
    outline_width               : char;
    facedot_size                : char;
    noodle_curving              : char;
    syntaxl                     : array [0..3] of char;
    syntaxs                     : array [0..3] of char;
    syntaxb                     : array [0..3] of char;
    syntaxn                     : array [0..3] of char;
    syntaxv                     : array [0..3] of char;
    syntaxc                     : array [0..3] of char;
    syntaxd                     : array [0..3] of char;
    syntaxr                     : array [0..3] of char;
    nodeclass_output            : array [0..3] of char;
    nodeclass_filter            : array [0..3] of char;
    nodeclass_vector            : array [0..3] of char;
    nodeclass_texture           : array [0..3] of char;
    nodeclass_shader            : array [0..3] of char;
    nodeclass_script            : array [0..3] of char;
    nodeclass_pattern           : array [0..3] of char;
    nodeclass_layout            : array [0..3] of char;
    movie                       : array [0..3] of char;
    movieclip                   : array [0..3] of char;
    mask                        : array [0..3] of char;
    image                       : array [0..3] of char;
    scene                       : array [0..3] of char;
    audio                       : array [0..3] of char;
    effect                      : array [0..3] of char;
    transition                  : array [0..3] of char;
    meta                        : array [0..3] of char;
    text_strip                  : array [0..3] of char;
    pad                         : array [0..3] of char;
    editmesh_active             : array [0..3] of char;
    handle_vertex               : array [0..3] of char;
    handle_vertex_select        : array [0..3] of char;
    handle_vertex_size          : char;
    clipping_border_3d          : array [0..3] of char;
    marker_outline              : array [0..3] of char;
    marker                      : array [0..3] of char;
    act_marker                  : array [0..3] of char;
    sel_marker                  : array [0..3] of char;
    dis_marker                  : array [0..3] of char;
    lock_marker                 : array [0..3] of char;
    bundle_solid                : array [0..3] of char;
    path_before                 : array [0..3] of char;
    path_after                  : array [0..3] of char;
    camera_path                 : array [0..3] of char;
    hpad                        : array [0..1] of char;
    gp_vertex_size              : char;
    gp_vertex                   : array [0..3] of char;
    gp_vertex_select            : array [0..3] of char;
    preview_back                : array [0..3] of char;
    preview_stitch_face         : array [0..3] of char;
    preview_stitch_edge         : array [0..3] of char;
    preview_stitch_vert         : array [0..3] of char;
    preview_stitch_stitchable   : array [0..3] of char;
    preview_stitch_unstitchable : array [0..3] of char;
    preview_stitch_active       : array [0..3] of char;
    uv_shadow                   : array [0..3] of char;
    uv_others                   : array [0..3] of char;
    match                       : array [0..3] of char;
    selected_highlight          : array [0..3] of char;
    skin_root                   : array [0..3] of char;
    anim_active                 : array [0..3] of char;
    anim_non_active             : array [0..3] of char;
    nla_tweaking                : array [0..3] of char;
    nla_tweakdupli              : array [0..3] of char;
    nla_transition              : array [0..3] of char;
    nla_transition_sel          : array [0..3] of char;
    nla_meta                    : array [0..3] of char;
    nla_meta_sel                : array [0..3] of char;
    nla_sound                   : array [0..3] of char;
    nla_sound_sel               : array [0..3] of char;
    info_selected               : array [0..3] of char;
    info_selected_text          : array [0..3] of char;
    info_error                  : array [0..3] of char;
    info_error_text             : array [0..3] of char;
    info_warning                : array [0..3] of char;
    info_warning_text           : array [0..3] of char;
    info_info                   : array [0..3] of char;
    info_info_text              : array [0..3] of char;
    info_debug                  : array [0..3] of char;
    info_debug_text             : array [0..3] of char;
    paint_curve_pivot           : array [0..3] of char;
    paint_curve_handle          : array [0..3] of char;
    metadatabg                  : array [0..3] of char;
    metadatatext                : array [0..3] of char;
  end;

  ThemeWireColor = packed record
    solid  : array [0..3] of char;
    select : array [0..3] of char;
    active : array [0..3] of char;
    flag   : short;
    pad    : short;
  end;

  bTheme = packed record
    next              : PbTheme;
    prev              : PbTheme;
    name              : array [0..31] of char;
    tui               : ThemeUI;
    tbuts             : ThemeSpace;
    tv3d              : ThemeSpace;
    tfile             : ThemeSpace;
    tipo              : ThemeSpace;
    tinfo             : ThemeSpace;
    tact              : ThemeSpace;
    tnla              : ThemeSpace;
    tseq              : ThemeSpace;
    tima              : ThemeSpace;
    text              : ThemeSpace;
    toops             : ThemeSpace;
    ttime             : ThemeSpace;
    tnode             : ThemeSpace;
    tlogic            : ThemeSpace;
    tuserpref         : ThemeSpace;
    tconsole          : ThemeSpace;
    tclip             : ThemeSpace;
    tarm              : array [0..19] of ThemeWireColor;
    active_theme_area : int;
    pad               : int;
  end;

  bAddon = packed record
    next   : PbAddon;
    prev   : PbAddon;
    module : array [0..63] of char;
    prop   : PIDProperty;
  end;

  bPathCompare = packed record
    next : PbPathCompare;
    prev : PbPathCompare;
    path : array [0..767] of char;
    flag : char;
    pad  : array [0..6] of char;
  end;

  SolidLight = packed record
    flag : int;
    pad  : int;
    col  : array [0..3] of float;
    spec : array [0..3] of float;
    vec  : array [0..3] of float;
  end;

  WalkNavigation = packed record
    mouse_speed       : float;
    walk_speed        : float;
    walk_speed_factor : float;
    view_height       : float;
    jump_height       : float;
    teleport_time     : float;
    flag              : short;
    pad               : array [0..2] of short;
  end;

  UserDef = packed record
    versionfile              : int;
    subversionfile           : int;
    flag                     : int;
    dupflag                  : int;
    savetime                 : int;
    tempdir                  : array [0..767] of char;
    fontdir                  : array [0..767] of char;
    renderdir                : array [0..1023] of char;
    render_cachedir          : array [0..767] of char;
    textudir                 : array [0..767] of char;
    pythondir                : array [0..767] of char;
    sounddir                 : array [0..767] of char;
    i18ndir                  : array [0..767] of char;
    image_editor             : array [0..1023] of char;
    anim_player              : array [0..1023] of char;
    anim_player_preset       : int;
    v2d_min_gridsize         : short;
    timecode_style           : short;
    versions                 : short;
    dbl_click_time           : short;
    gameflags                : short;
    wheellinescroll          : short;
    uiflag                   : int;
    uiflag2                  : int;
    language                 : int;
    userpref                 : short;
    viewzoom                 : short;
    mixbufsize               : int;
    audiodevice              : int;
    audiorate                : int;
    audioformat              : int;
    audiochannels            : int;
    scrollback               : int;
    dpi                      : int;
    node_margin              : char;
    pad2                     : char;
    transopts                : short;
    menuthreshold1           : short;
    menuthreshold2           : short;
    themes                   : ListBase;
    uifonts                  : ListBase;
    uistyles                 : ListBase;
    keymaps                  : ListBase;
    user_keymaps             : ListBase;
    addons                   : ListBase;
    autoexec_paths           : ListBase;
    keyconfigstr             : array [0..63] of char;
    undosteps                : short;
    undomemory               : short;
    gp_manhattendist         : short;
    gp_euclideandist         : short;
    gp_eraser                : short;
    gp_settings              : short;
    tb_leftmouse             : short;
    tb_rightmouse            : short;
    light                    : array [0..2] of SolidLight;
    tw_hotspot               : short;
    tw_flag                  : short;
    tw_handlesize            : short;
    tw_size                  : short;
    textimeout               : short;
    texcollectrate           : short;
    wmdrawmethod             : short;
    dragthreshold            : short;
    memcachelimit            : int;
    prefetchframes           : int;
    pad_rot_angle            : float;
    frameserverport          : short;
    pad4                     : short;
    obcenter_dia             : short;
    rvisize                  : short;
    rvibright                : short;
    recent_files             : short;
    smooth_viewtx            : short;
    glreslimit               : short;
    curssize                 : short;
    color_picker_type        : short;
    ipo_new                  : char;
    keyhandles_new           : char;
    gpu_select_method        : char;
    view_frame_type          : char;
    view_frame_keyframes     : int;
    view_frame_seconds       : float;
    scrcastfps               : short;
    scrcastwait              : short;
    widget_unit              : short;
    anisotropic_filter       : short;
    use_16bit_textures       : short;
    use_gpu_mipmap           : short;
    ndof_sensitivity         : float;
    ndof_orbit_sensitivity   : float;
    ndof_deadzone            : float;
    ndof_flag                : int;
    ogl_multisamples         : short;
    image_draw_method        : short;
    glalphaclip              : float;
    autokey_mode             : short;
    autokey_flag             : short;
    text_render              : short;
    pad9                     : short;
    coba_weight              : ColorBand;
    sculpt_paint_overlay_col : array [0..2] of float;
    gpencil_new_layer_col    : array [0..3] of float;
    tweak_threshold          : short;
    navigation_mode          : char;
    pad                      : char;
    author                   : array [0..79] of char;
    font_path_ui             : array [0..1023] of char;
    font_path_ui_mono        : array [0..1023] of char;
    compute_device_type      : int;
    compute_device_id        : int;
    fcu_inactive_alpha       : float;
    pixelsize                : float;
    virtual_pixel            : int;
    pie_interaction_type     : short;
    pie_initial_timeout      : short;
    pie_animation_timeout    : short;
    pie_menu_confirm         : short;
    pie_menu_radius          : short;
    pie_menu_threshold       : short;
    walk_navigation          : WalkNavigation;
    opensubdiv_compute_type  : short;
    pad5                     : array [0..5] of char;
  end;

  bScreen = packed record
    id                  : ID;
    vertbase            : ListBase;
    edgebase            : ListBase;
    areabase            : ListBase;
    regionbase          : ListBase;
    scene               : PScene;
    newscene            : PScene;
    winid               : short;
    redraws_flag        : short;
    temp                : char;
    state               : char;
    do_draw             : char;
    do_refresh          : char;
    do_draw_gesture     : char;
    do_draw_paintcursor : char;
    do_draw_drag        : char;
    swap                : char;
    skip_handling       : char;
    scrubbing           : char;
    pad                 : array [0..5] of char;
    mainwin             : short;
    subwinactive        : short;
    animtimer           : PwmTimer;
    context             : Pvoid;
  end;

  ScrVert = packed record
    next     : PScrVert;
    prev     : PScrVert;
    newv     : PScrVert;
    vec      : vec2s;
    flag     : short;
    editflag : short;
  end;

  ScrEdge = packed record
    next   : PScrEdge;
    prev   : PScrEdge;
    v1     : PScrVert;
    v2     : PScrVert;
    border : short;
    flag   : short;
    pad    : int;
  end;

  Panel = packed record
    next         : PPanel;
    prev         : PPanel;
    type_        : PPanelType;
    layout       : PuiLayout;
    panelname    : array [0..63] of char;
    tabname      : array [0..63] of char;
    drawname     : array [0..63] of char;
    ofsx         : int;
    ofsy         : int;
    sizex        : int;
    sizey        : int;
    labelofs     : short;
    pad          : short;
    flag         : short;
    runtime_flag : short;
    control      : short;
    snap         : short;
    sortorder    : int;
    paneltab     : PPanel;
    activedata   : Pvoid;
  end;

  PanelCategoryStack = packed record
    next   : PPanelCategoryStack;
    prev   : PPanelCategoryStack;
    idname : array [0..63] of char;
  end;

  uiList = packed record
    next              : PuiList;
    prev              : PuiList;
    type_             : PuiListType;
    list_id           : array [0..63] of char;
    layout_type       : int;
    flag              : int;
    list_scroll       : int;
    list_grip         : int;
    list_last_len     : int;
    list_last_activei : int;
    filter_byname     : array [0..63] of char;
    filter_flag       : int;
    filter_sort_flag  : int;
    properties        : PIDProperty;
    dyn_data          : PuiListDyn;
  end;

  uiPreview = packed record
    next       : PuiPreview;
    prev       : PuiPreview;
    preview_id : array [0..63] of char;
    height     : short;
    pad1       : array [0..2] of short;
  end;

  ScrArea = packed record
    next              : PScrArea;
    prev              : PScrArea;
    v1                : PScrVert;
    v2                : PScrVert;
    v3                : PScrVert;
    v4                : PScrVert;
    full              : PbScreen;
    totrct            : rcti;
    spacetype         : char;
    butspacetype      : char;
    winx              : short;
    winy              : short;
    headertype        : short;
    do_refresh        : short;
    flag              : short;
    region_active_win : short;
    temp              : char;
    pad               : char;
    type_             : PSpaceType;
    spacedata         : ListBase;
    regionbase        : ListBase;
    handlers          : ListBase;
    actionzones       : ListBase;
  end;

  ARegion = packed record
    next                   : PARegion;
    prev                   : PARegion;
    v2d                    : View2D;
    winrct                 : rcti;
    drawrct                : rcti;
    winx                   : short;
    winy                   : short;
    swinid                 : short;
    regiontype             : short;
    alignment              : short;
    flag                   : short;
    fsize                  : float;
    sizex                  : short;
    sizey                  : short;
    do_draw                : short;
    do_draw_overlay        : short;
    swap                   : short;
    overlap                : short;
    flagfullscreen         : short;
    pad                    : short;
    type_                  : PARegionType;
    uiblocks               : ListBase;
    panels                 : ListBase;
    panels_category_active : ListBase;
    ui_lists               : ListBase;
    ui_previews            : ListBase;
    handlers               : ListBase;
    panels_category        : ListBase;
    regiontimer            : PwmTimer;
    headerstr              : Pchar;
    regiondata             : Pvoid;
  end;

  FileGlobal = packed record
    subvstr                : array [0..3] of char;
    subversion             : short;
    minversion             : short;
    minsubversion          : short;
    pad                    : array [0..5] of char;
    curscreen              : PbScreen;
    curscene               : PScene;
    fileflags              : int;
    globalf                : int;
    build_commit_timestamp : uint64_t;
    build_hash             : array [0..15] of char;
    filename               : array [0..1023] of char;
  end;

  StripAnim = packed record
    next : PStripAnim;
    prev : PStripAnim;
    anim : Panim;
  end;

  StripElem = packed record
    name        : array [0..255] of char;
    orig_width  : int;
    orig_height : int;
  end;

  StripCrop = packed record
    top    : int;
    bottom : int;
    left   : int;
    right  : int;
  end;

  StripTransform = packed record
    xofs : int;
    yofs : int;
  end;

  StripColorBalance = packed record
    lift  : array [0..2] of float;
    gamma : array [0..2] of float;
    gain  : array [0..2] of float;
    flag  : int;
    pad   : int;
  end;

  StripProxy = packed record
    dir              : array [0..767] of char;
    file_            : array [0..255] of char;
    anim             : Panim;
    tc               : short;
    quality          : short;
    build_size_flags : short;
    build_tc_flags   : short;
    build_flags      : short;
    storage          : char;
    pad              : array [0..4] of char;
  end;

  Strip = packed record
    next                : PStrip;
    prev                : PStrip;
    us                  : int;
    done                : int;
    startstill          : int;
    endstill            : int;
    stripdata           : PStripElem;
    dir                 : array [0..767] of char;
    proxy               : PStripProxy;
    crop                : PStripCrop;
    transform           : PStripTransform;
    color_balance       : PStripColorBalance;
    colorspace_settings : ColorManagedColorspaceSettings;
  end;

  Sequence = packed record
    next            : PSequence;
    prev            : PSequence;
    tmp             : Pvoid;
    lib             : Pvoid;
    name            : array [0..63] of char;
    flag            : int;
    type_           : int;
    len             : int;
    start           : int;
    startofs        : int;
    endofs          : int;
    startstill      : int;
    endstill        : int;
    machine         : int;
    depth           : int;
    startdisp       : int;
    enddisp         : int;
    sat             : float;
    mul             : float;
    handsize        : float;
    anim_preseek    : short;
    streamindex     : short;
    multicam_source : int;
    clip_flag       : int;
    strip           : PStrip;
    ipo             : PIpo;
    scene           : PScene;
    scene_camera    : PObject;
    clip            : PMovieClip;
    mask            : PMask;
    anims           : ListBase;
    effect_fader    : float;
    speed_fader     : float;
    seq1            : PSequence;
    seq2            : PSequence;
    seq3            : PSequence;
    seqbase         : ListBase;
    sound           : PbSound;
    scene_sound     : Pvoid;
    volume          : float;
    pitch           : float;
    pan             : float;
    strobe          : float;
    effectdata      : Pvoid;
    anim_startofs   : int;
    anim_endofs     : int;
    blend_mode      : int;
    blend_opacity   : float;
    sfra            : int;
    alpha_mode      : char;
    pad             : array [0..1] of char;
    views_format    : char;
    stereo3d_format : PStereo3dFormat;
    prop            : PIDProperty;
    modifiers       : ListBase;
  end;

  MetaStack = packed record
    next       : PMetaStack;
    prev       : PMetaStack;
    oldbasep   : PListBase;
    parseq     : PSequence;
    disp_range : array [0..1] of int;
  end;

  Editing = packed record
    seqbasep      : PListBase;
    seqbase       : ListBase;
    metastack     : ListBase;
    act_seq       : PSequence;
    act_imagedir  : array [0..1023] of char;
    act_sounddir  : array [0..1023] of char;
    proxy_dir     : array [0..1023] of char;
    over_ofs      : int;
    over_cfra     : int;
    over_flag     : int;
    proxy_storage : int;
    over_border   : rctf;
  end;

  WipeVars = packed record
    edgeWidth : float;
    angle     : float;
    forward   : short;
    wipetype  : short;
  end;

  GlowVars = packed record
    fMini    : float;
    fClamp   : float;
    fBoost   : float;
    dDist    : float;
    dQuality : int;
    bNoComp  : int;
  end;

  TransformVars = packed record
    ScalexIni     : float;
    ScaleyIni     : float;
    xIni          : float;
    yIni          : float;
    rotIni        : float;
    percent       : int;
    interpolation : int;
    uniform_scale : int;
  end;

  SolidColorVars = packed record
    col : array [0..2] of float;
    pad : float;
  end;

  SpeedControlVars = packed record
    frameMap       : Pfloat;
    globalSpeed    : float;
    flags          : int;
    length         : int;
    lastValidFrame : int;
  end;

  GaussianBlurVars = packed record
    size_x : float;
    size_y : float;
  end;

  TextVars = packed record
    text       : array [0..511] of char;
    text_size  : int;
    loc        : array [0..1] of float;
    wrap_width : float;
    flag       : char;
    align      : char;
    align_y    : char;
    pad        : array [0..4] of char;
  end;

  SequenceModifierData = packed record
    next            : PSequenceModifierData;
    prev            : PSequenceModifierData;
    type_           : int;
    flag            : int;
    name            : array [0..63] of char;
    mask_input_type : int;
    mask_time       : int;
    mask_sequence   : PSequence;
    mask_id         : PMask;
    scene           : PScene;
  end;

  ColorBalanceModifierData = packed record
    modifier       : SequenceModifierData;
    color_balance  : StripColorBalance;
    color_multiply : float;
  end;

  CurvesModifierData = packed record
    modifier      : SequenceModifierData;
    curve_mapping : CurveMapping;
  end;

  HueCorrectModifierData = packed record
    modifier      : SequenceModifierData;
    curve_mapping : CurveMapping;
  end;

  BrightContrastModifierData = packed record
    modifier : SequenceModifierData;
    bright   : float;
    contrast : float;
  end;

  SequencerMaskModifierData = packed record
    modifier : SequenceModifierData;
  end;

  WhiteBalanceModifierData = packed record
    modifier    : SequenceModifierData;
    white_value : array [0..2] of float;
    pad         : float;
  end;

  SequencerTonemapModifierData = packed record
    modifier   : SequenceModifierData;
    key        : float;
    offset     : float;
    gamma      : float;
    intensity  : float;
    contrast   : float;
    adaptation : float;
    correction : float;
    type_      : int;
  end;

  Effect = packed record
    next    : PEffect;
    prev    : PEffect;
    type_   : short;
    flag    : short;
    buttype : short;
    rt      : short;
  end;

  BuildEff = packed record
    next    : PBuildEff;
    prev    : PBuildEff;
    type_   : short;
    flag    : short;
    buttype : short;
    rt      : short;
    len     : float;
    sfra    : float;
  end;

  PartEff = packed record
    next         : PPartEff;
    prev         : PPartEff;
    type_        : short;
    flag         : short;
    buttype      : short;
    stype        : short;
    vertgroup    : short;
    userjit      : short;
    sta          : float;
    end_         : float;
    lifetime     : float;
    totpart      : int;
    totkey       : int;
    seed         : int;
    normfac      : float;
    obfac        : float;
    randfac      : float;
    texfac       : float;
    randlife     : float;
    force        : array [0..2] of float;
    damp         : float;
    nabla        : float;
    vectsize     : float;
    maxlen       : float;
    pad          : float;
    defvec       : array [0..2] of float;
    mult         : array [0..3] of float;
    life         : array [0..3] of float;
    child        : array [0..3] of short;
    mat          : array [0..3] of short;
    texmap       : short;
    curmult      : short;
    staticstep   : short;
    omat         : short;
    timetex      : short;
    speedtex     : short;
    flag2        : short;
    flag2neg     : short;
    disp         : short;
    vertgroup_v  : short;
    vgroupname   : array [0..63] of char;
    vgroupname_v : array [0..63] of char;
    imat         : array [0..3,0..3] of float;
    keys         : PParticle;
    group        : PGroup;
  end;

  WaveEff = packed record
    next     : PWaveEff;
    prev     : PWaveEff;
    type_    : short;
    flag     : short;
    buttype  : short;
    stype    : short;
    startx   : float;
    starty   : float;
    height   : float;
    width    : float;
    narrow   : float;
    speed    : float;
    minfac   : float;
    damp     : float;
    timeoffs : float;
    lifetime : float;
  end;

  TreeStore = packed record
    totelem  : int;
    usedelem : int;
    data     : PTreeStoreElem;
  end;

  bProperty = packed record
    next  : PbProperty;
    prev  : PbProperty;
    name  : array [0..63] of char;
    type_ : short;
    flag  : short;
    data  : int;
    poin  : Pvoid;
  end;

  bNearSensor = packed record
    name      : array [0..63] of char;
    dist      : float;
    resetdist : float;
    lastval   : int;
    pad       : int;
  end;

  bMouseSensor = packed record
    type_    : short;
    flag     : short;
    pad1     : short;
    mode     : short;
    propname : array [0..63] of char;
    matname  : array [0..63] of char;
  end;

  bTouchSensor = packed record
    name : array [0..63] of char;
    ma   : PMaterial;
    dist : float;
    pad  : float;
  end;

  bKeyboardSensor = packed record
    key        : short;
    qual       : short;
    type_      : short;
    qual2      : short;
    targetName : array [0..63] of char;
    toggleName : array [0..63] of char;
  end;

  bPropertySensor = packed record
    type_    : int;
    pad      : int;
    name     : array [0..63] of char;
    value    : array [0..63] of char;
    maxvalue : array [0..63] of char;
  end;

  bActuatorSensor = packed record
    type_ : int;
    pad   : int;
    name  : array [0..63] of char;
  end;

  bDelaySensor = packed record
    delay    : short;
    duration : short;
    flag     : short;
    pad      : short;
  end;

  bCollisionSensor = packed record
    name         : array [0..63] of char;
    materialName : array [0..63] of char;
    damptimer    : short;
    damp         : short;
    mode         : short;
    pad2         : short;
  end;

  bRadarSensor = packed record
    name  : array [0..63] of char;
    angle : float;
    range : float;
    flag  : short;
    axis  : short;
  end;

  bRandomSensor = packed record
    name  : array [0..63] of char;
    seed  : int;
    delay : int;
  end;

  bRaySensor = packed record
    name     : array [0..63] of char;
    range    : float;
    propname : array [0..63] of char;
    matname  : array [0..63] of char;
    mode     : short;
    pad1     : short;
    axisflag : int;
  end;

  bArmatureSensor = packed record
    posechannel : array [0..63] of char;
    constraint  : array [0..63] of char;
    type_       : int;
    value       : float;
  end;

  bMessageSensor = packed record
    fromObject : PObject;
    subject    : array [0..63] of char;
    body       : array [0..63] of char;
  end;

  bSensor = packed record
    next     : PbSensor;
    prev     : PbSensor;
    type_    : short;
    otype    : short;
    flag     : short;
    pulse    : short;
    freq     : short;
    totlinks : short;
    pad1     : short;
    pad2     : short;
    name     : array [0..63] of char;
    data     : Pvoid;
    links    : ^PbController;
    ob       : PObject;
    invert   : short;
    level    : short;
    tap      : short;
    pad      : short;
  end;

  bJoystickSensor = packed record
    name        : array [0..63] of char;
    type_       : char;
    joyindex    : char;
    flag        : short;
    axis        : short;
    axis_single : short;
    axisf       : int;
    button      : int;
    hat         : int;
    hatf        : int;
    precision   : int;
  end;

  bExpressionCont = packed record
    str : array [0..127] of char;
  end;

  bPythonCont = packed record
    text   : PText;
    module : array [0..63] of char;
    mode   : int;
    flag   : int;
  end;

  bController = packed record
    next       : PbController;
    prev       : PbController;
    mynew      : PbController;
    type_      : short;
    flag       : short;
    inputs     : short;
    totlinks   : short;
    otype      : short;
    totslinks  : short;
    pad2       : short;
    pad3       : short;
    name       : array [0..63] of char;
    data       : Pvoid;
    links      : ^PbActuator;
    slinks     : ^PbSensor;
    val        : short;
    valo       : short;
    state_mask : int;
  end;

  bAddObjectActuator = packed record
    time : int;
    pad  : int;
    ob   : PObject;
  end;

  bActionActuator = packed record
    act          : PbAction;
    type_        : short;
    flag         : short;
    sta          : float;
    end_         : float;
    name         : array [0..63] of char;
    frameProp    : array [0..63] of char;
    blendin      : short;
    priority     : short;
    layer        : short;
    end_reset    : short;
    strideaxis   : short;
    blend_mode   : short;
    stridelength : float;
    layer_weight : float;
  end;

  Sound3D = packed record
    min_gain           : float;
    max_gain           : float;
    reference_distance : float;
    max_distance       : float;
    rolloff_factor     : float;
    cone_inner_angle   : float;
    cone_outer_angle   : float;
    cone_outer_gain    : float;
  end;

  bSoundActuator = packed record
    flag    : short;
    sndnr   : short;
    pad1    : int;
    pad2    : int;
    pad3    : array [0..1] of short;
    volume  : float;
    pitch   : float;
    sound   : PbSound;
    sound3D : Sound3D;
    type_   : short;
    pad4    : short;
    pad5    : short;
    pad6    : array [0..0] of short;
  end;

  bEditObjectActuator = packed record
    time          : int;
    type_         : short;
    flag          : short;
    ob            : PObject;
    me            : PMesh;
    name          : array [0..63] of char;
    linVelocity   : array [0..2] of float;
    angVelocity   : array [0..2] of float;
    mass          : float;
    localflag     : short;
    dyn_operation : short;
    upflag        : short;
    trackflag     : short;
    pad           : int;
  end;

  bSceneActuator = packed record
    type_  : short;
    pad1   : short;
    pad    : int;
    scene  : PScene;
    camera : PObject;
  end;

  bPropertyActuator = packed record
    pad   : int;
    type_ : int;
    name  : array [0..63] of char;
    value : array [0..63] of char;
    ob    : PObject;
  end;

  bObjectActuator = packed record
    flag            : short;
    type_           : short;
    otype           : short;
    damping         : short;
    forceloc        : array [0..2] of float;
    forcerot        : array [0..2] of float;
    pad             : array [0..2] of float;
    pad1            : array [0..2] of float;
    dloc            : array [0..2] of float;
    drot            : array [0..2] of float;
    linearvelocity  : array [0..2] of float;
    angularvelocity : array [0..2] of float;
    reference       : PObject;
  end;

  bIpoActuator = packed record
    flag      : short;
    type_     : short;
    sta       : float;
    end_      : float;
    name      : array [0..63] of char;
    frameProp : array [0..63] of char;
    pad1      : short;
    pad2      : short;
    pad3      : short;
    pad4      : short;
  end;

  bCameraActuator = packed record
    ob      : PObject;
    height  : float;
    min     : float;
    max     : float;
    damping : float;
    pad1    : short;
    axis    : short;
    pad2    : float;
  end;

  bConstraintActuator = packed record
    type_   : short;
    mode    : short;
    flag    : short;
    damp    : short;
    time    : short;
    rotdamp : short;
    pad     : int;
    minloc  : array [0..2] of float;
    maxloc  : array [0..2] of float;
    minrot  : array [0..2] of float;
    maxrot  : array [0..2] of float;
    matprop : array [0..63] of char;
  end;

  bGroupActuator = packed record
    flag   : short;
    type_  : short;
    sta    : int;
    end_   : int;
    name   : array [0..63] of char;
    pad    : array [0..2] of short;
    cur    : short;
    butsta : short;
    butend : short;
  end;

  bRandomActuator = packed record
    seed         : int;
    distribution : int;
    int_arg_1    : int;
    int_arg_2    : int;
    float_arg_1  : float;
    float_arg_2  : float;
    propname     : array [0..63] of char;
  end;

  bMessageActuator = packed record
    toPropName : array [0..63] of char;
    toObject   : PObject;
    subject    : array [0..63] of char;
    bodyType   : short;
    pad1       : short;
    pad2       : int;
    body       : array [0..63] of char;
  end;

  bGameActuator = packed record
    flag        : short;
    type_       : short;
    sta         : int;
    end_        : int;
    filename    : array [0..63] of char;
    loadaniname : array [0..63] of char;
  end;

  bVisibilityActuator = packed record
    flag : int;
  end;

  bTwoDFilterActuator = packed record
    pad       : array [0..3] of char;
    type_     : short;
    flag      : short;
    int_arg   : int;
    float_arg : float;
    text      : PText;
  end;

  bParentActuator = packed record
    pad   : array [0..1] of char;
    flag  : short;
    type_ : int;
    ob    : PObject;
  end;

  bStateActuator = packed record
    type_ : int;
    mask  : int;
  end;

  bArmatureActuator = packed record
    posechannel : array [0..63] of char;
    constraint  : array [0..63] of char;
    type_       : int;
    weight      : float;
    influence   : float;
    pad         : float;
    target      : PObject;
    subtarget   : PObject;
  end;

  bSteeringActuator = packed record
    pad          : array [0..4] of char;
    flag         : char;
    facingaxis   : short;
    type_        : int;
    dist         : float;
    velocity     : float;
    acceleration : float;
    turnspeed    : float;
    updateTime   : int;
    target       : PObject;
    navmesh      : PObject;
  end;

  bMouseActuator = packed record
    type_       : short;
    flag        : short;
    object_axis : array [0..1] of int;
    threshold   : array [0..1] of float;
    sensitivity : array [0..1] of float;
    limit_x     : array [0..1] of float;
    limit_y     : array [0..1] of float;
  end;

  bActuator = packed record
    next  : PbActuator;
    prev  : PbActuator;
    mynew : PbActuator;
    type_ : short;
    flag  : short;
    otype : short;
    go    : short;
    name  : array [0..63] of char;
    data  : Pvoid;
    ob    : PObject;
  end;

  bSound = packed record
    id              : ID;
    name            : array [0..1023] of char;
    packedfile      : PPackedFile;
    handle          : Pvoid;
    newpackedfile   : PPackedFile;
    ipo             : PIpo;
    volume          : float;
    attenuation     : float;
    pitch           : float;
    min_gain        : float;
    max_gain        : float;
    distance        : float;
    flags           : int;
    pad             : int;
    cache           : Pvoid;
    waveform        : Pvoid;
    playback_handle : Pvoid;
    spinlock        : Pvoid;
  end;

  GroupObject = packed record
    next    : PGroupObject;
    prev    : PGroupObject;
    ob      : PObject;
    lampren : Pvoid;
    recalc  : short;
    pad     : array [0..5] of char;
  end;

  Group = packed record
    id        : ID;
    gobject   : ListBase;
    preview   : PPreviewImage;
    layer     : int;
    dupli_ofs : array [0..2] of float;
  end;

  Bone = packed record
    next      : PBone;
    prev      : PBone;
    prop      : PIDProperty;
    parent    : PBone;
    childbase : ListBase;
    name      : array [0..63] of char;
    roll      : float;
    head      : array [0..2] of float;
    tail      : array [0..2] of float;
    bone_mat  : array [0..2,0..2] of float;
    flag      : int;
    arm_head  : array [0..2] of float;
    arm_tail  : array [0..2] of float;
    arm_mat   : array [0..3,0..3] of float;
    arm_roll  : float;
    dist      : float;
    weight    : float;
    xwidth    : float;
    length    : float;
    zwidth    : float;
    ease1     : float;
    ease2     : float;
    rad_head  : float;
    rad_tail  : float;
    size      : array [0..2] of float;
    layer     : int;
    segments  : short;
    pad       : array [0..0] of short;
  end;

  bArmature = packed record
    id              : ID;
    adt             : PAnimData;
    bonebase        : ListBase;
    chainbase       : ListBase;
    edbo            : PListBase;
    act_bone        : PBone;
    act_edbone      : PEditBone;
    sketch          : Pvoid;
    flag            : int;
    drawtype        : int;
    gevertdeformer  : int;
    pad             : int;
    deformflag      : short;
    pathflag        : short;
    layer_used      : int;
    layer           : int;
    layer_protected : int;
    ghostep         : short;
    ghostsize       : short;
    ghosttype       : short;
    pathsize        : short;
    ghostsf         : int;
    ghostef         : int;
    pathsf          : int;
    pathef          : int;
    pathbc          : int;
    pathac          : int;
  end;

  bMotionPathVert = packed record
    co   : array [0..2] of float;
    flag : int;
  end;

  bMotionPath = packed record
    points      : PbMotionPathVert;
    length      : int;
    start_frame : int;
    end_frame   : int;
    flag        : int;
  end;

  bPoseChannel = packed record
    next         : PbPoseChannel;
    prev         : PbPoseChannel;
    prop         : PIDProperty;
    constraints  : ListBase;
    name         : array [0..63] of char;
    flag         : short;
    ikflag       : short;
    protectflag  : short;
    agrp_index   : short;
    constflag    : char;
    selectflag   : char;
    drawflag     : char;
    pad0         : array [0..4] of char;
    bone         : PBone;
    parent       : PbPoseChannel;
    child        : PbPoseChannel;
    iktree       : ListBase;
    siktree      : ListBase;
    mpath        : PbMotionPath;
    custom       : PObject;
    custom_tx    : PbPoseChannel;
    custom_scale : float;
    pad1         : array [0..3] of char;
    loc          : array [0..2] of float;
    size         : array [0..2] of float;
    eul          : array [0..2] of float;
    quat         : array [0..3] of float;
    rotAxis      : array [0..2] of float;
    rotAngle     : float;
    rotmode      : short;
    pad          : short;
    chan_mat     : array [0..3,0..3] of float;
    pose_mat     : array [0..3,0..3] of float;
    constinv     : array [0..3,0..3] of float;
    pose_head    : array [0..2] of float;
    pose_tail    : array [0..2] of float;
    limitmin     : array [0..2] of float;
    limitmax     : array [0..2] of float;
    stiffness    : array [0..2] of float;
    ikstretch    : float;
    ikrotweight  : float;
    iklinweight  : float;
    temp         : Pvoid;
  end;

  bPose = packed record
    chanbase       : ListBase;
    chanhash       : PGHash;
    flag           : short;
    pad            : short;
    proxy_layer    : int;
    pad1           : int;
    ctime          : float;
    stride_offset  : array [0..2] of float;
    cyclic_offset  : array [0..2] of float;
    agroups        : ListBase;
    active_group   : int;
    iksolver       : int;
    ikdata         : Pvoid;
    ikparam        : Pvoid;
    avs            : bAnimVizSettings;
    proxy_act_bone : array [0..63] of char;
  end;

  bIKParam = packed record
    iksolver : int;
  end;

  bItasc = packed record
    iksolver  : int;
    precision : float;
    numiter   : short;
    numstep   : short;
    minstep   : float;
    maxstep   : float;
    solver    : short;
    flag      : short;
    feedback  : float;
    maxvel    : float;
    dampmax   : float;
    dampeps   : float;
  end;

  bActionGroup = packed record
    next      : PbActionGroup;
    prev      : PbActionGroup;
    channels  : ListBase;
    flag      : int;
    customCol : int;
    name      : array [0..63] of char;
    cs        : ThemeWireColor;
  end;

  bAction = packed record
    id            : ID;
    curves        : ListBase;
    chanbase      : ListBase;
    groups        : ListBase;
    markers       : ListBase;
    flag          : int;
    active_marker : int;
    idroot        : int;
    pad           : int;
  end;

  bDopeSheet = packed record
    source      : PID;
    chanbase    : ListBase;
    filter_grp  : PGroup;
    searchstr   : array [0..63] of char;
    filterflag  : int;
    flag        : int;
    renameIndex : int;
    pad         : int;
  end;

  SpaceAction = packed record
    next         : PSpaceLink;
    prev         : PSpaceLink;
    regionbase   : ListBase;
    spacetype    : int;
    blockscale   : float;
    blockhandler : array [0..7] of short;
    v2d          : View2D;
    action       : PbAction;
    ads          : bDopeSheet;
    mode         : char;
    autosnap     : char;
    flag         : short;
    timeslide    : float;
  end;

  bActionChannel = packed record
    next               : PbActionChannel;
    prev               : PbActionChannel;
    grp                : PbActionGroup;
    ipo                : PIpo;
    constraintChannels : ListBase;
    flag               : int;
    name               : array [0..63] of char;
    temp               : int;
  end;

  bConstraintChannel = packed record
    next : PbConstraintChannel;
    prev : PbConstraintChannel;
    ipo  : PIpo;
    flag : short;
    name : array [0..29] of char;
  end;

  bConstraint = packed record
    next      : PbConstraint;
    prev      : PbConstraint;
    data      : Pvoid;
    type_     : short;
    flag      : short;
    ownspace  : char;
    tarspace  : char;
    name      : array [0..63] of char;
    pad       : short;
    enforce   : float;
    headtail  : float;
    ipo       : PIpo;
    lin_error : float;
    rot_error : float;
  end;

  bConstraintTarget = packed record
    next      : PbConstraintTarget;
    prev      : PbConstraintTarget;
    tar       : PObject;
    subtarget : array [0..63] of char;
    matrix    : array [0..3,0..3] of float;
    space     : short;
    flag      : short;
    type_     : short;
    rotOrder  : short;
  end;

  bPythonConstraint = packed record
    text      : PText;
    prop      : PIDProperty;
    flag      : int;
    tarnum    : int;
    targets   : ListBase;
    tar       : PObject;
    subtarget : array [0..63] of char;
  end;

  bKinematicConstraint = packed record
    tar           : PObject;
    iterations    : short;
    flag          : short;
    rootbone      : short;
    max_rootbone  : short;
    subtarget     : array [0..63] of char;
    poletar       : PObject;
    polesubtarget : array [0..63] of char;
    poleangle     : float;
    weight        : float;
    orientweight  : float;
    grabtarget    : array [0..2] of float;
    type_         : short;
    mode          : short;
    dist          : float;
  end;

  bSplineIKConstraint = packed record
    tar          : PObject;
    points       : Pfloat;
    numpoints    : short;
    chainlen     : short;
    flag         : short;
    xzScaleMode  : short;
    bulge        : float;
    bulge_min    : float;
    bulge_max    : float;
    bulge_smooth : float;
  end;

  bTrackToConstraint = packed record
    tar       : PObject;
    reserved1 : int;
    reserved2 : int;
    flags     : int;
    pad       : int;
    subtarget : array [0..63] of char;
  end;

  bRotateLikeConstraint = packed record
    tar       : PObject;
    flag      : int;
    reserved1 : int;
    subtarget : array [0..63] of char;
  end;

  bLocateLikeConstraint = packed record
    tar       : PObject;
    flag      : int;
    reserved1 : int;
    subtarget : array [0..63] of char;
  end;

  bSizeLikeConstraint = packed record
    tar       : PObject;
    flag      : int;
    reserved1 : int;
    subtarget : array [0..63] of char;
  end;

  bSameVolumeConstraint = packed record
    flag   : int;
    volume : float;
  end;

  bTransLikeConstraint = packed record
    tar       : PObject;
    subtarget : array [0..63] of char;
  end;

  bMinMaxConstraint = packed record
    tar        : PObject;
    minmaxflag : int;
    offset     : float;
    flag       : int;
    sticky     : short;
    stuck      : short;
    pad1       : short;
    pad2       : short;
    cache      : array [0..2] of float;
    subtarget  : array [0..63] of char;
  end;

  bActionConstraint = packed record
    tar       : PObject;
    type_     : short;
    local     : short;
    start     : int;
    end_      : int;
    min       : float;
    max       : float;
    flag      : int;
    act       : PbAction;
    subtarget : array [0..63] of char;
  end;

  bLockTrackConstraint = packed record
    tar       : PObject;
    trackflag : int;
    lockflag  : int;
    subtarget : array [0..63] of char;
  end;

  bDampTrackConstraint = packed record
    tar       : PObject;
    trackflag : int;
    pad       : int;
    subtarget : array [0..63] of char;
  end;

  bFollowPathConstraint = packed record
    tar        : PObject;
    offset     : float;
    offset_fac : float;
    followflag : int;
    trackflag  : short;
    upflag     : short;
  end;

  bStretchToConstraint = packed record
    tar          : PObject;
    flag         : int;
    volmode      : int;
    plane        : int;
    orglength    : float;
    bulge        : float;
    bulge_min    : float;
    bulge_max    : float;
    bulge_smooth : float;
    subtarget    : array [0..63] of char;
  end;

  bRigidBodyJointConstraint = packed record
    tar      : PObject;
    child    : PObject;
    type_    : int;
    pivX     : float;
    pivY     : float;
    pivZ     : float;
    axX      : float;
    axY      : float;
    axZ      : float;
    minLimit : array [0..5] of float;
    maxLimit : array [0..5] of float;
    extraFz  : float;
    flag     : short;
    pad      : short;
    pad1     : short;
    pad2     : short;
  end;

  bClampToConstraint = packed record
    tar   : PObject;
    flag  : int;
    flag2 : int;
  end;

  bChildOfConstraint = packed record
    tar       : PObject;
    flag      : int;
    pad       : int;
    invmat    : array [0..3,0..3] of float;
    subtarget : array [0..63] of char;
  end;

  bTransformConstraint = packed record
    tar            : PObject;
    subtarget      : array [0..63] of char;
    from           : short;
    to_            : short;
    map            : array [0..2] of char;
    expo           : char;
    from_min       : array [0..2] of float;
    from_max       : array [0..2] of float;
    to_min         : array [0..2] of float;
    to_max         : array [0..2] of float;
    from_min_rot   : array [0..2] of float;
    from_max_rot   : array [0..2] of float;
    to_min_rot     : array [0..2] of float;
    to_max_rot     : array [0..2] of float;
    from_min_scale : array [0..2] of float;
    from_max_scale : array [0..2] of float;
    to_min_scale   : array [0..2] of float;
    to_max_scale   : array [0..2] of float;
  end;

  bPivotConstraint = packed record
    tar       : PObject;
    subtarget : array [0..63] of char;
    offset    : array [0..2] of float;
    rotAxis   : short;
    flag      : short;
  end;

  bLocLimitConstraint = packed record
    xmin  : float;
    xmax  : float;
    ymin  : float;
    ymax  : float;
    zmin  : float;
    zmax  : float;
    flag  : short;
    flag2 : short;
  end;

  bRotLimitConstraint = packed record
    xmin  : float;
    xmax  : float;
    ymin  : float;
    ymax  : float;
    zmin  : float;
    zmax  : float;
    flag  : short;
    flag2 : short;
  end;

  bSizeLimitConstraint = packed record
    xmin  : float;
    xmax  : float;
    ymin  : float;
    ymax  : float;
    zmin  : float;
    zmax  : float;
    flag  : short;
    flag2 : short;
  end;

  bDistLimitConstraint = packed record
    tar       : PObject;
    subtarget : array [0..63] of char;
    dist      : float;
    soft      : float;
    flag      : short;
    mode      : short;
    pad       : int;
  end;

  bShrinkwrapConstraint = packed record
    target        : PObject;
    dist          : float;
    shrinkType    : short;
    projAxis      : char;
    projAxisSpace : char;
    projLimit     : float;
    pad           : array [0..3] of char;
  end;

  bFollowTrackConstraint = packed record
    clip         : PMovieClip;
    track        : array [0..63] of char;
    flag         : int;
    frame_method : int;
    object_      : array [0..63] of char;
    camera       : PObject;
    depth_ob     : PObject;
  end;

  bCameraSolverConstraint = packed record
    clip : PMovieClip;
    flag : int;
    pad  : int;
  end;

  bObjectSolverConstraint = packed record
    clip    : PMovieClip;
    flag    : int;
    pad     : int;
    object_ : array [0..63] of char;
    invmat  : array [0..3,0..3] of float;
    camera  : PObject;
  end;

  bActionModifier = packed record
    next        : PbActionModifier;
    prev        : PbActionModifier;
    type_       : short;
    flag        : short;
    channel     : array [0..31] of char;
    noisesize   : float;
    turbul      : float;
    channels    : short;
    no_rot_axis : short;
    ob          : PObject;
  end;

  bActionStrip = packed record
    next          : PbActionStrip;
    prev          : PbActionStrip;
    flag          : short;
    mode          : short;
    stride_axis   : short;
    curmod        : short;
    ipo           : PIpo;
    act           : PbAction;
    object_       : PObject;
    start         : float;
    end_          : float;
    actstart      : float;
    actend        : float;
    actoffs       : float;
    stridelen     : float;
    repeat_       : float;
    scale         : float;
    blendin       : float;
    blendout      : float;
    stridechannel : array [0..31] of char;
    offs_bone     : array [0..31] of char;
    modifiers     : ListBase;
  end;

  bNodeStack = packed record
    vec        : array [0..3] of float;
    min        : float;
    max        : float;
    data       : Pvoid;
    hasinput   : short;
    hasoutput  : short;
    datatype   : short;
    sockettype : short;
    is_copy    : short;
    external   : short;
    pad        : array [0..1] of short;
  end;

  bNodeSocket = packed record
    next          : PbNodeSocket;
    prev          : PbNodeSocket;
    new_sock      : PbNodeSocket;
    prop          : PIDProperty;
    identifier    : array [0..63] of char;
    name          : array [0..63] of char;
    storage       : Pvoid;
    type_         : short;
    flag          : short;
    limit         : short;
    in_out        : short;
    typeinfo      : PbNodeSocketType;
    idname        : array [0..63] of char;
    locx          : float;
    locy          : float;
    default_value : Pvoid;
    stack_index   : short;
    stack_type    : short;
    pad           : int;
    cache         : Pvoid;
    own_index     : int;
    to_index      : int;
    groupsock     : PbNodeSocket;
    link          : PbNodeLink;
    ns            : bNodeStack;
  end;

  bNode = packed record
    next           : PbNode;
    prev           : PbNode;
    new_node       : PbNode;
    prop           : PIDProperty;
    typeinfo       : PbNodeType;
    idname         : array [0..63] of char;
    name           : array [0..63] of char;
    flag           : int;
    type_          : short;
    pad            : short;
    done           : short;
    level          : short;
    lasty          : short;
    menunr         : short;
    stack_index    : short;
    nr             : short;
    color          : array [0..2] of float;
    inputs         : ListBase;
    outputs        : ListBase;
    parent         : PbNode;
    id             : PID;
    storage        : Pvoid;
    original       : PbNode;
    internal_links : ListBase;
    locx           : float;
    locy           : float;
    width          : float;
    height         : float;
    miniwidth      : float;
    offsetx        : float;
    offsety        : float;
    anim_init_locx : float;
    anim_ofsx      : float;
    update         : int;
    label_         : array [0..63] of char;
    custom1        : short;
    custom2        : short;
    custom3        : float;
    custom4        : float;
    need_exec      : short;
    exec           : short;
    threaddata     : Pvoid;
    totr           : rctf;
    butr           : rctf;
    prvr           : rctf;
    preview_xsize  : short;
    preview_ysize  : short;
    pad2           : int;
    block          : PuiBlock;
  end;

  bNodeInstanceHashEntry = packed record
    key : bNodeInstanceKey;
    tag : short;
    pad : short;
  end;

  bNodePreview = packed record
    hash_entry : bNodeInstanceHashEntry;
    rect       : Pchar;
    xsize      : short;
    ysize      : short;
    pad        : int;
  end;

  bNodeLink = packed record
    next     : PbNodeLink;
    prev     : PbNodeLink;
    fromnode : PbNode;
    tonode   : PbNode;
    fromsock : PbNodeSocket;
    tosock   : PbNodeSocket;
    flag     : int;
    pad      : int;
  end;

  bNodeTree = packed record
    id                : ID;
    adt               : PAnimData;
    typeinfo          : PbNodeTreeType;
    idname            : array [0..63] of char;
    interface_type    : PStructRNA;
    gpd               : PbGPdata;
    view_center       : array [0..1] of float;
    nodes             : ListBase;
    links             : ListBase;
    type_             : int;
    init              : int;
    cur_index         : int;
    flag              : int;
    update            : int;
    is_updating       : short;
    done              : short;
    pad2              : int;
    nodetype          : int;
    edit_quality      : short;
    render_quality    : short;
    chunksize         : int;
    viewer_border     : rctf;
    inputs            : ListBase;
    outputs           : ListBase;
    previews          : PbNodeInstanceHash;
    active_viewer_key : bNodeInstanceKey;
    pad               : int;
    execdata          : PbNodeTreeExec;
    progress          : Pointer;
    stats_draw        : Pointer;
    test_break        : Pointer;
    update_draw       : Pointer;
    tbh               : Pvoid;
    prh               : Pvoid;
    sdh               : Pvoid;
    udh               : Pvoid;
    duplilock         : Pvoid;
  end;

  bNodeSocketValueInt = packed record
    subtype : int;
    value   : int;
    min     : int;
    max     : int;
  end;

  bNodeSocketValueFloat = packed record
    subtype : int;
    value   : float;
    min     : float;
    max     : float;
  end;

  bNodeSocketValueBoolean = packed record
    value : char;
    pad   : array [0..2] of char;
  end;

  bNodeSocketValueVector = packed record
    subtype : int;
    value   : array [0..2] of float;
    min     : float;
    max     : float;
  end;

  bNodeSocketValueRGBA = packed record
    value : array [0..3] of float;
  end;

  bNodeSocketValueString = packed record
    subtype : int;
    pad     : int;
    value   : array [0..1023] of char;
  end;

  NodeFrame = packed record
    flag       : short;
    label_size : short;
  end;

  NodeImageAnim = packed record
    frames : int;
    sfra   : int;
    nr     : int;
    cyclic : char;
    movie  : char;
    pad    : short;
  end;

  ColorCorrectionData = packed record
    saturation : float;
    contrast   : float;
    gamma      : float;
    gain       : float;
    lift       : float;
    pad        : int;
  end;

  NodeColorCorrection = packed record
    master        : ColorCorrectionData;
    shadows       : ColorCorrectionData;
    midtones      : ColorCorrectionData;
    highlights    : ColorCorrectionData;
    startmidtones : float;
    endmidtones   : float;
  end;

  NodeBokehImage = packed record
    angle        : float;
    flaps        : int;
    rounding     : float;
    catadioptric : float;
    lensshift    : float;
  end;

  NodeBoxMask = packed record
    x        : float;
    y        : float;
    rotation : float;
    height   : float;
    width    : float;
    pad      : int;
  end;

  NodeEllipseMask = packed record
    x        : float;
    y        : float;
    rotation : float;
    height   : float;
    width    : float;
    pad      : int;
  end;

  NodeImageLayer = packed record
    pass_index : int;
    pass_flag  : int;
  end;

  NodeBlurData = packed record
    sizex           : short;
    sizey           : short;
    samples         : short;
    maxspeed        : short;
    minspeed        : short;
    relative        : short;
    aspect          : short;
    curved          : short;
    fac             : float;
    percentx        : float;
    percenty        : float;
    filtertype      : short;
    bokeh           : char;
    gamma           : char;
    image_in_width  : int;
    image_in_height : int;
  end;

  NodeDBlurData = packed record
    center_x : float;
    center_y : float;
    distance : float;
    angle    : float;
    spin     : float;
    zoom     : float;
    iter     : short;
    wrap     : char;
    pad      : char;
  end;

  NodeBilateralBlurData = packed record
    sigma_color : float;
    sigma_space : float;
    iter        : short;
    pad         : short;
  end;

  NodeHueSat = packed record
    hue : float;
    sat : float;
    val : float;
  end;

  NodeImageFile = packed record
    name      : array [0..1023] of char;
    im_format : ImageFormatData;
    sfra      : int;
    efra      : int;
  end;

  NodeImageMultiFile = packed record
    base_path    : array [0..1023] of char;
    format       : ImageFormatData;
    sfra         : int;
    efra         : int;
    active_input : int;
    pad          : int;
  end;

  NodeImageMultiFileSocket = packed record
    use_render_format : short;
    use_node_format   : short;
    pad1              : int;
    path              : array [0..1023] of char;
    format            : ImageFormatData;
    layer             : array [0..29] of char;
    pad2              : array [0..1] of char;
  end;

  NodeChroma = packed record
    t1        : float;
    t2        : float;
    t3        : float;
    fsize     : float;
    fstrength : float;
    falpha    : float;
    key       : array [0..3] of float;
    algorithm : short;
    channel   : short;
  end;

  NodeTwoXYs = packed record
    x1     : short;
    x2     : short;
    y1     : short;
    y2     : short;
    fac_x1 : float;
    fac_x2 : float;
    fac_y1 : float;
    fac_y2 : float;
  end;

  NodeTwoFloats = packed record
    x : float;
    y : float;
  end;

  NodeGeometry = packed record
    uvname  : array [0..63] of char;
    colname : array [0..63] of char;
  end;

  NodeVertexCol = packed record
    name : array [0..63] of char;
  end;

  NodeDefocus = packed record
    bktype   : char;
    pad_c1   : char;
    preview  : char;
    gamco    : char;
    samples  : short;
    no_zbuf  : short;
    fstop    : float;
    maxblur  : float;
    bthresh  : float;
    scale    : float;
    rotation : float;
    pad_f1   : float;
  end;

  NodeScriptDict = packed record
    dict : Pvoid;
    node : Pvoid;
  end;

  NodeGlare = packed record
    quality   : char;
    type_     : char;
    iter      : char;
    angle     : char;
    pad_c1    : char;
    size      : char;
    pad       : array [0..1] of char;
    colmod    : float;
    mix       : float;
    threshold : float;
    fade      : float;
    angle_ofs : float;
    pad_f1    : float;
  end;

  NodeTonemap = packed record
    key    : float;
    offset : float;
    gamma  : float;
    f      : float;
    m      : float;
    a      : float;
    c      : float;
    type_  : int;
  end;

  NodeLensDist = packed record
    jit  : short;
    proj : short;
    fit  : short;
    pad  : short;
  end;

  NodeColorBalance = packed record
    slope  : array [0..2] of float;
    offset : array [0..2] of float;
    power  : array [0..2] of float;
    lift   : array [0..2] of float;
    gamma  : array [0..2] of float;
    gain   : array [0..2] of float;
  end;

  NodeColorspill = packed record
    limchan  : short;
    unspill  : short;
    limscale : float;
    uspillr  : float;
    uspillg  : float;
    uspillb  : float;
  end;

  NodeDilateErode = packed record
    falloff : char;
    pad     : array [0..6] of char;
  end;

  NodeMask = packed record
    size_x : int;
    size_y : int;
  end;

  NodeTexBase = packed record
    tex_mapping   : TexMapping;
    color_mapping : ColorMapping;
  end;

  NodeTexSky = packed record
    base          : NodeTexBase;
    sky_model     : int;
    sun_direction : array [0..2] of float;
    turbidity     : float;
    ground_albedo : float;
  end;

  NodeTexImage = packed record
    base             : NodeTexBase;
    iuser            : ImageUser;
    color_space      : int;
    projection       : int;
    projection_blend : float;
    interpolation    : int;
    extension        : int;
    pad              : int;
  end;

  NodeTexChecker = packed record
    base : NodeTexBase;
  end;

  NodeTexBrick = packed record
    base        : NodeTexBase;
    offset_freq : int;
    squash_freq : int;
    offset      : float;
    squash      : float;
  end;

  NodeTexEnvironment = packed record
    base          : NodeTexBase;
    iuser         : ImageUser;
    color_space   : int;
    projection    : int;
    interpolation : int;
    pad           : int;
  end;

  NodeTexGradient = packed record
    base          : NodeTexBase;
    gradient_type : int;
    pad           : int;
  end;

  NodeTexNoise = packed record
    base : NodeTexBase;
  end;

  NodeTexVoronoi = packed record
    base     : NodeTexBase;
    coloring : int;
    pad      : int;
  end;

  NodeTexMusgrave = packed record
    base          : NodeTexBase;
    musgrave_type : int;
    pad           : int;
  end;

  NodeTexWave = packed record
    base         : NodeTexBase;
    wave_type    : int;
    wave_profile : int;
  end;

  NodeTexMagic = packed record
    base  : NodeTexBase;
    depth : int;
    pad   : int;
  end;

  NodeShaderAttribute = packed record
    name : array [0..63] of char;
  end;

  NodeShaderVectTransform = packed record
    type_        : int;
    convert_from : int;
    convert_to   : int;
    pad          : int;
  end;

  NodeShaderTexPointDensity = packed record
    base            : NodeTexBase;
    point_source    : short;
    pad             : short;
    particle_system : int;
    radius          : float;
    resolution      : int;
    space           : short;
    interpolation   : short;
    color_source    : short;
    pad2            : short;
    pd              : PointDensity;
  end;

  TexNodeOutput = packed record
    name : array [0..63] of char;
  end;

  NodeKeyingScreenData = packed record
    tracking_object : array [0..63] of char;
  end;

  NodeKeyingData = packed record
    screen_balance        : float;
    despill_factor        : float;
    despill_balance       : float;
    edge_kernel_radius    : int;
    edge_kernel_tolerance : float;
    clip_black            : float;
    clip_white            : float;
    dilate_distance       : int;
    feather_distance      : int;
    feather_falloff       : int;
    blur_pre              : int;
    blur_post             : int;
  end;

  NodeTrackPosData = packed record
    tracking_object : array [0..63] of char;
    track_name      : array [0..63] of char;
  end;

  NodeTranslateData = packed record
    wrap_axis : char;
    relative  : char;
    pad       : array [0..5] of char;
  end;

  NodePlaneTrackDeformData = packed record
    tracking_object     : array [0..63] of char;
    plane_track_name    : array [0..63] of char;
    flag                : char;
    motion_blur_samples : char;
    pad                 : array [0..1] of char;
    motion_blur_shutter : float;
  end;

  NodeShaderScript = packed record
    mode          : int;
    flag          : int;
    filepath      : array [0..1023] of char;
    bytecode_hash : array [0..63] of char;
    bytecode      : Pchar;
  end;

  NodeShaderTangent = packed record
    direction_type : int;
    axis           : int;
    uv_map         : array [0..63] of char;
  end;

  NodeShaderNormalMap = packed record
    space  : int;
    uv_map : array [0..63] of char;
  end;

  NodeShaderUVMap = packed record
    uv_map : array [0..63] of char;
  end;

  NodeSunBeams = packed record
    source     : array [0..1] of float;
    ray_length : float;
  end;

  CurveMapPoint = packed record
    x      : float;
    y      : float;
    flag   : short;
    shorty : short;
  end;

  BrushClone = packed record
    image  : PImage;
    offset : array [0..1] of float;
    alpha  : float;
    pad    : float;
  end;

  Brush = packed record
    id                     : ID;
    clone                  : BrushClone;
    curve                  : PCurveMapping;
    mtex                   : MTex;
    mask_mtex              : MTex;
    toggle_brush           : PBrush;
    icon_imbuf             : PImBuf;
    preview                : PPreviewImage;
    gradient               : PColorBand;
    paint_curve            : PPaintCurve;
    icon_filepath          : array [0..1023] of char;
    normal_weight          : float;
    rake_factor            : float;
    pad                    : int;
    blend                  : short;
    ob_mode                : short;
    weight                 : float;
    size                   : int;
    flag                   : int;
    mask_pressure          : int;
    jitter                 : float;
    jitter_absolute        : int;
    overlay_flags          : int;
    spacing                : int;
    smooth_stroke_radius   : int;
    smooth_stroke_factor   : float;
    rate                   : float;
    rgb                    : array [0..2] of float;
    alpha                  : float;
    secondary_rgb          : array [0..2] of float;
    sculpt_plane           : int;
    plane_offset           : float;
    flag2                  : int;
    gradient_spacing       : int;
    gradient_stroke_mode   : int;
    gradient_fill_mode     : int;
    sculpt_tool            : char;
    vertexpaint_tool       : char;
    imagepaint_tool        : char;
    mask_tool              : char;
    autosmooth_factor      : float;
    crease_pinch_factor    : float;
    plane_trim             : float;
    height                 : float;
    texture_sample_bias    : float;
    texture_overlay_alpha  : int;
    mask_overlay_alpha     : int;
    cursor_overlay_alpha   : int;
    unprojected_radius     : float;
    sharp_threshold        : float;
    blur_kernel_radius     : int;
    blur_mode              : int;
    fill_threshold         : float;
    add_col                : array [0..2] of float;
    sub_col                : array [0..2] of float;
    stencil_pos            : array [0..1] of float;
    stencil_dimension      : array [0..1] of float;
    mask_stencil_pos       : array [0..1] of float;
    mask_stencil_dimension : array [0..1] of float;
  end;

  PaletteColor = packed record
    next  : PPaletteColor;
    prev  : PPaletteColor;
    rgb   : array [0..2] of float;
    value : float;
  end;

  Palette = packed record
    id           : ID;
    colors       : ListBase;
    active_color : int;
    pad          : int;
  end;

  PaintCurvePoint = packed record
    bez      : BezTriple;
    pressure : float;
  end;

  PaintCurve = packed record
    id         : ID;
    points     : PPaintCurvePoint;
    tot_points : int;
    add_index  : int;
  end;

  CustomDataLayer = packed record
    type_        : int;
    offset       : int;
    flag         : int;
    active       : int;
    active_rnd   : int;
    active_clone : int;
    active_mask  : int;
    uid          : int;
    name         : array [0..63] of char;
    data         : Pvoid;
  end;

  CustomDataExternal = packed record
    filename : array [0..1023] of char;
  end;

  HairKey = packed record
    co       : array [0..2] of float;
    time     : float;
    weight   : float;
    editflag : short;
    pad      : short;
    world_co : array [0..2] of float;
  end;

  ParticleKey = packed record
    co   : array [0..2] of float;
    vel  : array [0..2] of float;
    rot  : array [0..3] of float;
    ave  : array [0..2] of float;
    time : float;
  end;

  BoidData = packed record
    health   : float;
    acc      : array [0..2] of float;
    state_id : short;
    mode     : short;
  end;

  BoidParticle = packed record
    ground  : PObject;
    data    : BoidData;
    gravity : array [0..2] of float;
    wander  : array [0..2] of float;
    rt      : float;
  end;

  ParticleSpring = packed record
    rest_length    : float;
    particle_index : array [0..1] of int;
    delete_flag    : int;
  end;

  ChildParticle = packed record
    num     : int;
    parent  : int;
    pa      : array [0..3] of int;
    w       : array [0..3] of float;
    fuv     : array [0..3] of float;
    foffset : float;
    rt      : float;
  end;

  ParticleTarget = packed record
    next     : PParticleTarget;
    prev     : PParticleTarget;
    ob       : PObject;
    psys     : int;
    flag     : short;
    mode     : short;
    time     : float;
    duration : float;
  end;

  ParticleDupliWeight = packed record
    next  : PParticleDupliWeight;
    prev  : PParticleDupliWeight;
    ob    : PObject;
    count : short;
    flag  : short;
    index : short;
    rt    : short;
  end;

  ParticleData = packed record
    state       : ParticleKey;
    prev_state  : ParticleKey;
    hair        : PHairKey;
    keys        : PParticleKey;
    boid        : PBoidParticle;
    totkey      : int;
    time        : float;
    lifetime    : float;
    dietime     : float;
    num         : int;
    num_dmcache : int;
    fuv         : array [0..3] of float;
    foffset     : float;
    size        : float;
    sphdensity  : float;
    pad         : int;
    hair_index  : int;
    flag        : short;
    alive       : short;
  end;

  SPHFluidSettings = packed record
    radius              : float;
    spring_k            : float;
    rest_length         : float;
    plasticity_constant : float;
    yield_ratio         : float;
    plasticity_balance  : float;
    yield_balance       : float;
    viscosity_omega     : float;
    viscosity_beta      : float;
    stiffness_k         : float;
    stiffness_knear     : float;
    rest_density        : float;
    buoyancy            : float;
    flag                : int;
    spring_frames       : int;
    solver              : short;
    pad                 : array [0..2] of short;
  end;

  ParticleSettings = packed record
    id                  : ID;
    adt                 : PAnimData;
    boids               : PBoidSettings;
    fluid               : PSPHFluidSettings;
    effector_weights    : PEffectorWeights;
    flag                : int;
    rt                  : int;
    type_               : short;
    from                : short;
    distr               : short;
    texact              : short;
    phystype            : short;
    rotmode             : short;
    avemode             : short;
    reactevent          : short;
    draw                : int;
    pad1                : int;
    draw_as             : short;
    draw_size           : short;
    childtype           : short;
    pad2                : short;
    ren_as              : short;
    subframes           : short;
    draw_col            : short;
    draw_step           : short;
    ren_step            : short;
    hair_step           : short;
    keys_step           : short;
    adapt_angle         : short;
    adapt_pix           : short;
    disp                : short;
    omat                : short;
    interpolation       : short;
    integrator          : short;
    rotfrom             : short;
    kink                : short;
    kink_axis           : short;
    bb_align            : short;
    bb_uv_split         : short;
    bb_anim             : short;
    bb_split_offset     : short;
    bb_tilt             : float;
    bb_rand_tilt        : float;
    bb_offset           : array [0..1] of float;
    bb_size             : array [0..1] of float;
    bb_vel_head         : float;
    bb_vel_tail         : float;
    color_vec_max       : float;
    simplify_flag       : short;
    simplify_refsize    : short;
    simplify_rate       : float;
    simplify_transition : float;
    simplify_viewport   : float;
    sta                 : float;
    end_                : float;
    lifetime            : float;
    randlife            : float;
    timetweak           : float;
    courant_target      : float;
    jitfac              : float;
    eff_hair            : float;
    grid_rand           : float;
    ps_offset           : array [0..0] of float;
    totpart             : int;
    userjit             : int;
    grid_res            : int;
    effector_amount     : int;
    time_flag           : short;
    time_pad            : array [0..2] of short;
    normfac             : float;
    obfac               : float;
    randfac             : float;
    partfac             : float;
    tanfac              : float;
    tanphase            : float;
    reactfac            : float;
    ob_vel              : array [0..2] of float;
    avefac              : float;
    phasefac            : float;
    randrotfac          : float;
    randphasefac        : float;
    mass                : float;
    size                : float;
    randsize            : float;
    acc                 : array [0..2] of float;
    dragfac             : float;
    brownfac            : float;
    dampfac             : float;
    randlength          : float;
    child_flag          : int;
    pad3                : int;
    child_nbr           : int;
    ren_child_nbr       : int;
    parents             : float;
    childsize           : float;
    childrandsize       : float;
    childrad            : float;
    childflat           : float;
    clumpfac            : float;
    clumppow            : float;
    kink_amp            : float;
    kink_freq           : float;
    kink_shape          : float;
    kink_flat           : float;
    kink_amp_clump      : float;
    kink_extra_steps    : int;
    pad4                : int;
    kink_axis_random    : float;
    kink_amp_random     : float;
    rough1              : float;
    rough1_size         : float;
    rough2              : float;
    rough2_size         : float;
    rough2_thres        : float;
    rough_end           : float;
    rough_end_shape     : float;
    clength             : float;
    clength_thres       : float;
    parting_fac         : float;
    parting_min         : float;
    parting_max         : float;
    branch_thres        : float;
    draw_line           : array [0..1] of float;
    path_start          : float;
    path_end            : float;
    trail_count         : int;
    keyed_loops         : int;
    clumpcurve          : PCurveMapping;
    roughcurve          : PCurveMapping;
    clump_noise_size    : float;
    bending_random      : float;
    mtex                : array [0..17] of PMTex;
    dup_group           : PGroup;
    dupliweights        : ListBase;
    eff_group           : PGroup;
    dup_ob              : PObject;
    bb_ob               : PObject;
    ipo                 : PIpo;
    pd                  : PPartDeflect;
    pd2                 : PPartDeflect;
    use_modifier_stack  : short;
    pad5                : array [0..2] of short;
  end;

  ParticleSystem = packed record
    next                : PParticleSystem;
    prev                : PParticleSystem;
    part                : PParticleSettings;
    particles           : PParticleData;
    child               : PChildParticle;
    edit                : PPTCacheEdit;
    free_edit           : Pointer;
    pathcache           : ^PParticleCacheKey;
    childcache          : ^PParticleCacheKey;
    pathcachebufs       : ListBase;
    childcachebufs      : ListBase;
    clmd                : PClothModifierData;
    hair_in_dm          : PDerivedMesh;
    hair_out_dm         : PDerivedMesh;
    target_ob           : PObject;
    lattice_deform_data : PLatticeDeformData;
    parent              : PObject;
    targets             : ListBase;
    name                : array [0..63] of char;
    imat                : array [0..3,0..3] of float;
    cfra                : float;
    tree_frame          : float;
    bvhtree_frame       : float;
    seed                : int;
    child_seed          : int;
    flag                : int;
    totpart             : int;
    totunexist          : int;
    totchild            : int;
    totcached           : int;
    totchildcache       : int;
    recalc              : short;
    target_psys         : short;
    totkeyed            : short;
    bakespace           : short;
    bb_uvname           : array [0..2,0..63] of char;
    vgroup              : array [0..11] of short;
    vg_neg              : short;
    rt3                 : short;
    renderdata          : PParticleRenderData;
    pointcache          : PPointCache;
    ptcaches            : ListBase;
    effectors           : PListBase;
    fluid_springs       : PParticleSpring;
    tot_fluidsprings    : int;
    alloc_fluidsprings  : int;
    tree                : PKDTree;
    bvhtree             : PBVHTree;
    pdd                 : PParticleDrawData;
    dt_frac             : float;
    _pad                : float;
  end;

  ClothSimSettings = packed record
    cache             : PLinkNode;
    mingoal           : float;
    Cdis              : float;
    Cvi               : float;
    gravity           : array [0..2] of float;
    dt                : float;
    mass              : float;
    structural        : float;
    shear             : float;
    bending           : float;
    max_bend          : float;
    max_struct        : float;
    max_shear         : float;
    max_sewing        : float;
    avg_spring_len    : float;
    timescale         : float;
    maxgoal           : float;
    eff_force_scale   : float;
    eff_wind_scale    : float;
    sim_time_old      : float;
    defgoal           : float;
    goalspring        : float;
    goalfrict         : float;
    velocity_smooth   : float;
    density_target    : float;
    density_strength  : float;
    collider_friction : float;
    vel_damping       : float;
    shrink_min        : float;
    shrink_max        : float;
    bending_damping   : float;
    voxel_cell_size   : float;
    pad               : int;
    stepsPerFrame     : int;
    flags             : int;
    preroll           : int;
    maxspringlen      : int;
    solver_type       : short;
    vgroup_bend       : short;
    vgroup_mass       : short;
    vgroup_struct     : short;
    vgroup_shrink     : short;
    shapekey_rest     : short;
    presets           : short;
    reset             : short;
    effector_weights  : PEffectorWeights;
  end;

  ClothCollSettings = packed record
    collision_list  : PLinkNode;
    epsilon         : float;
    self_friction   : float;
    friction        : float;
    damping         : float;
    selfepsilon     : float;
    repel_force     : float;
    distance_repel  : float;
    flags           : int;
    self_loop_count : short;
    loop_count      : short;
    pad             : int;
    group           : PGroup;
    vgroup_selfcol  : short;
    pad2            : array [0..2] of short;
  end;

  bGPDspoint = packed record
    x        : float;
    y        : float;
    z        : float;
    pressure : float;
    time     : float;
    flag     : int;
  end;

  bGPDstroke = packed record
    next      : PbGPDstroke;
    prev      : PbGPDstroke;
    points    : PbGPDspoint;
    pad       : Pvoid;
    totpoints : int;
    thickness : short;
    flag      : short;
    inittime  : double;
  end;

  bGPDframe = packed record
    next     : PbGPDframe;
    prev     : PbGPDframe;
    strokes  : ListBase;
    framenum : int;
    flag     : short;
    key_type : short;
  end;

  bGPDlayer = packed record
    next        : PbGPDlayer;
    prev        : PbGPDlayer;
    frames      : ListBase;
    actframe    : PbGPDframe;
    flag        : short;
    thickness   : short;
    gstep       : short;
    gstep_next  : short;
    gcolor_prev : array [0..2] of float;
    gcolor_next : array [0..2] of float;
    color       : array [0..3] of float;
    fill        : array [0..3] of float;
    info        : array [0..127] of char;
  end;

  bGPdata = packed record
    id            : ID;
    adt           : PAnimData;
    layers        : ListBase;
    flag          : int;
    sbuffer_size  : short;
    sbuffer_sflag : short;
    sbuffer       : Pvoid;
  end;

  ReportList = packed record
    list        : ListBase;
    printlevel  : int;
    storelevel  : int;
    flag        : int;
    pad         : int;
    reporttimer : PwmTimer;
  end;

  wmWindowManager = packed record
    id                  : ID;
    windrawable         : PwmWindow;
    winactive           : PwmWindow;
    windows             : ListBase;
    initialized         : int;
    file_saved          : short;
    op_undo_depth       : short;
    operators           : ListBase;
    queue               : ListBase;
    reports             : ReportList;
    jobs                : ListBase;
    paintcursors        : ListBase;
    drags               : ListBase;
    keyconfigs          : ListBase;
    defaultconf         : PwmKeyConfig;
    addonconf           : PwmKeyConfig;
    userconf            : PwmKeyConfig;
    timers              : ListBase;
    autosavetimer       : PwmTimer;
    is_interface_locked : char;
    par                 : array [0..6] of char;
  end;

  wmWindow = packed record
    next            : PwmWindow;
    prev            : PwmWindow;
    ghostwin        : Pvoid;
    screen          : PbScreen;
    newscreen       : PbScreen;
    screenname      : array [0..63] of char;
    posx            : short;
    posy            : short;
    sizex           : short;
    sizey           : short;
    windowstate     : short;
    monitor         : short;
    active          : short;
    cursor          : short;
    lastcursor      : short;
    modalcursor     : short;
    grabcursor      : short;
    addmousemove    : short;
    multisamples    : short;
    pad             : array [0..2] of short;
    winid           : int;
    lock_pie_event  : short;
    last_pie_event  : short;
    eventstate      : PwmEvent;
    curswin         : PwmSubWindow;
    tweak           : PwmGesture;
    ime_data        : PwmIMEData;
    drawmethod      : int;
    drawfail        : int;
    drawdata        : ListBase;
    queue           : ListBase;
    handlers        : ListBase;
    modalhandlers   : ListBase;
    subwindows      : ListBase;
    gesture         : ListBase;
    stereo3d_format : PStereo3dFormat;
  end;

  wmKeyMapItem = packed record
    next          : PwmKeyMapItem;
    prev          : PwmKeyMapItem;
    idname        : array [0..63] of char;
    properties    : PIDProperty;
    propvalue_str : array [0..63] of char;
    propvalue     : short;
    type_         : short;
    val           : short;
    shift         : short;
    ctrl          : short;
    alt           : short;
    oskey         : short;
    keymodifier   : short;
    flag          : short;
    maptype       : short;
    id            : short;
    pad           : short;
    ptr           : PPointerRNA;
  end;

  wmKeyMapDiffItem = packed record
    next        : PwmKeyMapDiffItem;
    prev        : PwmKeyMapDiffItem;
    remove_item : PwmKeyMapItem;
    add_item    : PwmKeyMapItem;
  end;

  wmKeyMap = packed record
    next        : PwmKeyMap;
    prev        : PwmKeyMap;
    items       : ListBase;
    diff_items  : ListBase;
    idname      : array [0..63] of char;
    spaceid     : short;
    regionid    : short;
    flag        : short;
    kmi_id      : short;
    poll        : Pointer;
    modal_items : Pvoid;
  end;

  wmKeyConfig = packed record
    next      : PwmKeyConfig;
    prev      : PwmKeyConfig;
    idname    : array [0..63] of char;
    basename  : array [0..63] of char;
    keymaps   : ListBase;
    actkeymap : int;
    flag      : int;
  end;

  wmOperator = packed record
    next        : PwmOperator;
    prev        : PwmOperator;
    idname      : array [0..63] of char;
    properties  : PIDProperty;
    type_       : PwmOperatorType;
    customdata  : Pvoid;
    py_instance : Pvoid;
    ptr         : PPointerRNA;
    reports     : PReportList;
    macro       : ListBase;
    opm         : PwmOperator;
    layout      : PuiLayout;
    flag        : short;
    pad         : array [0..2] of short;
  end;

  FModifier = packed record
    next      : PFModifier;
    prev      : PFModifier;
    data      : Pvoid;
    name      : array [0..63] of char;
    type_     : short;
    flag      : short;
    influence : float;
    sfra      : float;
    efra      : float;
    blendin   : float;
    blendout  : float;
  end;

  FMod_Generator = packed record
    coefficients : Pfloat;
    arraysize    : int;
    poly_order   : int;
    mode         : int;
    flag         : int;
  end;

  FMod_FunctionGenerator = packed record
    amplitude        : float;
    phase_multiplier : float;
    phase_offset     : float;
    value_offset     : float;
    type_            : int;
    flag             : int;
  end;

  FCM_EnvelopeData = packed record
    min  : float;
    max  : float;
    time : float;
    f1   : short;
    f2   : short;
  end;

  FMod_Envelope = packed record
    data    : PFCM_EnvelopeData;
    totvert : int;
    midval  : float;
    min     : float;
    max     : float;
  end;

  FMod_Cycles = packed record
    before_mode   : short;
    after_mode    : short;
    before_cycles : short;
    after_cycles  : short;
  end;

  FMod_Python = packed record
    script : PText;
    prop   : PIDProperty;
  end;

  FMod_Limits = packed record
    rect : rctf;
    flag : int;
    pad  : int;
  end;

  FMod_Noise = packed record
    size         : float;
    strength     : float;
    phase        : float;
    offset       : float;
    depth        : short;
    modification : short;
  end;

  FMod_Stepped = packed record
    step_size   : float;
    offset      : float;
    start_frame : float;
    end_frame   : float;
    flag        : int;
  end;

  DriverTarget = packed record
    id         : PID;
    rna_path   : Pchar;
    pchan_name : array [0..31] of char;
    transChan  : short;
    flag       : short;
    idtype     : int;
  end;

  DriverVar = packed record
    next        : PDriverVar;
    prev        : PDriverVar;
    name        : array [0..63] of char;
    targets     : array [0..7] of DriverTarget;
    num_targets : short;
    type_       : short;
    curval      : float;
  end;

  ChannelDriver = packed record
    variables  : ListBase;
    expression : array [0..255] of char;
    expr_comp  : Pvoid;
    curval     : float;
    influence  : float;
    type_      : int;
    flag       : int;
  end;

  FPoint = packed record
    vec  : array [0..1] of float;
    flag : int;
    pad  : int;
  end;

  FCurve = packed record
    next             : PFCurve;
    prev             : PFCurve;
    grp              : PbActionGroup;
    driver           : PChannelDriver;
    modifiers        : ListBase;
    bezt             : PBezTriple;
    fpt              : PFPoint;
    totvert          : int;
    curval           : float;
    flag             : short;
    extend           : short;
    array_index      : int;
    rna_path         : Pchar;
    color_mode       : int;
    color            : array [0..2] of float;
    prev_norm_factor : float;
    prev_offset      : float;
  end;

  AnimMapPair = packed record
    from : array [0..127] of char;
    to_  : array [0..127] of char;
  end;

  AnimMapper = packed record
    next     : PAnimMapper;
    prev     : PAnimMapper;
    target   : PbAction;
    mappings : ListBase;
  end;

  NlaStrip = packed record
    next           : PNlaStrip;
    prev           : PNlaStrip;
    strips         : ListBase;
    act            : PbAction;
    remap          : PAnimMapper;
    fcurves        : ListBase;
    modifiers      : ListBase;
    name           : array [0..63] of char;
    influence      : float;
    strip_time     : float;
    start          : float;
    end_           : float;
    actstart       : float;
    actend         : float;
    repeat_        : float;
    scale          : float;
    blendin        : float;
    blendout       : float;
    blendmode      : short;
    extendmode     : short;
    pad1           : short;
    type_          : short;
    speaker_handle : Pvoid;
    flag           : int;
    pad2           : int;
  end;

  NlaTrack = packed record
    next   : PNlaTrack;
    prev   : PNlaTrack;
    strips : ListBase;
    flag   : int;
    index  : int;
    name   : array [0..63] of char;
  end;

  KS_Path = packed record
    next           : PKS_Path;
    prev           : PKS_Path;
    id             : PID;
    group          : array [0..63] of char;
    idtype         : int;
    groupmode      : short;
    flag           : short;
    rna_path       : Pchar;
    array_index    : int;
    keyingflag     : short;
    keyingoverride : short;
  end;

  KeyingSet = packed record
    next           : PKeyingSet;
    prev           : PKeyingSet;
    paths          : ListBase;
    idname         : array [0..63] of char;
    name           : array [0..63] of char;
    description    : array [0..239] of char;
    typeinfo       : array [0..63] of char;
    active_path    : int;
    flag           : short;
    keyingflag     : short;
    keyingoverride : short;
    pad            : array [0..5] of char;
  end;

  AnimOverride = packed record
    next        : PAnimOverride;
    prev        : PAnimOverride;
    rna_path    : Pchar;
    array_index : int;
    value       : float;
  end;

  AnimData = packed record
    action         : PbAction;
    tmpact         : PbAction;
    remap          : PAnimMapper;
    nla_tracks     : ListBase;
    act_track      : PNlaTrack;
    actstrip       : PNlaStrip;
    drivers        : ListBase;
    overrides      : ListBase;
    flag           : int;
    recalc         : int;
    act_blendmode  : short;
    act_extendmode : short;
    act_influence  : float;
  end;

  IdAdtTemplate = packed record
    id  : ID;
    adt : PAnimData;
  end;

  BoidRule = packed record
    next  : PBoidRule;
    prev  : PBoidRule;
    type_ : int;
    flag  : int;
    name  : array [0..31] of char;
  end;

  BoidRuleGoalAvoid = packed record
    rule        : BoidRule;
    ob          : PObject;
    options     : int;
    fear_factor : float;
    signal_id   : int;
    channels    : int;
  end;

  BoidRuleAvoidCollision = packed record
    rule       : BoidRule;
    options    : int;
    look_ahead : float;
  end;

  BoidRuleFollowLeader = packed record
    rule       : BoidRule;
    ob         : PObject;
    loc        : array [0..2] of float;
    oloc       : array [0..2] of float;
    cfra       : float;
    distance   : float;
    options    : int;
    queue_size : int;
  end;

  BoidRuleAverageSpeed = packed record
    rule   : BoidRule;
    wander : float;
    level  : float;
    speed  : float;
    rt     : float;
  end;

  BoidRuleFight = packed record
    rule          : BoidRule;
    distance      : float;
    flee_distance : float;
  end;

  BoidState = packed record
    next           : PBoidState;
    prev           : PBoidState;
    rules          : ListBase;
    conditions     : ListBase;
    actions        : ListBase;
    name           : array [0..31] of char;
    id             : int;
    flag           : int;
    ruleset_type   : int;
    rule_fuzziness : float;
    signal_id      : int;
    channels       : int;
    volume         : float;
    falloff        : float;
  end;

  BoidSettings = packed record
    options             : int;
    last_state_id       : int;
    landing_smoothness  : float;
    height              : float;
    banking             : float;
    pitch               : float;
    health              : float;
    aggression          : float;
    strength            : float;
    accuracy            : float;
    range               : float;
    air_min_speed       : float;
    air_max_speed       : float;
    air_max_acc         : float;
    air_max_ave         : float;
    air_personal_space  : float;
    land_jump_speed     : float;
    land_max_speed      : float;
    land_max_acc        : float;
    land_max_ave        : float;
    land_personal_space : float;
    land_stick_force    : float;
    states              : ListBase;
  end;

  SmokeDomainSettings = packed record
    smd               : PSmokeModifierData;
    fluid             : PFLUID_3D;
    fluid_mutex       : Pvoid;
    fluid_group       : PGroup;
    eff_group         : PGroup;
    coll_group        : PGroup;
    wt                : PWTURBULENCE;
    tex               : PGPUTexture;
    tex_wt            : PGPUTexture;
    tex_shadow        : PGPUTexture;
    tex_flame         : PGPUTexture;
    shadow            : Pfloat;
    p0                : array [0..2] of float;
    p1                : array [0..2] of float;
    dp0               : array [0..2] of float;
    cell_size         : array [0..2] of float;
    global_size       : array [0..2] of float;
    prev_loc          : array [0..2] of float;
    shift             : array [0..2] of int;
    shift_f           : array [0..2] of float;
    obj_shift_f       : array [0..2] of float;
    imat              : array [0..3,0..3] of float;
    obmat             : array [0..3,0..3] of float;
    fluidmat          : array [0..3,0..3] of float;
    fluidmat_wt       : array [0..3,0..3] of float;
    base_res          : array [0..2] of int;
    res_min           : array [0..2] of int;
    res_max           : array [0..2] of int;
    res               : array [0..2] of int;
    total_cells       : int;
    dx                : float;
    scale             : float;
    adapt_margin      : int;
    adapt_res         : int;
    adapt_threshold   : float;
    alpha             : float;
    beta              : float;
    amplify           : int;
    maxres            : int;
    flags             : int;
    viewsettings      : int;
    noise             : short;
    diss_percent      : short;
    diss_speed        : int;
    strength          : float;
    res_wt            : array [0..2] of int;
    dx_wt             : float;
    cache_comp        : int;
    cache_high_comp   : int;
    openvdb_comp      : int;
    cache_file_format : char;
    data_depth        : char;
    pad               : array [0..1] of char;
    point_cache       : array [0..1] of PPointCache;
    ptcaches          : array [0..1] of ListBase;
    effector_weights  : PEffectorWeights;
    border_collisions : int;
    time_scale        : float;
    vorticity         : float;
    active_fields     : int;
    active_color      : array [0..2] of float;
    highres_sampling  : int;
    burning_rate      : float;
    flame_smoke       : float;
    flame_vorticity   : float;
    flame_ignition    : float;
    flame_max_temp    : float;
    flame_smoke_color : array [0..2] of float;
  end;

  SmokeFlowSettings = packed record
    smd              : PSmokeModifierData;
    dm               : PDerivedMesh;
    psys             : PParticleSystem;
    noise_texture    : PTex;
    verts_old        : Pfloat;
    numverts         : int;
    vel_multi        : float;
    vel_normal       : float;
    vel_random       : float;
    density          : float;
    color            : array [0..2] of float;
    fuel_amount      : float;
    temp             : float;
    volume_density   : float;
    surface_distance : float;
    particle_size    : float;
    subframes        : int;
    texture_size     : float;
    texture_offset   : float;
    pad              : int;
    uvlayer_name     : array [0..63] of char;
    vgroup_density   : short;
    type_            : short;
    source           : short;
    texture_type     : short;
    flags            : int;
  end;

  SmokeCollSettings = packed record
    smd       : PSmokeModifierData;
    dm        : PDerivedMesh;
    verts_old : Pfloat;
    numverts  : int;
    type_     : short;
    pad       : short;
  end;

  Speaker = packed record
    id                 : ID;
    adt                : PAnimData;
    sound              : PbSound;
    volume_max         : float;
    volume_min         : float;
    distance_max       : float;
    distance_reference : float;
    attenuation        : float;
    cone_angle_outer   : float;
    cone_angle_inner   : float;
    cone_volume_outer  : float;
    volume             : float;
    pitch              : float;
    flag               : short;
    pad1               : array [0..2] of short;
  end;

  MovieClipProxy = packed record
    dir             : array [0..767] of char;
    tc              : short;
    quality         : short;
    build_size_flag : short;
    build_tc_flag   : short;
  end;

  MovieTrackingSettings = packed record
    flag                        : int;
    default_motion_model        : short;
    default_algorithm_flag      : short;
    default_minimum_correlation : float;
    default_pattern_size        : short;
    default_search_size         : short;
    default_frames_limit        : short;
    default_margin              : short;
    default_pattern_match       : short;
    default_flag                : short;
    default_weight              : float;
    motion_flag                 : short;
    speed                       : short;
    keyframe1                   : int;
    keyframe2                   : int;
    reconstruction_flag         : int;
    refine_camera_intrinsics    : short;
    pad2                        : short;
    dist                        : float;
    clean_frames                : int;
    clean_action                : int;
    clean_error                 : float;
    object_distance             : float;
    pad3                        : int;
  end;

  MovieTrackingCamera = packed record
    intrinsics       : Pvoid;
    distortion_model : short;
    pad              : short;
    sensor_width     : float;
    pixel_aspect     : float;
    focal            : float;
    units            : short;
    pad1             : short;
    principal        : array [0..1] of float;
    k1               : float;
    k2               : float;
    k3               : float;
    division_k1      : float;
    division_k2      : float;
  end;

  MovieTrackingReconstruction = packed record
    flag        : int;
    error       : float;
    last_camera : int;
    camnr       : int;
    cameras     : PMovieReconstructedCamera;
  end;

  MovieTrackingStabilization = packed record
    flag      : int;
    tot_track : int;
    act_track : int;
    maxscale  : float;
    rot_track : PMovieTrackingTrack;
    locinf    : float;
    scaleinf  : float;
    rotinf    : float;
    filter    : int;
    ok        : int;
    scale     : float;
  end;

  MovieTrackingObject = packed record
    next           : PMovieTrackingObject;
    prev           : PMovieTrackingObject;
    name           : array [0..63] of char;
    flag           : int;
    scale          : float;
    tracks         : ListBase;
    plane_tracks   : ListBase;
    reconstruction : MovieTrackingReconstruction;
    keyframe1      : int;
    keyframe2      : int;
  end;

  MovieTrackingDopesheet = packed record
    ok                : int;
    sort_method       : short;
    flag              : short;
    coverage_segments : ListBase;
    channels          : ListBase;
    tot_channel       : int;
    pad               : int;
  end;

  MovieTracking = packed record
    settings        : MovieTrackingSettings;
    camera          : MovieTrackingCamera;
    tracks          : ListBase;
    plane_tracks    : ListBase;
    reconstruction  : MovieTrackingReconstruction;
    stabilization   : MovieTrackingStabilization;
    act_track       : PMovieTrackingTrack;
    act_plane_track : PMovieTrackingPlaneTrack;
    objects         : ListBase;
    objectnr        : int;
    tot_object      : int;
    stats           : PMovieTrackingStats;
    dopesheet       : MovieTrackingDopesheet;
  end;

  MovieClip = packed record
    id                  : ID;
    adt                 : PAnimData;
    name                : array [0..1023] of char;
    source              : int;
    lastframe           : int;
    lastsize            : array [0..1] of int;
    aspx                : float;
    aspy                : float;
    anim                : Panim;
    cache               : PMovieClipCache;
    gpd                 : PbGPdata;
    tracking            : MovieTracking;
    tracking_context    : Pvoid;
    proxy               : MovieClipProxy;
    flag                : int;
    len                 : int;
    start_frame         : int;
    frame_offset        : int;
    colorspace_settings : ColorManagedColorspaceSettings;
  end;

  MovieReconstructedCamera = packed record
    framenr : int;
    error   : float;
    mat     : array [0..3,0..3] of float;
  end;

  MovieTrackingTrack = packed record
    next                : PMovieTrackingTrack;
    prev                : PMovieTrackingTrack;
    name                : array [0..63] of char;
    pat_min             : array [0..1] of float;
    pat_max             : array [0..1] of float;
    search_min          : array [0..1] of float;
    search_max          : array [0..1] of float;
    offset              : array [0..1] of float;
    markersnr           : int;
    last_marker         : int;
    markers             : PMovieTrackingMarker;
    bundle_pos          : array [0..2] of float;
    error               : float;
    flag                : int;
    pat_flag            : int;
    search_flag         : int;
    color               : array [0..2] of float;
    frames_limit        : short;
    margin              : short;
    pattern_match       : short;
    motion_model        : short;
    algorithm_flag      : int;
    minimum_correlation : float;
    gpd                 : PbGPdata;
    weight              : float;
    pad                 : float;
  end;

  MovieTrackingPlaneMarker = packed record
    corners : array [0..3,0..1] of float;
    framenr : int;
    flag    : int;
  end;

  MovieTrackingPlaneTrack = packed record
    next           : PMovieTrackingPlaneTrack;
    prev           : PMovieTrackingPlaneTrack;
    name           : array [0..63] of char;
    point_tracks   : ^PMovieTrackingTrack;
    point_tracksnr : int;
    pad            : int;
    markers        : PMovieTrackingPlaneMarker;
    markersnr      : int;
    flag           : int;
    image          : PImage;
    image_opacity  : float;
    last_marker    : int;
  end;

  MovieTrackingStats = packed record
    message : array [0..255] of char;
  end;

  MovieTrackingDopesheetChannel = packed record
    next         : PMovieTrackingDopesheetChannel;
    prev         : PMovieTrackingDopesheetChannel;
    track        : PMovieTrackingTrack;
    pad          : int;
    name         : array [0..63] of char;
    tot_segment  : int;
    segments     : Pint;
    max_segment  : int;
    total_frames : int;
  end;

  MovieTrackingDopesheetCoverageSegment = packed record
    next        : PMovieTrackingDopesheetCoverageSegment;
    prev        : PMovieTrackingDopesheetCoverageSegment;
    coverage    : int;
    start_frame : int;
    end_frame   : int;
    pad         : int;
  end;

  DynamicPaintSurface = packed record
    next                : PDynamicPaintSurface;
    prev                : PDynamicPaintSurface;
    canvas              : PDynamicPaintCanvasSettings;
    data                : PPaintSurfaceData;
    brush_group         : PGroup;
    effector_weights    : PEffectorWeights;
    pointcache          : PPointCache;
    ptcaches            : ListBase;
    current_frame       : int;
    name                : array [0..63] of char;
    format              : short;
    type_               : short;
    disp_type           : short;
    image_fileformat    : short;
    effect_ui           : short;
    preview_id          : short;
    init_color_type     : short;
    pad_s               : short;
    flags               : int;
    effect              : int;
    image_resolution    : int;
    substeps            : int;
    start_frame         : int;
    end_frame           : int;
    pad                 : int;
    init_color          : array [0..3] of float;
    init_texture        : PTex;
    init_layername      : array [0..63] of char;
    dry_speed           : int;
    diss_speed          : int;
    color_dry_threshold : float;
    depth_clamp         : float;
    disp_factor         : float;
    spread_speed        : float;
    color_spread_speed  : float;
    shrink_speed        : float;
    drip_vel            : float;
    drip_acc            : float;
    influence_scale     : float;
    radius_scale        : float;
    wave_damping        : float;
    wave_speed          : float;
    wave_timescale      : float;
    wave_spring         : float;
    wave_smoothness     : float;
    pad2                : int;
    uvlayer_name        : array [0..63] of char;
    image_output_path   : array [0..1023] of char;
    output_name         : array [0..63] of char;
    output_name2        : array [0..63] of char;
  end;

  DynamicPaintCanvasSettings = packed record
    pmd        : PDynamicPaintModifierData;
    dm         : PDerivedMesh;
    surfaces   : ListBase;
    active_sur : short;
    flags      : short;
    pad        : int;
    error      : array [0..63] of char;
  end;

  DynamicPaintBrushSettings = packed record
    pmd               : PDynamicPaintModifierData;
    dm                : PDerivedMesh;
    psys              : PParticleSystem;
    mat               : PMaterial;
    flags             : int;
    collision         : int;
    r                 : float;
    g                 : float;
    b                 : float;
    alpha             : float;
    wetness           : float;
    particle_radius   : float;
    particle_smooth   : float;
    paint_distance    : float;
    paint_ramp        : PColorBand;
    vel_ramp          : PColorBand;
    proximity_falloff : short;
    wave_type         : short;
    ray_dir           : short;
    pad               : short;
    wave_factor       : float;
    wave_clamp        : float;
    max_velocity      : float;
    smudge_strength   : float;
  end;

  Mask = packed record
    id          : ID;
    adt         : PAnimData;
    masklayers  : ListBase;
    masklay_act : int;
    masklay_tot : int;
    sfra        : int;
    efra        : int;
    flag        : int;
    pad         : int;
  end;

  MaskParent = packed record
    id_type             : int;
    type_               : int;
    id                  : PID;
    parent              : array [0..63] of char;
    sub_parent          : array [0..63] of char;
    parent_orig         : array [0..1] of float;
    parent_corners_orig : array [0..3,0..1] of float;
  end;

  MaskSplinePointUW = packed record
    u    : float;
    w    : float;
    flag : int;
  end;

  MaskSplinePoint = packed record
    bezt   : BezTriple;
    pad    : int;
    tot_uw : int;
    uw     : PMaskSplinePointUW;
    parent : MaskParent;
  end;

  MaskSpline = packed record
    next          : PMaskSpline;
    prev          : PMaskSpline;
    flag          : short;
    offset_mode   : char;
    weight_interp : char;
    tot_point     : int;
    points        : PMaskSplinePoint;
    parent        : MaskParent;
    points_deform : PMaskSplinePoint;
  end;

  MaskLayerShape = packed record
    next     : PMaskLayerShape;
    prev     : PMaskLayerShape;
    data     : Pfloat;
    tot_vert : int;
    frame    : int;
    flag     : char;
    pad      : array [0..6] of char;
  end;

  MaskLayer = packed record
    next           : PMaskLayer;
    prev           : PMaskLayer;
    name           : array [0..63] of char;
    splines        : ListBase;
    splines_shapes : ListBase;
    act_spline     : PMaskSpline;
    act_point      : PMaskSplinePoint;
    alpha          : float;
    blend          : char;
    blend_flag     : char;
    falloff        : char;
    pad            : array [0..6] of char;
    flag           : char;
    restrictflag   : char;
  end;

  RigidBodyWorld = packed record
    effector_weights      : PEffectorWeights;
    group                 : PGroup;
    objects               : ^PObject;
    constraints           : PGroup;
    pad                   : int;
    ltime                 : float;
    pointcache            : PPointCache;
    ptcaches              : ListBase;
    numbodies             : int;
    steps_per_second      : short;
    num_solver_iterations : short;
    flag                  : int;
    time_scale            : float;
    physics_world         : Pvoid;
  end;

  RigidBodyOb = packed record
    physics_object   : Pvoid;
    physics_shape    : Pvoid;
    type_            : short;
    shape            : short;
    flag             : int;
    col_groups       : int;
    mesh_source      : short;
    pad              : short;
    mass             : float;
    friction         : float;
    restitution      : float;
    margin           : float;
    lin_damping      : float;
    ang_damping      : float;
    lin_sleep_thresh : float;
    ang_sleep_thresh : float;
    orn              : array [0..3] of float;
    pos              : array [0..2] of float;
    pad1             : float;
  end;

  RigidBodyCon = packed record
    ob1                       : PObject;
    ob2                       : PObject;
    type_                     : short;
    num_solver_iterations     : short;
    flag                      : int;
    breaking_threshold        : float;
    pad                       : float;
    limit_lin_x_lower         : float;
    limit_lin_x_upper         : float;
    limit_lin_y_lower         : float;
    limit_lin_y_upper         : float;
    limit_lin_z_lower         : float;
    limit_lin_z_upper         : float;
    limit_ang_x_lower         : float;
    limit_ang_x_upper         : float;
    limit_ang_y_lower         : float;
    limit_ang_y_upper         : float;
    limit_ang_z_lower         : float;
    limit_ang_z_upper         : float;
    spring_stiffness_x        : float;
    spring_stiffness_y        : float;
    spring_stiffness_z        : float;
    spring_damping_x          : float;
    spring_damping_y          : float;
    spring_damping_z          : float;
    motor_lin_target_velocity : float;
    motor_ang_target_velocity : float;
    motor_lin_max_impulse     : float;
    motor_ang_max_impulse     : float;
    physics_constraint        : Pvoid;
  end;

  FreestyleLineSet = packed record
    next               : PFreestyleLineSet;
    prev               : PFreestyleLineSet;
    name               : array [0..63] of char;
    flags              : int;
    selection          : int;
    qi                 : short;
    pad1               : short;
    qi_start           : int;
    qi_end             : int;
    edge_types         : int;
    exclude_edge_types : int;
    pad2               : int;
    group              : PGroup;
    linestyle          : PFreestyleLineStyle;
  end;

  FreestyleModuleConfig = packed record
    next         : PFreestyleModuleConfig;
    prev         : PFreestyleModuleConfig;
    script       : PText;
    is_displayed : short;
    pad          : array [0..2] of short;
  end;

  LineStyleModifier = packed record
    next      : PLineStyleModifier;
    prev      : PLineStyleModifier;
    name      : array [0..63] of char;
    type_     : int;
    influence : float;
    flags     : int;
    blend     : int;
  end;

  LineStyleColorModifier_AlongStroke = packed record
    modifier   : LineStyleModifier;
    color_ramp : PColorBand;
  end;

  LineStyleAlphaModifier_AlongStroke = packed record
    modifier : LineStyleModifier;
    curve    : PCurveMapping;
    flags    : int;
    pad      : int;
  end;

  LineStyleThicknessModifier_AlongStroke = packed record
    modifier  : LineStyleModifier;
    curve     : PCurveMapping;
    flags     : int;
    value_min : float;
    value_max : float;
    pad       : int;
  end;

  LineStyleColorModifier_DistanceFromCamera = packed record
    modifier   : LineStyleModifier;
    color_ramp : PColorBand;
    range_min  : float;
    range_max  : float;
  end;

  LineStyleAlphaModifier_DistanceFromCamera = packed record
    modifier  : LineStyleModifier;
    curve     : PCurveMapping;
    flags     : int;
    range_min : float;
    range_max : float;
    pad       : int;
  end;

  LineStyleThicknessModifier_DistanceFromCamera = packed record
    modifier  : LineStyleModifier;
    curve     : PCurveMapping;
    flags     : int;
    range_min : float;
    range_max : float;
    value_min : float;
    value_max : float;
    pad       : int;
  end;

  LineStyleColorModifier_DistanceFromObject = packed record
    modifier   : LineStyleModifier;
    target     : PObject;
    color_ramp : PColorBand;
    range_min  : float;
    range_max  : float;
  end;

  LineStyleAlphaModifier_DistanceFromObject = packed record
    modifier  : LineStyleModifier;
    target    : PObject;
    curve     : PCurveMapping;
    flags     : int;
    range_min : float;
    range_max : float;
    pad       : int;
  end;

  LineStyleThicknessModifier_DistanceFromObject = packed record
    modifier  : LineStyleModifier;
    target    : PObject;
    curve     : PCurveMapping;
    flags     : int;
    range_min : float;
    range_max : float;
    value_min : float;
    value_max : float;
    pad       : int;
  end;

  LineStyleColorModifier_Curvature_3D = packed record
    modifier      : LineStyleModifier;
    min_curvature : float;
    max_curvature : float;
    color_ramp    : PColorBand;
    range_min     : float;
    range_max     : float;
  end;

  LineStyleAlphaModifier_Curvature_3D = packed record
    modifier      : LineStyleModifier;
    curve         : PCurveMapping;
    flags         : int;
    min_curvature : float;
    max_curvature : float;
    pad           : int;
  end;

  LineStyleThicknessModifier_Curvature_3D = packed record
    modifier      : LineStyleModifier;
    curve         : PCurveMapping;
    flags         : int;
    pad           : int;
    min_curvature : float;
    max_curvature : float;
    min_thickness : float;
    max_thickness : float;
  end;

  LineStyleColorModifier_Noise = packed record
    modifier   : LineStyleModifier;
    color_ramp : PColorBand;
    period     : float;
    amplitude  : float;
    seed       : int;
    pad        : int;
  end;

  LineStyleAlphaModifier_Noise = packed record
    modifier  : LineStyleModifier;
    curve     : PCurveMapping;
    flags     : int;
    period    : float;
    amplitude : float;
    seed      : int;
  end;

  LineStyleThicknessModifier_Noise = packed record
    modifier  : LineStyleModifier;
    period    : float;
    amplitude : float;
    flags     : int;
    seed      : int;
  end;

  LineStyleColorModifier_CreaseAngle = packed record
    modifier   : LineStyleModifier;
    color_ramp : PColorBand;
    min_angle  : float;
    max_angle  : float;
  end;

  LineStyleAlphaModifier_CreaseAngle = packed record
    modifier  : LineStyleModifier;
    curve     : PCurveMapping;
    flags     : int;
    min_angle : float;
    max_angle : float;
    pad       : int;
  end;

  LineStyleThicknessModifier_CreaseAngle = packed record
    modifier      : LineStyleModifier;
    curve         : PCurveMapping;
    flags         : int;
    pad           : int;
    min_angle     : float;
    max_angle     : float;
    min_thickness : float;
    max_thickness : float;
  end;

  LineStyleColorModifier_Tangent = packed record
    modifier   : LineStyleModifier;
    color_ramp : PColorBand;
  end;

  LineStyleAlphaModifier_Tangent = packed record
    modifier : LineStyleModifier;
    curve    : PCurveMapping;
    flags    : int;
    pad      : int;
  end;

  LineStyleThicknessModifier_Tangent = packed record
    modifier      : LineStyleModifier;
    curve         : PCurveMapping;
    flags         : int;
    min_thickness : float;
    max_thickness : float;
    pad           : int;
  end;

  LineStyleColorModifier_Material = packed record
    modifier   : LineStyleModifier;
    color_ramp : PColorBand;
    flags      : int;
    mat_attr   : int;
  end;

  LineStyleAlphaModifier_Material = packed record
    modifier : LineStyleModifier;
    curve    : PCurveMapping;
    flags    : int;
    mat_attr : int;
  end;

  LineStyleThicknessModifier_Material = packed record
    modifier  : LineStyleModifier;
    curve     : PCurveMapping;
    flags     : int;
    value_min : float;
    value_max : float;
    mat_attr  : int;
  end;

  LineStyleGeometryModifier_Sampling = packed record
    modifier : LineStyleModifier;
    sampling : float;
    pad      : int;
  end;

  LineStyleGeometryModifier_BezierCurve = packed record
    modifier : LineStyleModifier;
    error    : float;
    pad      : int;
  end;

  LineStyleGeometryModifier_SinusDisplacement = packed record
    modifier   : LineStyleModifier;
    wavelength : float;
    amplitude  : float;
    phase      : float;
    pad        : int;
  end;

  LineStyleGeometryModifier_SpatialNoise = packed record
    modifier  : LineStyleModifier;
    amplitude : float;
    scale     : float;
    octaves   : int;
    flags     : int;
  end;

  LineStyleGeometryModifier_PerlinNoise1D = packed record
    modifier  : LineStyleModifier;
    frequency : float;
    amplitude : float;
    angle     : float;
    octaves   : int;
    seed      : int;
    pad1      : int;
  end;

  LineStyleGeometryModifier_PerlinNoise2D = packed record
    modifier  : LineStyleModifier;
    frequency : float;
    amplitude : float;
    angle     : float;
    octaves   : int;
    seed      : int;
    pad1      : int;
  end;

  LineStyleGeometryModifier_BackboneStretcher = packed record
    modifier        : LineStyleModifier;
    backbone_length : float;
    pad             : int;
  end;

  LineStyleGeometryModifier_TipRemover = packed record
    modifier   : LineStyleModifier;
    tip_length : float;
    pad        : int;
  end;

  LineStyleGeometryModifier_Polygonalization = packed record
    modifier : LineStyleModifier;
    error    : float;
    pad      : int;
  end;

  LineStyleGeometryModifier_GuidingLines = packed record
    modifier : LineStyleModifier;
    offset   : float;
    pad      : int;
  end;

  LineStyleGeometryModifier_Blueprint = packed record
    modifier        : LineStyleModifier;
    flags           : int;
    rounds          : int;
    backbone_length : float;
    random_radius   : int;
    random_center   : int;
    random_backbone : int;
  end;

  LineStyleGeometryModifier_2DOffset = packed record
    modifier : LineStyleModifier;
    start    : float;
    end_     : float;
    x        : float;
    y        : float;
  end;

  LineStyleGeometryModifier_2DTransform = packed record
    modifier : LineStyleModifier;
    pivot    : int;
    scale_x  : float;
    scale_y  : float;
    angle    : float;
    pivot_u  : float;
    pivot_x  : float;
    pivot_y  : float;
    pad      : int;
  end;

  LineStyleGeometryModifier_Simplification = packed record
    modifier  : LineStyleModifier;
    tolerance : float;
    pad       : int;
  end;

  LineStyleThicknessModifier_Calligraphy = packed record
    modifier      : LineStyleModifier;
    min_thickness : float;
    max_thickness : float;
    orientation   : float;
    pad           : int;
  end;

  FreestyleLineStyle = packed record
    id                  : ID;
    adt                 : PAnimData;
    r                   : float;
    g                   : float;
    b                   : float;
    alpha               : float;
    thickness           : float;
    thickness_position  : int;
    thickness_ratio     : float;
    flag                : int;
    caps                : int;
    chaining            : int;
    rounds              : int;
    split_length        : float;
    min_angle           : float;
    max_angle           : float;
    min_length          : float;
    max_length          : float;
    chain_count         : int;
    split_dash1         : short;
    split_gap1          : short;
    split_dash2         : short;
    split_gap2          : short;
    split_dash3         : short;
    split_gap3          : short;
    sort_key            : int;
    integration_type    : int;
    texstep             : float;
    texact              : short;
    pr_texture          : short;
    use_nodes           : short;
    pad                 : array [0..2] of short;
    dash1               : short;
    gap1                : short;
    dash2               : short;
    gap2                : short;
    dash3               : short;
    gap3                : short;
    panel               : int;
    mtex                : array [0..17] of PMTex;
    nodetree            : PbNodeTree;
    color_modifiers     : ListBase;
    alpha_modifiers     : ListBase;
    thickness_modifiers : ListBase;
    geometry_modifiers  : ListBase;
  end;


implementation

end.
