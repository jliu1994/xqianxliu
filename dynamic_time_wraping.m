% dynamic time warping of two signals
function distance=dynamic_time_wraping(signal1,signal2,window_size)

if nargin<3
    window_size=Inf;
end

nsignal1=size(signal1,1);
nsignal2=size(signal2,1);
if size(signal1,2)~=size(signal2,2)
    error('two input signals are not in same dimention');
end
window_size=max(window_size, abs(nsignal1-nsignal2)); 

D=zeros(nsignal1+1,nsignal2+1)+Inf; 
D(1,1)=0;

for i=1:nsignal1
    for j=max(i-window_size,1):min(i+window_size,nsignal2)
        oost=norm(signal1(i,:)-signal2(j,:));
        D(i+1,j+1)=oost+min( [D(i,j+1), D(i+1,j), D(i,j)] );
        
    end
end
distance=D(nsignal1+1,nsignal2+1);
