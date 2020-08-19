<!-- Robot Framework Results -->  
<%  
import java.text.DateFormat  
import java.text.SimpleDateFormat  

def robotResults = false  
def actions = build.actions // List<hudson.model.Action>  
actions.each() { action ->  
    if( action.class.simpleName.equals("RobotBuildAction") ) { // 

    hudson.plugins.robot.RobotBuildAction  
    robotResults = true %>  
    <table width="100%">
        <tr>
            <td style="color:white; background-color:#0000C0; font-size:120%;">
            <b>ROBOT FRAMEWORK RESULTS</b>
            </td>
        </tr>
    </table>
    <table id="robot-summary-table">
        <tr>
            <th></th>
            <th>Total</th>
            <th>Failed</th>
            <th>Passed</th>
            <th>Pass %</th>
        </tr>
        <tr>
            <th>Critical tests</th>
            <td align="right" style="border-left:0px;">${action.result.criticalTotal}</td>
            <td align="right" class="table-upper-row">${action.result.criticalFailed}</td>
            <td align="right" class="table-upper-row">${action.result.criticalPassed}</td>
            <td align="right" class="table-upper-row">${action.criticalPassPercentage}</td>
        </tr>
        <tr>
        <th>All tests</th>
            <td align="right" style="border-left:0px;">${action.result.overallTotal}</td>
            <td align="right" >${action.result.overallFailed}</td>
            <td align="right" >${action.result.overallPassed}</td>
            <td align="right" >${action.overallPassPercentage}</td>
        </tr>
        <tr><td colspan=5><a href="${rooturl}${build.url}robot">> Browse results</a></td></tr>
        <tr><td colspan=5><a href="${rooturl}${build.url}robot/report/report.html">> Open Report.html</a></td></tr>
        <tr><td colspan=5><a href="${rooturl}${build.url}robot/report/log.html">> Open Log.html</a></td></tr>
    </table>
    <p> </p>
    <table cellspacing="0" cellpadding="4" border="1" align="left">  
        <thead>  
            <tr bgcolor="#F3F3F3">  
                <td><b>Test Name</b></td>  
                <td><b>Status</b></td>  
                <td><b>Message</b></td>  
                <td><b>Execution Datetime</b></td>  
            </tr>
        </thead>  
        <tbody>
        <% def suites = action.result.allSuites  
        suites.each() { suite ->   
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
        execDateTcPairs.each() {
        def execDate = it[0]
        def tc = it[1]  %>
            <tr>  
                <td><%= tc.displayName %></td>  
                <td style="color: <%= tc.isPassed() ? "#66CC00" : "#FF3333" %>"><%= tc.isPassed() ? "PASS" : "FAIL" %></td>
                <td><%= tc.errorMsg %></td>  
                <td><%= execDate %></td>  
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