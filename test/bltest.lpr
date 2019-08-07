program bltest;

{$mode objfpc}{$H+}

{$define usepaszlib}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  SysUtils, Classes, blenderfile, BlenderZlibUtils, BlenderTypesUtils
  ;

procedure DumpDNAStruct(const dna: TSDNA; const st: TSDNAStruct);
var
  i : integer;
  maxlen : integer;
  s : string;
  j : integer;
begin
  maxlen := 0;
  for i:=0 to st.fldsCount-1 do begin
    j:=length(dna.types[st.flds[i].idxType]);
    if j>maxlen then maxlen := j;
  end;
  inc(maxlen, 2);

  writeln('struct ', dna.types[st.idxType],' {');
  for i:=0 to st.fldsCount-1 do begin
    s := dna.types[st.flds[i].idxType];
    write('  ', s);
    write('':maxlen-length(s));
    writeln(' ',dna.names[ st.flds[i].idxName]);
  end;
  writeln('}');
  writeln;
end;

function NameToPascal(const name: string): string;
var
  _name : string;

  function LowName: string;
  begin
    if _name = '' then _name := LowerCase(name);
    Result := _name;
  end;

begin
  if name ='' then Result:=''
  else begin
    Result := name;
    case Result[1] of
      'a','A':
         if LowName = 'array' then Result := Result+'_';
      'b','B':
         if LowName = 'begin' then Result := Result+'_';
      'e','E':
         if LowName = 'end' then Result := Result+'_';
      'f','F':
         if LowName = 'file' then Result := Result+'_';
      'l','L':
         if (LowName = 'library')
         or (LowName = 'label') then
           Result := Result+'_';
      'o','O':
         if LowName = 'object' then Result := Result+'_';
      'r','R':
         if LowName = 'repeat' then Result := Result+'_';
      's','S':
         if LowName = 'set' then Result := Result+'_';
      't','T':
         if (LowName = 'type')
         or (LowName = 'to') then
           Result := Result+'_';
      'u','U':
         if LowName = 'unit' then Result := Result+'_';
    end;
  end;
end;


function GetPasName(const nm: string): string;
var
  ptr : TPointerModifier;
  arr : TArrayIndices;
begin
  BlenderNameParse(nm, Result, ptr, arr);
  Result := NameToPascal(Result);
end;

procedure DumpDNATypeRefsPascal(const dna: TSDNA);
var
  i : integer;
begin
  for i:=0 to dna.typesCount-1 do
  begin
    if dna.types[i] = 'void' then continue
    else if dna.types[i] = 'FileData' then continue;

    writeln('P',dna.types[i],' = ^',NameToPascal(dna.types[i]),';');
  end;
end;

procedure DumpDNAStructPascal(const dna: TSDNA; const st: TSDNAStruct);
var
  i : integer;
  maxlen : integer;
  s : string;
  j : integer;
  ptr : TPointerModifier;
  arr : TArrayIndices;
begin
  maxlen := 0;
  for i:=0 to st.fldsCount-1 do begin
    j:=length( GetPasName(dna.names[ st.flds[i].idxName]) );
    if j>maxlen then maxlen := j;
  end;
  inc(maxlen, 2);

  writeln( NameToPascal(dna.types[st.idxType]),' = packed record');
  for i:=0 to st.fldsCount-1 do begin

    BlenderNameParse( dna.names[ st.flds[i].idxName], s, ptr, arr);
    s := NameToPascal(s);
    write('  ', s);
    write(':':maxlen-length(s));
    write(' ');
    if arr.count>0 then begin
      write('array [');
      for j:=0 to arr.count-1 do begin
        if j>0 then write(',');
        write('0..');
        write(arr.sizes[j]-1);
      end;
      write('] of ');
    end;

    case ptr of
      pmPointer, pmDoublePointer: begin
        if ptr = pmDoublePointer then write('^');
        write('P');
        writeln( dna.types[st.flds[i].idxType],';');
      end;
      pmFuncRef:
        writeln('Pointer;');
    else
      writeln( NameToPascal(dna.types[st.flds[i].idxType]),';');
    end;

  end;
  writeln('end;');
  writeln;
end;


procedure DumpDNAPascalUnit(const dna: TSDNA);
var
  i : integer;
begin
  writeln('type');
  writeln('  // Usual c-types');
  writeln('  float = single;');
  writeln('  short = Int16;');
  writeln('  int   = Int32;');
  writeln('  int64_t = Int64;');
  writeln('  uint64_t = uint64;');
  writeln('  PVoid = Pointer;');
  writeln('  uchar = char;');
  writeln('  ushort = UInt16;');
  writeln('  Long = int32;');
  writeln('  ulong = uint32;');
  writeln('');
  writeln('  // Blender internal types');
  writeln('  PFileData = Pointer;');
  writeln('  GPUTexture = PtrUInt;');
  writeln('  Anim = Pointer;');
  writeln('  MovieCache = Pointer;');
  writeln('  RenderResult = Pointer;');
  writeln('  ImBuf = Pointer;');
  writeln('  VFontData = Pointer;');
  writeln('  GHash = Pointer;');
  writeln('  EditFont = Pointer;');
  writeln('  BMEditMesh = Pointer;');
  writeln('  Cloth = Pointer;');
  writeln('  ClothHairData = Pointer;');
  writeln('  ClothSolverResult = Pointer;');
  writeln('  MVertTri = Pointer;');
  writeln('  BVHTree = Pointer;');
  writeln('  DerivedMesh = Pointer;');
  writeln('  BVHTreeFromMesh = Pointer;');
  writeln('  Ocean = Pointer;');
  writeln('  OceanCache = Pointer;');
  writeln('  SculptSession = Pointer;');
  writeln('  CurveCache = Pointer;');
  writeln('  RNG = Pointer;');
  writeln('  PTCacheEdit = Pointer;');
  writeln('  BodyPoint = Pointer;');
  writeln('  BodySpring = Pointer;');
  writeln('  SBScratch = Pointer;');
  writeln('  ColorSpace = Pointer;');
  writeln('  SceneStats = Pointer;');
  writeln('  Depsgraph = Pointer;');
  writeln('  DagForest = Pointer;');
  writeln('  RenderEngine = Pointer;');
  writeln('  ViewDepths = Pointer;');
  writeln('  SmoothView3DStore = Pointer;');
  writeln('  WmTimer = Pointer;');
  writeln('  GPUFX = Pointer;');
  writeln('  SmoothView2DStore = Pointer;');
  writeln('  BLI_mempool = Pointer;');
  writeln('  FileList = Pointer;');
  writeln('  FileLayout = Pointer;');
  writeln('  NodeInsertOfsData = Pointer;');
  writeln('  PanelType = Pointer;');
  writeln('  UiLayout = Pointer;');
  writeln('  UiListType = Pointer;');
  writeln('  UiListDyn = Pointer;');
  writeln('  SpaceType = Pointer;');
  writeln('  ARegionType = Pointer;');
  writeln('  Particle = Pointer;');
  writeln('  EditBone = Pointer;');
  writeln('  BNodeSocketType = Pointer;');
  writeln('  BNodeType = Pointer;');
  writeln('  UiBlock = Pointer;');
  writeln('  BNodeTreeType = Pointer;');
  writeln('  StructRNA = Pointer;');
  writeln('  BNodeInstanceHash = Pointer;');
  writeln('  BNodeTreeExec = Pointer;');
  writeln('  ParticleCacheKey = Pointer;');
  writeln('  LatticeDeformData = Pointer;');
  writeln('  ParticleRenderData = Pointer;');
  writeln('  KDTree = Pointer;');
  writeln('  ParticleDrawData = Pointer;');
  writeln('  LinkNode = Pointer;');
  writeln('  WmEvent = Pointer;');
  writeln('  WmSubWindow = Pointer;');
  writeln('  WmGesture = Pointer;');
  writeln('  WmIMEData = Pointer;');
  writeln('  PointerRNA = Pointer;');
  writeln('  WmOperatorType = Pointer;');
  writeln('  FLUID_3D = Pointer;');
  writeln('  WTURBULENCE = Pointer;');
  writeln('  MovieClipCache = Pointer;');
  writeln('  PaintSurfaceData = Pointer;');

  writeln;
  DumpDNATypeRefsPascal(dna);
  writeln;
  for i:=0 to dna.strcCount-1 do
    DumpDNAStructPascal(dna, dna.strcs[i]);
