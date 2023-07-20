function varargout = Project4(varargin)
% PROJECT4 MATLAB code for Project4.fig
%      PROJECT4, by itself, creates a new PROJECT4 or raises the existing
%      singleton*.
%
%      H = PROJECT4 returns the handle to a new PROJECT4 or the handle to
%      the existing singleton*.
%
%      PROJECT4('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECT4.M with the given input arguments.
%
%      PROJECT4('Property','Value',...) creates a new PROJECT4 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Project4_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Project4_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Project4

% Last Modified by GUIDE v2.5 24-May-2022 21:21:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Project4_OpeningFcn, ...
                   'gui_OutputFcn',  @Project4_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Project4 is made visible.
function Project4_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Project4 (see VARARGIN)

% Choose default command line output for Project4
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
% UIWAIT makes Project4 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Project4_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
set(handles.panel2,'visible','off')
set(handles.panel3,'visible','off')
set(handles.panel4,'visible','off')
set(handles.panel5,'visible','off')
set(handles.panel6,'visible','off')
set(handles.panel7,'visible','off')
set(handles.panel8,'visible','off')
set(handles.panel9,'visible','off')
set(handles.panel10,'visible','off')
set(handles.panel11,'visible','off')
set(handles.sobel,'visible','off');
set(handles.prewitt,'visible','off');
set(handles.roberts,'visible','off');
set(handles.average,'visible','off');
set(handles.laplacian,'visible','off');
set(handles.max,'visible','off');
set(handles.min,'visible','off');
set(handles.median,'visible','off');
set(handles.rank,'visible','off');
set(handles.equalizationGray,'visible','off')
set(handles.equalizationHistGray,'visible','off')
set(handles.stretchingGray,'visible','off')
set(handles.stretchingHistGray,'visible','off')
set(handles.redHist,'visible','off')
set(handles.greenHist,'visible','off')
set(handles.blueHist,'visible','off')
set(handles.panel12,'visible','off')
set(handles.panel13,'visible','off')
set(handles.vertical,'visible','off')
set(handles.horizontal,'visible','off')
set(handles.splitMiddleLR,'visible','off')
set(handles.splitMiddleUD,'visible','off')
set(handles.splitRLMiddle,'visible','off')
set(handles.splitUDMiddle,'visible','off')
set(handles.transparent,'visible','off')
set(handles.pushRight,'visible','off')
set(handles.pushLeft,'visible','off')
set(handles.pushUp,'visible','off')
set(handles.pushDown,'visible','off')
set(handles.panel14,'visible','off')
set(handles.dilation,'visible','off')
set(handles.erosion,'visible','off')
set(handles.opening,'visible','off')
set(handles.closing,'visible','off')
set(handles.slider4,'visible','on')
set(handles.textLinear,'visible','off')
set(handles.textNonLinear,'visible','off')


% --- Executes during object creation, after setting all properties.
function panel1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to panel1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in operation.
function operation_Callback(hObject, eventdata, handles)
% hObject    handle to operation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel1,'visible','off')
set(handles.panel2,'visible','on')
set(handles.slider4,'visible','on')

% --- Executes on button press in color.
function color_Callback(hObject, ~, handles)
% hObject    handle to color (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel1,'visible','off')
set(handles.panel5,'visible','on')

% --- Executes on button press in histogram.
function histogram_Callback(hObject, eventdata, handles)
% hObject    handle to histogram (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel1,'visible','off')
set(handles.panel6,'visible','on')
set(handles.equalizationGray,'visible','off')
set(handles.equalizationHistGray,'visible','off')
set(handles.stretchingGray,'visible','off')
set(handles.stretchingHistGray,'visible','off')
set(handles.text4,'visible','off')
set(handles.text5,'visible','off')
set(handles.redHist,'visible','off')
set(handles.greenHist,'visible','off')
set(handles.blueHist,'visible','off')

% --- Executes on button press in neighborhood.
function neighborhood_Callback(hObject, eventdata, handles)
% hObject    handle to neighborhood (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel1,'visible','off')
set(handles.panel8,'visible','on')
set(handles.textLinear,'visible','off')
set(handles.textNonLinear,'visible','off')
% --- Executes on button press in color1.
function color1_Callback(hObject, eventdata, handles)
% hObject    handle to color1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel1,'visible','off')
set(handles.panel10,'visible','on')

% --- Executes on button press in edge.
function edge_Callback(hObject, eventdata, handles)
% hObject    handle to edge (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel1,'visible','off')
set(handles.panel11,'visible','on')

% --- Executes on button press in transformation.
function transformation_Callback(hObject, eventdata, handles)
% hObject    handle to transformation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel1,'visible','off')
set(handles.panel12,'visible','on')
set(handles.rotation,'visible','off');
set(handles.scale,'visible','off');
set(handles.reflection,'visible','off');
set(handles.slider2,'visible','off');
set(handles.slider3,'visible','off');
set(handles.slider4,'visible','off');
set(handles.vertical,'visible','off');
set(handles.horizontal,'visible','off');
set(handles.verticalImage,'visible','off');
set(handles.horizontalImage,'visible','off');
set(handles.transparent,'visible','off')
set(handles.pushRight,'visible','off')
set(handles.pushLeft,'visible','off')
set(handles.pushUp,'visible','off')
set(handles.pushDown,'visible','off')
% --- Executes on button press in morphology.
function morphology_Callback(hObject, eventdata, handles)
% hObject    handle to morphology (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel1,'visible','off')
set(handles.panel14,'visible','on')
set(handles.dilation,'visible','off')
set(handles.erosion,'visible','off')
set(handles.opening,'visible','off')
set(handles.closing,'visible','off')

% --- Executes on button press in oneImage.
function oneImage_Callback(hObject, eventdata, handles)
% hObject    handle to oneImage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel3,'visible','on')
set(handles.slider4,'visible','on')

% --- Executes on button press in twoImage.
function twoImage_Callback(hObject, eventdata, handles)
% hObject    handle to twoImage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel4,'visible','on')

% --- Executes on button press in back1.
function back1_Callback(hObject, eventdata, handles)
% hObject    handle to back1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel1,'visible','on')
set(handles.panel2,'visible','off')


% --- Executes during object creation, after setting all properties.
function panel3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to panel3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global i ;
axes(handles.axes1)
val = get(hObject,'Value') ;
imR= i * val; 
imshow(imR);
% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

