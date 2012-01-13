function s = horzcat(varargin)
% overloads [v1,v2,v3,...]

s = varargin{1};

v = cell(size(varargin));
for k=1:numel(varargin)
  v{k} = reshape(varargin{k}.vector3d,1,[]);
end

s.vector3d = horzcat(v{:});
s.res = min(cellfun(@(S2G) S2G.res,varargin));
s = delete_option(s,'indexed');
