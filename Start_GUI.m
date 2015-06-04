clc
clear
close all

bgColor = [0.7 0.75 0.8];
shape = 'petals';
languageValue = 2;
errorTitle = cellstr(['Input error  '
                      'Pogrešan unos']);
errorMessage = cellstr(['Circle radius must be positive real number!       '       
                        'Polumjer kružnice mora biti pozitivan realan broj!']);
title = cellstr(['Mathematical curve stiching '
                 'Matematièko šivanje krivulja']);
shapeMenuName = cellstr(['Shape'
                         'Oblik']);
petalsMenuName = cellstr(['Petals'
                          'Latice']);
starMenuName = cellstr(['Star    '
                        'Zvijezda']);
languageMenuName = cellstr(['Language'
                            'Jezik   ']);
sectionLabelName = cellstr(['Sections'
                            'Sekcije ']);
radiusLabelName = cellstr(['Radius  '
                           'Polumjer']);
colorBoxName = cellstr(['Pick color  '
                        'Odaberi boju']);
blueName = cellstr(['Blue '
                    'Plava']);
redName = cellstr(['Red   '
                   'Crvena']);
greenName = cellstr(['Green '
                     'Zelena']);
yellowName = cellstr(['Yellow'
                      'Žuta  ']);
pinkName = cellstr(['Pink'
                    'Roza']);
drawBtnName = cellstr(['Draw it'
                       'Nacrtaj']);
clearBtnName = cellstr(['Clear '
                        'Obriši']);
exitBtnName = cellstr(['Exit '
                       'Izlaz']);
sliderTooltip = cellstr(['Line density  '
                         'Gustoæa linija']);
                
win = figure(...
    'Position', [50 50 900 700], ...
    'Name', char(title(languageValue))', ...
    'NumberTitle', 'off',...
    'Color', bgColor, ...
    'Toolbar', 'none',...
    'MenuBar', 'none');

axis([-5 5 -5 5])
set(gca,'Position',[0.28 0.15 0.7 0.7])
axis square

menuShapeItem = uimenu(win, ...
    'Label', char(shapeMenuName(languageValue)));
petalsMenuItem = uimenu(...
    menuShapeItem, ...
    'Label', char(petalsMenuName(languageValue)), ...
    'Checked', 'on', ...
    'callback', ['shape = ''petals'';' ...
                'set(petalsMenuItem, ''checked'', ''on'');' ...
                'set(starMenuItem, ''checked'', ''off'');']);
starMenuItem = uimenu(...
    menuShapeItem, ...
    'Label', char(starMenuName(languageValue)), ...
    'Checked', 'off', ...
    'callback', ['shape = ''star'';' ...
                'set(starMenuItem, ''checked'', ''on'');' ... 
                'set(petalsMenuItem, ''checked'', ''off'');']);

languageMenuItem = uimenu(win, ...
    'Label', char(languageMenuName(languageValue)));   
engMenuItem = uimenu(...
    languageMenuItem, ...
    'Label', 'English', ...
    'Checked', 'off', ...
    'Callback', ['languageValue = 1; ' ...
                'set(engMenuItem, ''checked'', ''on'');' ... 
                'set(croMenuItem, ''checked'', ''off'');' ...
                'set(win, ''Name'', char(title(languageValue)));' ...
                'set(mainTitle, ''String'', char(title(languageValue)));' ...
                'set(menuShapeItem, ''Label'', char(shapeMenuName(languageValue)));' ...
                'set(petalsMenuItem, ''Label'', char(petalsMenuName(languageValue)));' ...
                'set(starMenuItem, ''Label'', char(starMenuName(languageValue)));' ...
                'set(languageMenuItem, ''Label'', char(languageMenuName(languageValue)));' ...
                'set(sectionsLabel, ''String'', char(sectionLabelName(languageValue)));' ...
                'set(radiusLabel, ''String'', char(radiusLabelName(languageValue)));' ...
                'set(colorCheck, ''String'', char(colorBoxName(languageValue)));' ...
                'set(colorBlue, ''String'', char(blueName(languageValue)));' ...
                'set(colorRed, ''String'', char(redName(languageValue)));' ...
                'set(colorGreen, ''String'', char(greenName(languageValue)));' ...
                'set(colorYellow, ''String'', char(yellowName(languageValue)));' ...
                'set(colorMagenta, ''String'', char(pinkName(languageValue)));' ...
                'set(drawButton, ''String'', char(drawBtnName(languageValue)));' ...
                'set(densitySlider, ''ToolTipString'', char(sliderTooltip(languageValue)));' ...
                'set(clearButton, ''String'', char(clearBtnName(languageValue)));' ...
                'set(exitButton, ''String'', char(exitBtnName(languageValue)));']);