end;

procedure DumpDNA(const dna: TSDNA);
var
  i : integer;
begin
  writeln('Names: ', dna.namesCount);
  for i:=0 to dna.namesCount-1 do begin
    if i>0 then write(' ');
    write(dna.names[i]);
  end;
  writeln;
  writeln('Types:  ', dna.typesCount);
  for i:=0 to dna.typesCount-1 do begin
    writeln(dna.types[i],' ',dna.typesLen[i]);
  end;
  writeln('Struct: ', dna.strcCount);
  for i:=0 to dna.strcCount-1 do
    DumpDNAStruct(dna, dna.strcs[i]);

  DumpDNAPascalUnit(dna);
end;

procedure Run(const fn: string);
var
  rdr : TBlendReader;
  fs  : TfileStream;
  buf : array [0..9] of byte;
  src : TStream;
  dmem : TMemoryStream;
  dna  : TSDNA;
begin
  fs := TfileStream.Create(fn, fmOpenRead or fmShareDenyNone);
  rdr := TBlendReader.Create;
  dmem := nil;
  try
    if fs.Read(buf, sizeof(buf))<>sizeof(buf) then begin
      writeln('file is too short');
      Exit;
    end;
    if (buf[0]=$1f) and (buf[1]=$8b) then begin
      writeln('2.8 or later format. Inflating');
      // it's 2.8 file
      //smem := TMemoryStream.Create;
      dmem := TMemoryStream.Create;
      InflateStream(fs, dmem);
      writeln('unpackedsize = ', dmem.Size,' packed size = ', fs.Size);
      src:=dmem;
    end else begin
      fs.Position:=0; // let's get back to the start and read it as plain file
      src := fs;
    end;

    if not rdr.FindFirst(src) then begin
      writeln('unable to find. Probably in 2.8 format');
      Exit;
    end;
    writeln('Version:      ', rdr.ver);
    if rdr.isPtrLE then writeln('Little Endian')
    else writeln('Big Endian');
    writeln('Pointer size: ', rdr.PtrSize);

    while rdr.NextBlock do begin
      writeln('  data: ', rdr.DataCode,'; ofs: ',rdr.DataOffset,'; sz: ',rdr.DataSize);
      if rdr.DataCode = BLOCK_SDNA then begin
        ParseSDNA(rdr.Data, rdr.DataOffset, rdr.DataSize, dna);
        DumpDNA(dna);
      end;
    end;

  finally
    dmem.Free;
    rdr.Free;
    fs.Free;
  end;
end;

procedure RunNameTest;
var
  nn : string;
  isptr : TPointerModifier;
  arr   : TArrayIndices;
  names : TStringList;
  i     : integer;
