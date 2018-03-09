# 1 "../ldrkrl/graph.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../ldrkrl/graph.c"
# 1 "../include/cmctl.h" 1


# 1 "../include/type.h" 1
# 10 "../include/type.h"
typedef unsigned char u8_t;

typedef unsigned short u16_t;

typedef unsigned int u32_t;

typedef unsigned long long u64_t;

typedef char s8_t;

typedef short s16_t;

typedef int s32_t;

typedef long long s64_t;

typedef long sint_t;
typedef unsigned long uint_t;


typedef u64_t cpuflg_t;

typedef unsigned long adr_t;
typedef unsigned long size_t;

typedef u64_t bool_t;
typedef u64_t dev_t;
typedef const char* str_t;
typedef char char_t;
typedef unsigned long drv_t;
typedef unsigned long mrv_t;
typedef sint_t drvstus_t;


typedef void (*inthandler_t)();
typedef drv_t (*i_handle_t)(uint_t int_nr);
typedef drv_t (*f_handle_t)(uint_t int_nr,void* sframe);
typedef void (*syscall_t)();
typedef drv_t (*dev_op_t)();
typedef mrv_t (*msg_op_t)();
typedef void* exception_t;
typedef char_t* va_list_t;
# 4 "../include/cmctl.h" 2
# 1 "../include/ldrtype.h" 1
# 64 "../include/ldrtype.h"
typedef struct s_fhdsc
{
    u64_t fhd_type;
    u64_t fhd_subtype;
    u64_t fhd_stuts;
    u64_t fhd_id;
    u64_t fhd_intsfsoff;
    u64_t fhd_intsfend;
    u64_t fhd_frealsz;
    u64_t fhd_fsum;
    char fhd_name[192];
}fhdsc_t;

typedef struct s_mlosrddsc
{
    u64_t mdc_mgic;
    u64_t mdc_sfsum;
    u64_t mdc_sfsoff;
    u64_t mdc_sfeoff;
    u64_t mdc_sfrlsz;
    u64_t mdc_ldrbk_s;
    u64_t mdc_ldrbk_e;
    u64_t mdc_ldrbk_rsz;
    u64_t mdc_ldrbk_sum;
    u64_t mdc_fhdbk_s;
    u64_t mdc_fhdbk_e;
    u64_t mdc_fhdbk_rsz;
    u64_t mdc_fhdbk_sum;
    u64_t mdc_filbk_s;
    u64_t mdc_filbk_e;
    u64_t mdc_filbk_rsz;
    u64_t mdc_filbk_sum;
    u64_t mdc_ldrcodenr;
    u64_t mdc_fhdnr;
    u64_t mdc_filnr;
    u64_t mdc_endgic;
    u64_t mdc_rv;
}mlosrddsc_t;



typedef struct s_DPT
{
    u8_t dp_bmgic;
    u8_t dp_pshead;
    u8_t dp_pssector;
    u8_t dp_pscyder;
    u8_t dp_ptype;
    u8_t dp_pehead;
    u8_t dp_pesector;
    u8_t dp_pecyder;
    u32_t dp_pslba;
    u32_t dp_plbasz;

}__attribute__((packed)) dpt_t;


typedef struct s_MBR
{
    char_t mb_byte[446];
    dpt_t mb_part[4];
    u16_t mb_endmgic;
}__attribute__((packed)) mbr_t;
typedef struct s_EBR
{
    char_t eb_byte[446];
    dpt_t eb_part[4];
    u16_t eb_endmgic;
}__attribute__((packed)) ebr_t;

typedef struct s_IDTR
{
        u16_t idtlen;
        u32_t idtbas;
}idtr_t;



typedef struct s_RWHDPACK
{
# 152 "../include/ldrtype.h"
    u8_t rwhpk_sz;
    u8_t rwhpk_rv;
    u8_t rwhpk_sn;
    u8_t rwhpk_rv1;
    u16_t rwhpk_of;
    u16_t rwhpk_se;
    u32_t rwhpk_ll;
    u32_t rwhpk_lh;

}__attribute__((packed)) rwhdpach_t;





