function [Ea,Eb] = proE_nt(E0,U,i)
%PROE �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
Ea = single(zeros(size(E0,1),1));
Eb = Ea;
%% a
for j = 1:U.a.elecNum
    Ea = Ea+ U.a.cu(i,j)*E0(:,U.a.elec(i,j));
end
%% b
for j = 1:U.b.elecNum
    Eb = Eb+ U.b.cu(i,j)*E0(:,U.b.elec(i,j));
end
Ea = abs(Ea);
Eb = abs(Eb);
end

