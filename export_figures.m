% Runs each plotting script and saves its figure into the images folder.
% Run this once from the repository folder in MATLAB.
scripts = {'Vector_field_plot', 'Curl_plot', 'Divergence_find_and_plot', ...
           'Scalar_field_contour', 'Electric_field_shells'};
if ~exist('images', 'dir'), mkdir('images'); end
for k = 1:numel(scripts)
    close all;
    run(scripts{k});
    saveas(gcf, fullfile('images', [scripts{k} '.png']));
end
close all;
disp('Figures saved in the images folder.');
