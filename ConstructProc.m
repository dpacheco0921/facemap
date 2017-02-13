% fill up proc structure with appropriate ROI information
function proc = ConstructProc(data, handles, isproc)

rX = handles.rX;
rY = handles.rY;
rXc = handles.rXc;
rYc = handles.rYc;
for jf = 1:length(handles.files)
    for j = isproc
        switch j
            case 1
                proc(jf).pupil.ROI = handles.ROI{j};
                proc(jf).pupil.saturation = handles.saturation(j);
                proc(jf).pupil.ROIX = rX{j};
                proc(jf).pupil.ROIY = rY{j};
                proc(jf).pupil.nX   = length(rXc{j});
                proc(jf).pupil.nY   = length(rYc{j});
                proc(jf).pupil.area = data(jf).pupil.area;
                proc(jf).pupil.com = data(jf).pupil.com;
                proc(jf).pupil.center = data(jf).pupil.center;
            case 2
                proc(jf).blink.ROI = handles.ROI{j};
                proc(jf).blink.saturation = handles.saturation(j);
                proc(jf).blink.ROIX = rX{j};
                proc(jf).blink.ROIY = rY{j};
                proc(jf).blink.nX   = length(rXc{j});
                proc(jf).blink.nY   = length(rYc{j});
                proc(jf).blink.area = data(jf).blink.area;
            case 3
                proc(jf).whisker.ROI = handles.ROI{j};
                proc(jf).whisker.saturation = handles.saturation(j);
                proc(jf).whisker.ROIX = rX{j};
                proc(jf).whisker.ROIY = rY{j};
                proc(jf).whisker.nX   = length(rXc{j});
                proc(jf).whisker.nY   = length(rYc{j});
                proc(jf).whisker.motion    = data(jf).mroi(j-2).motion;
                proc(jf).whisker.motionSVD = data(jf).mroi(j-2).motionSVD;
                proc(jf).whisker.movieSVD  = data(jf).mroi(j-2).movieSVD;
                proc(jf).whisker.motionMask = handles.motionMask{j-2};
                proc(jf).whisker.movieMask  = handles.movieMask{j-2};
            case 4
                proc(jf).groom.ROI = handles.ROI{j};
                proc(jf).groom.saturation = handles.saturation(j);
                proc(jf).groom.ROIX = rX{j};
                proc(jf).groom.ROIY = rY{j};
                proc(jf).groom.nX   = length(rXc{j});
                proc(jf).groom.nY   = length(rYc{j});
                proc(jf).groom.motion     = data(jf).mroi(j-2).motion;
                proc(jf).groom.motionSVD  = data(jf).mroi(j-2).motionSVD;
                proc(jf).groom.movieSVD   = data(jf).mroi(j-2).movieSVD;
                proc(jf).groom.motionMask = handles.motionMask{j-2};
                proc(jf).groom.movieMask  = handles.movieMask{j-2};
            case 5
                proc(jf).snout.ROI = handles.ROI{j};
                proc(jf).snout.saturation = handles.saturation(j);
                proc(jf).snout.ROIX = rX{j};
                proc(jf).snout.ROIY = rY{j};
                proc(jf).snout.nX   = length(rXc{j});
                proc(jf).snout.nY   = length(rYc{j});
                proc(jf).snout.motion    = data(jf).mroi(j-2).motion;
                proc(jf).snout.motionSVD = data(jf).mroi(j-2).motionSVD;
                proc(jf).snout.movieSVD  = data(jf).mroi(j-2).movieSVD;
                proc(jf).snout.motionMask = handles.motionMask{j-2};
                proc(jf).snout.movieMask  = handles.movieMask{j-2};
            case 6
                proc(jf).face.ROI = handles.ROI{j};
                proc(jf).face.saturation = handles.saturation(j);
                proc(jf).face.ROIX = rX{j};
                proc(jf).face.ROIY = rY{j};
                proc(jf).face.nX   = length(rXc{j});
                proc(jf).face.nY   = length(rYc{j});
                proc(jf).face.motion    = data(jf).mroi(j-2).motion;
                proc(jf).face.motionSVD = data(jf).mroi(j-2).motionSVD;
                proc(jf).face.movieSVD  = data(jf).mroi(j-2).movieSVD;
                proc(jf).face.motionMask = handles.motionMask{j-2};
                proc(jf).face.movieMask  = handles.movieMask{j-2};
        end
    end
end