typedef struct s_e820{
    u64_t saddr;
    u64_t lsize;
    u32_t type;
}__attribute__((packed)) e820map_t;


typedef struct s_VBEINFO
{
        char vbesignature[4];
        u16_t vbeversion;
        u32_t oemstringptr;
        u32_t capabilities;
        u32_t videomodeptr;
        u16_t totalmemory;
        u16_t oemsoftwarerev;
        u32_t oemvendornameptr;
        u32_t oemproductnameptr;
        u32_t oemproductrevptr;
        u8_t reserved[222];
        u8_t oemdata[256];
}__attribute__((packed)) vbeinfo_t;

typedef struct s_VBEOMINFO
{
    u16_t ModeAttributes;
    u8_t WinAAttributes;
    u8_t WinBAttributes;
    u16_t WinGranularity;
    u16_t WinSize;
    u16_t WinASegment;
    u16_t WinBSegment;
    u32_t WinFuncPtr;
    u16_t BytesPerScanLine;
    u16_t XResolution;
    u16_t YResolution;
    u8_t XCharSize;
    u8_t YCharSize;
    u8_t NumberOfPlanes;
    u8_t BitsPerPixel;
    u8_t NumberOfBanks;
    u8_t MemoryModel;
    u8_t BankSize;
    u8_t NumberOfImagePages;
    u8_t Reserved;
    u8_t RedMaskSize;
    u8_t RedFieldPosition;
    u8_t GreenMaskSize;
    u8_t GreenFieldPosition;
    u8_t BlueMaskSize;
    u8_t BlueFieldPosition;
    u8_t RsvdMaskSize;
    u8_t RsvdFieldPosition;
    u8_t DirectColorModeInfo;
    u32_t PhysBasePtr;
    u32_t Reserved1;
    u16_t Reserved2;
    u16_t LinBytesPerScanLine;
    u8_t BnkNumberOfImagePages;
    u8_t LinNumberOfImagePages;
    u8_t LinRedMaskSize;
    u8_t LinRedFieldPosition;
    u8_t LinGreenMaskSize;
    u8_t LinGreenFieldPosition;
    u8_t LinBlueMaskSize;
    u8_t LinBlueFieldPosition;
    u8_t LinRsvdMaskSize;
    u8_t LinRsvdFieldPosition;
    u32_t MaxPixelClock;
    u8_t Reserved3[189];
}__attribute__((packed)) vbeominfo_t;

typedef struct s_PIXCL
{
    u8_t cl_b;
    u8_t cl_g;
    u8_t cl_r;
    u8_t cl_a;
}__attribute__((packed)) pixcl_t;

typedef u32_t pixl_t;



typedef struct s_GRAPH
{
    u32_t gh_mode;
    u32_t gh_x;
    u32_t gh_y;
    u32_t gh_framphyadr;
    u32_t gh_onepixbits;
    u32_t gh_vbemodenr;
    u32_t gh_vifphyadr;
    u32_t gh_vmifphyadr;
    u32_t gh_bank;
    u32_t gh_curdipbnk;
    u32_t gh_nextbnk;
    u32_t gh_banksz;
    u32_t gh_logophyadrs;
    u32_t gh_logophyadre;
    u32_t gh_fontadr;
    u32_t gh_ftsectadr;
    u32_t gh_ftsectnr;
    u32_t gh_fnthight;
    u32_t gh_nxtcharsx;
    u32_t gh_nxtcharsy;
    u32_t gh_linesz;
    vbeinfo_t gh_vbeinfo;
    vbeominfo_t gh_vminfo;
}__attribute__((packed)) graph_t;

typedef struct s_BMFHEAD
{
    u16_t bf_tag;
    u32_t bf_size;
    u16_t bf_resd1;
    u16_t bf_resd2;
    u32_t bf_off;
}__attribute__((packed)) bmfhead_t;

typedef struct s_BITMINFO
{
    u32_t bi_size;
    s32_t bi_w;
    s32_t bi_h;
    u16_t bi_planes;
    u16_t bi_bcount;
    u32_t bi_comp;
    u32_t bi_szimg;
    s32_t bi_xpelsper;
    s32_t bi_ypelsper;
    u32_t bi_clruserd;
    u32_t bi_clrimport;
}__attribute__((packed)) bitminfo_t;

