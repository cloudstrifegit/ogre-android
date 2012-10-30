LOCAL_PATH := $(call my-dir)
 
include $(CLEAR_VARS)
 
LOCAL_MODULE    := libzzip
LOCAL_LDLIBS	:= -ldl -lz
LOCAL_SRC_FILES := zzip/dir.c zzip/err.c zzip/fetch.c zzip/file.c zzip/fseeko.c zzip/info.c zzip/memdisk.c zzip/mmapped.c zzip/plugin.c zzip/stat.c zzip/write.c zzip/zip.c
 
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE		:= libfreeimage 
LOCAL_LDLIBS		:= -ldl -lz
LOCAL_C_INCLUDES	:= $(LOCAL_PATH)/freeimage $(LOCAL_PATH)/freeimage/Metadata $(LOCAL_PATH)/freeimage/DeprecationManager
LOCAL_CFLAGS		+= -DFREEIMAGE_LIB=1 -DPNG_STATIC=1
LOCAL_SRC_FILES		:=\
	freeimage/DeprecationManager/Deprecated.cpp\
	freeimage/DeprecationManager/DeprecationMgr.cpp\
	freeimage/FreeImage/BitmapAccess.cpp\
	freeimage/FreeImage/CacheFile.cpp\
	freeimage/FreeImage/ColorLookup.cpp\
	freeimage/FreeImage/Conversion.cpp\
	freeimage/FreeImage/ConversionFloat.cpp\
	freeimage/FreeImage/Conversion4.cpp\
	freeimage/FreeImage/Conversion8.cpp\
	freeimage/FreeImage/Conversion16_555.cpp\
	freeimage/FreeImage/Conversion16_565.cpp\
	freeimage/FreeImage/Conversion24.cpp\
	freeimage/FreeImage/Conversion32.cpp\
	freeimage/FreeImage/ConversionRGB16.cpp\
	freeimage/FreeImage/ConversionRGBF.cpp\
	freeimage/FreeImage/ConversionUINT16.cpp\
	freeimage/FreeImage/ConversionType.cpp\
	freeimage/FreeImage/FreeImage.cpp\
	freeimage/FreeImage/FreeImageIO.cpp\
	freeimage/FreeImage/GetType.cpp\
	freeimage/FreeImage/Halftoning.cpp\
	freeimage/FreeImage/J2KHelper.cpp\
	freeimage/FreeImage/MemoryIO.cpp\
	freeimage/FreeImage/MultiPage.cpp\
	freeimage/FreeImage/NNQuantizer.cpp\
	freeimage/FreeImage/PixelAccess.cpp\
	freeimage/FreeImage/Plugin.cpp\
	freeimage/FreeImage/PluginGIF.cpp\
	freeimage/FreeImage/PluginJPEG.cpp\
	freeimage/FreeImage/PluginPNG.cpp\
	freeimage/FreeImage/ToneMapping.cpp\
	freeimage/FreeImage/tmoColorConvert.cpp\
	freeimage/FreeImage/tmoDrago03.cpp\
	freeimage/FreeImage/tmoFattal02.cpp\
	freeimage/FreeImage/tmoReinhard05.cpp\
	freeimage/FreeImage/WuQuantizer.cpp\
	freeimage/FreeImage/ZLibInterface.cpp\
	freeimage/FreeImageToolkit/Background.cpp\
	freeimage/FreeImageToolkit/Colors.cpp\
	freeimage/FreeImageToolkit/Flip.cpp\
	freeimage/FreeImageToolkit/Resize.cpp\
	freeimage/FreeImageToolkit/BSplineRotate.cpp\
	freeimage/FreeImageToolkit/CopyPaste.cpp\
	freeimage/FreeImageToolkit/JPEGTransform.cpp\
	freeimage/FreeImageToolkit/Channels.cpp\
	freeimage/FreeImageToolkit/Display.cpp\
	freeimage/FreeImageToolkit/MultigridPoissonSolver.cpp\
	freeimage/FreeImageToolkit/ClassicRotate.cpp\
	freeimage/FreeImageToolkit/Rescale.cpp\
	freeimage/LibJPEG/ckconfig.c\
	freeimage/LibJPEG/jaricom.c\
	freeimage/LibJPEG/jcapimin.c\
	freeimage/LibJPEG/jcapistd.c\
	freeimage/LibJPEG/jcarith.c\
	freeimage/LibJPEG/jccoefct.c\
	freeimage/LibJPEG/jccolor.c\
	freeimage/LibJPEG/jcdctmgr.c\
	freeimage/LibJPEG/jchuff.c\
	freeimage/LibJPEG/jcinit.c\
	freeimage/LibJPEG/jcmainct.c\
	freeimage/LibJPEG/jcmarker.c\
	freeimage/LibJPEG/jcmaster.c\
	freeimage/LibJPEG/jcomapi.c\
	freeimage/LibJPEG/jconfig.txt\
	freeimage/LibJPEG/jcparam.c\
	freeimage/LibJPEG/jcprepct.c\
	freeimage/LibJPEG/jcsample.c\
	freeimage/LibJPEG/jctrans.c\
	freeimage/LibJPEG/jdapimin.c\
	freeimage/LibJPEG/jdapistd.c\
	freeimage/LibJPEG/jdarith.c\
	freeimage/LibJPEG/jdatadst.c\
	freeimage/LibJPEG/jdatasrc.c\
	freeimage/LibJPEG/jdcoefct.c\
	freeimage/LibJPEG/jdcolor.c\
	freeimage/LibJPEG/jddctmgr.c\
	freeimage/LibJPEG/jdhuff.c\
	freeimage/LibJPEG/jdinput.c\
	freeimage/LibJPEG/jdmainct.c\
	freeimage/LibJPEG/jdmarker.c\
	freeimage/LibJPEG/jdmaster.c\
	freeimage/LibJPEG/jdmerge.c\
	freeimage/LibJPEG/jdpostct.c\
	freeimage/LibJPEG/jdsample.c\
	freeimage/LibJPEG/jdtrans.c\
	freeimage/LibJPEG/jerror.c\
	freeimage/LibJPEG/jfdctflt.c\
	freeimage/LibJPEG/jfdctfst.c\
	freeimage/LibJPEG/jfdctint.c\
	freeimage/LibJPEG/jidctflt.c\
	freeimage/LibJPEG/jidctfst.c\
	freeimage/LibJPEG/jidctint.c\
	freeimage/LibJPEG/jmemmgr.c\
	freeimage/LibJPEG/jmemnobs.c\
	freeimage/LibJPEG/jquant1.c\
	freeimage/LibJPEG/jquant2.c\
	freeimage/LibJPEG/jutils.c\
	freeimage/LibJPEG/rdbmp.c\
	freeimage/LibJPEG/rdcolmap.c\
	freeimage/LibJPEG/rdgif.c\
	freeimage/LibJPEG/rdppm.c\
	freeimage/LibJPEG/rdrle.c\
	freeimage/LibJPEG/rdswitch.c\
	freeimage/LibJPEG/rdtarga.c\
	freeimage/LibJPEG/transupp.c\
	freeimage/LibJPEG/wrbmp.c\
	freeimage/LibJPEG/wrgif.c\
	freeimage/LibJPEG/wrppm.c\
	freeimage/LibJPEG/wrrle.c\
	freeimage/LibJPEG/wrtarga.c\
	freeimage/LibPNG/png.c\
	freeimage/LibPNG/pngerror.c\
	freeimage/LibPNG/pnggccrd.c\
	freeimage/LibPNG/pngget.c\
	freeimage/LibPNG/pngmem.c\
	freeimage/LibPNG/pngpread.c\
	freeimage/LibPNG/pngread.c\
	freeimage/LibPNG/pngrio.c\
	freeimage/LibPNG/pngrtran.c\
	freeimage/LibPNG/pngrutil.c\
	freeimage/LibPNG/pngset.c\
	freeimage/LibPNG/pngtrans.c\
	freeimage/LibPNG/pngvcrd.c\
	freeimage/LibPNG/pngwio.c\
	freeimage/LibPNG/pngwrite.c\
	freeimage/LibPNG/pngwtran.c\
	freeimage/LibPNG/pngwutil.c\
	freeimage/Metadata/Exif.cpp\
	freeimage/Metadata/FIRational.cpp\
	freeimage/Metadata/FreeImageTag.cpp\
	freeimage/Metadata/IPTC.cpp\
	freeimage/Metadata/TagConversion.cpp\
	freeimage/Metadata/TagLib.cpp\
	freeimage/LibOpenJPEG/bio.c\
	freeimage/LibOpenJPEG/cidx_manager.c\
	freeimage/LibOpenJPEG/cio.c\
	freeimage/LibOpenJPEG/dwt.c\
	freeimage/LibOpenJPEG/event.c\
	freeimage/LibOpenJPEG/image.c\
	freeimage/LibOpenJPEG/j2k.c\
	freeimage/LibOpenJPEG/j2k_lib.c\
	freeimage/LibOpenJPEG/jp2.c\
	freeimage/LibOpenJPEG/jpt.c\
	freeimage/LibOpenJPEG/mct.c\
	freeimage/LibOpenJPEG/mct.h\
	freeimage/LibOpenJPEG/mqc.c\
	freeimage/LibOpenJPEG/mqc.h\
	freeimage/LibOpenJPEG/openjpeg.c\
	freeimage/LibOpenJPEG/phix_manager.c\
	freeimage/LibOpenJPEG/pi.c\
	freeimage/LibOpenJPEG/ppix_manager.c\
	freeimage/LibOpenJPEG/raw.c\
	freeimage/LibOpenJPEG/t1.c\
	freeimage/LibOpenJPEG/t2.c\
	freeimage/LibOpenJPEG/tcd.c\
	freeimage/LibOpenJPEG/tgt.c\
	freeimage/LibOpenJPEG/thix_manager.c\
	freeimage/LibOpenJPEG/tpix_manager.c\

include $(BUILD_SHARED_LIBRARY)
