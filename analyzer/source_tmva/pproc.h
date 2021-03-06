#ifndef DEF_NN_PPROC
#define DEF_NN_PPROC

#include <iostream>
#include "TChain.h"
#include "TH1.h"
#include "TColor.h"
#include "TROOT.h"
#include "TTreeFormula.h"

#include "defs.h"
#include "pconfig.h"

class PProc{
  public:
  
  PProc(PConfig *config, unsigned int num);
  ~PProc();

  void Open(void);
  void Close(void);

  std::vector<std::string> GetPaths(void) const;
  std::string GetName(void) const;
  std::string GetEvtWeightString(void) const;
  double GetEvtWeight(void) const;
  int8_t GetType(void) const;
  double GetXSection(void) const;
  double GetGenMCEvents(void) const;
  double GetEntries(void) const;
  double GetEffEntries(void) const;
  double GetEffEntries(const std::string& condition);
  double GetEffEntriesAbs(void) const;
  double GetEffEntriesAbs(const std::string& condition);
  double GetYield(void) const;
  double GetYield(const std::string& condition);
  double GetYieldAbs(void) const;
  double GetYieldAbs(const std::string& condition);
  double GetGlobWeight(void) const;
  double GetInputVar(const std::string& varName);
  TH1D* GetHist(void) const;
  TH1D* GetAbsHist(void) const;
  TTree* GetTree(void) const;
  TFile* GetFile(void) const;
  Color_t GetColor(void) const;

  private:

  PConfig *myConfig;

  TH1D *myHist, *myAbsHist;
  TChain* myChain;
  TTreeFormula* myWeightFormula;

  std::string myTreeName;
  std::vector<std::string> myPaths;
  std::string myName;
  std::string myEvtWeightString;
  int8_t myType;
  double myXSection;
  double myGenMCEvents;
  double myEntries;
  double myEffEntries;
  double myEffEntriesAbs;
  int16_t myColor;

  std::map<std::string, TTreeFormula*> myInputVars;
};

bool compareProc(const PProc* lhs, const PProc* rhs);

#endif