typedef struct s_BMDBGR
{
    u8_t bmd_b;
    u8_t bmd_g;
    u8_t bmd_r;
}__attribute__((packed)) bmdbgr_t;

typedef struct s_UTF8
{
    u8_t utf_b1;
    u8_t utf_b2;
    u8_t utf_b3;
    u8_t utf_b4;
    u8_t utf_b5;
    u8_t utf_b6;
}__attribute__((packed)) utf8_t;

typedef struct s_FONTFHDER
{
    u8_t fh_mgic[4];
    u32_t fh_fsize;
    u8_t fh_sectnr;
    u8_t fh_fhght;
    u16_t fh_wcpflg;
    u16_t fh_nchars;
    u8_t fh_rev[2];
}__attribute__((packed)) fontfhder_t;

typedef struct s_FTSECTIF
{
    u16_t fsf_fistuc;
    u16_t fsf_lastuc;
    u32_t fsf_off;
}__attribute__((packed)) ftsectif_t;

typedef struct s_UFTINDX
{
    u32_t ui_choff:26;
    u32_t ui_chwith:6;
}__attribute__((packed)) uftindx_t;

typedef struct s_FNTDATA
{
    u8_t fntwxbyte;
    u8_t fnthx;
    u8_t fntwx;
    u8_t fntchmap[32];
}__attribute__((packed)) fntdata_t;


typedef struct s_KLFOCPYMBLK
{
    u64_t sphyadr;
    u64_t ocymsz;
}__attribute__((packed)) klfocpymblk_t;


typedef struct s_MRSDP
{
    u64_t rp_sign;
    u8_t rp_chksum;
    u8_t rp_oemid[6];
    u8_t rp_revn;
    u32_t rp_rsdtphyadr;
    u32_t rp_len;
    u64_t rp_xsdtphyadr;
    u8_t rp_echksum;
    u8_t rp_resv[3];
}__attribute__((packed)) mrsdp_t;
typedef struct s_MACHBSTART
{
    u64_t mb_migc;
    u64_t mb_chksum;
    u64_t mb_krlinitstack;
    u64_t mb_krlitstacksz;
    u64_t mb_lmosimgpadr;
    u64_t mb_lmosimgsz;
    u64_t mb_krlimgpadr;
    u64_t mb_krlsz;
    u64_t mb_krlvec;
    u64_t mb_krlrunmode;
    u64_t mb_kalldendpadr;
    u64_t mb_ksepadrs;
    u64_t mb_ksepadre;
    u64_t mb_kservadrs;
    u64_t mb_kservadre;
    u64_t mb_nextwtpadr;
    u64_t mb_bfontpadr;
    u64_t mb_bfontsz;
    u64_t mb_fvrmphyadr;
    u64_t mb_fvrmsz;
    u64_t mb_cpumode;
    u64_t mb_memsz;
    u64_t mb_e820padr;
    u64_t mb_e820nr;
    u64_t mb_e820sz;
    u64_t mb_e820expadr;
    u64_t mb_e820exnr;
    u64_t mb_e820exsz;
    u64_t mb_memznpadr;
    u64_t mb_memznnr;
    u64_t mb_memznsz;
    u64_t mb_memznchksum;
    u64_t mb_memmappadr;
    u64_t mb_memmapnr;
    u64_t mb_memmapsz;
    u64_t mb_memmapchksum;
    u64_t mb_pml4padr;
    u64_t mb_subpageslen;
    u64_t mb_kpmapphymemsz;
    u64_t mb_ebdaphyadr;
    mrsdp_t mb_mrsdp;
    graph_t mb_ghparm;
}__attribute__((packed)) machbstart_t;
# 447 "../include/ldrtype.h"
void __attribute__((regparm(3))) realadr_call_entry(u16_t callint,u16_t val1,u16_t val2);
# 5 "../include/cmctl.h" 2
# 1 "../include/imgmgrhead.h" 1
# 6 "../include/cmctl.h" 2
# 1 "../include/vgastr_t.h" 1
# 23 "../include/vgastr_t.h"
typedef struct s_CURSOR
{


    uint_t vmem_s;
    uint_t vmem_e;
    uint_t cvmemadr;

    uint_t x;
    uint_t y;
}cursor_t;
# 7 "../include/cmctl.h" 2
# 1 "../include/fs.h" 1


