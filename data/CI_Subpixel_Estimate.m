clear
plant = readtable('plant.csv');
image_location = 'example_pics';
simpath = 'extract_cmv_HS.slx';
saving_path = 'ci_estimate';
subpiexl_estimate(plant,image_location,simpath,saving_path)


%%
function subpiexl_estimate(plant,image_location,simpath,saving_path)
%     chdir(image_directory);
    ds = imageDatastore(image_location);
    fds = fileDatastore(image_location, 'ReadFcn', @importdata);
    row = plant.row'; column = plant.col';
    m = 1725; n = 1670;
    x_grid = repmat([1:n],m,1); y_grid = repmat([1:m]',1,n);
    
    CI_1_step = [];
    CI_2_step = [];
    CI_3_step = [];
    CI_4_step = [];
    CI_5_step = [];
    CI_6_step = [];
    CI_7_step = [];
    CI_8_step = [];
    
    counter = 0;

    while hasdata(ds)
        tic
        image = read(ds);
        curr_pic = double(image(:, :, 1))/255;
        assignin('base', 'curr_pic', curr_pic);
        if ~(counter == 0)
            simout = sim(simpath);
            flow = simout.V;
            vx = real(flow); vy = imag(flow);
            x_new = x_grid-vx; y_new = y_grid-vy;
            next_pic = interp2(x_grid,y_grid,curr_pic,x_new,y_new);
            next_pic = interp2(x_grid,y_grid,next_pic,x_new,y_new);
            next_pic = interp2(x_grid,y_grid,next_pic,x_new,y_new);
            CI_1_step = [CI_1_step;storing(next_pic,row,column)];
    
            next_pic = interp2(x_grid,y_grid,next_pic,x_new,y_new);
            next_pic = interp2(x_grid,y_grid,next_pic,x_new,y_new);
            next_pic = interp2(x_grid,y_grid,next_pic,x_new,y_new);
            CI_2_step = [CI_2_step;storing(next_pic,row,column)];
    
            next_pic = interp2(x_grid,y_grid,next_pic,x_new,y_new);
            next_pic = interp2(x_grid,y_grid,next_pic,x_new,y_new);
            next_pic = interp2(x_grid,y_grid,next_pic,x_new,y_new);
            CI_3_step = [CI_3_step;storing(next_pic,row,column)];
    
            next_pic = interp2(x_grid,y_grid,next_pic,x_new,y_new);
            next_pic = interp2(x_grid,y_grid,next_pic,x_new,y_new);
            next_pic = interp2(x_grid,y_grid,next_pic,x_new,y_new);
            CI_4_step = [CI_4_step;storing(next_pic,row,column)];
    
            next_pic = interp2(x_grid,y_grid,next_pic,x_new,y_new);
            next_pic = interp2(x_grid,y_grid,next_pic,x_new,y_new);
            next_pic = interp2(x_grid,y_grid,next_pic,x_new,y_new);
            CI_5_step = [CI_5_step;storing(next_pic,row,column)];
    
            next_pic = interp2(x_grid,y_grid,next_pic,x_new,y_new);
            next_pic = interp2(x_grid,y_grid,next_pic,x_new,y_new);
            next_pic = interp2(x_grid,y_grid,next_pic,x_new,y_new);
            CI_6_step = [CI_6_step;storing(next_pic,row,column)];
    
            next_pic = interp2(x_grid,y_grid,next_pic,x_new,y_new);
            next_pic = interp2(x_grid,y_grid,next_pic,x_new,y_new);
            next_pic = interp2(x_grid,y_grid,next_pic,x_new,y_new);
            CI_7_step = [CI_7_step;storing(next_pic,row,column)];
    
            next_pic = interp2(x_grid,y_grid,next_pic,x_new,y_new);
            next_pic = interp2(x_grid,y_grid,next_pic,x_new,y_new);
            next_pic = interp2(x_grid,y_grid,next_pic,x_new,y_new);
            CI_8_step = [CI_8_step;storing(next_pic,row,column)];
    
        end
        Simulink.sdi.clear
        timeElapsed1 = toc
        counter = counter + 1
        prev_pic = curr_pic;
        assignin('base', 'prev_pic', prev_pic);
    
    end
    
    chdir(saving_path);
    
    writematrix(CI_1_step,'CI_1_step_p3.csv')
    writematrix(CI_2_step,'CI_2_step_p3.csv')
    writematrix(CI_3_step,'CI_3_step_p3.csv')
    writematrix(CI_4_step,'CI_4_step_p3.csv')
    writematrix(CI_5_step,'CI_5_step_p3.csv')
    writematrix(CI_6_step,'CI_6_step_p3.csv')
    writematrix(CI_7_step,'CI_7_step_p3.csv')
    writematrix(CI_8_step,'CI_8_step_p3.csv')

end

function CI_56sites = storing(pic,row,column)
    CI_56sites = [];
    CI_56sites = [CI_56sites pic(row(1),column(1))];
    CI_56sites = [CI_56sites pic(row(2),column(2))];
    CI_56sites = [CI_56sites pic(row(3),column(3))];
    CI_56sites = [CI_56sites pic(row(4),column(4))];
    CI_56sites = [CI_56sites pic(row(5),column(5))];
    CI_56sites = [CI_56sites pic(row(6),column(6))];
    CI_56sites = [CI_56sites pic(row(7),column(7))];
    CI_56sites = [CI_56sites pic(row(8),column(8))];
    CI_56sites = [CI_56sites pic(row(9),column(9))];
    CI_56sites = [CI_56sites pic(row(10),column(10))];

    CI_56sites = [CI_56sites pic(row(11),column(11))];
    CI_56sites = [CI_56sites pic(row(12),column(12))];
    CI_56sites = [CI_56sites pic(row(13),column(13))];
    CI_56sites = [CI_56sites pic(row(14),column(14))];
    CI_56sites = [CI_56sites pic(row(15),column(15))];
    CI_56sites = [CI_56sites pic(row(16),column(16))];
    CI_56sites = [CI_56sites pic(row(17),column(17))];
    CI_56sites = [CI_56sites pic(row(18),column(18))];
    CI_56sites = [CI_56sites pic(row(19),column(19))];
    CI_56sites = [CI_56sites pic(row(20),column(20))];

    CI_56sites = [CI_56sites pic(row(21),column(21))];
    CI_56sites = [CI_56sites pic(row(22),column(22))];
    CI_56sites = [CI_56sites pic(row(23),column(23))];
    CI_56sites = [CI_56sites pic(row(24),column(24))];
    CI_56sites = [CI_56sites pic(row(25),column(25))];
    CI_56sites = [CI_56sites pic(row(26),column(26))];
    CI_56sites = [CI_56sites pic(row(27),column(27))];
    CI_56sites = [CI_56sites pic(row(28),column(28))];
    CI_56sites = [CI_56sites pic(row(29),column(29))];
    CI_56sites = [CI_56sites pic(row(30),column(30))];

    CI_56sites = [CI_56sites pic(row(31),column(31))];
    CI_56sites = [CI_56sites pic(row(32),column(32))];
    CI_56sites = [CI_56sites pic(row(33),column(33))];
    CI_56sites = [CI_56sites pic(row(34),column(34))];
    CI_56sites = [CI_56sites pic(row(35),column(35))];
    CI_56sites = [CI_56sites pic(row(36),column(36))];
    CI_56sites = [CI_56sites pic(row(37),column(37))];
    CI_56sites = [CI_56sites pic(row(38),column(38))];
    CI_56sites = [CI_56sites pic(row(39),column(39))];
    CI_56sites = [CI_56sites pic(row(40),column(40))];

    CI_56sites = [CI_56sites pic(row(41),column(41))];
    CI_56sites = [CI_56sites pic(row(42),column(42))];
    CI_56sites = [CI_56sites pic(row(43),column(43))];
    CI_56sites = [CI_56sites pic(row(44),column(44))];
    CI_56sites = [CI_56sites pic(row(45),column(45))];
    CI_56sites = [CI_56sites pic(row(46),column(46))];
    CI_56sites = [CI_56sites pic(row(47),column(47))];
    CI_56sites = [CI_56sites pic(row(48),column(48))];
    CI_56sites = [CI_56sites pic(row(49),column(49))];
    CI_56sites = [CI_56sites pic(row(50),column(50))];

    CI_56sites = [CI_56sites pic(row(51),column(51))];
    CI_56sites = [CI_56sites pic(row(52),column(52))];
    CI_56sites = [CI_56sites pic(row(53),column(53))];
    CI_56sites = [CI_56sites pic(row(54),column(54))];
    CI_56sites = [CI_56sites pic(row(55),column(55))];
    CI_56sites = [CI_56sites pic(row(56),column(56))];
end