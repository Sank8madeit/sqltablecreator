---------------------------------------------------------A BEGINNER LEVEL----------------------------------------------------------

-------------------------------------SOME STUFF YOU SHOULD KNOW BEFORE USING THIS PROCEDURE------------------------------------------------------------

THIS PROCEDURE HAS 7 ARGUMENTS 

Exec Sankai_create('Emp',6,'v',null,null,null,null);
THIS WILL MAKE YOU A TABLE EMP OF 6 VARCHAR COLUMNS

Exec Sankai_create('Emp',1,'v',1,'n',null,null);
THIS WILL MAKE YOU A TABLE EMP OF 1 VARCHAR AND 1 NUMBER COLUMN


Exec Sankai_create('Emp',1,'d',2,'n',2,'v');
THIS WILL MAKE YOU A TABLE EMP OF 1 DATE AND 2 NUMBER COLUMN AND 2 VARCHAR COLUMNS



-------------------------------------------------------------------------------------------------------------------------------------------------------
Create or replace procedure sankai_create
(a in varchar2,
B in number,
C in varchar2,
D in number,
E in varchar2,
F in number,
G in varchar2)
As

N varchar2 (100):='Number';
V varchar2 (100):='Varchar2(100)';
Dt varchar2 (100):='date';
Cat varchar2 (1000) ;
v_count number;
v_total number := b+d+f;
final_dcl nvarchar2(4000);
v_user nvarchar2(1000);


Begin

select user into v_user from dual;
/*

For pattern 1 n, 1 v 1 d
    
*/

If d is null and e is null and f is null and g is null then
for v_i in 1..b
    loop
    if lower(c)='n' then 
    cat:=cat||'Col'||v_i||' '||n||',';
    elsif
    lower(c)='v' then 
    cat:=cat||'Col'||v_i||' '||v||',';
    elsif
     lower(c)='d' then 
    cat:=cat||'Col'||v_i||' '||dt||',';
    end if;
    end loop;

--- for second condition
----------------- for 1n 1v 1 d the scooby dooby doo loop
ElsIf a is not null and b is not null and C is not null and d is not null and e is not null and f is not null and g is not null then

        if lower(c)='n' and lower(e)='v' and lower(g)='d'  then

                For scooby in 1..b loop
                Cat:=Cat||'Col'||scooby||' '||n||',';
                v_count:=scooby;
                End loop;
                
                
                For dooby in v_count+1..(v_total-f) loop
                Cat:=Cat||'Col'||dooby||' '||v||',';
                v_count:=dooby;
                End loop;
                
                
                For doo in v_count+1..v_total loop
                Cat:=Cat||'Col'||doo||' '||dt||',';
                End loop;
                
                
                
                
         elsif lower(c)='n' and lower(e)='d' and lower(g)='v'  then

                For scooby in 1..b loop
                Cat:=Cat||'Col'||scooby||' '||n||',';
                v_count:=scooby;
                End loop;
                
                
                For dooby in v_count+1..(v_total-f) loop
                Cat:=Cat||'Col'||dooby||' '||dt||',';
                v_count:=dooby;
                End loop;
                
                
                For doo in v_count+1..v_total loop
                Cat:=Cat||'Col'||doo||' '||v||',';
                End loop;
                
                
                elsif lower(c)='v' and lower(e)='d' and lower(g)='n'  then  ----vdn and vnd

                For scooby in 1..b loop
                Cat:=Cat||'Col'||scooby||' '||v||',';
                v_count:=scooby;
                End loop;
                
                
                For dooby in v_count+1..(v_total-f) loop
                Cat:=Cat||'Col'||dooby||' '||dt||',';
                v_count:=dooby;
                End loop;
                
                
                For doo in v_count+1..v_total loop
                Cat:=Cat||'Col'||doo||' '||n||',';
                End loop;
                
                
                elsif lower(c)='v' and lower(e)='n' and lower(g)='d'  then  ----vdn and vnd

                For scooby in 1..b loop
                Cat:=Cat||'Col'||scooby||' '||v||',';
                v_count:=scooby;
                End loop;
                
                
                For dooby in v_count+1..(v_total-f) loop
                Cat:=Cat||'Col'||dooby||' '||n||',';
                v_count:=dooby;
                End loop;
                
                
                For doo in v_count+1..v_total loop
                Cat:=Cat||'Col'||doo||' '||dt||',';
                End loop;
                
                elsif lower(c)='d' and lower(e)='n' and lower(g)='v'  then  ----dnv and dvn

                For scooby in 1..b loop
                Cat:=Cat||'Col'||scooby||' '||dt||',';
                v_count:=scooby;
                End loop;
                
                
                For dooby in v_count+1..(v_total-f) loop
                Cat:=Cat||'Col'||dooby||' '||n||',';
                v_count:=dooby;
                End loop;
                
                
                For doo in v_count+1..v_total loop
                Cat:=Cat||'Col'||doo||' '||v||',';
                End loop;
                
                
                
                elsif lower(c)='d' and lower(e)='v' and lower(g)='n'  then  -------dnv and dvn

                For scooby in 1..b loop
                Cat:=Cat||'Col'||scooby||' '||dt||',';
                v_count:=scooby;
                End loop;
                
                
                For dooby in v_count+1..(v_total-f) loop
                Cat:=Cat||'Col'||dooby||' '||v||',';
                v_count:=dooby;
                End loop;
                
                
                For doo in v_count+1..v_total loop
                Cat:=Cat||'Col'||doo||' '||n||',';
                End loop;

    end if    ;