begin
  names := TStringList.Create;
  try
    names.LineBreak:=' ';
    //names.Text:='*next *prev *data *first *last x y z xmin xmax ymin ymax *pointer group val val2 type subtype flag name[64] saved data len totallen *newid *lib name[66] tag pad_s1 us icon_id *properties id *idblock *filedata name[1024] filepath[1024] *parent *packedfile w[2] h[2] flag[2] changed_timestamp[2] *rect[2] *gputexture[2] pad[3] use_deferred *ob blocktype adrcode name[128] *bp *bezt maxrct totrct vartype totvert ipo extrap rt bitmask slide_min slide_max curval *driver curve cur showkey muteipo pad pos pad1 relative totelem uid vgroup[64] slidermin slidermax *adt *refkey elemstr[32] elemsize block *ipo *from totkey pad2 ctime uidgen *line *format blen *name flags nlines lines *curl *sell curc selc *undo_buf undo_pos undo_len *compiled mtime size seek focus_distance fstop focal_length sensor num_blades high_quality factor color[3] distance_max attenuation samples *dof *ssao fx_flag pad[7] interocular_distance convergence_distance convergence_mode pivot dtx passepartalpha clipsta clipend lens ortho_scale drawsize sensor_x sensor_y shiftx shifty YF_dofdist *dof_ob gpu_dof sensor_fit stereo *scene framenr frames offset sfra fie_ima cycl ok multiview_eye pass multi_index view layer *anim *cache anims *rr *renders[8] render_slot last_render_slot source lastframe tpageflag totbind xrep yrep twsta twend bindcode[2] pad1[4] *repbind packedfiles *preview lastupdate lastused animspeed gen_x gen_y gen_type gen_flag gen_depth gen_color[4] aspx aspy colorspace_settings alpha_mode pad[5] eye views_format views *stereo3d_format render_slots[8] texco mapto maptoneg blendtype *object *tex uvname[64] projx projy projz mapping brush_map_mode brush_angle_mode pad[2] ofs[3] size[3] rot random_angle texflag colormodel pmapto pmaptoneg normapspace which_output r g b k def_var colfac varfac norfac dispfac warpfac colspecfac mirrfac alphafac difffac specfac emitfac hardfac raymirrfac translfac ambfac colemitfac colreflfac coltransfac densfac scatterfac reflfac timefac lengthfac clumpfac dampfac kinkfac kinkampfac roughfac padensfac gravityfac lifefac sizefac ivelfac fieldfac shadowfac zenupfac zendownfac blendfac a tot ipotype ipotype_hue color_mode pad[1] data[32] *ima *cube[6] imat[4][4] obimat[3][3] stype viewscale notlay cuberes depth recalc lastsize falloff_type falloff_softness radius color_source totpoints pdpad psys psys_cache_space ob_cache_space *point_tree *point_data noise_size noise_depth noise_influence noise_basis pdpad3[3] noise_fac speed_scale falloff_speed_scale pdpad2 *coba *falloff_curve resol[3] interp_type file_format extend smoked_type hair_type data_type _pad int_multiplier still_frame source_path[1024] *dataset cachedframe oceanmod[64] output noisesize turbul bright contrast saturation rfac gfac bfac filtersize mg_H mg_lacunarity mg_octaves mg_offset mg_gain dist_amount ns_outscale vn_w1 vn_w2 vn_w3 vn_w4 vn_mexp vn_distm vn_coltype noisedepth noisetype noisebasis noisebasis2 imaflag cropxmin cropymin cropxmax cropymax texfilter afmax xrepeat yrepeat checkerdist nabla iuser *nodetree *env *pd *vd *ot use_nodes loc[3] rot[3] mat[4][4] min[3] max[3] coba blend_color[3] blend_factor blend_type mode totex shdwr shdwg shdwb shdwpad energy dist spotsize spotblend haint att1 att2 *curfalloff bias soft compressthresh bleedbias pad5 bufsize samp buffers filtertype bufflag buftype ray_samp ray_sampy ray_sampz ray_samp_type area_shape area_size area_sizey area_sizez adapt_thresh ray_samp_method shadowmap_type texact shadhalostep sun_effect_type skyblendtype horizon_brightness spread sun_brightness sun_size backscattered_light sun_intensity atm_turbidity atm_inscattering_factor atm_extinction_factor atm_distance_factor skyblendfac sky_exposure shadow_frustum_size sky_colorspace pad4[2] *mtex[18] pr_texture pad6[4] density emission scattering reflection emission_col[3] transmission_col[3] reflection_col[3] density_scale depth_cutoff asymmetry stepsize_type shadeflag shade_type precache_resolution stepsize ms_diff ms_intensity ms_spread alpha_blend face_orientation *uvname index material_type specr specg specb mirr mirg mirb ambr ambb ambg amb emit ang spectra ray_mirror alpha ref spec zoffs add translucency vol game fresnel_mir fresnel_mir_i fresnel_tra fresnel_tra_i filter tx_limit tx_falloff ray_depth ray_depth_tra har seed1 seed2 gloss_mir gloss_tra samp_gloss_mir samp_gloss_tra adapt_thresh_mir adapt_thresh_tra aniso_gloss_mir dist_mir fadeto_mir shade_flag mode_l mode2 mode2_l flarec starc linec ringc hasize flaresize subsize flareboost strand_sta strand_end strand_ease strand_surfnor strand_min strand_widthfade strand_uvname[64] sbias lbias shad_alpha septex rgbsel pr_type pr_lamp ml_flag mapflag diff_shader spec_shader roughness refrac param[4] rms darkness *ramp_col *ramp_spec rampin_col rampin_spec rampblend_col rampblend_spec ramp_show pad3 rampfac_col rampfac_spec *group friction fh reflect fhdist xyfrict dynamode sss_radius[3] sss_col[3] sss_error sss_scale sss_ior sss_colfac sss_texfac sss_front sss_back sss_flag sss_preset mapto_textured shadowonly_flag line_col[4] line_priority vcol_alpha paint_active_slot paint_clone_slot tot_slots pad4[3] *texpaintslot gpumaterial *temp_pf *bb selcol1 selcol2 quat[4] expx expy expz rad rad2 s *mat *imat elems disp *editelems **mat flag2 totcol wiresize rendersize thresh *lastelem vec[3][3] alfa weight h1 h2 f1 f2 f3 hide easing back amplitude period pad[4] vec[4] mat_nr pntsu pntsv resolu resolv orderu orderv flagu flagv *knotsu *knotsv tilt_interp radius_interp charidx kern w h nurbs *keyindex shapenr nurb *editnurb *bevobj *taperobj *textoncurve *key drawflag twist_mode twist_smooth smallcaps_scale pathlen bevresol width ext1 ext2 resolu_ren resolv_ren actnu actvert spacemode spacing linedist shear fsize wordspace ulpos ulheight xof yof linewidth selstart selend len_wchar *str *editfont family[64] *vfont *vfontb *vfonti *vfontbi *tb totbox actbox *strinfo curinfo bevfac1 bevfac2 bevfac1_mapping bevfac2_mapping pad2[2] *mselect *mpoly *mtpoly *mloop *mloopuv *mloopcol *mface *mtface *tface *mvert *medge *dvert *mcol *texcomesh *edit_btmesh vdata edata fdata pdata ldata totedge totface totselect totpoly totloop act_face smoothresh cd_flag subdiv subdivr subsurftype editflag *mr *tpage uv[4][2] col[4] transp tile unwrap v1 v2 v3 v4 edcode crease bweight def_nr *dw totweight co[3] no[3] loopstart v e uv[2] f i s[255] s_len totdisp level (*disps)() *hidden v[4] mid v[2] *faces *colfaces *edges *verts levels level_count current newlvl edgelvl pinlvl renderlvl use_col *edge_flags *edge_creases radius[3] stackindex *error modifier *texture *map_object uvlayer_name[64] uvlayer_tmp texmapping subdivType renderLevels use_opensubdiv *emCache *mCache strength defaxis pad[6] start length randomize seed *ob_arm *start_cap *end_cap *curve_ob *offset_ob offset[3] scale[3] merge_dist fit_type offset_type count axis tolerance *mirror_ob split_angle value res val_flags lim_flags e_flags mat profile bevel_angle defgrp_name[64] *domain *flow *coll time direction midlevel *projectors[10] *image num_projectors aspectx aspecty scalex scaley percent iter delimit symmetry_axis angle defgrp_factor face_count fac repeat *objectcenter startx starty height narrow speed damp falloff timeoffs lifetime deformflag multi *prevCos subtarget[64] parentinv[4][4] cent[3] *indexar totindex force *clothObject *sim_parms *coll_parms *point_cache ptcaches *hairdata hair_grid_min[3] hair_grid_max[3] hair_grid_res[3] hair_grid_cellsize *solver_result *x *xnew *xold *current_xnew *current_x *current_v *tri mvert_num tri_num time_x time_xnew *bvhtree *v *dm cfra numverts operation bm_flag threshold vertex totinfluence gridsize *bindinfluences *bindoffsets *bindcagecos totcagevert *dyngrid *dyninfluences *dynverts dyngridsize dyncellmin[3] dyncellwidth bindmat[4][4] *bindweights *bindcos (*bindfunc)() *psys *dm_final *dm_deformed totdmvert totdmedge totdmface position random_position *facepa vgroup protect lvl sculptlvl totlvl simple *fss *target *auxTarget vgroup_name[64] keepDist shrinkType shrinkOpts projLimit projAxis subsurfLevels *origin limit[2] offset_fac offset_fac_vg offset_clamp crease_inner crease_outer crease_rim mat_ofs mat_ofs_rim *ob_axis steps render_steps screw_ofs *ocean *oceancache resolution spatial_size wind_velocity smallest_wave wave_alignment wave_direction wave_scale chop_amount foam_coverage bakestart bakeend cachepath[1024] foamlayername[64] cached geometry_mode refresh repeat_x repeat_y foam_fade *object_from *object_to falloff_radius edit_flags default_weight *cmap_curve add_threshold rem_threshold mask_constant mask_defgrp_name[64] mask_tex_use_channel *mask_texture *mask_tex_map_obj mask_tex_mapping mask_tex_uvlayer_name[64] pad_i1 defgrp_name_a[64] defgrp_name_b[64] default_weight_a default_weight_b mix_mode mix_set pad_c1[6] proximity_mode proximity_flags *proximity_ob_target min_dist max_dist *canvas *brush scale hermite_num branch_smoothing symmetry_axes quad_method ngon_method lambda lambda_border (*bind_coords)() bind_coords_num smooth_type rest_source (*delta_cache)() delta_cache_num pad2[4] axis_u axis_v center[2] *object_src bone_src[64] *object_dst bone_dst[64] time_mode play_mode forward_axis up_axis flip_axis interp deform_mode frame_start frame_scale eval_frame eval_time eval_factor anchor_grp_name[64] total_verts *vertexco *cache_system crease_weight *ob_source data_types vmap_mode emap_mode lmap_mode pmap_mode map_max_distance map_ray_radius islands_precision layers_select_src[4] layers_select_dst[4] mix_factor *latt pntsw opntsu opntsv opntsw typeu typev typew actbp fu fv fw du dv dw *def *editlatt vec[8][3] *source distance obhysteresis *sculpt partype par1 par2 par3 parsubstr[64] *track *proxy *proxy_group *proxy_from *action *poselib *pose *gpd avs *mpath constraintChannels effect defbase modifiers restore_mode *matbits actcol dloc[3] orig[3] dsize[3] dscale[3] drot[3] dquat[4] rotAxis[3] drotAxis[3] rotAngle drotAngle obmat[4][4] constinv[4][4] imat_ren[4][4] lay colbits transflag protectflag trackflag upflag nlaflag scaflag scavisflag depsflag lastNeedMapping dupon dupoff dupsta dupend mass damping inertia formfactor rdamping margin max_vel min_vel max_angvel min_angvel obstacleRad step_height jump_speed fall_speed max_jumps pad2[3] col_group col_mask rotmode boundtype collision_boundtype dt empty_drawtype empty_drawsize dupfacesca prop sensors controllers actuators sf actdef gameflag gameflag2 *bsoft restrictflag softflag anisotropicFriction[3] constraints nlastrips hooks particlesystem *soft *dup_group body_type shapeflag *fluidsimSettings *curve_cache *derivedDeform *derivedFinal lastDataMask customdata_mask state init_state gpulamp pc_ids *duplilist *rigidbody_object *rigidbody_constraint ima_ofs[2] *iuser lodlevels *currentlod curindex active orco[3] no_draw animated persistent_id[8] *particle_system deflect forcefield shape tex_mode kink kink_axis zdir f_strength f_damp f_flow f_size f_power maxdist mindist f_power_r maxrad minrad pdef_damp pdef_rdamp pdef_perm pdef_frict pdef_rfrict pdef_stickness absorption pdef_sbdamp pdef_sbift pdef_sboft clump_fac clump_pow kink_freq kink_shape kink_amp free_end tex_nabla *rng f_noise *f_source weight[14] global_gravity rt[3] totdata frame totpoint *data[8] *cur[8] extradata step simframe startframe endframe editframe last_exact last_valid compression prev_name[64] info[64] path[1024] *cached_frames mem_cache *edit (*free_edit)() linStiff angStiff volume viterations piterations diterations citerations kSRHR_CL kSKHR_CL kSSHR_CL kSR_SPLT_CL kSK_SPLT_CL kSS_SPLT_CL kVCF kDP kDG kLF kPR kVC kDF kMT kCHR kKHR kSHR kAHR collisionflags numclusteriterations welding totspring *bpoint *bspring msg_lock msg_value nodemass namedVG_Mass[64] grav mediafrict rklimit physics_speed goalspring goalfrict mingoal maxgoal defgoal vertgroup namedVG_Softgoal[64] fuzzyness inspring infrict namedVG_Spring_K[64] efra interval local solverflags **keys totpointkey secondspring colball balldamp ballstiff sbc_mode aeroedge minloops maxloops choke solver_ID plastic springpreload *scratch shearstiff inpush *pointcache *effector_weights lcom[3] lrot[3][3] lscale[3][3] last_frame vel[3] *fmd threads show_advancedoptions resolutionxyz previewresxyz realsize guiDisplayMode renderDisplayMode viscosityValue viscosityMode viscosityExponent grav[3] animStart animEnd bakeStart bakeEnd frameOffset gstar maxRefine iniVelx iniVely iniVelz surfdataPath[1024] bbStart[3] bbSize[3] typeFlags domainNovecgen volumeInitType partSlipValue generateTracers generateParticles surfaceSmoothing surfaceSubdivs particleInfSize particleInfAlpha farFieldSize *meshVelocities cpsTimeStart cpsTimeEnd cpsQuality attractforceStrength attractforceRadius velocityforceStrength velocityforceRadius lastgoodframe animRate mistype horr horg horb zenr zeng zenb exposure exp range linfac logfac gravity activityBoxRadius skytype occlusionRes physicsEngine ticrate maxlogicstep physubstep maxphystep misi miststa mistdist misthi starr starg starb stark starsize starmindist stardist starcolnoise dofsta dofend dofmin dofmax aodist aodistfac aoenergy aobias aomode aosamp aomix aocolor ao_adapt_thresh ao_adapt_speed_fac ao_approx_error ao_approx_correction ao_indirect_energy ao_env_energy ao_pad2 ao_indirect_bounces ao_pad ao_samp_method ao_gather_method ao_approx_passes *aosphere *aotables selcol sx sy *lpFormat *lpParms cbFormat cbParms fccType fccHandler dwKeyFrameEvery dwQuality dwBytesPerSecond dwFlags dwInterleaveEvery avicodecname[128] *cdParms *pad cdSize qtcodecname[128] codecType codecSpatialQuality codec codecFlags colorDepth codecTemporalQuality minSpatialQuality minTemporalQuality keyFrameRate bitRate audiocodecType audioSampleRate audioBitDepth audioChannels audioCodecFlags audioBitRate audio_codec video_bitrate audio_bitrate audio_mixrate audio_channels audio_pad audio_volume gop_size rc_min_rate rc_max_rate rc_buffer_size mux_packet_size mux_rate mixrate main speed_of_sound doppler_factor distance_model *mat_override *light_override lay_zmask lay_exclude layflag passflag pass_xor pass_alpha_threshold freestyleConfig suffix[64] viewflag display_mode anaglyph_type interlace_type imtype planes quality compress exr_codec cineon_flag cineon_white cineon_black cineon_gamma jp2_flag jp2_codec tiff_codec stereo3d_format view_settings display_settings im_format cage_extrusion pass_filter normal_swizzle[3] normal_space save_mode cage[64] *avicodecdata *qtcodecdata qtcodecsettings ffcodecdata subframe psfra pefra images framapto framelen blurfac edgeR edgeG edgeB fullscreen xplay yplay freqplay attrib frame_step stereomode dimensionspreset maximsize pad6 xsch ysch xparts yparts tilex tiley subimtype displaymode use_lock_interface pad7 scemode raytrace_options raytrace_structure ocres pad4 alphamode osa frs_sec edgeint safety border disprect layers actlay mblur_samples xasp yasp frs_sec_base gauss color_mgt_flag postgamma posthue postsat dither_intensity bake_osa bake_filter bake_mode bake_flag bake_normal_space bake_quad_split bake_maxdist bake_biasdist bake_samples bake_pad bake_user_scale bake_pad1 pic[1024] stamp stamp_font_id stamp_udata[768] fg_stamp[4] bg_stamp[4] seq_prev_type seq_rend_type seq_flag pad5[5] simplify_flag simplify_subsurf simplify_subsurf_render simplify_shadowsamples pad9 simplify_particles simplify_particles_render simplify_aosss cineonwhite cineonblack cineongamma jp2_preset jp2_depth rpad3 domeres domemode domeangle dometilt domeresbuf *dometext line_thickness_mode unit_line_thickness engine[32] bake preview_start_resolution debug_pass_type actview pad8[2] mblur_shutter_curve name[32] particle_perc subsurf_max shadbufsample_max ao_error tilt resbuf *warptext col[3] cellsize cellheight agentmaxslope agentmaxclimb agentheight agentradius edgemaxlen edgemaxerror regionminsize regionmergesize vertsperpoly detailsampledist detailsamplemaxerror framing playerflag rt1 rt2 aasamples dome stereoflag eyeseparation recastData matmode exitkey vsync obstacleSimulation raster_storage levelHeight deactivationtime lineardeactthreshold angulardeactthreshold lodflag scehysteresis *camera *palette *cavity_curve *paint_cursor paint_cursor_col[4] num_input_samples symmetry_flags tile_offset[3] paint missing_data seam_bleed normal_angle screen_grab_size[2] *paintcursor *stencil *clone stencil_col[3] dither invert totrekey totaddkey brushtype brush[7] emitterdist selectmode edittype draw_step fade_frames *shape_object radial_symm[3] detail_size symmetrize_direction gravity_factor constant_detail detail_percent *gravity_object *vpaint_prev *wpaint_prev brush[10] mat[3][3] unprojected_radius rgb[3] secondary_rgb[3] last_rake[2] last_rake_angle last_stroke_valid average_stroke_accum[3] average_stroke_counter brush_rotation brush_rotation_sec anchored_size overlap_factor draw_inverted stroke_active draw_anchored do_linear_conversion last_location[3] last_hit anchored_initial_mouse[2] pixel_radius size_pressure_value tex_mouse[2] mask_tex_mouse[2] *colorspace _pad1[2] overhang_axis overhang_min overhang_max thickness_min thickness_max thickness_samples _pad2[3] distort_min distort_max sharp_min sharp_max *vpaint *wpaint *uvsculpt vgroup_weight doublimit normalsize automerge unwrapper uvcalc_flag uv_flag uv_selectmode uvcalc_margin autoik_chainlen gpencil_flags gpencil_src gpencil_v3d_align gpencil_v2d_align gpencil_seq_align gpencil_ima_align gp_sculpt imapaint particle proportional_size select_thresh autokey_mode autokey_flag multires_subdiv_type pad3[1] skgen_resolution skgen_threshold_internal skgen_threshold_external skgen_length_ratio skgen_length_limit skgen_angle_limit skgen_correlation_limit skgen_symmetry_limit skgen_retarget_angle_weight skgen_retarget_length_weight skgen_retarget_distance_weight skgen_options skgen_postpro skgen_postpro_passes skgen_subdivisions[3] skgen_multi_level *skgen_template bone_sketching bone_sketching_convert skgen_subdivision_number skgen_retarget_options skgen_retarget_roll skgen_side_string[8] skgen_num_string[8] edge_mode edge_mode_live_unwrap snap_mode snap_node_mode snap_uv_mode snap_flag snap_target proportional prop_mode proportional_objects proportional_mask proportional_action proportional_fcurve lock_markers pad4[5] auto_normalize multipaint weightuser vgroupsubset use_uv_sculpt uv_sculpt_settings uv_sculpt_tool uv_relax_method sculpt_paint_settings sculpt_paint_unified_size sculpt_paint_unified_unprojected_radius sculpt_paint_unified_alpha unified_paint_settings statvis totobj totlamp totobjsel totcurve totmesh totarmature scale_length system system_rotation gravity[3] quick_cache_step title[2] action[2] title_center[2] action_center[2] *world *set base *basact *obedit cursor[3] twcent[3] twmin[3] twmax[3] layact lay_updated *ed *toolsettings *stats safe_areas audio markers transform_spaces *sound_scene *playback_handle *sound_scrub_handle *speaker_handles *fps_info *depsgraph *pad1 *theDag dagflags active_keyingset keyingsets gm unit physics_settings *clip customdata_mask_modal sequencer_colorspace_settings *rigidbody_world cuser blend rotation winmat[4][4] viewmat[4][4] viewinv[4][4] persmat[4][4] persinv[4][4] viewcamtexcofac[4] viewmatob[4][4] persmatob[4][4] clip[6][4] clip_local[6][4] *clipbb *localvd *render_engine *depths *gpuoffscreen *sms *smooth_timer twmat[4][4] viewquat[4] camdx camdy pixsize camzoom is_persp persp viewlock viewlock_quad ofs_lock[2] twdrawflag rflag lviewquat[4] lpersp lview gridview tw_idot[3] rot_angle rot_axis[3] *compositor regionbase spacetype blockscale blockhandler[8] bundle_size bundle_drawtype lay_prev lay_used *ob_centre render_border bgpicbase *bgpic ob_centre_bone[64] drawtype ob_centre_cursor scenelock around grid near far matcap_icon gridlines gridsubdiv gridflag twtype twmode twflag flag3 afterdraw_transp afterdraw_xray afterdraw_xraytransp zbuf xray pad3[4] fx_settings *properties_storage *defmaterial stereo3d_flag stereo3d_camera stereo3d_convergence_factor stereo3d_volume_alpha stereo3d_convergence_alpha vert hor mask min[2] max[2] minzoom maxzoom scroll scroll_ui keeptot keepzoom keepofs align winx winy oldwinx oldwiny *tab_offset tab_num tab_cur rpt_mask v2d mainb mainbo mainbuser re_align preview texture_context texture_context_prev *path pathflag dataicon *pinid *texuser tree *treestore search_string[32] search_tse outlinevis storeflag search_flags *treehash *ads ghostCurves autosnap cursorTime cursorVal *array caches cache_display render_size chanshown zebra zoom overlay_type draw_flag scopes pad2[7] *mask draw_type overlay_mode pad3[5] title[96] dir[1090] pad_c1[2] file[256] renamefile[256] renameedit[256] filter_glob[256] filter_search[64] filter_id active_file highlight_file sel_first sel_last thumbnail_size sort display recursion_level f_fp fp_str[8] scroll_offset *params *files *folders_prev *folders_next *op *smoothscroll_timer *previews_timer *layout recentnr bookmarknr systemnr system_bookmarknr name[256] save valid uuid_asset[4] uuid_variant[4] uuid_revision[4] *uuids nbr_uuids *comment uuid[4] size_str[16] time_str[8] date_str[16] *description revisions nbr_revisions act_revision *entry typeflag blentype *relpath *poin **tags nbr_tags status variants nbr_variants act_variant entries nbr_entries nbr_entries_filtered entry_idx_start entry_idx_end root[1024] *cumap sample_line_hist cursor[2] centx centy pin curtile lock dt_uv sticky dt_uvstretch mask_info *text top viewlines menunr lheight cwidth linenrs_tot left showlinenrs tabnumber showsyntax line_hlight overwrite live_edit pix_per_line txtscroll txtbar wordwrap doplugins findstr[256] replacestr[256] margin_column lheight_dpi *drawcache scroll_accum[2] *py_draw *py_event *py_button *py_browsercallback *py_globaldict lastspace scriptname[1024] scriptarg[256] *script *but_refs parent_key view_center[2] node_name[64] *id aspect treepath *edittree tree_idname[64] treetype texfrom shaderfrom insert_ofs_dir linkdrag *iofsd len_alloc cursor scrollback history prompt[256] language[32] sel_start sel_end filter_type filter[64] xlockof ylockof user path_length loc[2] stabmat[4][4] unistabmat[4][4] postproc_flag filename[1024] blf_id uifont_id r_to_l hinting points kerning word_wrap italic bold shadow shadx shady shadowalpha shadowcolor paneltitle grouplabel widgetlabel widget panelzoom minlabelchars minwidgetchars columnspace templatespace boxspace buttonspacex buttonspacey panelspace panelouter outline[4] inner[4] inner_sel[4] item[4] text[4] text_sel[4] shaded shadetop shadedown alpha_check inner_anim[4] inner_anim_sel[4] inner_key[4] inner_key_sel[4] inner_driven[4] inner_driven_sel[4] header[4] back[4] show_header show_back gradient[4] high_gradient[4] show_grad wcol_regular wcol_tool wcol_text wcol_radio wcol_option wcol_toggle wcol_num wcol_numslider wcol_menu wcol_pulldown wcol_menu_back wcol_menu_item wcol_tooltip wcol_box wcol_scroll wcol_progress wcol_list_item wcol_pie_menu wcol_state panel widget_emboss[4] menu_shadow_fac menu_shadow_width iconfile[256] icon_alpha xaxis[4] yaxis[4] zaxis[4] title[4] text_hi[4] header_title[4] header_text[4] header_text_hi[4] tab_active[4] tab_inactive[4] tab_back[4] tab_outline[4] button[4] button_title[4] button_text[4] button_text_hi[4] list[4] list_title[4] list_text[4] list_text_hi[4] panelcolors gradients shade1[4] shade2[4] hilite[4] grid[4] view_overlay[4] wire[4] wire_edit[4] select[4] lamp[4] speaker[4] empty[4] camera[4] active[4] group[4] group_active[4] transform[4] vertex[4] vertex_select[4] vertex_unreferenced[4] edge[4] edge_select[4] edge_seam[4] edge_sharp[4] edge_facesel[4] edge_crease[4] face[4] face_select[4] face_dot[4] extra_edge_len[4] extra_edge_angle[4] extra_face_angle[4] extra_face_area[4] normal[4] vertex_normal[4] loop_normal[4] bone_solid[4] bone_pose[4] bone_pose_active[4] strip[4] strip_select[4] cframe[4] time_keyframe[4] time_gp_keyframe[4] freestyle_edge_mark[4] freestyle_face_mark[4] nurb_uline[4] nurb_vline[4] act_spline[4] nurb_sel_uline[4] nurb_sel_vline[4] lastsel_point[4] handle_free[4] handle_auto[4] handle_vect[4] handle_align[4] handle_auto_clamped[4] handle_sel_free[4] handle_sel_auto[4] handle_sel_vect[4] handle_sel_align[4] handle_sel_auto_clamped[4] ds_channel[4] ds_subchannel[4] keytype_keyframe[4] keytype_extreme[4] keytype_breakdown[4] keytype_jitter[4] keytype_keyframe_select[4] keytype_extreme_select[4] keytype_breakdown_select[4] keytype_jitter_select[4] keyborder[4] keyborder_select[4] console_output[4] console_input[4] console_info[4] console_error[4] console_cursor[4] console_select[4] vertex_size outline_width facedot_size noodle_curving syntaxl[4] syntaxs[4] syntaxb[4] syntaxn[4] syntaxv[4] syntaxc[4] syntaxd[4] syntaxr[4] nodeclass_output[4] nodeclass_filter[4] nodeclass_vector[4] nodeclass_texture[4] nodeclass_shader[4] nodeclass_script[4] nodeclass_pattern[4] nodeclass_layout[4] movie[4] movieclip[4] mask[4] image[4] scene[4] audio[4] effect[4] transition[4] meta[4] text_strip[4] editmesh_active[4] handle_vertex[4] handle_vertex_select[4] handle_vertex_size clipping_border_3d[4] marker_outline[4] marker[4] act_marker[4] sel_marker[4] dis_marker[4] lock_marker[4] bundle_solid[4] path_before[4] path_after[4] camera_path[4] hpad[2] gp_vertex_size gp_vertex[4] gp_vertex_select[4] preview_back[4] preview_stitch_face[4] preview_stitch_edge[4] preview_stitch_vert[4] preview_stitch_stitchable[4] preview_stitch_unstitchable[4] preview_stitch_active[4] uv_shadow[4] uv_others[4] match[4] selected_highlight[4] skin_root[4] anim_active[4] anim_non_active[4] nla_tweaking[4] nla_tweakdupli[4] nla_transition[4] nla_transition_sel[4] nla_meta[4] nla_meta_sel[4] nla_sound[4] nla_sound_sel[4] info_selected[4] info_selected_text[4] info_error[4] info_error_text[4] info_warning[4] info_warning_text[4] info_info[4] info_info_text[4] info_debug[4] info_debug_text[4] paint_curve_pivot[4] paint_curve_handle[4] metadatabg[4] metadatatext[4] solid[4] tui tbuts tv3d tfile tipo tinfo tact tnla tseq tima text toops ttime tnode tlogic tuserpref tconsole tclip tarm[20] active_theme_area module[64] *prop path[768] spec[4] mouse_speed walk_speed walk_speed_factor view_height jump_height teleport_time versionfile subversionfile dupflag savetime tempdir[768] fontdir[768] renderdir[1024] render_cachedir[768] textudir[768] pythondir[768] sounddir[768] i18ndir[768] image_editor[1024] anim_player[1024] anim_player_preset v2d_min_gridsize timecode_style versions dbl_click_time gameflags wheellinescroll uiflag uiflag2 language userpref viewzoom mixbufsize audiodevice audiorate audioformat audiochannels dpi node_margin transopts menuthreshold1 menuthreshold2 themes uifonts uistyles keymaps user_keymaps addons autoexec_paths keyconfigstr[64] undosteps undomemory gp_manhattendist gp_euclideandist gp_eraser gp_settings tb_leftmouse tb_rightmouse light[3] tw_hotspot tw_flag tw_handlesize tw_size textimeout texcollectrate wmdrawmethod dragthreshold memcachelimit prefetchframes pad_rot_angle frameserverport obcenter_dia rvisize rvibright recent_files smooth_viewtx glreslimit curssize color_picker_type ipo_new keyhandles_new gpu_select_method view_frame_type view_frame_keyframes view_frame_seconds scrcastfps scrcastwait widget_unit anisotropic_filter use_16bit_textures use_gpu_mipmap ndof_sensitivity ndof_orbit_sensitivity ndof_deadzone ndof_flag ogl_multisamples image_draw_method glalphaclip text_render coba_weight sculpt_paint_overlay_col[3] gpencil_new_layer_col[4] tweak_threshold navigation_mode author[80] font_path_ui[1024] font_path_ui_mono[1024] compute_device_type compute_device_id fcu_inactive_alpha pixelsize virtual_pixel pie_interaction_type pie_initial_timeout pie_animation_timeout pie_menu_confirm pie_menu_radius pie_menu_threshold walk_navigation opensubdiv_compute_type pad5[6] vertbase edgebase areabase *newscene winid redraws_flag temp do_draw do_refresh do_draw_gesture do_draw_paintcursor do_draw_drag swap skip_handling scrubbing mainwin subwinactive *animtimer *context *newv vec *v1 *v2 *type panelname[64] tabname[64] drawname[64] ofsx ofsy sizex sizey labelofs runtime_flag control snap sortorder *paneltab *activedata idname[64] list_id[64] layout_type list_scroll list_grip list_last_len list_last_activei filter_byname[64] filter_flag filter_sort_flag *dyn_data preview_id[64] pad1[3] *v3 *v4 *full butspacetype headertype region_active_win spacedata handlers actionzones winrct drawrct swinid regiontype alignment do_draw_overlay overlap flagfullscreen uiblocks panels panels_category_active ui_lists ui_previews panels_category *regiontimer *headerstr *regiondata subvstr[4] subversion minversion minsubversion *curscreen *curscene fileflags globalf build_commit_timestamp build_hash[16] orig_width orig_height bottom right xofs yofs lift[3] gamma[3] gain[3] dir[768] tc build_size_flags build_tc_flags build_flags storage done startstill endstill *stripdata *crop *transform *color_balance *tmp startofs endofs machine startdisp enddisp sat mul handsize anim_preseek streamindex multicam_source clip_flag *strip *scene_camera effect_fader speed_fader *seq1 *seq2 *seq3 seqbase *sound *scene_sound pitch pan strobe *effectdata anim_startofs anim_endofs blend_mode blend_opacity *oldbasep *parseq disp_range[2] *seqbasep metastack *act_seq act_imagedir[1024] act_sounddir[1024] proxy_dir[1024] over_ofs over_cfra over_flag proxy_storage over_border edgeWidth forward wipetype fMini fClamp fBoost dDist dQuality bNoComp ScalexIni ScaleyIni xIni yIni rotIni interpolation uniform_scale *frameMap globalSpeed lastValidFrame size_x size_y text[512] text_size wrap_width align_y mask_input_type mask_time *mask_sequence *mask_id color_balance color_multiply curve_mapping white_value[3] key gamma intensity adaptation correction *reference_ibuf *zebra_ibuf *waveform_ibuf *sep_waveform_ibuf *vector_ibuf *histogram_ibuf buttype userjit sta end totpart normfac obfac randfac texfac randlife force[3] vectsize maxlen defvec[3] mult[4] life[4] child[4] mat[4] texmap curmult staticstep omat timetex speedtex flag2neg vertgroup_v vgroupname[64] vgroupname_v[64] *keys minfac nr used usedelem resetdist lastval propname[64] matname[64] *ma qual qual2 targetName[64] toggleName[64] value[64] maxvalue[64] delay duration materialName[64] damptimer axisflag posechannel[64] constraint[64] *fromObject subject[64] body[64] otype pulse freq totlinks **links tap joyindex axis_single axisf button hat hatf precision str[128] *mynew inputs totslinks **slinks valo state_mask *act frameProp[64] blendin priority end_reset strideaxis stridelength layer_weight min_gain max_gain reference_distance max_distance rolloff_factor cone_inner_angle cone_outer_angle cone_outer_gain sndnr pad3[2] sound3D pad6[1] *me linVelocity[3] angVelocity[3] localflag dyn_operation forceloc[3] forcerot[3] linearvelocity[3] angularvelocity[3] *reference min max rotdamp minloc[3] maxloc[3] minrot[3] maxrot[3] matprop[64] butsta butend distribution int_arg_1 int_arg_2 float_arg_1 float_arg_2 toPropName[64] *toObject bodyType filename[64] loadaniname[64] int_arg float_arg influence *subtarget facingaxis velocity acceleration turnspeed updateTime *navmesh object_axis[2] threshold[2] sensitivity[2] limit_x[2] limit_y[2] go *handle *newpackedfile *waveform *spinlock *lampren gobject dupli_ofs[3] childbase roll head[3] tail[3] bone_mat[3][3] arm_head[3] arm_tail[3] arm_mat[4][4] arm_roll xwidth zwidth ease1 ease2 rad_head rad_tail segments bonebase chainbase *edbo *act_bone *act_edbone *sketch gevertdeformer layer_used layer_protected ghostep ghostsize ghosttype pathsize ghostsf ghostef pathsf pathef pathbc pathac *points start_frame end_frame ghost_sf ghost_ef ghost_bc ghost_ac ghost_type ghost_step ghost_flag path_type path_step path_viewflag path_bakeflag path_sf path_ef path_bc path_ac ikflag agrp_index constflag selectflag pad0[5] *bone *child iktree siktree *custom *custom_tx custom_scale eul[3] chan_mat[4][4] pose_mat[4][4] pose_head[3] pose_tail[3] limitmin[3] limitmax[3] stiffness[3] ikstretch ikrotweight iklinweight *temp chanbase *chanhash proxy_layer stride_offset[3] cyclic_offset[3] agroups active_group iksolver *ikdata *ikparam proxy_act_bone[64] numiter numstep minstep maxstep solver feedback maxvel dampmax dampeps channels customCol cs curves groups active_marker idroot *filter_grp searchstr[64] filterflag renameIndex ads timeslide *grp name[30] ownspace tarspace enforce headtail lin_error rot_error *tar matrix[4][4] space rotOrder tarnum targets iterations rootbone max_rootbone *poletar polesubtarget[64] poleangle orientweight grabtarget[3] numpoints chainlen xzScaleMode bulge bulge_min bulge_max bulge_smooth reserved1 reserved2 minmaxflag stuck cache[3] lockflag followflag volmode plane orglength pivX pivY pivZ axX axY axZ minLimit[6] maxLimit[6] extraFz invmat[4][4] from to map[3] expo from_min[3] from_max[3] to_min[3] to_max[3] from_min_rot[3] from_max_rot[3] to_min_rot[3] to_max_rot[3] from_min_scale[3] from_max_scale[3] to_min_scale[3] to_max_scale[3] rotAxis zmin zmax projAxisSpace track[64] frame_method object[64] *depth_ob channel[32] no_rot_axis stride_axis curmod actstart actend actoffs stridelen blendout stridechannel[32] offs_bone[32] hasinput hasoutput datatype sockettype is_copy external *new_sock identifier[64] *storage limit in_out *typeinfo locx locy *default_value stack_index stack_type own_index to_index *groupsock *link ns *new_node lasty outputs *original internal_links miniwidth offsetx offsety anim_init_locx anim_ofsx update label[64] custom1 custom2 custom3 custom4 need_exec exec *threaddata totr butr prvr preview_xsize preview_ysize *block hash_entry *rect xsize ysize *fromnode *tonode *fromsock *tosock *interface_type nodes links init cur_index is_updating nodetype edit_quality render_quality chunksize viewer_border *previews active_viewer_key *execdata (*progress)() (*stats_draw)() (*test_break)() (*update_draw)() *tbh *prh *sdh *udh *duplilock value[3] value[4] value[1024] label_size cyclic movie gain lift master shadows midtones highlights startmidtones endmidtones flaps rounding catadioptric lensshift pass_index pass_flag maxspeed minspeed curved percentx percenty bokeh image_in_width image_in_height center_x center_y spin wrap sigma_color sigma_space hue base_path[1024] format active_input use_render_format use_node_format layer[30] t1 t2 t3 fstrength falpha key[4] algorithm channel x1 x2 y1 y2 fac_x1 fac_x2 fac_y1 fac_y2 colname[64] bktype pad_c1 gamco no_zbuf maxblur bthresh pad_f1 *dict *node colmod mix fade angle_ofs m c jit proj fit slope[3] power[3] limchan unspill limscale uspillr uspillg uspillb tex_mapping color_mapping sky_model sun_direction[3] turbidity ground_albedo color_space projection projection_blend extension offset_freq squash_freq squash gradient_type coloring musgrave_type wave_type wave_profile convert_from convert_to point_source particle_system pd tracking_object[64] screen_balance despill_factor despill_balance edge_kernel_radius edge_kernel_tolerance clip_black clip_white dilate_distance feather_distance feather_falloff blur_pre blur_post track_name[64] wrap_axis plane_track_name[64] motion_blur_samples motion_blur_shutter bytecode_hash[64] *bytecode direction_type uv_map[64] source[2] ray_length shorty mintable maxtable ext_in[2] ext_out[2] *curve *table *premultable premul_ext_in[2] premul_ext_out[2] preset changed_timestamp curr clipr cm[4] black[3] white[3] bwmul[3] sample[3] x_resolution data_luma[256] data_r[256] data_g[256] data_b[256] data_a[256] co[2][2] sample_full sample_lines accuracy wavefrm_mode wavefrm_alpha wavefrm_yfac wavefrm_height vecscope_alpha vecscope_height minmax[3][2] hist *waveform_1 *waveform_2 *waveform_3 *vecscope waveform_tot look[64] view_transform[64] *curve_mapping *pad2 display_device[64] offset[2] clone mtex mask_mtex *toggle_brush *icon_imbuf *gradient *paint_curve icon_filepath[1024] normal_weight rake_factor ob_mode mask_pressure jitter jitter_absolute overlay_flags smooth_stroke_radius smooth_stroke_factor rate sculpt_plane plane_offset gradient_spacing gradient_stroke_mode gradient_fill_mode sculpt_tool vertexpaint_tool imagepaint_tool mask_tool autosmooth_factor crease_pinch_factor plane_trim texture_sample_bias texture_overlay_alpha mask_overlay_alpha cursor_overlay_alpha sharp_threshold blur_kernel_radius blur_mode fill_threshold add_col[3] sub_col[3] stencil_pos[2] stencil_dimension[2] mask_stencil_pos[2] mask_stencil_dimension[2] colors active_color bez pressure tot_points add_index active_rnd active_clone active_mask *layers typemap[42] totlayer maxlayer totsize *pool *external world_co[3] rot[4] ave[3] *ground wander[3] rest_length particle_index[2] delete_flag num parent pa[4] w[4] fuv[4] foffset prev_state *hair *boid dietime num_dmcache sphdensity hair_index alive spring_k plasticity_constant yield_ratio plasticity_balance yield_balance viscosity_omega viscosity_beta stiffness_k stiffness_knear rest_density buoyancy spring_frames *boids *fluid distr phystype avemode reactevent draw draw_as draw_size childtype ren_as subframes draw_col ren_step hair_step keys_step adapt_angle adapt_pix integrator rotfrom bb_align bb_uv_split bb_anim bb_split_offset bb_tilt bb_rand_tilt bb_offset[2] bb_size[2] bb_vel_head bb_vel_tail color_vec_max simplify_refsize simplify_rate simplify_transition simplify_viewport timetweak courant_target jitfac eff_hair grid_rand ps_offset[1] grid_res effector_amount time_flag time_pad[3] partfac tanfac tanphase reactfac ob_vel[3] avefac phasefac randrotfac randphasefac randsize acc[3] dragfac brownfac randlength child_flag child_nbr ren_child_nbr parents childsize childrandsize childrad childflat clumppow kink_flat kink_amp_clump kink_extra_steps kink_axis_random kink_amp_random rough1 rough1_size rough2 rough2_size rough2_thres rough_end rough_end_shape clength clength_thres parting_fac parting_min parting_max branch_thres draw_line[2] path_start path_end trail_count keyed_loops *clumpcurve *roughcurve clump_noise_size bending_random dupliweights *eff_group *dup_ob *bb_ob *pd2 use_modifier_stack pad5[3] *part *particles **pathcache **childcache pathcachebufs childcachebufs *clmd *hair_in_dm *hair_out_dm *target_ob *lattice_deform_data tree_frame bvhtree_frame child_seed totunexist totchild totcached totchildcache target_psys totkeyed bakespace bb_uvname[3][64] vgroup[12] vg_neg rt3 *renderdata *effectors *fluid_springs tot_fluidsprings alloc_fluidsprings *tree *pdd dt_frac Cdis Cvi structural bending max_bend max_struct max_shear max_sewing avg_spring_len timescale eff_force_scale eff_wind_scale sim_time_old velocity_smooth density_target density_strength collider_friction vel_damping shrink_min shrink_max bending_damping voxel_cell_size stepsPerFrame preroll maxspringlen solver_type vgroup_bend vgroup_mass vgroup_struct vgroup_shrink shapekey_rest presets reset *collision_list epsilon self_friction selfepsilon repel_force distance_repel self_loop_count loop_count vgroup_selfcol thickness inittime strokes framenum key_type *actframe gstep gstep_next gcolor_prev[3] gcolor_next[3] color[4] fill[4] info[128] sbuffer_size sbuffer_sflag *sbuffer list printlevel storelevel *reporttimer *windrawable *winactive windows initialized file_saved op_undo_depth operators queue reports jobs paintcursors drags keyconfigs *defaultconf *addonconf *userconf timers *autosavetimer is_interface_locked par[7] *ghostwin *screen *newscreen screenname[64] posx posy windowstate monitor lastcursor modalcursor grabcursor addmousemove multisamples lock_pie_event last_pie_event *eventstate *curswin *tweak *ime_data drawmethod drawfail drawdata modalhandlers subwindows gesture propvalue_str[64] propvalue shift ctrl alt oskey keymodifier maptype *ptr *remove_item *add_item items diff_items spaceid regionid kmi_id (*poll)() *modal_items basename[64] actkeymap *customdata *py_instance *reports macro *opm *coefficients arraysize poly_order phase_multiplier phase_offset value_offset midval before_mode after_mode before_cycles after_cycles rect phase modification step_size *rna_path pchan_name[32] transChan idtype targets[8] num_targets variables expression[256] *expr_comp vec[2] *fpt array_index prev_norm_factor prev_offset from[128] to[128] mappings strips *remap fcurves strip_time blendmode extendmode *speaker_handle group[64] groupmode keyingflag keyingoverride paths description[240] typeinfo[64] active_path *tmpact nla_tracks *act_track *actstrip drivers overrides act_blendmode act_extendmode act_influence rule options fear_factor signal_id look_ahead oloc[3] queue_size wander flee_distance health state_id rules conditions actions ruleset_type rule_fuzziness last_state_id landing_smoothness banking aggression air_min_speed air_max_speed air_max_acc air_max_ave air_personal_space land_jump_speed land_max_speed land_max_acc land_max_ave land_personal_space land_stick_force states *smd *fluid_mutex *fluid_group *coll_group *wt *tex_wt *tex_shadow *tex_flame *shadow p0[3] p1[3] dp0[3] cell_size[3] global_size[3] prev_loc[3] shift[3] shift_f[3] obj_shift_f[3] fluidmat[4][4] fluidmat_wt[4][4] base_res[3] res_min[3] res_max[3] res[3] total_cells dx adapt_margin adapt_res adapt_threshold beta amplify maxres viewsettings noise diss_percent diss_speed res_wt[3] dx_wt cache_comp cache_high_comp openvdb_comp cache_file_format data_depth *point_cache[2] ptcaches[2] border_collisions time_scale vorticity active_fields active_color[3] highres_sampling burning_rate flame_smoke flame_vorticity flame_ignition flame_max_temp flame_smoke_color[3] *noise_texture *verts_old vel_multi vel_normal vel_random fuel_amount volume_density surface_distance particle_size texture_size texture_offset vgroup_density texture_type volume_max volume_min distance_reference cone_angle_outer cone_angle_inner cone_volume_outer render_flag build_size_flag build_tc_flag lastsize[2] tracking *tracking_context proxy frame_offset use_track_mask track_preview_height frame_width frame_height undist_marker *track_search *track_preview track_pos[2] track_disabled track_locked *marker slide_scale[2] error *intrinsics distortion_model sensor_width pixel_aspect focal units principal[2] k1 k2 k3 division_k1 division_k2 pos[2] pattern_corners[4][2] search_min[2] search_max[2] pat_min[2] pat_max[2] markersnr last_marker *markers bundle_pos[3] pat_flag search_flag frames_limit pattern_match motion_model algorithm_flag minimum_correlation corners[4][2] **point_tracks point_tracksnr image_opacity default_motion_model default_algorithm_flag default_minimum_correlation default_pattern_size default_search_size default_frames_limit default_margin default_pattern_match default_flag motion_flag keyframe1 keyframe2 reconstruction_flag refine_camera_intrinsics clean_frames clean_action clean_error object_distance tot_track act_track maxscale *rot_track locinf scaleinf rotinf last_camera camnr *cameras tracks plane_tracks reconstruction message[256] tot_segment *segments max_segment total_frames coverage sort_method coverage_segments tot_channel settings camera stabilization *act_plane_track objects objectnr tot_object dopesheet *brush_group current_frame disp_type image_fileformat effect_ui preview_id init_color_type pad_s image_resolution substeps init_color[4] *init_texture init_layername[64] dry_speed color_dry_threshold depth_clamp disp_factor spread_speed color_spread_speed shrink_speed drip_vel drip_acc influence_scale radius_scale wave_damping wave_speed wave_timescale wave_spring wave_smoothness image_output_path[1024] output_name[64] output_name2[64] *pmd surfaces active_sur error[64] collision wetness particle_radius particle_smooth paint_distance *paint_ramp *vel_ramp proximity_falloff ray_dir wave_factor wave_clamp max_velocity smudge_strength masklayers masklay_act masklay_tot id_type parent[64] sub_parent[64] parent_orig[2] parent_corners_orig[4][2] u bezt tot_uw *uw offset_mode weight_interp tot_point *points_deform tot_vert splines splines_shapes *act_spline *act_point blend_flag **objects *constraints ltime numbodies steps_per_second num_solver_iterations *physics_world *physics_object *physics_shape col_groups mesh_source restitution lin_damping ang_damping lin_sleep_thresh ang_sleep_thresh orn[4] pos[3] *ob1 *ob2 breaking_threshold limit_lin_x_lower limit_lin_x_upper limit_lin_y_lower limit_lin_y_upper limit_lin_z_lower limit_lin_z_upper limit_ang_x_lower limit_ang_x_upper limit_ang_y_lower limit_ang_y_upper limit_ang_z_lower limit_ang_z_upper spring_stiffness_x spring_stiffness_y spring_stiffness_z spring_damping_x spring_damping_y spring_damping_z motor_lin_target_velocity motor_ang_target_velocity motor_lin_max_impulse motor_ang_max_impulse *physics_constraint selection qi qi_start qi_end edge_types exclude_edge_types *linestyle is_displayed modules raycasting_algorithm sphere_radius dkr_epsilon crease_angle linesets *color_ramp value_min value_max range_min range_max min_curvature max_curvature min_thickness max_thickness min_angle max_angle mat_attr sampling wavelength octaves frequency backbone_length tip_length rounds random_radius random_center random_backbone scale_x scale_y pivot_u pivot_x pivot_y orientation thickness_position thickness_ratio caps chaining split_length min_length max_length chain_count split_dash1 split_gap1 split_dash2 split_gap2 split_dash3 split_gap3 sort_key integration_type texstep dash1 gap1 dash2 gap2 dash3 gap3 color_modifiers alpha_modifiers thickness_modifiers geometry_modifiers';
    //names.Text:='name[64] imat[4][4] obimat[3][3]';
    names.Text := '(*disps)() (*bindfunc)() (*stats_draw)()';
    for i:=0 to names.Count-1 do begin
      if BlenderNameParse(names[i], nn, isptr, arr) then begin
        writeln(names[i]);
        writeln('  ',nn);
        writelN('  ', isptr);
        writeln('  ', arr.count);
      end else
        writeln(names[i],' - EPIC FAIL!');
    end;
  finally
    names.Free;
  end;
end;

begin
  if ParamCount= 0 then begin
    writelN('please specify .blender file name');
    Exit;
  end;
  try
    Run(ParamStr(1));
  except
    on e:exception do
      writeln(stderr, e.message);
  end;
end.