int strcmpl(const char *a,const char *b);
int move_krlimg(machbstart_t* mbsp,u64_t cpyadr,u64_t cpysz);
void init_krlfile(machbstart_t* mbsp);
void init_defutfont(machbstart_t *mbsp);
fhdsc_t* get_fileinfo(char_t* fname,machbstart_t* mbsp);
void get_file_rpadrandsz(char_t *fname, machbstart_t* mbsp,u32_t* retadr,u32_t* retsz);
u64_t get_filesz(char_t* filenm,machbstart_t* mbsp);
u64_t get_wt_lmosimgfilesz(machbstart_t* mbsp);
u64_t r_file_to_padr(machbstart_t* mbsp,u32_t f2adr,char_t* fnm);
void set_rwhdhdpack(rwhdpach_t* setp,u8_t sn,u16_t off,u16_t seg,u32_t lbal,u32_t lbah);
void* read_sector(u64_t sector);
void ret_mbr();
int is_part(dpt_t* isp);
u64_t ret_imgfilesz();
# 8 "../include/cmctl.h" 2
# 1 "../include/realparm.h" 1
# 9 "../include/cmctl.h" 2
# 1 "../include/chkcpmm_t.h" 1
# 93 "../include/chkcpmm_t.h"
typedef unsigned long long pt64_t;
# 10 "../include/cmctl.h" 2
# 1 "../include/io.h" 1







static inline void out_u8(const u16_t port, const u8_t val)
{

    __asm__ __volatile__("outb  %1, %0\n"
             :
             : "dN"(port), "a"(val));
}
# 28 "../include/io.h"
static inline u8_t in_u8(const u16_t port)
{
    u8_t tmp;

    __asm__ __volatile__("inb %1, %0\n"
             : "=a"(tmp)
             : "dN"(port));
    return tmp;
}


static inline void out_u16(const u16_t port, const u16_t val)
{

    __asm__ __volatile__("outw  %1, %0\n"
             :
             : "dN"(port), "a"(val));
}


static inline u16_t in_u16(const u16_t port)
{
    u16_t tmp;

    __asm__ __volatile__("inw %1, %0\n"
             : "=a"(tmp)
             : "dN"(port));
    return tmp;
};
# 69 "../include/io.h"
static inline sint_t m2mcopy(void* sadr,void* dadr,sint_t len)
{
    if(0==sadr||0==dadr||1>len)
    {
        return 0;
    }
    u8_t* s=(u8_t*)sadr,*d=(u8_t*)dadr;
    if(s<d)
    {
        for(sint_t i=(len-1);i>=0;i--)
        {
            d[i]=s[i];
        }
        return len;
    }
    if(s>d)
    {
        for(sint_t j=0;j<len;j++)
        {
            d[j]=s[j];
        }
        return len;
    }
    if(s==d)
    {
        return len;
    }
    return 0;
}

static inline void memset(void* src,u8_t val,uint_t count)
{

    u8_t* ss=src;
    for(uint_t i=0;i<count;i++)
    {
        ss[i]=val;
    }
    return;
}
# 11 "../include/cmctl.h" 2
# 1 "../include/vgastr.h" 1
# 12 "../include/vgastr.h"
 void init_curs();
 void set_curs(u32_t x, u32_t y);
 void GxH_strwrite(char_t* str,cursor_t* cursptr);

 char* numberk(char_t* str,uint_t n, sint_t base);
 void clear_screen(u16_t srrv);
 void put_one_char(char_t cr,uint_t x,uint_t y);
 void close_curs();
 void vsprintfk(char_t* buf,const char_t* fmt,va_list_t args);
 void kprint(const char_t* fmt,...);

