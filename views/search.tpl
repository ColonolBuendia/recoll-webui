%import re
<div id="fade"></div>
<div id="searchbox">
<form action="results" method="get">
<table id="form">
<tr>
        <b>Query</b>
        <input tabindex="0" type="search" name="query" value="{{query['query']}}" autocomplete="off" autofocus><br><br>
        <input type="submit" value="Search">&nbsp;
        <a href="./" tabindex="-1"><input type="button" value="Reset"></a>&nbsp;
        <a href="settings" tabindex="-1"><input type="button" value="Settings"></a>
    </td>
    <td>
        <select id="folders" name="dir">
        %for d in sorted(dirs, key=str.lower):
            %space = "&nbsp;" * (4 * d.count('/'))
            %if d in query['dir']:
            %selected = "selected"
            %else:
            %selected = ""
            %end
            <option {{selected}} value="{{d}}">{{!space}}{{re.sub('.+/','', d)}}</option>
        %end
        </select><br>
        <input name="after" value="{{query['after']}}" autocomplete="off"> &mdash; <input name="before" value="{{query['before']}}" autocomplete="off">
    </td>
    <!--
    <td>
        <b>Sort by</b>
        <select name="sort">
        %for s in sorts:
            %if query['sort'] == s[0]:
                <option selected value="{{s[0]}}">{{s[1]}}</option>
            %else:
                <option value="{{s[0]}}">{{s[1]}}</option>
            %end
        %end
        </select><br>
        <b>Order</b>
        <select name="ascending">
            %if int(query['ascending']) == 1:
                <option value="0">Descending</option>
                <option value="1" selected>Ascending</option>
            %else:
                <option value="0" selected>Descending</option>
                <option value="1">Ascending</option>
            %end
        </select>
    </td>
-->
</tr>
</table>
<input type="hidden" name="page" value="1" />
</form>
</div>
<!-- vim: fdm=marker:tw=80:ts=4:sw=4:sts=4:et:ai
-->
