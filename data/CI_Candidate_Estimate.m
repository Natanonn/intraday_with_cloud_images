
%%
% image_directory = 'C:\Users\User\Desktop\y4s2\499\For Git';
plant = readtable('plant.csv');
image_location = 'example_pics';
simpath = 'extract_cmv_HS.slx';
saving_path = 'ci_estimate';

candidiate_estimate(plant,image_location,simpath,saving_path)
%%
function candidiate_estimate(plant,image_location,simpath,saving_path)
%     chdir(image_directory);
    epsilon = 0.5; R = 1
    ds = imageDatastore(image_location);
    counter = 0;
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

    while hasdata(ds)
        tic
        image = read(ds);
        image01 = image(row(01)-30:row(01)+30,column(01)-30:column(01)+30);
        image02 = image(row(02)-30:row(02)+30,column(02)-30:column(02)+30);
        image03 = image(row(03)-30:row(03)+30,column(03)-30:column(03)+30);
        image04 = image(row(04)-30:row(04)+30,column(04)-30:column(04)+30);
        image05 = image(row(05)-30:row(05)+30,column(05)-30:column(05)+30);
        image06 = image(row(06)-30:row(06)+30,column(06)-30:column(06)+30);
        image07 = image(row(07)-30:row(07)+30,column(07)-30:column(07)+30);
        image08 = image(row(08)-30:row(08)+30,column(08)-30:column(08)+30);
        image09 = image(row(09)-30:row(09)+30,column(09)-30:column(09)+30);
        image10 = image(row(10)-30:row(10)+30,column(10)-30:column(10)+30);
        image11 = image(row(11)-30:row(11)+30,column(11)-30:column(11)+30);
        image12 = image(row(12)-30:row(12)+30,column(12)-30:column(12)+30);
        image13 = image(row(13)-30:row(13)+30,column(13)-30:column(13)+30);
        image14 = image(row(14)-30:row(14)+30,column(14)-30:column(14)+30);
        image15 = image(row(15)-30:row(15)+30,column(15)-30:column(15)+30);
        image16 = image(row(16)-30:row(16)+30,column(16)-30:column(16)+30);
        image17 = image(row(17)-30:row(17)+30,column(17)-30:column(17)+30);
        image18 = image(row(18)-30:row(18)+30,column(18)-30:column(18)+30);
        image19 = image(row(19)-30:row(19)+30,column(19)-30:column(19)+30);
        image20 = image(row(20)-30:row(20)+30,column(20)-30:column(20)+30);
        image21 = image(row(21)-30:row(21)+30,column(21)-30:column(21)+30);
        image22 = image(row(22)-30:row(22)+30,column(22)-30:column(22)+30);
        image23 = image(row(23)-30:row(23)+30,column(23)-30:column(23)+30);
        image24 = image(row(24)-30:row(24)+30,column(24)-30:column(24)+30);
        image25 = image(row(25)-30:row(25)+30,column(25)-30:column(25)+30);
        image26 = image(row(26)-30:row(26)+30,column(26)-30:column(26)+30);
        image27 = image(row(27)-30:row(27)+30,column(27)-30:column(27)+30);
        image28 = image(row(28)-30:row(28)+30,column(28)-30:column(28)+30);
        image29 = image(row(29)-30:row(29)+30,column(29)-30:column(29)+30);
        image30 = image(row(30)-30:row(30)+30,column(30)-30:column(30)+30);
        image31 = image(row(31)-30:row(31)+30,column(31)-30:column(31)+30);
        image32 = image(row(32)-30:row(32)+30,column(32)-30:column(32)+30);
        image33 = image(row(33)-30:row(33)+30,column(33)-30:column(33)+30);
        image34 = image(row(34)-30:row(34)+30,column(34)-30:column(34)+30);
        image35 = image(row(35)-30:row(35)+30,column(35)-30:column(35)+30);
        image36 = image(row(36)-30:row(36)+30,column(36)-30:column(36)+30);
        image37 = image(row(37)-30:row(37)+30,column(37)-30:column(37)+30);
        image38 = image(row(38)-30:row(38)+30,column(38)-30:column(38)+30);
        image39 = image(row(39)-30:row(39)+30,column(39)-30:column(39)+30);
        image40 = image(row(40)-30:row(40)+30,column(40)-30:column(40)+30);
        image41 = image(row(41)-30:row(41)+30,column(41)-30:column(41)+30);
        image42 = image(row(42)-30:row(42)+30,column(42)-30:column(42)+30);
        image43 = image(row(43)-30:row(43)+30,column(43)-30:column(43)+30);
        image44 = image(row(44)-30:row(44)+30,column(44)-30:column(44)+30);
        image45 = image(row(45)-30:row(45)+30,column(45)-30:column(45)+30);
        image46 = image(row(46)-30:row(46)+30,column(46)-30:column(46)+30);
        image47 = image(row(47)-30:row(47)+30,column(47)-30:column(47)+30);
        image48 = image(row(48)-30:row(48)+30,column(48)-30:column(48)+30);
        image49 = image(row(49)-30:row(49)+30,column(49)-30:column(49)+30);
        image50 = image(row(50)-30:row(50)+30,column(50)-30:column(50)+30);
        image51 = image(row(51)-30:row(51)+30,column(51)-30:column(51)+30);
        image52 = image(row(52)-30:row(52)+30,column(52)-30:column(52)+30);
        image53 = image(row(53)-30:row(53)+30,column(53)-30:column(53)+30);
        image54 = image(row(54)-30:row(54)+30,column(54)-30:column(54)+30);
        image55 = image(row(55)-30:row(55)+30,column(55)-30:column(55)+30);
        image56 = image(row(56)-30:row(56)+30,column(56)-30:column(56)+30);
        
        curr_pic = double(image(:, :, 1));
        assignin('base', 'curr_pic', curr_pic);
        if ~(counter == 0)
            pre_CI_1_step = [];
            pre_CI_2_step = [];
            pre_CI_3_step = [];
            pre_CI_4_step = [];
            pre_CI_5_step = [];
            pre_CI_6_step = [];
            pre_CI_7_step = [];
            pre_CI_8_step = [];
            simout = sim(simpath);
            flow = simout.V;
            flow01 = flow(row(01)-30:row(01)+30, column(01)-30:column(01)+30);
            flow02 = flow(row(02)-30:row(02)+30, column(02)-30:column(02)+30);
            flow03 = flow(row(03)-30:row(03)+30, column(03)-30:column(03)+30);
            flow04 = flow(row(04)-30:row(04)+30, column(04)-30:column(04)+30);
            flow05 = flow(row(05)-30:row(05)+30, column(05)-30:column(05)+30);
            flow06 = flow(row(06)-30:row(06)+30, column(06)-30:column(06)+30);
            flow07 = flow(row(07)-30:row(07)+30, column(07)-30:column(07)+30);
            flow08 = flow(row(08)-30:row(08)+30, column(08)-30:column(08)+30);
            flow09 = flow(row(09)-30:row(09)+30, column(09)-30:column(09)+30);
            flow10 = flow(row(10)-30:row(10)+30, column(10)-30:column(10)+30);
            flow11 = flow(row(11)-30:row(11)+30, column(11)-30:column(11)+30);
            flow12 = flow(row(12)-30:row(12)+30, column(12)-30:column(12)+30);
            flow13 = flow(row(13)-30:row(13)+30, column(13)-30:column(13)+30);
            flow14 = flow(row(14)-30:row(14)+30, column(14)-30:column(14)+30);
            flow15 = flow(row(15)-30:row(15)+30, column(15)-30:column(15)+30);
            flow16 = flow(row(16)-30:row(16)+30, column(16)-30:column(16)+30);
            flow17 = flow(row(17)-30:row(17)+30, column(17)-30:column(17)+30);
            flow18 = flow(row(18)-30:row(18)+30, column(18)-30:column(18)+30);
            flow19 = flow(row(19)-30:row(19)+30, column(19)-30:column(19)+30);
            flow20 = flow(row(20)-30:row(20)+30, column(20)-30:column(20)+30);
            flow21 = flow(row(21)-30:row(21)+30, column(21)-30:column(21)+30);
            flow22 = flow(row(22)-30:row(22)+30, column(22)-30:column(22)+30);
            flow23 = flow(row(23)-30:row(23)+30, column(23)-30:column(23)+30);
            flow24 = flow(row(24)-30:row(24)+30, column(24)-30:column(24)+30);
            flow25 = flow(row(25)-30:row(25)+30, column(25)-30:column(25)+30);
            flow26 = flow(row(26)-30:row(26)+30, column(26)-30:column(26)+30);
            flow27 = flow(row(27)-30:row(27)+30, column(27)-30:column(27)+30);
            flow28 = flow(row(28)-30:row(28)+30, column(28)-30:column(28)+30);
            flow29 = flow(row(29)-30:row(29)+30, column(29)-30:column(29)+30);
            flow30 = flow(row(30)-30:row(30)+30, column(30)-30:column(30)+30);
            flow31 = flow(row(31)-30:row(31)+30, column(31)-30:column(31)+30);
            flow32 = flow(row(32)-30:row(32)+30, column(32)-30:column(32)+30);
            flow33 = flow(row(33)-30:row(33)+30, column(33)-30:column(33)+30);
            flow34 = flow(row(34)-30:row(34)+30, column(34)-30:column(34)+30);
            flow35 = flow(row(35)-30:row(35)+30, column(35)-30:column(35)+30);
            flow36 = flow(row(36)-30:row(36)+30, column(36)-30:column(36)+30);
            flow37 = flow(row(37)-30:row(37)+30, column(37)-30:column(37)+30);
            flow38 = flow(row(38)-30:row(38)+30, column(38)-30:column(38)+30);
            flow39 = flow(row(39)-30:row(39)+30, column(39)-30:column(39)+30);
            flow40 = flow(row(40)-30:row(40)+30, column(40)-30:column(40)+30);
            flow41 = flow(row(41)-30:row(41)+30, column(41)-30:column(41)+30);
            flow42 = flow(row(42)-30:row(42)+30, column(42)-30:column(42)+30);
            flow43 = flow(row(43)-30:row(43)+30, column(43)-30:column(43)+30);
            flow44 = flow(row(44)-30:row(44)+30, column(44)-30:column(44)+30);
            flow45 = flow(row(45)-30:row(45)+30, column(45)-30:column(45)+30);
            flow46 = flow(row(46)-30:row(46)+30, column(46)-30:column(46)+30);
            flow47 = flow(row(47)-30:row(47)+30, column(47)-30:column(47)+30);
            flow48 = flow(row(48)-30:row(48)+30, column(48)-30:column(48)+30);
            flow49 = flow(row(49)-30:row(49)+30, column(49)-30:column(49)+30);
            flow50 = flow(row(50)-30:row(50)+30, column(50)-30:column(50)+30);
            flow51 = flow(row(51)-30:row(51)+30, column(51)-30:column(51)+30);
            flow52 = flow(row(52)-30:row(52)+30, column(52)-30:column(52)+30);
            flow53 = flow(row(53)-30:row(53)+30, column(53)-30:column(53)+30);
            flow54 = flow(row(54)-30:row(54)+30, column(54)-30:column(54)+30);
            flow55 = flow(row(55)-30:row(55)+30, column(55)-30:column(55)+30);
            flow56 = flow(row(56)-30:row(56)+30, column(56)-30:column(56)+30);
    
            for site = 1:56
                flow_site = eval(strcat('flow',sprintf('%02d',site)));
                vx = real(flow_site); vy = imag(flow_site);
                image_site = eval(strcat('image',sprintf('%02d',site)));
                curr_image = double(image_site(:,:,1))/255;
                [t_closet,d_closet] = find_t_c(vx,vy,31,31);
                intensity01 = iden(t_closet,d_closet,curr_image,3,epsilon,R);
                intensity02 = iden(t_closet,d_closet,curr_image,6,epsilon,R);
                intensity03 = iden(t_closet,d_closet,curr_image,9,epsilon,R);
                intensity04 = iden(t_closet,d_closet,curr_image,12,epsilon,R);
                intensity05 = iden(t_closet,d_closet,curr_image,15,epsilon,R);
                intensity06 = iden(t_closet,d_closet,curr_image,18,epsilon,R);
                intensity07 = iden(t_closet,d_closet,curr_image,21,epsilon,R);
                intensity08 = iden(t_closet,d_closet,curr_image,24,epsilon,R);
                if isnan(intensity01)
                    intensity01 = 0; % curr_image(31,31)/255
                end
                if isnan(intensity02)
                    intensity02 = 0;
                end
                if isnan(intensity03)
                    intensity03 = 0;
                end
                if isnan(intensity04)
                    intensity04 = 0;
                end
                if isnan(intensity05)
                    intensity05 = 0;
                end
                if isnan(intensity06)
                    intensity06 = 0;
                end
                if isnan(intensity07)
                    intensity07 = 0;
                end
                if isnan(intensity08)
                    intensity08 = 0;
                end

                pre_CI_1_step = [pre_CI_1_step intensity01];
                pre_CI_2_step = [pre_CI_2_step intensity02];
                pre_CI_3_step = [pre_CI_3_step intensity03];
                pre_CI_4_step = [pre_CI_4_step intensity04];
                pre_CI_5_step = [pre_CI_5_step intensity05];
                pre_CI_6_step = [pre_CI_6_step intensity06];
                pre_CI_7_step = [pre_CI_7_step intensity07];
                pre_CI_8_step = [pre_CI_8_step intensity08];
            end

            CI_1_step = [CI_1_step; pre_CI_1_step];
            CI_2_step = [CI_2_step; pre_CI_2_step];
            CI_3_step = [CI_3_step; pre_CI_3_step];
            CI_4_step = [CI_4_step; pre_CI_4_step];
            CI_5_step = [CI_5_step; pre_CI_5_step];
            CI_6_step = [CI_6_step; pre_CI_6_step];
            CI_7_step = [CI_7_step; pre_CI_7_step];
            CI_8_step = [CI_8_step; pre_CI_8_step];
        end
    
        Simulink.sdi.clear
        timeElapsed1 = toc
        counter = counter + 1
        prev_pic = curr_pic;
        assignin('base', 'prev_pic', prev_pic);
    end

    chdir(saving_path)
    writematrix(CI_1_step,'CI_1_step.csv')
    writematrix(CI_2_step,'CI_2_step.csv')
    writematrix(CI_3_step,'CI_3_step.csv')
    writematrix(CI_4_step,'CI_4_step.csv')
    writematrix(CI_5_step,'CI_5_step.csv')
    writematrix(CI_6_step,'CI_6_step.csv')
    writematrix(CI_7_step,'CI_7_step.csv')
    writematrix(CI_8_step,'CI_8_step.csv')
end


function [t_closet,d_closet] = find_t_c(vx,vy,x_site,y_site)
    x = repmat([1:61],61,1); x = x - x_site;
    y = repmat([1:61]',1,61); y = y - y_site;
    t_closet = -(x.*vx+y.*vy)./(vx.^2+vy.^2);
    d_closet = sqrt((x+t_closet.*vx).^2+(y+t_closet.*vy).^2);
end

function [intensity] = iden(t_closet,d_closet,curr_pic,fh,epsilon,R)
    t1 = fh - epsilon; t2 = fh + epsilon;
    curr_pic = curr_pic(d_closet<R & t_closet>t1 & t_closet<t2);
    d = d_closet(d_closet<R & t_closet>t1 & t_closet<t2);
    weighted = d/sum(d);
    intensity = weighted'*curr_pic;
end