
fn_IM = '../raw_data/tides_IOC_IslaMujeres_2021.txt'
fn_PM = '../raw_data/tides_IOC_PuertoMorelos_2021.txt'

fid = fopen(fn_PM);
tline = fgetl(fid); %gets the top line
tline = fgetl(fid); %gets the top line

% out=tline;
data = textscan(fid, '%s%f','Delimiter','\t','EmptyValue',NaN);
% C_hdr = textscan(fid,'%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f',
fclose(fid)

% t = data{1};
t_PM = NaN(length(data{1}),1);
for i = 1:length(data{1})
    t_PM(i) = datenum(data{1}(i));
end

%%
% h = 
h_PM = data{2}
h_PM(h_PM>3) = NaN;
h_PM(h_PM<-20) = NaN;
figure(1), plot(t_PM,h_PM), hold all

%%

fid = fopen(fn_IM);
tline = fgetl(fid); %gets the top line
tline = fgetl(fid); %gets the top line

% out=tline;
data = textscan(fid, '%s%f','Delimiter','\t','EmptyValue',NaN);
% C_hdr = textscan(fid,'%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f',
fclose(fid)

% t = data{1};
t_IM = NaN(length(data{1}),1);
for i = 1:length(data{1})
    t_IM(i) = datenum(data{1}(i));
end

h_IM = data{2}
h_IM(h_IM>2.72) = NaN;
h_IM(h_IM<1.6) = NaN;
figure(1), plot(t_IM,h_IM), hold all
%%

figure, plot(t_PM,h_PM,t_IM,h_IM), legend('Puerto Morelos','Isla Mujeres')

t_all = t_PM;
h_IM_all = interp1(t_IM,h_IM,t_all);

figure, subplot(2,1,1), plot(t_PM,h_PM,t_IM,h_IM), legend('Puerto Morelos','Isla Mujeres')
subplot(2,1,2), plot(t_all,h_IM_all-h_PM), legend('Isla Mujeres - Puerto Morelos')

