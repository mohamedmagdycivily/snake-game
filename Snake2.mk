##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=Snake2
ConfigurationName      :=Debug
WorkspaceConfiguration := $(ConfigurationName)
WorkspacePath          :=/home/mohamed/Desktop/MY_CODE/Game_Project
ProjectPath            :=/home/mohamed/Desktop/MY_CODE/Game_Project/Snake2
IntermediateDirectory  :=../build-$(ConfigurationName)/Snake2
OutDir                 :=../build-$(ConfigurationName)/Snake2
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=mohamed
Date                   :=11/09/20
CodeLitePath           :=/home/mohamed/.codelite
LinkerName             :=/usr/bin/g++
SharedObjectLinkerName :=/usr/bin/g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=../build-$(ConfigurationName)/bin/$(ProjectName)
Preprocessors          :=$(PreprocessorSwitch)SFML_STATIC 
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :=$(IntermediateDirectory)/ObjectsList.txt
PCHCompileFlags        :=
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). $(IncludeSwitch)/home/mohamed/Desktop/SFML-2.5.1-linux-gcc-64-bit/SFML-2.5.1/include 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)sfml-graphics $(LibrarySwitch)sfml-audio $(LibrarySwitch)sfml-window $(LibrarySwitch)sfml-network $(LibrarySwitch)sfml-system 
ArLibs                 :=  "sfml-graphics" "sfml-audio" "sfml-window" "sfml-network" "sfml-system" 
LibPath                := $(LibraryPathSwitch). $(LibraryPathSwitch)/home/mohamed/Desktop/SFML-2.5.1-linux-gcc-64-bit/SFML-2.5.1/lib 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++
CC       := /usr/bin/gcc
CXXFLAGS := -std=c++17 -Wall -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=../build-$(ConfigurationName)/Snake2/main.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/Snake2/PauseGame.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/Snake2/StateMan.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/Snake2/MainMenu.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/Snake2/GameOver.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/Snake2/Game.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/Snake2/GamePlay.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/Snake2/Snake.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/Snake2/AssetMan.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: MakeIntermediateDirs $(OutputFile)

$(OutputFile): ../build-$(ConfigurationName)/Snake2/.d $(Objects) 
	@mkdir -p "../build-$(ConfigurationName)/Snake2"
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@mkdir -p "../build-$(ConfigurationName)/Snake2"
	@mkdir -p ""../build-$(ConfigurationName)/bin""

../build-$(ConfigurationName)/Snake2/.d:
	@mkdir -p "../build-$(ConfigurationName)/Snake2"

PreBuild:


##
## Objects
##
../build-$(ConfigurationName)/Snake2/main.cpp$(ObjectSuffix): main.cpp ../build-$(ConfigurationName)/Snake2/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/mohamed/Desktop/MY_CODE/Game_Project/Snake2/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Snake2/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Snake2/main.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Snake2/main.cpp$(DependSuffix) -MM main.cpp

../build-$(ConfigurationName)/Snake2/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Snake2/main.cpp$(PreprocessSuffix) main.cpp

../build-$(ConfigurationName)/Snake2/PauseGame.cpp$(ObjectSuffix): PauseGame.cpp ../build-$(ConfigurationName)/Snake2/PauseGame.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/mohamed/Desktop/MY_CODE/Game_Project/Snake2/PauseGame.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/PauseGame.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Snake2/PauseGame.cpp$(DependSuffix): PauseGame.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Snake2/PauseGame.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Snake2/PauseGame.cpp$(DependSuffix) -MM PauseGame.cpp

../build-$(ConfigurationName)/Snake2/PauseGame.cpp$(PreprocessSuffix): PauseGame.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Snake2/PauseGame.cpp$(PreprocessSuffix) PauseGame.cpp

../build-$(ConfigurationName)/Snake2/StateMan.cpp$(ObjectSuffix): StateMan.cpp ../build-$(ConfigurationName)/Snake2/StateMan.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/mohamed/Desktop/MY_CODE/Game_Project/Snake2/StateMan.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/StateMan.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Snake2/StateMan.cpp$(DependSuffix): StateMan.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Snake2/StateMan.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Snake2/StateMan.cpp$(DependSuffix) -MM StateMan.cpp