static inline void current_curs(cursor_t* cp,u32_t c_flg)
{


 if(c_flg==10)
 {
  cp->y++;
  cp->x=0;
  if(cp->y>24)
  {
   cp->y=0;
   clear_screen(0x0700);
  }

  return;
 }
 if(c_flg==0)
 {
  cp->x+=2;
  if(cp->x>159)
  {
   cp->x=0;
   cp->y++;
   if(cp->y>24)
   {
    cp->y=0;
    clear_screen(0x0700);
   }
   return;
  }

 }
# 67 "../include/vgastr.h"
 return;

}
# 12 "../include/cmctl.h" 2
# 1 "../include/inithead.h" 1





void inithead_entry();
void write_shellfile();
void write_kernelfile();
void write_realintsvefile();
fhdsc_t* find_file(char_t* fname);
void write_ldrkrlfile();
void error(char_t* estr);
int strcmpl(const char *a,const char *b);
# 13 "../include/cmctl.h" 2
# 1 "../include/ldrkrlentry.h" 1





void ldrkrl_entry();

void kerror(char_t* kestr);
void die(u32_t dt);
# 14 "../include/cmctl.h" 2
# 1 "../include/chkcpmm.h" 1







void init_mem(machbstart_t* mbsp);
void init_krlinitstack(machbstart_t* mbsp);
void init_meme820(machbstart_t* mbsp);
void init_chkcpu(machbstart_t* mbsp);
void mmap(e820map_t** retemp,u32_t* retemnr);
int chk_cpuid();
int chk_cpu_longmode();
e820map_t* chk_memsize(e820map_t* e8p,u32_t enr,u64_t sadr,u64_t size);
u64_t get_memsize(e820map_t* e8p,u32_t enr);
void init_chkmm();
void out_char(char* c);
void init_bstartpages(machbstart_t *mbsp);
void ldr_createpage_and_open();
# 15 "../include/cmctl.h" 2
# 1 "../include/graph.h" 1




void init_graph(machbstart_t* mbsp);
void graph_t_init(graph_t* initp);
u32_t vfartolineadr(u32_t vfar);
void init_kinitfvram(machbstart_t* mbsp);
void get_vbemode(machbstart_t* mbsp);
void get_vbemodeinfo(machbstart_t* mbsp);
void set_vbemodeinfo();
void bga_write_reg(u16_t index, u16_t data);
u16_t bga_read_reg(u16_t index);
u32_t get_bgadevice();
u32_t chk_bgamaxver();
void init_bgadevice(machbstart_t* mbsp);
u32_t utf8_to_unicode(utf8_t* utfp,int* retuib);
# 16 "../include/cmctl.h" 2
# 1 "../include/bstartparm.h" 1
# 10 "../include/bstartparm.h"
void init_bstartparm();
void machbstart_t_init(machbstart_t* initp);
int adrzone_is_ok(u64_t sadr,u64_t slen,u64_t kadr,u64_t klen);
int chkadr_is_ok(machbstart_t* mbsp,u64_t chkadr,u64_t cksz);
# 17 "../include/cmctl.h" 2
# 2 "../ldrkrl/graph.c" 2


void write_pixcolor(machbstart_t* mbsp,u32_t x,u32_t y,pixl_t pix)
{

    u8_t* p24bas;
    if(mbsp->mb_ghparm.gh_onepixbits==24)
    {
            u32_t p24adr=(x+(y*mbsp->mb_ghparm.gh_x))*3;
            p24bas=(u8_t*)(p24adr+mbsp->mb_ghparm.gh_framphyadr);
            p24bas[0]=(u8_t)(pix);
            p24bas[1]=(u8_t)(pix>>8);
            p24bas[2]=(u8_t)(pix>>16);
            return;

    }
    u32_t* phybas=(u32_t*)mbsp->mb_ghparm.gh_framphyadr;
    phybas[x+(y*mbsp->mb_ghparm.gh_x)]=pix;


    return;
}

