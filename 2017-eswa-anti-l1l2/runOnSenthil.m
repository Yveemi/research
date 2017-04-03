% runOnSenthil_Better.m
% Senthil IRTT���ʵ����� - Ѱ�����Ż��Ĳ���

clear all;
% ��������       %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
          
dbName = 'Senthil_IRTT';
pathPrefix='../datasets/Senthil_IRTT_FaceDatabase_Version1.2/';
firstSample=imread('../datasets/Senthil_IRTT_FaceDatabase_Version1.2/s1_1.jpg');
[row col]=size(firstSample);
numOfSamples=10;
numOfClasses=10;

for cc=1:numOfClasses
    for ss=1:numOfSamples
        path=[pathPrefix 's' num2str(cc, '%d') '_' num2str(ss, '%d') '.jpg'];
        inputData(cc,ss,:,:)=imread(path);
    end
end
inputData=double(inputData); % ���е���������

% Setting Parameters   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

minTrains = 5;  % minimal number of training samples
maxTrains = 5;  % maximal number of training samples
salt = .3;
runWithNBestTrainings; % run with n training samples

disp('Test done!');