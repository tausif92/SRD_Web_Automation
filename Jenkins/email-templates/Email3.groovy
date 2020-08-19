<!-- Robot Framework Results Email-ext jenkins plugin template         -->
<!-- copy to Jenkins master server inside JENKINS_HOME/email-templates -->
<%
import groovy.util.XmlSlurper
import jenkins.util.VirtualFile
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
/* Label status colors -- keep in mind Outlook does not support multiple classes per tag */
.debug, .trace, .error, .keyword {
    letter-spacing: 0;
}
.error, .fail, .pass, .warn {
    color: #fff !important;
    font-weight: bold;
}
.info {
    background-color: #ddd;
    color: black;
}
.error, .fail {
    background-color: #d9534f;
    padding: 2px 2px;
    font-size: 0.75em;
    letter-spacing: 1px;
    white-space: nowrap;
    border-radius: 3px;
}
.pass {
    background-color: #5cb85c;
    padding: 2px 2px;
    font-size: 0.75em;
    letter-spacing: 1px;
    white-space: nowrap;
    border-radius: 3px;
}
.warn {
    background-color: #ec971f;
    padding: 2px 2px;
    font-size: 0.75em;
    letter-spacing: 1px;
    white-space: nowrap;
    border-radius: 3px;
}
</STYLE>

<BODY>

<TABLE>
  <TR>
    <TD><IMG SRC="${rooturl}static/e59dfe28/images/32x32/<%= build.result.toString() == 'SUCCESS' ? "blue.gif" : build.result.toString() == 'FAILURE' ? 'red.gif' : 'yellow.gif' %>" />
    <TD><b style="color:black; background-color:#8080ff;font-size: 150%;"><%= build.result == hudson.model.Result.SUCCESS ? "ALL TESTS PASSED" : "SOME TESTS FAILED OR THE JOB ENCOUNTERED A PROBLEM" %></b></TD></TR>
  <TR><TD>Build URL:</TD><TD><A href="${rooturl}${build.url}">${rooturl}${build.url}</A></TD></TR>
  <TR><TD>Project URL:</TD><TD><A href="${rooturl}${project.url}">${rooturl}${project.url}</A></TD></TR>
  <TR><TD>Build Name:</TD><TD>${build.displayName}</TD></TR>
  <TR><TD>Date of job:</TD><TD>${it.timestampString}</TD></TR>
  <TR><TD>Job duration:</TD><TD>${build.durationString}</TD></TR>
</TABLE>
<BR/>

<H2>RESULTS:</H2>
<%
def sp = "&nbsp;"
def artifacts = build.artifacts
artifacts.each() { artifact ->
    artifactFile = build.artifactManager.root().child(artifact.relativePath)
    
    if(!"output.xml".equals(artifactFile.name)){ return }
    
    artifactXml = new XmlSlurper().parse(artifactFile.open())

    artifactXml.suite.each() { suite ->
        def suiteStatus = suite.status.@status.text().toLowerCase()
        %>
        <table>
        <tr><td><span class="${suiteStatus}">${sp}SUITE${sp}</span></td><td>${suite.@name}</td></tr>
        <%
    
        suite.test.each() { aTest ->
            def testStatus = aTest.status.@status.text().toLowerCase()
            %>
            
            <tr><td/><td><table><tr><td><span class="${testStatus}">${sp}TEST${sp}</span></td><td>${aTest.@name}</td></tr>
            
            <%
            aTest.kw.each() { keyword ->
                def kwStatus = keyword.status.@status.text().toLowerCase()
                %>
                
                <tr><td/><td><table><tr><td><span class="${kwStatus}">${sp}KEYWORD${sp}</span></td><td>${keyword.@name}</td></tr>
            
                <%
                keyword.msg.each() { msg ->
                    def level = msg.@level.text().toLowerCase()
                    if("info" != level) {
                    %>
                    
                    <tr><td><span class="${level}">${sp}${msg.@level.text()}${sp}</span></td><td>${msg.text().replaceAll("\n", "<br/>")}</td></tr>
                    
                    <%
                    }
                }
                %>
                </table></td></tr>
                <%
            }
            %>
            </table></td></tr>
            <%
        }
        %>
        </table>
        <%
    }
}
%>

</BODY>