% --- Executes on slider movement.
function slider5_Callback(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global i ;
axes(handles.axes1)
val = get(hObject,'Value') ;
imR= i / val; 
imshow(imR);

% --- Executes during object creation, after setting all properties.
function slider5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

% --- Executes on button press in complemntary.
function complemntary_Callback(hObject, eventdata, handles)
% hObject    handle to complemntary (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i ;
complement = 255 - i ;
axes(handles.axes1),imshow(complement);

% --- Executes on button press in gray.
function gray_Callback(hObject, eventdata, handles)
% hObject    handle to gray (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i ;
gray = rgb2gray(i);
axes(handles.axes1),imshow(gray);

% --- Executes on button press in binary.
function binary_Callback(hObject, eventdata, handles)
% hObject    handle to binary (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i ;
axes(handles.axes1)
bin = im2bw(i);
imshow(bin);

% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

global i ;
axes(handles.axes1)
val = get(hObject,'Value') ;
imR= i + val; 
imshow(imR);
% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in back2.
function back2_Callback(hObject, eventdata, handles)
% hObject    handle to back2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel2,'visible','on')
set(handles.panel3,'visible','off')
cla(handles.axes1,'reset')

% --- Executes on button press in select.
function select_Callback(hObject, eventdata, handles)
% hObject    handle to select (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i; global l ;
[name path] = uigetfile('*.*');
i= imread([path name]);
l = i ;
axes(handles.axes1);
imshow(i);

% --- Executes on button press in reset1.
function reset1_Callback(hObject, eventdata, handles)
% hObject    handle to reset1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes1,'reset');

% --- Executes during object creation, after setting all properties.
function panel4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to panel4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in selectFirst.
function selectFirst_Callback(hObject, eventdata, handles)
% hObject    handle to selectFirst (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
[name path] = uigetfile('*.*');
a = imread([path name]);
axes(handles.axes3);
imshow(a);

% --- Executes on button press in selectSecond.
function selectSecond_Callback(hObject, eventdata, handles)
% hObject    handle to selectSecond (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global b;
[name path] = uigetfile('*.*');
b = imread([path name]);
axes(handles.axes4);
imshow(b);


% --- Executes on button press in back3.
function back3_Callback(hObject, eventdata, handles)
% hObject    handle to back3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel2,'visible','on')
set(handles.panel3,'visible','off')
set(handles.panel4,'visible','off')
cla(handles.axes2,'reset')
cla(handles.axes3,'reset')
cla(handles.axes4,'reset')

% --- Executes on button press in reset2.
function reset2_Callback(hObject, eventdata, handles)
% hObject    handle to reset2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes2,'reset');
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');

% --- Executes on selection change in popupTwoImages.
function popupTwoImages_Callback(hObject, eventdata, handles)
% hObject    handle to popupTwoImages (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupTwoImages contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupTwoImages
global a ; global b ;
val = get(hObject,'Value');

if(val == 1)
    cla(handles.axes2,'reset');
    cla(handles.axes3,'reset');
    cla(handles.axes4,'reset');
    
    elseif(val == 2)
        [R,C,x] = size(a);
        b = imresize(b,[R,C]);
        add2_image = imadd(a,b) ;
        axes(handles.axes2),imshow(add2_image);
        
    elseif(val == 3)
        [R,C,x] = size(a);
        b = imresize(b,[R,C]);
        sub2_image = imsubtract(a,b) ;
        axes(handles.axes2),imshow(sub2_image);
        
    elseif(val == 4)
        [R,C,x] = size(a);
        b = imresize(b,[R,C]);
        mul2_image = immultiply(a,b) ;
        axes(handles.axes2),imshow(mul2_image);
        
    else(val == 5)
        [R,C,x] = size(a);
        b = imresize(b,[R,C]);
        div2_image = imdivide(a,b) ;
        axes(handles.axes2),imshow(div2_image);
        
end

% --- Executes during object creation, after setting all properties.
function popupTwoImages_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupTwoImages (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in add2.
function add2_Callback(hObject, eventdata, handles)
% hObject    handle to add2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a ; global b ;
[R,C,x] = size(a);
b = imresize(b,[R,C]);
add2_image = imadd(a,b) ;
axes(handles.axes2),imshow(add2_image);

% --- Executes on button press in subtract2.
function subtract2_Callback(hObject, eventdata, handles)
% hObject    handle to subtract2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a ; global b ;
[R,C,x] = size(a);
b = imresize(b,[R,C]);
sub2_image = imsubtract(a,b) ;
axes(handles.axes2),imshow(sub2_image);

% --- Executes on button press in multiply2.
function multiply2_Callback(hObject, eventdata, handles)
% hObject    handle to multiply2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a ; global b ;
[R,C,x] = size(a);
b = imresize(b,[R,C]);
mul2_image = immultiply(a,b) ;
axes(handles.axes2),imshow(mul2_image);

% --- Executes on button press in divide2.
function divide2_Callback(hObject, eventdata, handles)
% hObject    handle to divide2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a ; global b ;
[R,C,x] = size(a);
b = imresize(b,[R,C]);
div2_image = imdivide(a,b) ;
axes(handles.axes2),imshow(div2_image);


% --- Executes during object creation, after setting all properties.
function panel5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to panel5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in changeRed.
function changeRed_Callback(hObject, eventdata, handles)
% hObject    handle to changeRed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i ;global j ;
j=i;
i(:,:,2)=0;
i(:,:,3)=0;
axes(handles.axes5),imshow(i);

% --- Executes on button press in changeGreen.
function changeGreen_Callback(hObject, eventdata, handles)
% hObject    handle to changeGreen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i ;global j ;
i=j;
i(:,:,1)=0;
i(:,:,3)=0;
axes(handles.axes5),imshow(i);

% --- Executes on button press in changeBlue.
function changeBlue_Callback(hObject, eventdata, handles)
% hObject    handle to changeBlue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i ;global j ;
i=j;
i(:,:,1)=0;
i(:,:,2)=0;
axes(handles.axes5),imshow(i);

% --- Executes on button press in swapRG.
function swapRG_Callback(hObject, eventdata, handles)
% hObject    handle to swapRG (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i ;
R = i(:,:,1);
G = i(:,:,2);
B = i(:,:,3);
j = cat(3,G,R,B);
axes(handles.axes5),imshow(j);

% --- Executes on button press in swapRB.
function swapRB_Callback(hObject, eventdata, handles)
% hObject    handle to swapRB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i ;
R = i(:,:,1);
G = i(:,:,2);
B = i(:,:,3);
h = cat(3,B,G,R);
axes(handles.axes5),imshow(h);

% --- Executes on button press in swapGB.
function swapGB_Callback(hObject, eventdata, handles)
% hObject    handle to swapGB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i ;
R = i(:,:,1);
G = i(:,:,2);
B = i(:,:,3);
k = cat(3,R,B,G);
axes(handles.axes5),imshow(k);

% --- Executes on button press in elmiminateRed.
function elmiminateRed_Callback(hObject, eventdata, handles)
% hObject    handle to elmiminateRed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i ;
j=i;
j(:,:,1)=0;
axes(handles.axes5),imshow(j);

% --- Executes on button press in eliminateGreen.
function eliminateGreen_Callback(hObject, eventdata, handles)
% hObject    handle to eliminateGreen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i ;
k=i;
k(:,:,2)=0;
axes(handles.axes5),imshow(k);


% --- Executes on button press in eliminateBlue.
function eliminateBlue_Callback(hObject, eventdata, handles)
% hObject    handle to eliminateBlue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i ;
l=i;
l(:,:,3)=0;
axes(handles.axes5),imshow(l);

% --- Executes on button press in eliminateRG.
function eliminateRG_Callback(hObject, eventdata, handles)
% hObject    handle to eliminateRG (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i ;
m=i;
m(:,:,1)=0;
m(:,:,2)=0;
axes(handles.axes5),imshow(m);

% --- Executes on button press in eliminateRB.
function eliminateRB_Callback(hObject, eventdata, handles)
% hObject    handle to eliminateRB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i ;
n=i;
n(:,:,1)=0;
n(:,:,3)=0;
axes(handles.axes5),imshow(n);

% --- Executes on button press in eliminateGB.
function eliminateGB_Callback(hObject, eventdata, handles)
% hObject    handle to eliminateGB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i ;
o=i;
o(:,:,2)=0;
o(:,:,3)=0;
axes(handles.axes5),imshow(o);

% --- Executes on button press in back4.
function back4_Callback(hObject, eventdata, handles)
% hObject    handle to back4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel1,'visible','on')
set(handles.panel5,'visible','off')
cla(handles.axes5,'reset')

% --- Executes on button press in select4.
function select4_Callback(hObject, eventdata, handles)
% hObject    handle to select4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i; global m ;
[name path] = uigetfile('*.*');
i= imread([path name]);
m = i ;
axes(handles.axes5),imshow(i);


% --- Executes on button press in reset4.
function reset4_Callback(hObject, eventdata, handles)
% hObject    handle to reset4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes5,'reset')

% --- Executes during object creation, after setting all properties.
function panel6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to panel6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% --- Executes on button press in histGray.
function histGray_Callback(hObject, eventdata, handles)
% hObject    handle to histGray (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel1,'visible','off')
set(handles.panel7,'visible','on')
set(handles.histCalculation,'visible','on')
set(handles.histEqualization,'visible','on')
set(handles.histStretching,'visible','on')
set(handles.histCalcRGB,'visible','off')
set(handles.histEqualRGB,'visible','off')
set(handles.histStretchRGB,'visible','off')
set(handles.select6,'visible','on')
set(handles.selectRGB,'visible','off')
set(handles.redHist,'visible','off')
set(handles.greenHist,'visible','off')
set(handles.blueHist,'visible','off')
% --- Executes on button press in histRGB.
function histRGB_Callback(hObject, eventdata, handles)
% hObject    handle to histRGB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel1,'visible','off')
set(handles.panel7,'visible','on')
set(handles.histCalculation,'visible','off')
set(handles.histEqualization,'visible','off')
set(handles.histStretching,'visible','off')
set(handles.histCalcRGB,'visible','on')
set(handles.histEqualRGB,'visible','on')
set(handles.histStretchRGB,'visible','on')
set(handles.select6,'visible','off')
set(handles.selectRGB,'visible','on')
set(handles.redHist,'visible','off')
set(handles.greenHist,'visible','off')
set(handles.blueHist,'visible','off')

% --- Executes on button press in back5.
function back5_Callback(hObject, eventdata, handles)
% hObject    handle to back5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel1,'visible','on')
set(handles.panel6,'visible','off')


% --- Executes during object creation, after setting all properties.
function panel7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to panel7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in histCalculation.
function histCalculation_Callback(hObject, eventdata, handles)
% hObject    handle to histCalculation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i ; global gray1 ;
l = imhist(gray1);
axes(handles.axes7),bar(l,'g');
set(handles.axes8,'visible','off')
set(handles.axes9,'visible','off')
set(handles.equalizationGray,'visible','off')
set(handles.equalizationHistGray,'visible','off')
set(handles.stretchingGray,'visible','off')
set(handles.stretchingHistGray,'visible','off')
set(handles.text5,'visible','on')
% --- Executes on button press in histEqualization.
function histEqualization_Callback(hObject, eventdata, handles)
% hObject    handle to histEqualization (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i ; global gray1 ;
Equal =histeq(gray1) ;
axes(handles.axes8),imshow(Equal);
axes(handles.axes9),imhist(Equal);
set(handles.equalizationGray,'visible','on')
set(handles.equalizationHistGray,'visible','on')

% --- Executes on button press in histStretching.
function histStretching_Callback(hObject, eventdata, handles)
% hObject    handle to histStretching (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i ; global gray1 ;
Stretch =imadjust(gray1) ;
axes(handles.axes8),imshow(Stretch);
axes(handles.axes9),imhist(Stretch);
set(handles.equalizationGray,'visible','off')
set(handles.equalizationHistGray,'visible','off')
set(handles.stretchingGray,'visible','on')
set(handles.stretchingHistGray,'visible','on')
% --- Executes on button press in back6.
function back6_Callback(hObject, eventdata, handles)
% hObject    handle to back6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel7,'visible','off')
set(handles.panel6,'visible','on')
cla(handles.axes6,'reset')
cla(handles.axes7,'reset')
cla(handles.axes8,'reset')
cla(handles.axes9,'reset')
set(handles.equalizationGray,'visible','off')
set(handles.equalizationHistGray,'visible','off')
set(handles.stretchingGray,'visible','off')
set(handles.stretchingHistGray,'visible','off')
set(handles.text4,'visible','off')
set(handles.text5,'visible','off')

% --- Executes on button press in select6.
function select6_Callback(hObject, eventdata, handles)
% hObject    handle to select6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i; global gray1 ;
[name path] = uigetfile('*.*');
i= imread([path name]);
gray1 = rgb2gray(i);
axes(handles.axes6);
imshow(gray1);
cla(handles.axes7,'reset')
cla(handles.axes8,'reset')
cla(handles.axes9,'reset')
set(handles.text5,'visible','off')
set(handles.equalizationGray,'visible','off')
set(handles.equalizationHistGray,'visible','off')
set(handles.stretchingGray,'visible','off')
set(handles.stretchingHistGray,'visible','off')
set(handles.text4,'visible','on')

% --- Executes on button press in histCalcRGB.
function histCalcRGB_Callback(hObject, eventdata, handles)
% hObject    handle to histCalcRGB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 global n ;
R = n(:,:,1) ;
G = n(:,:,2) ;
B = n(:,:,3) ;

hR = imhist(R);
hG = imhist(G);
hB = imhist(B);

axes(handles.axes7),bar(hR,'r');
axes(handles.axes8),bar(hG,'g');
axes(handles.axes9),bar(hB,'b');
set(handles.redHist,'visible','on')
set(handles.greenHist,'visible','on')
set(handles.blueHist,'visible','on')

% --- Executes on button press in histEqualRGB.
function histEqualRGB_Callback(hObject, eventdata, handles)
% hObject    handle to histEqualRGB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i ; global n ;
i = (i+100) - 50;

R = i(:,:,1);

G = i(:,:,2);

B = i(:,:,3);

Equal1 = histeq(R);
Equal2 = histeq(G);
Equal3 = histeq(B);

j = cat(3,Equal1,Equal2,Equal3);

axes(handles.axes7),imhist(n);
axes(handles.axes8),imshow(j);
axes(handles.axes9),imhist(j);
set(handles.redHist,'visible','off')
set(handles.greenHist,'visible','off')
set(handles.blueHist,'visible','off')
set(handles.equalizationGray,'visible','on')
set(handles.equalizationHistGray,'visible','on')
set(handles.text5,'visible','on')

% --- Executes on button press in histStretchRGB.
function histStretchRGB_Callback(hObject, eventdata, handles)
% hObject    handle to histStretchRGB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i ; global n ;
i = (i+100) - 50;

R = i(:,:,1);

G = i(:,:,2);

B = i(:,:,3);

Stretch1 = imadjust(R);
Stretch2 = imadjust(G);
Stretch3 = imadjust(B);

j = cat(3,Stretch1,Stretch2,Stretch3);

axes(handles.axes7),imhist(n);
axes(handles.axes8),imshow(j);
axes(handles.axes9),imhist(j);
set(handles.redHist,'visible','off')
set(handles.greenHist,'visible','off')
set(handles.blueHist,'visible','off')
set(handles.stretchingGray,'visible','on')
set(handles.stretchingHistGray,'visible','on')
set(handles.text5,'visible','on')

% --- Executes on button press in selectRGB.
function selectRGB_Callback(hObject, eventdata, handles)
% hObject    handle to selectRGB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i; global n ; 
[name path] = uigetfile('*.*');
i= imread([path name]);
n = i ;
axes(handles.axes6),imshow(i);
cla(handles.axes7,'reset')
cla(handles.axes8,'reset')
cla(handles.axes9,'reset')
set(handles.text4,'visible','on')
set(handles.redHist,'visible','off')
set(handles.greenHist,'visible','off')
set(handles.blueHist,'visible','off')
set(handles.text5,'visible','off')
set(handles.equalizationGray,'visible','off')
set(handles.equalizationHistGray,'visible','off')
set(handles.stretchingGray,'visible','off')
set(handles.stretchingHistGray,'visible','off')

% --- Executes during object creation, after setting all properties.
function panel8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to panel8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in neighborLinear.
function neighborLinear_Callback(hObject, eventdata, handles)
% hObject    handle to neighborLinear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel8,'visible','off')
set(handles.panel9,'visible','on')
set(handles.popupLinear,'visible','on')
set(handles.popupNonLinear,'visible','off')
set(handles.average,'visible','off');
set(handles.laplacian,'visible','off');
set(handles.max,'visible','off');
set(handles.min,'visible','off');
set(handles.median,'visible','off');
set(handles.rank,'visible','off');
set(handles.textLinear,'visible','on')
set(handles.textNonLinear,'visible','off')
% --- Executes on button press in neighborNonLinear.
function neighborNonLinear_Callback(hObject, eventdata, handles)
% hObject    handle to neighborNonLinear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel8,'visible','off')
set(handles.panel9,'visible','on')
set(handles.popupLinear,'visible','off')
set(handles.popupNonLinear,'visible','on')
set(handles.average,'visible','off');
set(handles.laplacian,'visible','off');
set(handles.max,'visible','off');
set(handles.min,'visible','off');
set(handles.median,'visible','off');
set(handles.rank,'visible','off');
set(handles.textLinear,'visible','off')
set(handles.textNonLinear,'visible','on')
% --- Executes on button press in back9.
function back9_Callback(hObject, eventdata, handles)
% hObject    handle to back9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel8,'visible','off')
set(handles.panel1,'visible','on')
set(handles.average,'visible','off');
set(handles.laplacian,'visible','off');
set(handles.max,'visible','off');
set(handles.min,'visible','off');
set(handles.median,'visible','off');
set(handles.rank,'visible','off');

% --- Executes on selection change in popupLinear.
function popupLinear_Callback(hObject, eventdata, handles)
% hObject    handle to popupLinear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupLinear contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupLinear
global i ; 
val = get(hObject,'Value');
if(val==1)
    cla(handles.axes11,'reset');
    set(handles.average,'visible','off');
    set(handles.laplacian,'visible','off');
    set(handles.max,'visible','off');
    set(handles.min,'visible','off');
    set(handles.median,'visible','off');
    set(handles.rank,'visible','off');
elseif(val==2)
        average = fspecial('average',25);
        j1 = imfilter(i, average);
    axes(handles.axes11),imshow(j1);
    set(handles.average,'visible','on');
    set(handles.laplacian,'visible','off');
    set(handles.max,'visible','off');
    set(handles.min,'visible','off');
    set(handles.median,'visible','off');
    set(handles.rank,'visible','off');
else(val==3)
    laplacian = fspecial('laplacian');
    j2 = imfilter(i , laplacian);
    axes(handles.axes11),imshow(j2); 
    set(handles.average,'visible','off');
    set(handles.laplacian,'visible','on');
    set(handles.max,'visible','off');
    set(handles.min,'visible','off');
    set(handles.median,'visible','off');
    set(handles.rank,'visible','off');
end


% --- Executes during object creation, after setting all properties.
function popupLinear_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupLinear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in backFilter.
function backFilter_Callback(hObject, eventdata, handles)
% hObject    handle to backFilter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel9,'visible','off')
set(handles.panel8,'visible','on')
cla(handles.axes10,'reset');
cla(handles.axes11,'reset');