void bmp_print(void* bmfile,machbstart_t* mbsp)
{
    if(0==bmfile)
    {
        return;
    }
    pixl_t pix=0;
    bmdbgr_t* bpixp=0;
    bmfhead_t* bmphdp=(bmfhead_t*)bmfile;
    bitminfo_t* binfp= (bitminfo_t*)(bmphdp+1);
    u32_t img=(u32_t)bmfile+bmphdp->bf_off;
    bpixp=(bmdbgr_t*)img;
    int l=0;
    int k=0;
    int ilinebc = (((binfp->bi_w*24) + 31) >> 5) << 2;
    for(int y=639;y>=129;y--,l++)
    {
        k=0;
        for(int x=322;x<662;x++)
        {
            pix=((0|(bpixp[k].bmd_r<<16)|(bpixp[k].bmd_g<<8)|bpixp[k].bmd_b));
            if(50<l)
            {
                if(0x00ffffff<=pix||pix>=0x00999999)
            {
                pix=0;
            }
            }

            write_pixcolor(mbsp,x,y,pix);
            k++;
        }
        bpixp=(bmdbgr_t*)(((int)bpixp)+ilinebc);
    }
    return;
}

void logo(machbstart_t* mbsp)
{
    u32_t retadr=0,sz=0;
    get_file_rpadrandsz("LMOSEMLOGOX.bmp",mbsp,&retadr,&sz);
    if(0==retadr)
    {
        kerror("if_getfilerpadrsz err");
    }
    bmp_print((void*)retadr,mbsp);

    return;
}


void init_graph(machbstart_t* mbsp)
{
    graph_t_init(&mbsp->mb_ghparm);
    init_bgadevice(mbsp);
    if(mbsp->mb_ghparm.gh_mode!=3)
    {
        get_vbemode(mbsp);
        get_vbemodeinfo(mbsp);
        set_vbemodeinfo();
    }

    init_kinitfvram(mbsp);
    logo(mbsp);
    return;
}

void graph_t_init(graph_t* initp)
{
    memset(initp,0,sizeof(graph_t));
    return;
}

void init_kinitfvram(machbstart_t* mbsp)
{
    mbsp->mb_fvrmphyadr=0x800000;
    mbsp->mb_fvrmsz=0x400000;
    memset((void*)0x800000,0,0x400000);

    return;
}

u32_t vfartolineadr(u32_t vfar)
{
    u32_t tmps=0,sec=0,off=0;
    off=vfar&0xffff;
    tmps=(vfar>>16)&0xffff;
    sec=tmps<<4;
    return (sec+off);
}


void get_vbemode(machbstart_t* mbsp)
{
    realadr_call_entry((2*2),0,0);
    vbeinfo_t* vbeinfoptr=(vbeinfo_t*)(0x6000);
    u16_t* mnm;

    if(vbeinfoptr->vbesignature[0]!='V'||
            vbeinfoptr->vbesignature[1]!='E'||
            vbeinfoptr->vbesignature[2]!='S'||
            vbeinfoptr->vbesignature[3]!='A')
    {
        kerror("vbe is not VESA");
    }
    kprint("vbe vbever:%x\n",vbeinfoptr->vbeversion);
    if(vbeinfoptr->vbeversion<0x0200)
    {
        kerror("vbe version not vbe3");
    }

    if(vbeinfoptr->videomodeptr>0xffff)
    {
        mnm=(u16_t*)vfartolineadr(vbeinfoptr->videomodeptr);
    }
    else
    {
        mnm=(u16_t*)(vbeinfoptr->videomodeptr);
    }

    int bm=0;
    for(int i=0;mnm[i]!=0xffff;i++)
    {
        if(mnm[i]==0x118)
        {
            bm=1;
        }
        if(i>0x1000)
        {
            break;
        }

    }

    if(bm==0)
    {
        kerror("getvbemode not 118");
    }
    mbsp->mb_ghparm.gh_mode=1;
    mbsp->mb_ghparm.gh_vbemodenr=0x118;
    mbsp->mb_ghparm.gh_vifphyadr=(0x6000);
    m2mcopy(vbeinfoptr,&mbsp->mb_ghparm.gh_vbeinfo,sizeof(vbeinfo_t));
    return;
}


void bga_write_reg(u16_t index, u16_t data)
{
    out_u16((0x01CE), index);
    out_u16((0x01CF), data);
    return;
}

u16_t bga_read_reg(u16_t index)
{
    out_u16((0x01CE), index);
    return in_u16((0x01CF));
}