croMenuItem = uimenu(...
    languageMenuItem, ...
    'Label', 'Hrvatski', ...
    'Checked', 'on', ...
    'Callback', ['languageValue = 2; ' ...
                'set(engMenuItem, ''checked'', ''off'');' ... 
                'set(croMenuItem, ''checked'', ''on'');' ...
                'set(win, ''Name'', char(title(languageValue)));' ...
                'set(mainTitle, ''String'', char(title(languageValue)));' ...
                'set(menuShapeItem, ''Label'', char(shapeMenuName(languageValue)));' ...
                'set(petalsMenuItem, ''Label'', char(petalsMenuName(languageValue)));' ...
                'set(starMenuItem, ''Label'', char(starMenuName(languageValue)));' ...
                'set(languageMenuItem, ''Label'', char(languageMenuName(languageValue)));' ...
                'set(sectionsLabel, ''String'', char(sectionLabelName(languageValue)));' ...
                'set(radiusLabel, ''String'', char(radiusLabelName(languageValue)));' ...
                'set(colorCheck, ''String'', char(colorBoxName(languageValue)));' ...
                'set(colorBlue, ''String'', char(blueName(languageValue)));' ...
                'set(colorRed, ''String'', char(redName(languageValue)));' ...
                'set(colorGreen, ''String'', char(greenName(languageValue)));' ...
                'set(colorYellow, ''String'', char(yellowName(languageValue)));' ...
                'set(colorMagenta, ''String'', char(pinkName(languageValue)));' ...
                'set(drawButton, ''String'', char(drawBtnName(languageValue)));' ...
                'set(densitySlider, ''ToolTipString'', char(sliderTooltip(languageValue)));' ...
                'set(clearButton, ''String'', char(clearBtnName(languageValue)));' ...
                'set(exitButton, ''String'', char(exitBtnName(languageValue)));']);
            
mainTitle = uicontrol(...
    'Style', 'Text', ...
    'Units', 'Normalized', ...
    'Position', [0 0.92 1 0.05], ...
    'BackgroundColor', bgColor, ...
    'Fontsize', 14, ...
    'String', char(title(languageValue)));

sectionsLabel = uicontrol(...
    'Style', 'Text', ...
    'Units', 'Normalized', ...
    'Position', [0.021 0.825 0.1 0.05], ...
    'BackgroundColor', bgColor, ...
    'Fontsize', 12, ...
    'String', char(sectionLabelName(languageValue)));

sectionsMenu = uicontrol(...
    'Style', 'Popupmenu', ...
    'Units', 'Normalized', ...
    'Position', [0.13 0.83 0.08 0.05], ...
    'Fontsize', 12, ...
    'String', {'3','4','5','6','7','8','9','10'});

radiusLabel = uicontrol(...
    'Style', 'Text', ...
    'Units', 'Normalized', ...
    'Position', [0.021 0.75 0.1 0.05], ...
    'BackgroundColor', bgColor, ...
    'Fontsize', 12, ...
    'String', char(radiusLabelName(languageValue)));

radiusInput = uicontrol(...
    'Style', 'Edit', ...
    'Units', 'Normalized', ...
    'Position', [0.13 0.76 0.08 0.05], ...
    'Fontsize', 12, ...
    'String', 1);

colorCheck = uicontrol(...
    'Style', 'Checkbox', ...
    'Units', 'Normalized', ...
    'Position', [0.028 0.7 0.2 0.05], ...
    'BackgroundColor', bgColor, ...
    'String', char(colorBoxName(languageValue)), ...
    'Fontsize', 12, ...
    'Value', 0, ...
    'Callback', ['if(get(colorCheck, ''Value'') == 1) ' ...
                    'set(colorGroup, ''Visible'', ''on''); ' ...
                 'else ' ...
                    'set(colorGroup, ''Visible'', ''off''); ' ...
                 'end']);

colorGroup = uibuttongroup(...
    'Units', 'Points', ...
    'Units', 'Normalized', ...
    'Position', [0.03 0.37 0.15 0.32], ...
    'BackgroundColor', bgColor, ...
    'Visible', 'off');

colorBlue = uicontrol(...
    'Style', 'Radiobutton', ...
    'Units', 'Normalized', ...
    'Position', [0.15 0.81 0.7 0.19], ...
    'BackgroundColor', bgColor, ...
    'String', char(blueName(languageValue)), ...
    'Fontsize', 12, ...
    'parent', colorGroup);

