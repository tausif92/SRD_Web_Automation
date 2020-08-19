
<!-- Robot Framework Results -->
<%
import java.text.DateFormat
import java.text.SimpleDateFormat
%>
<STYLE>
BODY, TABLE, TD, TH, P {
  font-family:Verdana,Helvetica,sans serif;
  font-size:11px;
  color:black;
}
h1 { color:black; }
h2 { color:black; }
h3 { color:black; }
TD.bg1 { color:white; background-color:#0000C0; font-size:120% }
TD.bg2 { color:white; background-color:#4040FF; font-size:110% }
TD.bg3 { color:white; background-color:#8080FF; }
TD.test_passed { color:blue; }
TD.test_failed { color:red; }
TD.console { font-family:Courier New; }
</STYLE>
<BODY>
<TABLE>
  <TR>
        <TD><b style="text-align:center; color:black; background-color:#F5B041;font-size: 150%;"><%= build.result == hudson.model.Result.SUCCESS ? "ALL TESTS PASSED" : "SOME TESTS FAILED" %></b></TD></TR>
  <TR><TD>Build URL:</TD><TD>${rooturl}${build.url}</TD></TR>
  <TR><TD>Build Name:</TD><TD>${build.displayName}</TD></TR>
  <TR><TD>Date of job:</TD><TD>${it.timestampString}</TD></TR>
  <TR><TD>Job duration:</TD><TD>${build.durationString}</TD></TR>
 <TR><TD><b>Submitted by:</b></TD><TD><A href="mtbajaria257@gmail.com">Tausif Bajaria</A></TD></TR>
</TABLE>
<BR/>
</BODY>
</br>
<%
def robotResults = false
def actions = build.actions // List<hudson.model.Action>
actions.each() { action ->
    if( action.class.simpleName.equals("RobotBuildAction") ) { //

    hudson.plugins.robot.RobotBuildAction
    robotResults = true %>
    <table>
        <tr>
            <TD><u style="color:black; background-color:#F5B041;font-size: 150%;">Test Summary:</u></TD>
	    </tr>
    </table>
<br/>


    <table id="robot-summary-table" cellspacing="0" cellpadding="4" border="1" style="text-align:center;">
                                
								<tr bgcolor="#D7DBDD">
                                                <th><center><b>Type</center></th>
                                                <th><center><b>Total</center></th>
                                                <th><center><b>Failed</center></th>
                                                <th><center><b>Passed</center></th>
                                                <th><center><b>Pass %</center></th>
                                </tr>
                                
                                <tr style="font-weight:bold">
                                <th style="font-weight:normal">All tests</th>
                                                <td style="border-right:1px solid #000;">${action.result.overallTotal}</td>
                                                <td style="border-right:1px solid #000;color:red">${action.result.overallFailed}</td>
                                                <td style="border-right:1px solid #000;color:green">${action.result.overallPassed}</td>
                                                <td>${action.overallPassPercentage}</td>
                                </tr>
								
								<tr style="font-weight:bold">
                                                <th style="font-weight:normal">Duration</hd>
                                                <td colspan=4 align="right">${action.result.humanReadableDuration}</td>
                                </tr>
                                
                </table>
</br>
</br>

        <table>
        <tr>
            <TD><u style="color:black; background-color:#F5B041;font-size: 150%;">Test Execution Results:</u></TD>
			
        </tr>
    </table>
</br>
   

    <table cellspacing="0" cellpadding="4" border="1" align="left">
        <thead>
            <tr bgcolor="#D7DBDD">
                <td><center><b>Test Name</b></center></td>
                <td><center><b>Status</b></center></td>
				<td><center><b>Message</b></center></td>
                <td><center><b>Execution</b></center></td>
                <td><center><b>Duration</b></center></td>
            </tr>
        </thead>
        <tbody>
        <% def suites1 = action.result.allSuites
        suites1.each() { suite ->
        def currSuite = suite
        def suiteName = currSuite.displayName
        // ignore top 2 elements in the structure as they are placeholders
        while (currSuite.parent != null && currSuite.parent.parent != null) {
        currSuite = currSuite.parent
        suiteName = currSuite.displayName + "." + suiteName
        } %>
            <tr>
                <td colspan="4">
                    <b><%= suiteName %></b>
                </td>
                <td>${suite.humanReadableDuration}</td>
            </tr>
        <%  DateFormat format = new SimpleDateFormat("yyyyMMdd HH:mm:ss.SS")
        def execDateTcPairs = []
        suite.caseResults.each() { tc ->
        Date execDate = format.parse(tc.starttime)
        execDateTcPairs << [execDate, tc]
        }
        // primary sort execDate, secondary displayName
        execDateTcPairs = execDateTcPairs.sort{ a,b -> a[1].displayName <=> b[1].displayName }
        execDateTcPairs = execDateTcPairs.sort{ a,b -> a[0] <=> b[0] }
        def i = 1
        execDateTcPairs.each() {
        def execDate = it[0]
        def tc = it[1]  %>
            <tr>
                <td><%= tc.displayName %></td>
                <% i = i + 1 %>
                <td><center><b style="color: <%= tc.isPassed() ? "#66CC00" : "#FF3333" %>"><%= tc.isPassed() ? "PASS" : "FAIL" %></b></center></td>
                         <td><%      if ( tc.errorMsg == null ) {
                        tc.errorMsg=""
    } else {
         tc.errorMsg
}%>
<%= tc.errorMsg %>
</td>
                <td><%= execDate %></td>
                <td>${tc.humanReadableDuration}</td>
            </tr>
        <%  } // tests
        } // suites %>
        </tbody>
    </table>
    <%
    } // robot results
    }
if (!robotResults) { %>
    <p>No Robot Framework test results found.</p>
    <%
    }
    %>