../build-$(ConfigurationName)/Snake2/StateMan.cpp$(PreprocessSuffix): StateMan.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Snake2/StateMan.cpp$(PreprocessSuffix) StateMan.cpp

../build-$(ConfigurationName)/Snake2/MainMenu.cpp$(ObjectSuffix): MainMenu.cpp ../build-$(ConfigurationName)/Snake2/MainMenu.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/mohamed/Desktop/MY_CODE/Game_Project/Snake2/MainMenu.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/MainMenu.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Snake2/MainMenu.cpp$(DependSuffix): MainMenu.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Snake2/MainMenu.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Snake2/MainMenu.cpp$(DependSuffix) -MM MainMenu.cpp

../build-$(ConfigurationName)/Snake2/MainMenu.cpp$(PreprocessSuffix): MainMenu.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Snake2/MainMenu.cpp$(PreprocessSuffix) MainMenu.cpp

../build-$(ConfigurationName)/Snake2/GameOver.cpp$(ObjectSuffix): GameOver.cpp ../build-$(ConfigurationName)/Snake2/GameOver.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/mohamed/Desktop/MY_CODE/Game_Project/Snake2/GameOver.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/GameOver.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Snake2/GameOver.cpp$(DependSuffix): GameOver.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Snake2/GameOver.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Snake2/GameOver.cpp$(DependSuffix) -MM GameOver.cpp

../build-$(ConfigurationName)/Snake2/GameOver.cpp$(PreprocessSuffix): GameOver.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Snake2/GameOver.cpp$(PreprocessSuffix) GameOver.cpp

../build-$(ConfigurationName)/Snake2/Game.cpp$(ObjectSuffix): Game.cpp ../build-$(ConfigurationName)/Snake2/Game.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/mohamed/Desktop/MY_CODE/Game_Project/Snake2/Game.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Game.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Snake2/Game.cpp$(DependSuffix): Game.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Snake2/Game.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Snake2/Game.cpp$(DependSuffix) -MM Game.cpp

../build-$(ConfigurationName)/Snake2/Game.cpp$(PreprocessSuffix): Game.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Snake2/Game.cpp$(PreprocessSuffix) Game.cpp

../build-$(ConfigurationName)/Snake2/GamePlay.cpp$(ObjectSuffix): GamePlay.cpp ../build-$(ConfigurationName)/Snake2/GamePlay.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/mohamed/Desktop/MY_CODE/Game_Project/Snake2/GamePlay.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/GamePlay.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Snake2/GamePlay.cpp$(DependSuffix): GamePlay.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Snake2/GamePlay.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Snake2/GamePlay.cpp$(DependSuffix) -MM GamePlay.cpp

../build-$(ConfigurationName)/Snake2/GamePlay.cpp$(PreprocessSuffix): GamePlay.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Snake2/GamePlay.cpp$(PreprocessSuffix) GamePlay.cpp

../build-$(ConfigurationName)/Snake2/Snake.cpp$(ObjectSuffix): Snake.cpp ../build-$(ConfigurationName)/Snake2/Snake.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/mohamed/Desktop/MY_CODE/Game_Project/Snake2/Snake.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Snake.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Snake2/Snake.cpp$(DependSuffix): Snake.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Snake2/Snake.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Snake2/Snake.cpp$(DependSuffix) -MM Snake.cpp

../build-$(ConfigurationName)/Snake2/Snake.cpp$(PreprocessSuffix): Snake.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Snake2/Snake.cpp$(PreprocessSuffix) Snake.cpp

../build-$(ConfigurationName)/Snake2/AssetMan.cpp$(ObjectSuffix): AssetMan.cpp ../build-$(ConfigurationName)/Snake2/AssetMan.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/mohamed/Desktop/MY_CODE/Game_Project/Snake2/AssetMan.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/AssetMan.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Snake2/AssetMan.cpp$(DependSuffix): AssetMan.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Snake2/AssetMan.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Snake2/AssetMan.cpp$(DependSuffix) -MM AssetMan.cpp

../build-$(ConfigurationName)/Snake2/AssetMan.cpp$(PreprocessSuffix): AssetMan.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Snake2/AssetMan.cpp$(PreprocessSuffix) AssetMan.cpp


-include ../build-$(ConfigurationName)/Snake2//*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(IntermediateDirectory)