u32_t get_bgadevice()
{
    u16_t bgaid=bga_read_reg((0));
    if((0xB0C0)<=bgaid&&(0xB0C5)>=bgaid)
    {
        bga_write_reg((0),bgaid);
        if(bga_read_reg((0))!=bgaid)
        {
            return 0;
        }
        return (u32_t)bgaid;
    }
    return 0;
}

u32_t chk_bgamaxver()
{
    bga_write_reg((0),(0xB0C5));
    if(bga_read_reg((0))==(0xB0C5))
    {
        return (u32_t)(0xB0C5);
    }
    bga_write_reg((0),(0xB0C4));
    if(bga_read_reg((0))==(0xB0C4))
    {
        return (u32_t)(0xB0C4);
    }
    bga_write_reg((0),(0xB0C3));
    if(bga_read_reg((0))==(0xB0C3))
    {
        return (u32_t)(0xB0C3);
    }
    bga_write_reg((0),(0xB0C2));
    if(bga_read_reg((0))==(0xB0C2))
    {
        return (u32_t)(0xB0C2);
    }
    bga_write_reg((0),(0xB0C1));
    if(bga_read_reg((0))==(0xB0C1))
    {
        return (u32_t)(0xB0C1);
    }
    bga_write_reg((0),(0xB0C0));
    if(bga_read_reg((0))==(0xB0C0))
    {
        return (u32_t)(0xB0C0);
    }
    return 0;
}



void init_bgadevice(machbstart_t* mbsp)
{
    u32_t retdevid=get_bgadevice();
    if(0==retdevid)
    {
        return;
    }
    retdevid=chk_bgamaxver();
    if(0==retdevid)
    {
        return;
    }
    bga_write_reg((4), (0x00));
    bga_write_reg((1), 1024);
    bga_write_reg((2), 768);
    bga_write_reg((3), 0x20);
    bga_write_reg((4), (0x01)|((0x40)));
    mbsp->mb_ghparm.gh_mode=3;
    mbsp->mb_ghparm.gh_vbemodenr=retdevid;
    mbsp->mb_ghparm.gh_x=1024;
    mbsp->mb_ghparm.gh_y=768;
    mbsp->mb_ghparm.gh_framphyadr=0xe0000000;
    mbsp->mb_ghparm.gh_onepixbits=0x20;
    mbsp->mb_ghparm.gh_bank=4;
    mbsp->mb_ghparm.gh_curdipbnk=0;
    mbsp->mb_ghparm.gh_nextbnk=0;
    mbsp->mb_ghparm.gh_banksz=(mbsp->mb_ghparm.gh_x*mbsp->mb_ghparm.gh_x*4);

    return;
}

void test_bga()
{
    int* p=(int*)(0xe0000000);
    int* p2=(int*)(0xe0000000+(1024*768*4));
    int* p3=(int*)(0xe0000000+(1024*768*4)*2);

        for(int i=0;i<(1024*768);i++)
        {
            p2[i]=0x00ff00ff;
        }

        for(int i=0;i<(1024*768);i++)
        {
            p[i]=0x0000ff00;
        }
        for(int i=0;i<(1024*768);i++)
        {
            p3[i]=0x00ff0000;
        }
    for(;;)
    {
        bga_write_reg((8),0);
        bga_write_reg((9),0);
        bga_write_reg((6),1024);
        bga_write_reg((7),768);
        die(0x400);
        bga_write_reg((8),0);
        bga_write_reg((9),768);
        bga_write_reg((6),1024);
        bga_write_reg((7),768*2);
        die(0x400);
        bga_write_reg((8),0);
        bga_write_reg((9),768*2);
        bga_write_reg((6),1024);
        bga_write_reg((7),768*3);
        die(0x400);
    }

    for(;;);
    return;
}


