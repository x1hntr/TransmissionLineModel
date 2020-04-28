function varargout = Doblestub(varargin)
% DOBLESTUB MATLAB code for Doblestub.fig
%      DOBLESTUB, by itself, creates a new DOBLESTUB or raises the existing
%      singleton*.
%
%      H = DOBLESTUB returns the handle to a new DOBLESTUB or the handle to
%      the existing singleton*.
%
%      DOBLESTUB('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DOBLESTUB.M with the given input arguments.
%
%      DOBLESTUB('Property','Value',...) creates a new DOBLESTUB or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Doblestub_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Doblestub_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Doblestub

% Last Modified by GUIDE v2.5 17-Feb-2017 08:12:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Doblestub_OpeningFcn, ...
                   'gui_OutputFcn',  @Doblestub_OutputFcn, ...
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


% --- Executes just before Doblestub is made visible.
function Doblestub_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Doblestub (see VARARGIN)

% Choose default command line output for Doblestub
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Doblestub wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Doblestub_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l11_Callback(hObject, eventdata, handles)
% hObject    handle to l11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l11 as text
%        str2double(get(hObject,'String')) returns contents of l11 as a double


% --- Executes during object creation, after setting all properties.
function l11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l21_Callback(hObject, eventdata, handles)
% hObject    handle to l21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l21 as text
%        str2double(get(hObject,'String')) returns contents of l21 as a double


% --- Executes during object creation, after setting all properties.
function l21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Adaptar.
function Adaptar_Callback(hObject, eventdata, handles)
% hObject    handle to Adaptar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Zo=str2double(get(handles.edit1,'string'));
Zl=str2double(get(handles.edit2,'string'));
fo=str2double(get(handles.edit3,'string'));
Yo=1/Zo;
Yl=1/Zl;
yl=Yl/Yo
Gl=real(Yl);
Bl=imag(Yl);
t=tan((pi/(4*fo))*fo); %para longitud d=lambda/8
if (0<=Gl) && (Gl<=(Yo*(1+(t^2))/(t^2))) %Condición para la que Gl sea real
B1=-Bl+(Yo+sqrt((1+(t^2))*Gl*Yo-(Gl^2)*(t^2)))/t;
B1p=-Bl+(Yo-sqrt((1+(t^2))*Gl*Yo-(Gl^2)*(t^2)))/t;
B2=((Yo*sqrt(Yo*Gl*(1+(t^2))-(Gl^2)*(t^2)))+(Gl*Yo))/(Gl*t);
B2p=(-(Yo*sqrt(Yo*Gl*(1+(t^2))-(Gl^2)*(t^2)))+(Gl*Yo))/(Gl*t);
ls1=-(atan(Yo/B1))/(2*pi);%longitud primer stub,cortocircuito, primera solución en términos de lambda
ls1p=-atan(Yo/B1p)/(2*pi);%longitud primer stub,cortocircuito, segunda solución en términos de lambda
ls2=-(atan(Yo/B2))/(2*pi);%longitud segundo stub,cortocircuito, primera solución en términos de lambda
ls2p=-atan(Yo/B2p)/(2*pi);%longitud segundo stub, cortocircuito, segunda solución en términos de lambda
if ls1<0
ls1=ls1+0.5;
end
if ls2<0
ls2=ls2+0.5;
end
if ls1p<0
ls1p=ls1p+0.5;
end
if ls2p<0
ls2p=ls2p+0.5;
end
B=1;
Ls1=(ls1*2*pi/B); %longitud en términos en um
Ls2=(ls2*2*pi/B);
Ls1a=(ls1p*2*pi/B);
Ls2b=(ls2p*2*pi/B);
 B1s=num2str(B1);
 set(handles.edit4,'string',B1s);
 Ls1=num2str(Ls1);
 set(handles.l11,'string',Ls1);
Ls2=num2str(Ls2);
 set(handles.l12,'string',Ls2);
Ls1a=num2str(Ls1a);
 set(handles.l21,'string',Ls1a);
Ls2b=num2str(Ls2b);
 set(handles.l22,'string',Ls2b);
else
errordlg('La impedancia no se puede acoplar','Mensaje')
end


function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l12_Callback(hObject, eventdata, handles)
% hObject    handle to l12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l12 as text
%        str2double(get(hObject,'String')) returns contents of l12 as a double


% --- Executes during object creation, after setting all properties.
function l12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l22_Callback(hObject, eventdata, handles)
% hObject    handle to l22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l22 as text
%        str2double(get(hObject,'String')) returns contents of l22 as a double


% --- Executes during object creation, after setting all properties.
function l22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;
proyecto_final;

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;
