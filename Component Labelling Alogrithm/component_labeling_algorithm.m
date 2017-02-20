a = [1,0,0,1;1,0,1,1;1,0,0,0;0,1,0,0;1,0,1,0;1,1,0,0];
m = size(a,1);
n = size(a,2);
c = zeros ( m, n );
  component_num = 0;
  p = 1 : m * n;
  for i = 1 : m
    for j = 1 : n
      
      if ( i == 1 )
        up = 0;
      else
        up = c(i-1,j);
      end

      if ( j == 1 )
        left = 0;
      else
        left = c(i,j-1);
      end

      if ( a(i,j) == 1 )

        if ( up == 0 )

          if ( left == 0 )
            component_num = component_num + 1;
            c(i,j) = component_num;
          else
            c(i,j) = left;
          end

        elseif ( up ~= 0 )

          if ( left == 0 || left == up )
            c(i,j) = up;
          else
            c(i,j) = min ( up, left );
            if ( up < left )
              p(left) = up;
            else
              p(up) = left;
            end
          end

        end

      end

    end

  end

  for component = component_num : -1 : 1
    b = component;
    while ( p(b) ~= b )
      b = p(b);
    end
    p(component) = b;
  end

  q = zeros ( 1, component_num );
  i = 0;
  for component = 1 : component_num
    if ( p(component) == component )
      i = i + 1;
      q(component) = i;
    end
  end

  component_num = i;

  i = find ( c ~= 0 );
  c(i) = q ( p ( c(i) ) );

disp(c);