void get_vbemodeinfo(machbstart_t* mbsp)
{
    realadr_call_entry((3*2),0,0);
    vbeominfo_t* vomif=(vbeominfo_t*)(0x6400);
    u32_t x=vomif->XResolution,y=vomif->YResolution;
    u32_t* phybass=(u32_t*)(vomif->PhysBasePtr);
    if(vomif->BitsPerPixel<24)
    {
        kerror("vomif->BitsPerPixel!=32");
    }
    if(x!=1024||y!=768)
    {
        kerror("xy not");
    }
    if((u32_t)phybass<0x100000)
    {
        kerror("phybass not");
    }
    mbsp->mb_ghparm.gh_x=vomif->XResolution;
    mbsp->mb_ghparm.gh_y=vomif->YResolution;
    mbsp->mb_ghparm.gh_framphyadr=vomif->PhysBasePtr;
    mbsp->mb_ghparm.gh_onepixbits=vomif->BitsPerPixel;
    mbsp->mb_ghparm.gh_vmifphyadr=(0x6400);
    m2mcopy(vomif,&mbsp->mb_ghparm.gh_vminfo,sizeof(vbeominfo_t));

    return;
}

void set_vbemodeinfo()
{
    realadr_call_entry((4*2),0,0);
    return;
}

u32_t utf8_to_unicode(utf8_t* utfp,int* retuib)
{
    u8_t uhd=utfp->utf_b1,ubyt=0;
    u32_t ucode=0,tmpuc=0;
    if(0x80>uhd)
    {
        ucode=utfp->utf_b1&0x7f;
        *retuib=1;
        return ucode;
    }
    if(0xc0<=uhd&&uhd<=0xdf)
    {
        ubyt=utfp->utf_b1&0x1f;
        tmpuc|=ubyt;
        ubyt=utfp->utf_b2&0x3f;
        ucode=(tmpuc<<6)|ubyt;
        *retuib=2;
        return ucode;
    }
    if(0xe0<=uhd&&uhd<=0xef)
    {
        ubyt=utfp->utf_b1&0x0f;
        tmpuc|=ubyt;
        ubyt=utfp->utf_b2&0x3f;
        tmpuc<<=6;
        tmpuc|=ubyt;
        ubyt=utfp->utf_b3&0x3f;
        ucode=(tmpuc<<6)|ubyt;
        *retuib=3;
        return ucode;
    }
    if(0xf0<=uhd&&uhd<=0xf7)
    {
        ubyt=utfp->utf_b1&0x7;
        tmpuc|=ubyt;
        ubyt=utfp->utf_b2&0x3f;
        tmpuc<<=6;
        tmpuc|=ubyt;
        ubyt=utfp->utf_b3&0x3f;
        tmpuc<<=6;
        tmpuc|=ubyt;
        ubyt=utfp->utf_b4&0x3f;
        ucode=(tmpuc<<6)|ubyt;
        *retuib=4;
        return ucode;
    }
    if(0xf8<=uhd&&uhd<=0xfb)
    {
        ubyt=utfp->utf_b1&0x3;
        tmpuc|=ubyt;
        ubyt=utfp->utf_b2&0x3f;
        tmpuc<<=6;
        tmpuc|=ubyt;
        ubyt=utfp->utf_b3&0x3f;
        tmpuc<<=6;
        tmpuc|=ubyt;
        ubyt=utfp->utf_b4&0x3f;
        tmpuc<<=6;
        tmpuc|=ubyt;
        ubyt=utfp->utf_b5&0x3f;
        ucode=(tmpuc<<6)|ubyt;
        *retuib=5;
        return ucode;
    }
    if(0xfc<=uhd&&uhd<=0xfd)
    {
        ubyt=utfp->utf_b1&0x1;
        tmpuc|=ubyt;
        ubyt=utfp->utf_b2&0x3f;
        tmpuc<<=6;
        tmpuc|=ubyt;
        ubyt=utfp->utf_b3&0x3f;
        tmpuc<<=6;
        tmpuc|=ubyt;
        ubyt=utfp->utf_b4&0x3f;
        tmpuc<<=6;
        tmpuc|=ubyt;
        ubyt=utfp->utf_b5&0x3f;
        tmpuc<<=6;
        tmpuc|=ubyt;
        ubyt=utfp->utf_b6&0x3f;
        ucode=(tmpuc<<6)|ubyt;
        *retuib=6;
        return ucode;
    }
    *retuib=0;
    return 0;
}
