load('201607281800_Albrecht Szeitszam - 60905500_M_2015_CL_ML_Prediction_data_table_150_Overlapping.mat');
% CL_ML_Prediction_data_table_150_10000_Overlapping = table(CL_ML_Prediction_data_table_150_Overlapping.Var1(1:10000),CL_ML_Prediction_data_table_150_Overlapping.Var1(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var2(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var3(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var4(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var5(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var6(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var7(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var8(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var9(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var10(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var11(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var12(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var13(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var14(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var15(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var16(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var17(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var18(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var19(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var20(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var21(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var22(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var23(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var24(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var25(1:10000,:));
% labels = predict(trainedClassifier,CL_ML_Prediction_data_table_150_Overlapping.Var2(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var3(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var4(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var5(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var6(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var7(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var8(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var9(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var10(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var11(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var12(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var13(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var14(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var15(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var16(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var17(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var18(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var19(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var20(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var21(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var22(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var23(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var24(1:10000,:),CL_ML_Prediction_data_table_150_Overlapping.Var25(1:10000,:));
% labels = predict(trainedClassifier,[1:150],[1:150],[1:150],[1:150],[1:150],[1:150],[1:150],[1:150],[1:150],[1:150],[1:150],[1:150],[1:150],[1:150],[1:150],[1:150],[1:150],[1:150],[1:150],[1:150],[1:150],[1:150],[1:150],[1:150]);

win_Start=1;
win_End=122786;%9;

a=1

CL_ML_Prediction_data_table_150_10000_Overlapping = table(CL_ML_Prediction_data_table_150_Overlapping.Var1(win_Start:win_End),CL_ML_Prediction_data_table_150_Overlapping.Var2(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var3(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var4(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var5(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var6(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var7(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var8(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var9(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var10(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var11(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var12(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var13(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var14(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var15(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var16(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var17(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var18(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var19(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var20(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var21(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var22(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var23(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var24(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var25(win_Start:win_End,:));



labels = predict(trainedClassifier_ComplexTree_122786_Overlap,([CL_ML_Prediction_data_table_150_Overlapping.Var2(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var3(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var4(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var5(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var6(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var7(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var8(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var9(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var10(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var11(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var12(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var13(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var14(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var15(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var16(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var17(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var18(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var19(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var20(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var21(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var22(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var23(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var24(win_Start:win_End,:),CL_ML_Prediction_data_table_150_Overlapping.Var25(win_Start:win_End,:)]));
% 
a=2
% 
RMSE = sqrt(sum((labels-CL_ML_Prediction_data_table_150_Overlapping.Var1(win_Start:win_End)).^2)/length(labels))
% 
% a=3
% 
% accuracy = length(find((labels-CL_ML_Prediction_data_table_150_Overlapping.Var1(win_Start:win_End))~=0))/length(labels)*100
% 
% a=4