% --- Executes on selection change in popupNonLinear.
function popupNonLinear_Callback(hObject, eventdata, handles)
% hObject    handle to popupNonLinear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupNonLinear contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupNonLinear

% --- Executes during object creation, after setting all properties.
global i ; 
val = get(hObject,'Value');
if(val==1)
    cla(handles.axes11,'reset');
    set(handles.max,'visible','off');
    set(handles.min,'visible','off');
    set(handles.median,'visible','off');
    set(handles.rank,'visible','off');
    
elseif(val==2)
R = i(:,:,1);
G = i(:,:,2);
B = i(:,:,3);
 
 Red_Max = colfilt(R , [10 10] , 'sliding' , @max);
 Green_Max = colfilt(G , [10 10] , 'sliding' , @max);
 Blue_Max = colfilt(B , [10 10] , 'sliding' , @max);
 j1 = cat(3,Red_Max,Green_Max,Blue_Max);
    axes(handles.axes11),imshow(j1); 
    set(handles.max,'visible','on');
    set(handles.min,'visible','off');
    set(handles.median,'visible','off');
    set(handles.rank,'visible','off');
    
elseif(val==3)
R = i(:,:,1);
G = i(:,:,2);
B = i(:,:,3);
 
 Red_Min = colfilt(R , [10 10] , 'sliding' , @min);
 Green_Min = colfilt(G , [10 10] , 'sliding' , @min);
 Blue_Min = colfilt(B , [10 10] , 'sliding' , @min);
 
 j2 = cat(3,Red_Min,Green_Min,Blue_Min);
    axes(handles.axes11),imshow(j2); 
    set(handles.max,'visible','off');
    set(handles.min,'visible','on');
    set(handles.median,'visible','off');
    set(handles.rank,'visible','off');