-------------------------------------------------------------------------------------end scooby dooby loop

------------------------------------------------2 colums
----------------------WHEN BOTH ARGUMENTS ARE PASSED LIKE N AND V
elsif f is null and g is null then
    
    if lower(c)='n' and lower(e)='v' then                           -- FOR  1   N 1     V
        For x in 1..b loop
        Cat:=Cat||'Col'||x||' '||n||',';
        v_count:=x;
        End loop;
    
        for y in v_count+1..b+d loop
         Cat:=Cat||'Col'||y||' '||v||',';
        end loop;
        
    elsif lower(c)='n' and lower(e)='d' then                           -- FOR  1   N 1     d
        For x in 1..b loop
        Cat:=Cat||'Col'||x||' '||n||',';
        v_count:=x;
        End loop;
    
        for y in v_count+1..b+d loop
         Cat:=Cat||'Col'||y||' '||dt||',';
        end loop;
        
        --------------------for V N AND V D
    ELSif lower(c)='v' and lower(e)='n' then                           -- FOR  1   v 1     n
        For x in 1..b loop
        Cat:=Cat||'Col'||x||' '||v||',';
        v_count:=x;
        End loop;
    
        for y in v_count+1..b+d loop
         Cat:=Cat||'Col'||y||' '||n||',';
        end loop;
        
    ELSif lower(c)='v' and lower(e)='d' then                           -- FOR  1   v 1     n
        For x in 1..b loop
        Cat:=Cat||'Col'||x||' '||v||',';
        v_count:=x;
        End loop;
    
        for y in v_count+1..b+d loop
         Cat:=Cat||'Col'||y||' '||dt||',';
        end loop;
        
        
             --------------------for d n AND d v
    ELSif lower(c)='d' and lower(e)='n' then                           -- FOR  1 D 1 N
        For x in 1..b loop
        Cat:=Cat||'Col'||x||' '||dt||',';
        v_count:=x;
        End loop;
    
        for y in v_count+1..b+d loop
         Cat:=Cat||'Col'||y||' '||n||',';
        end loop;
        
    ELSif lower(c)='d' and lower(e)='v' then                           -- FOR  1 D 1 V
        For x in 1..b loop
        Cat:=Cat||'Col'||x||' '||dt||',';
        v_count:=x;
        End loop;
    
        for y in v_count+1..b+d loop
         Cat:=Cat||'Col'||y||' '||v||',';
        end loop;
        
    end if;    
End if;         --main end if

final_dcl:='Create table '||a||' ('||rtrim(cat,',')||')';
execute immediate final_dcl;
dbms_output.put_line('Thank you Dear.'||initcap(v_user)||' hope you enjoyed creating tables .Have a good day');
dbms_output.put_line(final_dcl);
end;
/

