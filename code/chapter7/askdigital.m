function askdigital(s,f)
%??????????ASK ????
%s????????????????????f??????????????????
%??????????askdigital([1 0 1 1 0], 2)
t=0:2*pi/99:2*pi;                                     %????????
cp=[];mod=[];bit=[];

for n=1:length(s);                                   % ????????
    if s(n)==0; 
        cp1=zeros(1,100); 
       bit1=zeros(1,100);   
    else s(n)==1;
       cp1=ones(1,100);   
         bit1=ones(1,100);    
    end
    c=sin(f*t);
    cp=[cp cp1];    
    mod=[mod c];    
    bit=[bit  bit1];
end

ask=cp.*mod;
subplot(2,1,1);
plot(bit,'k','LineWidth',1);grid on;        %????????????????????????????
ylabel('Binary Signal');
axis([0 100*length(s) -2.5 2.5]);
subplot(2,1,2);
plot(ask,'k','LineWidth',1);grid on;
ylabel('ASK modulation');
axis([0 100*length(s) -2.5 2.5]);
