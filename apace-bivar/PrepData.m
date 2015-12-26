function ACEfit_Par = PrepData(ACEfit_Par)
%
% Updata 'ACEfit_Par' with the input data information
%

% Start of "ACEfit" computations; shuffle subjects into expected order.
ACEfit_Par    = Reorder(ACEfit_Par);

% Check Data
Vs            = CheckData(ACEfit_Par);
ACEfit_Par.Vs = Vs;

% Load Data
% Return an nElm x nSubj data matrix, where nElm = prod(Vs.Dim).
[Y,YM]        = LoadData(Vs);

% Process Data
ACEfit_Par    = ProcData(ACEfit_Par,Y,YM);

return
