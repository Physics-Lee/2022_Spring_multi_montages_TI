function h = plotCrossSection(h,TR,x,upThres)
%PLOTCROSSSECTION Summary of this function goes here
%% set colormap
% x(x>upThres) = upThres;
% Ncolor = 256;
% colourmap = turbo(Ncolor);
xMin = min(x);
xMax = upThres;
% x0 = linspace(xMin,xMax,Ncolor);
% cData = interp1(x0,colourmap,x);
cData = zeros(length(x),3);
cData(:,1)=x>0.2;
cData(:,3)=x<=0.2;
%% plot
figure(h);
patch('Faces',TR.ConnectivityList,'Vertices',TR.Points,'FaceVertexCData',cData,'FaceColor','flat','EdgeColor','none');
% hc = colorbar(gca,'FontSize',11);
% colormap turbo;
caxis([xMin xMax])
% set(get(hc,'Title'),'string','V/m');
end