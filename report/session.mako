<html>
<head>
    <style type="text/css">${css}</style>
</head>
<body>
    <h1>${_("Session Report")}</h1>
    % for session in objects:
        <h2>${ session.course.name } - ${ session.name }</h2>
        % if session.start_date:
            <p>${_("From")} ${ formatLang(session.start_date, date=True) } ${_("to")}
                ${ formatLang(session.end_date, date=True) }.</p>
        % endif
        <p>${_("Attendees")}:
            <ul>
                % for attendee in session.attendees:
                    <li>${ attendee.name }</li>
                % endfor
            </ul>
        </p>
    % endfor
</body>
</html>