elseif(val==4)
R = i(:,:,1);
G = i(:,:,2);
B = i(:,:,3);
 
 Red_Median = colfilt(R , [10 10] , 'sliding' , @median);
 Green_Median = colfilt(G , [10 10] , 'sliding' , @median);
 Blue_Median = colfilt(B , [10 10] , 'sliding' , @median); 
 
 j3 = cat(3,Red_Median,Green_Median,Blue_Median);
    axes(handles.axes11),imshow(j3); 
    set(handles.max,'visible','off');
    set(handles.min,'visible','off');
    set(handles.median,'visible','on');
    set(handles.rank,'visible','off');

else(val==5)
R = i(:,:,1);
G = i(:,:,2);
B = i(:,:,3);

 Red_Order = ordfilt2(R , 1 , ones(4));
 Green_Order = ordfilt2(G , 1 , ones(4));
 Blue_Order = ordfilt2(B , 1 , ones(4));
 
 j4 = cat(3,Red_Order,Green_Order,Blue_Order);
    axes(handles.axes11),imshow(j4); 
    set(handles.max,'visible','off');
    set(handles.min,'visible','off');
    set(handles.median,'visible','off');
    set(handles.rank,'visible','on');


end
function popupNonLinear_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupNonLinear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in selectAveLaplac.
function selectAveLaplac_Callback(hObject, eventdata, handles)
% hObject    handle to selectAveLaplac (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i; 
[name path] = uigetfile('*.*');
i= imread([path name]);
axes(handles.axes10);
imshow(i);
cla(handles.axes11,'reset');

% --- Executes on button press in radioRGB.
function radioRGB_Callback(hObject, eventdata, handles)
% hObject    handle to radioRGB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of radioRGB
global i ;
R = i(:,:,1);
G = i(:,:,2);
B = i(:,:,3);
axes(handles.axes12),imshow(i);
axes(handles.axes13),imshow(R);
axes(handles.axes14),imshow(G);
axes(handles.axes15),imshow(B);

% --- Executes on button press in radioCMY.
function radioCMY_Callback(hObject, eventdata, handles)
% hObject    handle to radioCMY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of radioCMY
global i ;
CMY =imcomplement(i);
C = CMY(:,:,1);
M = CMY(:,:,2);
Y = CMY(:,:,3);
axes(handles.axes12),imshow(CMY);
axes(handles.axes13),imshow(C);
axes(handles.axes14),imshow(M);
axes(handles.axes15),imshow(Y);

% --- Executes on button press in radioHSI.
function radioHSI_Callback(hObject, eventdata, handles)
% hObject    handle to radioHSI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of radioHSI
global i ;
F=im2double(i);
r = F(:,:,1);
g = F(:,:,2);
b = F(:,:,3);
x1 = 0.5 *((r-g)+(r-b));
x2 = sqrt((r-g).^2+(r-b).*(g-b));
theta = acos(x1./x2);
rule = (b <= g);
H = (rule .* theta) + ((1 - rule).*(2.*pi - theta));
S = 1 - (3.*(min(min(r,g),b)))./(r+g+b);
I = (r+g+b)/3;
hsi = cat(3,H,S,I);
axes(handles.axes12),imshow(hsi);
axes(handles.axes13),imshow(H);
axes(handles.axes14),imshow(S);
axes(handles.axes15),imshow(I);

% --- Executes on button press in radioHSV.
function radioHSV_Callback(hObject, eventdata, handles)
% hObject    handle to radioHSV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of radioHSV
global i ;
HSV =rgb2hsv(i);
H = HSV(:,:,1);
S = HSV(:,:,2);
V = HSV(:,:,3);
axes(handles.axes12),imshow(HSV);
axes(handles.axes13),imshow(H);
axes(handles.axes14),imshow(S);
axes(handles.axes15),imshow(V);

% --- Executes on button press in radioYCrCb.
function radioYCrCb_Callback(hObject, eventdata, handles)
% hObject    handle to radioYCrCb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of radioYCrCb
global i ;
YCbCr = rgb2ycbcr(i);
Y = YCbCr(:,:,1);
Cb = YCbCr(:,:,2);
Cr = YCbCr(:,:,3);
axes(handles.axes12),imshow(YCbCr);
axes(handles.axes13),imshow(Y);
axes(handles.axes14),imshow(Cb);
axes(handles.axes15),imshow(Cr);

% --- Executes on button press in selectColorSpace.
function selectColorSpace_Callback(hObject, eventdata, handles)
% hObject    handle to selectColorSpace (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i; 
[name path] = uigetfile('*.*');
i= imread([path name]);
axes(handles.axes12);
imshow(i);
cla(handles.axes13,'reset');
cla(handles.axes14,'reset');
cla(handles.axes15,'reset');

% --- Executes on button press in back10.
function back10_Callback(hObject, eventdata, handles)
% hObject    handle to back10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel10,'visible','off')
set(handles.panel1,'visible','on')
cla(handles.axes12,'reset');
cla(handles.axes13,'reset');
cla(handles.axes14,'reset');
cla(handles.axes15,'reset');

% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1

global i ; 
val = get(hObject,'Value');
if(val == 1)
    gray = rgb2gray(i);
    edge1 = edge(gray,'sobel');
    axes(handles.axes17),imshow(edge1);
    set(handles.sobel,'visible','on');
    set(handles.prewitt,'visible','off');
    set(handles.roberts,'visible','off');

elseif(val == 2)
    gray = rgb2gray(i);
    edge2 = edge(gray,'prewitt');
    axes(handles.axes17),imshow(edge2);
    set(handles.sobel,'visible','off');
    set(handles.prewitt,'visible','on');
    set(handles.roberts,'visible','off');
    
else(val == 3)
    gray = rgb2gray(i);
    edge3 = edge(gray,'roberts');
    axes(handles.axes17),imshow(edge3);
    set(handles.sobel,'visible','off');
    set(handles.prewitt,'visible','off');
    set(handles.roberts,'visible','on');
end

% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in selectEdge.
function selectEdge_Callback(hObject, eventdata, handles)
% hObject    handle to selectEdge (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i; 
[name path] = uigetfile('*.*');
i= imread([path name]);
axes(handles.axes16);
imshow(i);
cla(handles.axes17,'reset');

% --- Executes on button press in back11.
function back11_Callback(hObject, eventdata, handles)
% hObject    handle to back11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel11,'visible','off')
set(handles.panel1,'visible','on')
cla(handles.axes16,'reset');
cla(handles.axes17,'reset');
set(handles.sobel,'visible','off');
set(handles.prewitt,'visible','off');
set(handles.roberts,'visible','off');


% --- Executes on selection change in popupTransformation.
function popupTransformation_Callback(hObject, eventdata, handles)
% hObject    handle to popupTransformation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupTransformation contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupTransformation
global i ; 
val = get(hObject,'Value');
if(val == 1)
    cla(handles.axes18,'reset');
    cla(handles.axes19,'reset');
    
    elseif(val == 2)
    axes(handles.axes19),imshow(i);
    set(handles.slider2,'visible','on');
    set(handles.slider3,'visible','off');
    set(handles.rotation,'visible','on');
    set(handles.scale,'visible','off');
    set(handles.reflection,'visible','off');
    set(handles.vertical,'visible','off');
    set(handles.horizontal,'visible','off');
    set(handles.verticalImage,'visible','off');
    set(handles.horizontalImage,'visible','off');
    elseif(val == 3)
    axes(handles.axes19),imshow(i);
    set(handles.slider2,'visible','off');
    set(handles.slider3,'visible','on');
    set(handles.rotation,'visible','off');
    set(handles.scale,'visible','on');
    set(handles.reflection,'visible','off');
    set(handles.vertical,'visible','off');
    set(handles.horizontal,'visible','off');
    set(handles.verticalImage,'visible','off');
    set(handles.horizontalImage,'visible','off');
    
    elseif(val == 4)
    axes(handles.axes19),imshow(i);
    set(handles.slider2,'visible','off');
    set(handles.slider3,'visible','off');
    set(handles.rotation,'visible','off');
    set(handles.scale,'visible','off');
    set(handles.reflection,'visible','off');
    set(handles.vertical,'visible','on');
    set(handles.horizontal,'visible','on');
    set(handles.verticalImage,'visible','off');
    set(handles.horizontalImage,'visible','off');
    
    else(val == 5)
    set(handles.panel12,'visible','off')
    set(handles.panel13,'visible','on')

end
% --- Executes during object creation, after setting all properties.
function popupTransformation_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupTransformation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in selectTransformation.
function selectTransformation_Callback(hObject, eventdata, handles)
% hObject    handle to selectTransformation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i; 
[name path] = uigetfile('*.*');
i= imread([path name]);
axes(handles.axes18);
imshow(i);
cla(handles.axes19,'reset');

% --- Executes on button press in back12.
function back12_Callback(hObject, eventdata, handles)
% hObject    handle to back12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel12,'visible','off')
set(handles.panel1,'visible','on')
cla(handles.axes18,'reset');
cla(handles.axes19,'reset');

% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global i
val = get(handles.slider2,'Value') ;
new = imrotate(i,val);
axes(handles.axes19),imshow(new);

% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global i
val = get(handles.slider3,'Value') ;
new1 = imresize(i,val);
axes(handles.axes19),imshow(new1);

% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

% --- Executes on button press in vertical.
function vertical_Callback(hObject, eventdata, handles)
% hObject    handle to vertical (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i 
x1 = flipud(i);
imshow(x1);
set(handles.verticalImage,'visible','on');
set(handles.horizontalImage,'visible','off');
set(handles.reflection,'visible','off');
set(handles.scale,'visible','off');
set(handles.rotation,'visible','off');

% --- Executes on button press in horizontal.
function horizontal_Callback(hObject, eventdata, handles)
% hObject    handle to horizontal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i 
x2 = fliplr(i);
imshow(x2);
set(handles.verticalImage,'visible','off');
set(handles.horizontalImage,'visible','on');
set(handles.reflection,'visible','off');
set(handles.scale,'visible','off');
set(handles.rotation,'visible','off');

% --- Executes on button press in selectTranslationFirst.
function selectTranslationFirst_Callback(hObject, eventdata, handles)
% hObject    handle to selectTranslationFirst (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global p;
[name path] = uigetfile('*.*');
p = imread([path name]);
axes(handles.axes20);
imshow(p);

% --- Executes on button press in selectTranslationSecond.
function selectTranslationSecond_Callback(hObject, eventdata, handles)
% hObject    handle to selectTranslationSecond (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global v;
[name path] = uigetfile('*.*');
v = imread([path name]);
axes(handles.axes21);
imshow(v);

% --- Executes on button press in backTransformation.
function backTransformation_Callback(hObject, eventdata, handles)
% hObject    handle to backTransformation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel13,'visible','off');
set(handles.panel12,'visible','on');
cla(handles.axes20,'reset');
cla(handles.axes21,'reset');
cla(handles.axes22,'reset');
set(handles.splitMiddleLR,'visible','off')
set(handles.splitMiddleUD,'visible','off')
set(handles.splitRLMiddle,'visible','off')
set(handles.splitUDMiddle,'visible','off')
set(handles.transparent,'visible','off')
    
% --- Executes on selection change in popupTranslation.
function popupTranslation_Callback(hObject, eventdata, handles)
% hObject    handle to popupTranslation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupTranslation contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupTranslation
global p ; global v ;
val = get(hObject,'Value');

if(val == 1)
    cla(handles.axes20,'reset');
    cla(handles.axes21,'reset');
    cla(handles.axes22,'reset');
    set(handles.splitMiddleLR,'visible','off')
    set(handles.splitMiddleUD,'visible','off')
    set(handles.splitRLMiddle,'visible','off')
    set(handles.splitUDMiddle,'visible','off')
    set(handles.transparent,'visible','off')
    set(handles.pushRight,'visible','off')
    set(handles.pushLeft,'visible','off')
    set(handles.pushUp,'visible','off')
    set(handles.pushDown,'visible','off')

    elseif(val == 2)
        set(handles.splitMiddleLR,'visible','off')
        set(handles.splitMiddleUD,'visible','off')
        set(handles.splitRLMiddle,'visible','off')
        set(handles.splitUDMiddle,'visible','off')
        set(handles.transparent,'visible','on')
        set(handles.pushRight,'visible','off')
        set(handles.pushLeft,'visible','off')
        set(handles.pushUp,'visible','off')
        set(handles.pushDown,'visible','off')
        [R, C, x]= size(p);
         v = imresize(v,[R,C]);
         for r = 0 : 0.01 : 1
         New = r * p + (1 - r) * v;
         axes(handles.axes22),imshow(New);
         end

        
    elseif(val == 3)
        set(handles.splitMiddleLR,'visible','off')
        set(handles.splitMiddleUD,'visible','off')
        set(handles.splitRLMiddle,'visible','off')
        set(handles.splitUDMiddle,'visible','off')
        set(handles.transparent,'visible','off')
        set(handles.pushRight,'visible','on')
        set(handles.pushLeft,'visible','off')
        set(handles.pushUp,'visible','off')
        set(handles.pushDown,'visible','off')
        [R, C, x]= size(p);
         New = imresize(v,[R,C]);
         for c = 1 : C
         New(: , 1:c , :) = p(: , 1:c , :);
         axes(handles.axes22),imshow(New);
         end
    
    elseif(val == 4)
        set(handles.splitMiddleLR,'visible','off')
        set(handles.splitMiddleUD,'visible','off')
        set(handles.splitRLMiddle,'visible','off')
        set(handles.splitUDMiddle,'visible','off')
        set(handles.transparent,'visible','off')
        set(handles.pushRight,'visible','off')
        set(handles.pushLeft,'visible','on')
        set(handles.pushUp,'visible','off')
        set(handles.pushDown,'visible','off')
         [R, C, x]= size(p);
         New = imresize(v,[R,C]);
         for c = C : -1 : 1
         New(: , c:C , :) = p(: , c:C , :);
         axes(handles.axes22),imshow(New);
         end
        
    elseif(val == 5)
        set(handles.splitMiddleLR,'visible','off')
        set(handles.splitMiddleUD,'visible','off')
        set(handles.splitRLMiddle,'visible','off')
        set(handles.splitUDMiddle,'visible','off')
        set(handles.transparent,'visible','off')
        set(handles.pushRight,'visible','off')
        set(handles.pushLeft,'visible','off')
        set(handles.pushUp,'visible','on')
        set(handles.pushDown,'visible','off')
         [R, C, x]= size(p);
         New = imresize(v,[R,C]);
         for r = R : -1 : 1
         New(r:R , : , :) = p(r:R , : , :);
         axes(handles.axes22),imshow(New);
         end
         
    elseif(val == 6)
        set(handles.splitMiddleLR,'visible','off')
        set(handles.splitMiddleUD,'visible','off')
        set(handles.splitRLMiddle,'visible','off')
        set(handles.splitUDMiddle,'visible','off')
        set(handles.transparent,'visible','off')
        set(handles.pushRight,'visible','off')
        set(handles.pushLeft,'visible','off')
        set(handles.pushUp,'visible','off')
        set(handles.pushDown,'visible','on')
         [R, C, x]= size(p);
         New = imresize(v,[R,C]);
         for r = 1 : R
         New(1:r , : , :) = p(1:r , : , :);
         axes(handles.axes22),imshow(New);
         end
         
    else(val == 7)
        set(handles.splitMiddleLR,'visible','on')
        set(handles.splitMiddleUD,'visible','on')
        set(handles.splitRLMiddle,'visible','on')
        set(handles.splitUDMiddle,'visible','on')
        set(handles.transparent,'visible','off')
        set(handles.pushRight,'visible','off')
        set(handles.pushLeft,'visible','off')
        set(handles.pushUp,'visible','off')
        set(handles.pushDown,'visible','off')
      
end

% --- Executes during object creation, after setting all properties.
function popupTranslation_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupTranslation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in splitMiddleLR.
function splitMiddleLR_Callback(hObject, eventdata, handles)
% hObject    handle to splitMiddleLR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global p ; global v ;
[R, C, x]= size(p);
N = imresize(v,[R,C]);

c1 = floor(C/2) ;

for c = floor(C/2):-1:1
    N(:,c:floor(C/2),:) = p(:,c:floor(C/2),:);    
    N(:,floor(C/2):c1,:)= p(:,floor(C/2):c1,:);
    
    c1 = c1 + 1 ;
   axes(handles.axes22),imshow(N);
    
end

% --- Executes on button press in splitMiddleUD.
function splitMiddleUD_Callback(hObject, eventdata, handles)
% hObject    handle to splitMiddleUD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global p ; global v ;
[R, C, x]= size(p);
N = imresize(v,[R,C]);

r1 = floor(R/2) ;

for r = floor(R/2) :-1:1
    
    N(r:floor(R/2),:,:) = p(r:floor(R/2),:,:);    
    N(floor(R/2):r1,:,:)= p(floor(R/2):r1,:,:);
    r1 = r1 + 1 ;
    
   axes(handles.axes22),imshow(N);
   
end

% --- Executes on button press in splitRLMiddle.
function splitRLMiddle_Callback(hObject, eventdata, handles)
% hObject    handle to splitRLMiddle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global p ; global v ;
[R, C, x]= size(p);
N = imresize(v,[R,C]);

for c = 1 :floor(C/2)
    
    N(:,1:c ,:) = p(:,1:c , :);
    N(:,C-c:C,:)= p(:,C-c:C,:);
    
   axes(handles.axes22),imshow(N);
   
end

% --- Executes on button press in splitUDMiddle.
function splitUDMiddle_Callback(hObject, eventdata, handles)
% hObject    handle to splitUDMiddle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global p ; global v ;
[R, C, x]= size(p);
N = imresize(v,[R,C]);

for r = 1:R
    
    N(1:r,: ,:) = p(1:r,: , :);
    N(R-r:R,:,:)= p(R-r:R,:,:);
    
   axes(handles.axes22),imshow(N);
   
end


% --- Executes on selection change in popupMorphology.
function popupMorphology_Callback(hObject, eventdata, handles)
% hObject    handle to popupMorphology (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupMorphology contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupMorphology
global i ;
val = get(hObject,'Value');

if(val == 1)
    cla(handles.axes23,'reset');
    cla(handles.axes24,'reset');
    set(handles.dilation,'visible','off')
    set(handles.erosion,'visible','off')
    set(handles.opening,'visible','off')
    set(handles.closing,'visible','off')
    
    elseif(val == 2)
        set(handles.dilation,'visible','on')
        set(handles.erosion,'visible','off')
        set(handles.opening,'visible','off')
        set(handles.closing,'visible','off')
        sq = ones(2,2);
        td = imdilate(i,sq);
        axes(handles.axes24),imshow(td);
        
    elseif(val == 3)
        set(handles.dilation,'visible','off')
        set(handles.erosion,'visible','on')
        set(handles.opening,'visible','off')
        set(handles.closing,'visible','off')
        sq = ones(2,2);
        td = imerode(i,sq);
        axes(handles.axes24),imshow(td);
        
    elseif(val == 4)
        set(handles.dilation,'visible','off')
        set(handles.erosion,'visible','off')
        set(handles.opening,'visible','on')
        set(handles.closing,'visible','off')
        i = double(i);
        i = imnoise(i,'salt & pepper',.01);
        sq = ones(2,2);
        td = imopen(i,sq);
        axes(handles.axes24),imshow(td);
        
    else(val == 5)
        set(handles.dilation,'visible','off')
        set(handles.erosion,'visible','off')
        set(handles.opening,'visible','off')
        set(handles.closing,'visible','on')
        i = double(~i);
        i = imnoise(i,'salt & pepper',.01);
        sq = ones(2,2);
        td = imclose(i,sq);
        axes(handles.axes24),imshow(td);
        
end

% --- Executes during object creation, after setting all properties.
function popupMorphology_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupMorphology (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in selectMorphology.
function selectMorphology_Callback(hObject, eventdata, handles)
% hObject    handle to selectMorphology (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i; 
[name path] = uigetfile('*.*');
i= imread([path name]);
axes(handles.axes23);
imshow(i);
cla(handles.axes24,'reset');

% --- Executes on button press in backMorphology.
function backMorphology_Callback(hObject, eventdata, handles)
% hObject    handle to backMorphology (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel14,'visible','off');
set(handles.panel1,'visible','on');
cla(handles.axes23,'reset');
cla(handles.axes24,'reset');
set(handles.dilation,'visible','off')
set(handles.erosion,'visible','off')
set(handles.opening,'visible','off')
set(handles.closing,'visible','off')


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menuOneImage_Callback(hObject, eventdata, handles)
% hObject    handle to menuOneImage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    set(handles.panel1,'visible','off')
    set(handles.panel2,'visible','off')
    set(handles.panel3,'visible','on')
    set(handles.panel4,'visible','off')
    set(handles.panel5,'visible','off')
    set(handles.panel6,'visible','off')
    set(handles.panel7,'visible','off')
    set(handles.panel8,'visible','off')
    set(handles.panel9,'visible','off')
    set(handles.panel10,'visible','off')
    set(handles.panel11,'visible','off')
    set(handles.panel12,'visible','off')
    set(handles.panel13,'visible','off')
    set(handles.panel14,'visible','off')
% --------------------------------------------------------------------
function menuTwoImages_Callback(hObject, eventdata, handles)
% hObject    handle to menuTwoImages (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    set(handles.panel1,'visible','off')
    set(handles.panel2,'visible','off')
    set(handles.panel3,'visible','off')
    set(handles.panel4,'visible','on')
    set(handles.panel5,'visible','off')
    set(handles.panel6,'visible','off')
    set(handles.panel7,'visible','off')
    set(handles.panel8,'visible','off')
    set(handles.panel9,'visible','off')
    set(handles.panel10,'visible','off')
    set(handles.panel11,'visible','off')
    set(handles.panel12,'visible','off')
    set(handles.panel13,'visible','off')
    set(handles.panel14,'visible','off')

% --------------------------------------------------------------------
function menuColorImage_Callback(hObject, eventdata, handles)
% hObject    handle to menuColorImage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    set(handles.panel1,'visible','off')
    set(handles.panel2,'visible','off')
    set(handles.panel3,'visible','off')
    set(handles.panel4,'visible','off')
    set(handles.panel5,'visible','on')
    set(handles.panel6,'visible','off')
    set(handles.panel7,'visible','off')
    set(handles.panel8,'visible','off')
    set(handles.panel9,'visible','off')
    set(handles.panel10,'visible','off')
    set(handles.panel11,'visible','off')
    set(handles.panel12,'visible','off')
    set(handles.panel13,'visible','off')
    set(handles.panel14,'visible','off')

% --------------------------------------------------------------------
function Untitled_3_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menuGray_Callback(hObject, eventdata, handles)
% hObject    handle to menuGray (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    set(handles.panel1,'visible','off')
    set(handles.panel2,'visible','off')
    set(handles.panel3,'visible','off')
    set(handles.panel4,'visible','off')
    set(handles.panel5,'visible','off')
    set(handles.panel6,'visible','off')
    set(handles.panel7,'visible','on')
    set(handles.panel8,'visible','off')
    set(handles.panel9,'visible','off')
    set(handles.panel10,'visible','off')
    set(handles.panel11,'visible','off')
    set(handles.panel12,'visible','off')
    set(handles.panel13,'visible','off')
    set(handles.panel14,'visible','off')
    set(handles.histCalculation,'visible','on')
    set(handles.histEqualization,'visible','on')
    set(handles.histStretching,'visible','on')
    set(handles.histCalcRGB,'visible','off')
    set(handles.histEqualRGB,'visible','off')
    set(handles.histStretchRGB,'visible','off')
    set(handles.select6,'visible','on')
    set(handles.selectRGB,'visible','off')
    set(handles.redHist,'visible','off')
    set(handles.greenHist,'visible','off')
    set(handles.blueHist,'visible','off')
    set(handles.axes9,'visible','on')
    set(handles.equalizationGray,'visible','off')
    set(handles.equalizationHistGray,'visible','off')
    set(handles.stretchingGray,'visible','off')
    set(handles.stretchingHistGray,'visible','off')
    set(handles.text4,'visible','off')
    set(handles.text5,'visible','off')

% --------------------------------------------------------------------
function menuRGB_Callback(hObject, eventdata, handles)
% hObject    handle to menuRGB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    set(handles.panel1,'visible','off')
    set(handles.panel2,'visible','off')
    set(handles.panel3,'visible','off')
    set(handles.panel4,'visible','off')
    set(handles.panel5,'visible','off')
    set(handles.panel6,'visible','off')
    set(handles.panel7,'visible','on')
    set(handles.panel8,'visible','off')
    set(handles.panel9,'visible','off')
    set(handles.panel10,'visible','off')
    set(handles.panel11,'visible','off')
    set(handles.panel12,'visible','off')
    set(handles.panel13,'visible','off')
    set(handles.panel14,'visible','off')
    set(handles.histCalculation,'visible','off')
    set(handles.histEqualization,'visible','off')
    set(handles.histStretching,'visible','off')
    set(handles.histCalcRGB,'visible','on')
    set(handles.histEqualRGB,'visible','on')
    set(handles.histStretchRGB,'visible','on')
    set(handles.select6,'visible','off')
    set(handles.selectRGB,'visible','on')
    set(handles.redHist,'visible','off')
    set(handles.greenHist,'visible','off')
    set(handles.blueHist,'visible','off')
    set(handles.axes9,'visible','on')
    set(handles.equalizationGray,'visible','off')
    set(handles.equalizationHistGray,'visible','off')
    set(handles.stretchingGray,'visible','off')
    set(handles.stretchingHistGray,'visible','off')
    set(handles.text4,'visible','off')
    set(handles.text5,'visible','off')


% --------------------------------------------------------------------
function Untitled_4_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menuLinear_Callback(hObject, eventdata, handles)
% hObject    handle to menuLinear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    set(handles.panel1,'visible','off')
    set(handles.panel2,'visible','off')
    set(handles.panel3,'visible','off')
    set(handles.panel4,'visible','off')
    set(handles.panel5,'visible','off')
    set(handles.panel6,'visible','off')
    set(handles.panel7,'visible','off')
    set(handles.panel8,'visible','off')
    set(handles.panel9,'visible','on')
    set(handles.panel10,'visible','off')
    set(handles.panel11,'visible','off')
    set(handles.panel12,'visible','off')
    set(handles.panel13,'visible','off')
    set(handles.panel14,'visible','off')
    set(handles.popupLinear,'visible','on');
    set(handles.popupNonLinear,'visible','off');
    set(handles.average,'visible','off');
    set(handles.laplacian,'visible','off');
    set(handles.max,'visible','off');
    set(handles.min,'visible','off');
    set(handles.median,'visible','off');
    set(handles.rank,'visible','off');
    set(handles.axes10,'visible','on');
    set(handles.axes11,'visible','on');
    set(handles.textLinear,'visible','on')
    set(handles.textNonLinear,'visible','off')
% --------------------------------------------------------------------
function menuNonLinear_Callback(hObject, eventdata, handles)
% hObject    handle to menuNonLinear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    set(handles.panel1,'visible','off')
    set(handles.panel2,'visible','off')
    set(handles.panel3,'visible','off')
    set(handles.panel4,'visible','off')
    set(handles.panel5,'visible','off')
    set(handles.panel6,'visible','off')
    set(handles.panel7,'visible','off')
    set(handles.panel8,'visible','off')
    set(handles.panel9,'visible','on')
    set(handles.panel10,'visible','off')
    set(handles.panel11,'visible','off')
    set(handles.panel12,'visible','off')
    set(handles.panel13,'visible','off')
    set(handles.panel14,'visible','off')
    set(handles.popupLinear,'visible','off');
    set(handles.popupNonLinear,'visible','on');
    set(handles.average,'visible','off');
    set(handles.laplacian,'visible','off');
    set(handles.max,'visible','off');
    set(handles.min,'visible','off');
    set(handles.median,'visible','off');
    set(handles.rank,'visible','off');
    set(handles.axes10,'visible','on');
    set(handles.axes11,'visible','on');
    set(handles.textLinear,'visible','off')
    set(handles.textNonLinear,'visible','on')

% --------------------------------------------------------------------
function menuColorSpace_Callback(hObject, eventdata, handles)
% hObject    handle to menuColorSpace (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    set(handles.panel1,'visible','off')
    set(handles.panel2,'visible','off')
    set(handles.panel3,'visible','off')
    set(handles.panel4,'visible','off')
    set(handles.panel5,'visible','off')
    set(handles.panel6,'visible','off')
    set(handles.panel7,'visible','off')
    set(handles.panel8,'visible','off')
    set(handles.panel9,'visible','off')
    set(handles.panel10,'visible','on')
    set(handles.panel11,'visible','off')
    set(handles.panel12,'visible','off')
    set(handles.panel13,'visible','off')
    set(handles.panel14,'visible','off')


% --------------------------------------------------------------------
function menuEdge_Callback(hObject, eventdata, handles)
% hObject    handle to menuEdge (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    set(handles.panel1,'visible','off')
    set(handles.panel2,'visible','off')
    set(handles.panel3,'visible','off')
    set(handles.panel4,'visible','off')
    set(handles.panel5,'visible','off')
    set(handles.panel6,'visible','off')
    set(handles.panel7,'visible','off')
    set(handles.panel8,'visible','off')
    set(handles.panel9,'visible','off')
    set(handles.panel10,'visible','off')
    set(handles.panel11,'visible','on')
    set(handles.panel12,'visible','off')
    set(handles.panel13,'visible','off')
    set(handles.panel14,'visible','off')


% --------------------------------------------------------------------
function menuTransformation_Callback(hObject, eventdata, handles)
% hObject    handle to menuTransformation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    set(handles.panel1,'visible','off')
    set(handles.panel2,'visible','off')
    set(handles.panel3,'visible','off')
    set(handles.panel4,'visible','off')
    set(handles.panel5,'visible','off')
    set(handles.panel6,'visible','off')
    set(handles.panel7,'visible','off')
    set(handles.panel8,'visible','off')
    set(handles.panel9,'visible','off')
    set(handles.panel10,'visible','off')
    set(handles.panel11,'visible','off')
    set(handles.panel12,'visible','on')
    set(handles.panel13,'visible','off')
    set(handles.panel14,'visible','off')
    set(handles.slider2,'visible','off')
    set(handles.slider3,'visible','off')
    set(handles.horizontalImage,'visible','off')
    set(handles.verticalImage,'visible','off')
    set(handles.rotation,'visible','off');
    set(handles.scale,'visible','off');
    set(handles.reflection,'visible','off');
    set(handles.vertical,'visible','off');
    set(handles.horizontal,'visible','off');


% --------------------------------------------------------------------
function menuTranslation_Callback(hObject, eventdata, handles)
% hObject    handle to menuTranslation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    set(handles.panel1,'visible','off')
    set(handles.panel2,'visible','off')
    set(handles.panel3,'visible','off')
    set(handles.panel4,'visible','off')
    set(handles.panel5,'visible','off')
    set(handles.panel6,'visible','off')
    set(handles.panel7,'visible','off')
    set(handles.panel8,'visible','off')
    set(handles.panel9,'visible','off')
    set(handles.panel10,'visible','off')
    set(handles.panel11,'visible','off')
    set(handles.panel12,'visible','off')
    set(handles.panel13,'visible','on')
    set(handles.panel14,'visible','off')
    set(handles.splitMiddleLR,'visible','off')
    set(handles.splitMiddleUD,'visible','off')
    set(handles.splitRLMiddle,'visible','off')
    set(handles.splitUDMiddle,'visible','off')
    set(handles.transparent,'visible','off')
    set(handles.pushRight,'visible','off')
    set(handles.pushLeft,'visible','off')
    set(handles.pushUp,'visible','off')
    set(handles.pushDown,'visible','off')


% --------------------------------------------------------------------
function menuMorphological_Callback(hObject, eventdata, handles)
% hObject    handle to menuMorphological (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    set(handles.panel1,'visible','off')
    set(handles.panel2,'visible','off')
    set(handles.panel3,'visible','off')
    set(handles.panel4,'visible','off')
    set(handles.panel5,'visible','off')
    set(handles.panel6,'visible','off')
    set(handles.panel7,'visible','off')
    set(handles.panel8,'visible','off')
    set(handles.panel9,'visible','off')
    set(handles.panel10,'visible','off')
    set(handles.panel11,'visible','off')
    set(handles.panel12,'visible','off')
    set(handles.panel13,'visible','off')
    set(handles.panel14,'visible','on')
    set(handles.dilation,'visible','off')
    set(handles.erosion,'visible','off')
    set(handles.opening,'visible','off')
    set(handles.closing,'visible','off')


% --------------------------------------------------------------------
function Untitled_5_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menuPrint_Callback(hObject, eventdata, handles)
% hObject    handle to menuPrint (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

tests=figure;
copyobj(handles.panel1,tests);
printdlg(tests);
close(tests);

% --------------------------------------------------------------------
function menuAbout_Callback(hObject, eventdata, handles)
% hObject    handle to menuAbout (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
web about2.html

% --------------------------------------------------------------------
function menuExit_Callback(hObject, eventdata, handles)
% hObject    handle to menuExit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
choice = questdlg('Would you like to quit?','Exit','Yes', 'No', ' Yes ');
switch choice
    case 'Yes'
        close
    case 'No'
end
