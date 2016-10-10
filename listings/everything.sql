# A bug is a pair (DUA,ATP), where DUA stands for Dead Uncomplicated and
# Available data, and ATP for ATtack Point.
# This SQL request retrieves for each bug the location in the source code
# of its DUA, and ATP.

select  bug.bug_id as "Bug ID",
        bug.dua_id as "DUA ID",
        duasrc.sourcefile_nm as "DUA Source File",
        dua.line as "DUA Line Number",
        bug.atp_id as "ATP ID",
        atpsrc.sourcefile_nm as "ATP Source File",
        atp.line as "ATP Line Number"
from bug
inner join dua
  on dua.dua_id=bug.dua_id
inner join atp
  on atp.atp_id=bug.atp_id
inner join sourcefile as duasrc
  on dua.filename_id=duasrc.sourcefile_id
inner join sourcefile as atpsrc
  on atp.filename_id=atpsrc.sourcefile_id
where bug.inj='t'
order by
  bug.dua_id,
  bug.atp_id,
  dua.filename_id,
  atp.filename_id,
  dua.line,
  atp.line
asc;
