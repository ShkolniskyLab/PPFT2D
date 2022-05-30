% function y=cfft(x)
%
% Aliased FFT of the sequence x.
% The FFT is computed using O(nlogn) operations.
%
% x   The sequence whose FFT should be computed. 
%     Can be of odd or even length. Must be a 1-D vector.
%
% Returns the aliased FFT of the sequence x.
% 
% Yoel Shkolnisky 22/10/01

function y=cfft(x)
y = fftshift1d(fft(ifftshift1d(x)));

%Revision record
% 15/1/03	Yoel Shkolnisky		Use fftshift1d instead of fftshift