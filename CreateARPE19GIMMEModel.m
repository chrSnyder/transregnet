

clear all; close all; clc

% addpath 'C:\MATLAB\R2009a\work\Projects\Gene\Cobra\opencobra-cobratoolbox-3bb86ca\'
% addpath 'C:\MATLAB\R2009a\work\Projects\Gene\Cobra\yeast_7.00'
% % load modelReg.mat
% changeCobraSolver('gurobi6')
load Recon2.mat
% load('Recon2.mat');

ExpressionData = getExpD('EID.txt','AP.txt');

options = [find(Recon2_2.c) 0.75];

% [ARPE19_GIMME,Rxns] = createTissueSpecificRec(Recon2_2,ExpressionData,'GIMME');
[ARPE19_GIMME,Rxns] = createTissueSpecificRec(Recon2_2,ExpressionData,1,1,[],'GIMME',options,1);

writeCbModel(ARPE19_GIMME,'xls','ARPE19_GIMME_Model');

writeCbModel(ARPE19_GIMME,'text','ARPE19_GIMME_Model_Text.txt');

writeCbModel(ARPE19_GIMME,'sbml','ARPE19_GIMME_Model');