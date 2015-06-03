function [inner, circle] = Petals(center, sections, noOfPoints, radius, color)
    sectionArea = 2*pi/sections;
    circleStep = sectionArea/(noOfPoints-1);

    inner = zeros(sections*noOfPoints,2);
    circle = zeros(sections*noOfPoints,2);

    hold on

    startX = center(1);
    startY = center(2);
    
    for ii = 1 : sections
        for jj = 1 : noOfPoints
            position = (ii-1) * noOfPoints + jj;

            % tocke na kruznici
            circle(position, 1) = center(1) + radius*cos((ii-1)*sectionArea+(jj-1)*circleStep);
            circle(position, 2) = center(2) + radius*sin((ii-1)*sectionArea+(jj-1)*circleStep);

            % tocke na linijama
            if jj == 1
                stopX = center(1) + radius*cos((ii-1)*sectionArea);
                stepX = (stopX-startX)/(noOfPoints-1);
                posX = startX;

                if ii == 1
                    stepY = 0;
                else
                    stopY = center(2) + radius*sin((ii-1)*sectionArea);
                    stepY = (stopY-startY)/(noOfPoints-1);
                end
                posY = startY;
            end
            inner(position, 1) = posX;
            posX = posX + stepX;

            inner(position, 2) = posY;
            posY = posY + stepY;
        end
    end

    for ii = 1 : sections*noOfPoints
        pause(0.05);
        plot([inner(ii,1) circle(ii,1)], [inner(ii,2) circle(ii,2)], color);
        drawnow
    end
end