colorRed = uicontrol(...
    'Style', 'Radiobutton', ...
    'Units', 'Normalized', ...
    'Position', [0.15 0.62 0.7 0.19], ...
    'BackgroundColor', bgColor, ...
    'String', char(redName(languageValue)), ...
    'Fontsize', 12, ...
    'parent', colorGroup);

colorGreen = uicontrol(...
    'Style', 'Radiobutton', ...
    'Units', 'Normalized', ...
    'Position', [0.15 0.43 0.7 0.19], ...
    'BackgroundColor', bgColor, ...
    'String', char(greenName(languageValue)), ...
    'Fontsize', 12, ...
    'parent', colorGroup);

colorYellow = uicontrol(...
    'Style', 'Radiobutton', ...
    'Units', 'Normalized', ...
    'Position', [0.15 0.24 0.7 0.19], ...
    'BackgroundColor', bgColor, ...
    'String', char(yellowName(languageValue)), ...
    'Fontsize', 12, ...
    'parent', colorGroup);

colorMagenta = uicontrol(...
    'Style', 'Radiobutton', ...
    'Units', 'Normalized', ...
    'Position', [0.15 0.05 0.7 0.19], ...
    'BackgroundColor', bgColor, ...
    'String', char(pinkName(languageValue)), ...
    'Fontsize', 12, ...
    'parent', colorGroup);

drawButton = uicontrol(...
    'Style', 'Pushbutton', ...
    'Units', 'Normalized', ...
    'Position', [0.03 0.23 0.125 0.06], ...
    'String', char(drawBtnName(languageValue)), ...
    'Fontsize', 12, ...
    'Callback', ['centerX = 0;' ...
                'centerY = 0;' ...
                'sections = 2 + get(sectionsMenu, ''Value'');' ...
                'density = 8 * round(get(densitySlider, ''Value''));' ...
                'radiusStr = get(radiusInput, ''String'');' ...
                'radius = str2double(radiusStr);' ...
                'if isfinite(radius) && isreal(radius) ' ...
                    'if radius > 0 ' ...
                        'color = ''k'';' ...
                        'if (get(colorCheck, ''Value'') == 1)' ...
                               'if (get(colorBlue, ''Value'') == 1)' ...
                                    'color = ''b'';' ...
                                'end,' ...
                                'if (get(colorGreen, ''Value'') == 1)' ...
                                    'color = ''g'';' ...
                                'end,' ...
                                'if (get(colorRed, ''Value'') == 1)' ...
                                    'color = ''r'';' ...
                                'end,' ...
                                'if (get(colorYellow, ''Value'') == 1)' ...
                                    'color = ''y'';' ...
                                'end,' ...
                                'if (get(colorMagenta, ''Value'') == 1)' ...
                                    'color = ''m'';' ...
                                'end,' ...
                        'end, ' ...
                        'if strcmp(shape, ''petals'') ' ...
                            'Petals([centerX,centerY],sections,density,radius,color);' ...
                        'end, ' ...
                        'if strcmp(shape, ''star'') ' ...                
                            'Star([centerX,centerY],sections,density,radius,color);' ...
                        'end, ' ...
                    'else ' ...
                        'errordlg(char(errorMessage(languageValue)), char(errorTitle(languageValue)));' ...                    
                    'end, ' ...
                'else ' ...
                    'errordlg(char(errorMessage(languageValue)), char(errorTitle(languageValue)));' ...
                'end']);
         
densitySlider = uicontrol(...
    gcf, ...
    'Style', 'Slider', ...
    'Units', 'Normalized', ...
    'Position', [0.355 0.08 0.55 0.025], ...
    'ToolTipString', char(sliderTooltip(languageValue)), ...
    'Min', 1, 'Max', 10, 'Value', 4);            
            
clearButton = uicontrol(...
    'Style', 'Pushbutton', ...
    'Units', 'Normalized', ...
    'Position', [0.165 0.23 0.125 0.06], ...
    'String', char(clearBtnName(languageValue)), ...
    'Fontsize', 12, ...
    'callback', 'cla');

exitButton = uicontrol(...
    'Style', 'Pushbutton', ...
    'Units', 'Normalized', ...
    'Position', [0.03 0.15 0.26 0.06], ...
    'String', char(exitBtnName(languageValue)), ...
    'Fontsize', 12, ...
    'callback', 'close all');

authorsLabel = uicontrol(...
    'Style', 'Text', ...
    'Units', 'Normalized', ...
    'Position', [0.8 0.001 0.2 0.05], ...
    'BackgroundColor', bgColor, ...
    'Fontsize', 7, ...
    'String', 'Ines Culek, Ivana Šimiæ');
