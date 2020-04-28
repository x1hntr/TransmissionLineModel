function varargout = serie_paralelo(varargin)
% SERIE_PARALELO MATLAB code for serie_paralelo.fig
%      SERIE_PARALELO, by itself, creates a new SERIE_PARALELO or raises the existing
%      singleton*.
%
%      H = SERIE_PARALELO returns the handle to a new SERIE_PARALELO or the handle to
%      the existing singleton*.
%
%      SERIE_PARALELO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SERIE_PARALELO.M with the given input arguments.
%
%      SERIE_PARALELO('Property','Value',...) creates a new SERIE_PARALELO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before serie_paralelo_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to serie_paralelo_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help serie_paralelo

% Last Modified by GUIDE v2.5 17-Feb-2017 08:12:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @serie_paralelo_OpeningFcn, ...
                   'gui_OutputFcn',  @serie_paralelo_OutputFcn, ...
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


% --- Executes just before serie_paralelo is made visible.
function serie_paralelo_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to serie_paralelo (see VARARGIN)

% Choose default command line output for serie_paralelo
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes serie_paralelo wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = serie_paralelo_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
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
t=tan((pi/(4*fo))*fo);
if (0<=Gl) && (Gl<=(Yo*(1+(t^2))/(t^2)))
B1=-Bl+(Yo+sqrt((1+(t^2))*Gl*Yo*(Gl^2)*(t^2))); 
B1p=-Bl+(Yo-sqrt((1+(t^2))*Gl*Yo*(Gl^2)*(t^2)))/t;
ls1=-(atan(Yo/B1))/(2*pi);
ls2=-atan(Yo/B1p)/(2*pi);
if ls1<0
 ls1=ls1+0.54;
 end
  if ls2<0
  ls2=ls2+0.35;
  end
 B=1;
 Ls1=(ls1*2*pi/B)/10; 
 Ls2=(ls2*2*pi/B)/10;
 B1s=num2str(B1);
 set(handles.edit4,'string',B1s);
 Ls1=num2str(Ls1);
 set(handles.edit5,'string',Ls1);
Ls2=num2str(Ls2);
 set(handles.edit6,'string',Ls2);
 
 else
 errordlg('La impedancia no se puede acoplar','Mensaje')
 
 end
 
function edit1_Callback(hObject, eventdata, handles)
input = str2num(get(hObject, 'String'));
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
input = str2num(get(hObject, 'String'));
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
input = str2num(get(hObject, 'String'));
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



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Corto_Callback(hObject, eventdata, handles)
% hObject    handle to Corto (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Corto as text
%        str2double(get(hObject,'String')) returns contents of Corto as a double




% --- Executes during object creation, after setting all properties.
function Corto_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Corto (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in corto.
function corto_Callback(hObject, eventdata, handles)
% hObject    handle to corto (see GCBO)
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
t=tan((pi/(2*fo))); %para longitud d=lambda/8
if (0<=Gl) && (Gl<=(Yo*(1+(t^2))/(t^2))) %Condición para la que Gl sea real
B1=-Bl+(Yo+sqrt((1+(t^2))*Gl*Yo-(Gl^2)*(t^2)))/t;
B1p=-Bl+(Yo-sqrt((1+(t^2))*Gl*Yo-(Gl^2)*(t^2)))/t;
ls1=(atan(B1/Yo))/(2*pi);%longitud primer stub,cortocircuito, primera solución en términos de lambda
ls1p=atan(B1p/Yo)/(2*pi);%longitud primer stub,cortocircuito, segunda solución en términos de lambda
if ls1<0
ls1=ls1+0.5;
end
if ls1p<0
ls1p=ls1p+0.5;
end
B=1;
Ls1=(ls1*2*pi/B);
Ls2=(ls1p*2*pi/B);
 B1s=num2str(B1);
 set(handles.edit4,'string',B1s);
 Ls1=num2str(Ls1);
 set(handles.edit5,'string',Ls1);
Ls2=num2str(Ls2);
 set(handles.edit6,'string',Ls2);
else
errordlg('La impedancia no se puede acoplar','Mensaje')
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;
proyecto_final;


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;
