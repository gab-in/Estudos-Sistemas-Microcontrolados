#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Atividade1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Atividade1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=main.c assembly.s

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/main.o ${OBJECTDIR}/assembly.o
POSSIBLE_DEPFILES=${OBJECTDIR}/main.o.d ${OBJECTDIR}/assembly.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/main.o ${OBJECTDIR}/assembly.o

# Source Files
SOURCEFILES=main.c assembly.s

# Pack Options 
PACK_COMPILER_OPTIONS=-I "${DFP_DIR}/include"
PACK_COMMON_OPTIONS=-B "${DFP_DIR}/gcc/dev/atmega328p"



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/Atividade1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATmega328P
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/assembly.o: assembly.s  .generated_files/flags/default/c6700fc94dd52c991fecac0972cb166d9b6fb366 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/assembly.o.d 
	@${RM} ${OBJECTDIR}/assembly.o 
	@${RM} ${OBJECTDIR}/assembly.o.ok ${OBJECTDIR}/assembly.o.err 
	 ${MP_CC} $(MP_EXTRA_AS_PRE) -mmcu=atmega328p ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -DDEBUG  -D__MPLAB_DEBUGGER_SIMULATOR=1 -x assembler-with-cpp -c -D__$(MP_PROCESSOR_OPTION)__  -MD -MP -MF "${OBJECTDIR}/assembly.o.d" -MT "${OBJECTDIR}/assembly.o.d" -MT ${OBJECTDIR}/assembly.o  -o ${OBJECTDIR}/assembly.o assembly.s  -DXPRJ_default=$(CND_CONF)  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/assembly.o.asm.d",--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,--gdwarf-2
	
else
${OBJECTDIR}/assembly.o: assembly.s  .generated_files/flags/default/3c971036c06975e278e0964b828bb62e4516beb6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/assembly.o.d 
	@${RM} ${OBJECTDIR}/assembly.o 
	@${RM} ${OBJECTDIR}/assembly.o.ok ${OBJECTDIR}/assembly.o.err 
	 ${MP_CC} $(MP_EXTRA_AS_PRE) -mmcu=atmega328p ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x assembler-with-cpp -c -D__$(MP_PROCESSOR_OPTION)__  -MD -MP -MF "${OBJECTDIR}/assembly.o.d" -MT "${OBJECTDIR}/assembly.o.d" -MT ${OBJECTDIR}/assembly.o  -o ${OBJECTDIR}/assembly.o assembly.s  -DXPRJ_default=$(CND_CONF)  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/assembly.o.asm.d"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/357b37dcf70c55e1c07aa870f7c43260257dcd4c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atmega328p ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o  -o ${OBJECTDIR}/main.o main.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/f2fc7faaf59a437042dbf43548142db69ce76885 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atmega328p ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o  -o ${OBJECTDIR}/main.o main.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/Atividade1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mmcu=atmega328p ${PACK_COMMON_OPTIONS}  -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2 -D__$(MP_PROCESSOR_OPTION)__  -Wl,-Map="${DISTDIR}\Atividade1.X.${IMAGE_TYPE}.map"    -o ${DISTDIR}/Atividade1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1 -Wl,--gc-sections -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	
	
	
	
	
	
else
${DISTDIR}/Atividade1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mmcu=atmega328p ${PACK_COMMON_OPTIONS}  -D__$(MP_PROCESSOR_OPTION)__  -Wl,-Map="${DISTDIR}\Atividade1.X.${IMAGE_TYPE}.map"    -o ${DISTDIR}/Atividade1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION) -Wl,--gc-sections -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "${DISTDIR}/Atividade1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/Atividade1.X.${IMAGE_TYPE}.hex"
	
	
	
	
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
