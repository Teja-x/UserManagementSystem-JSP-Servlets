<pre>
WEB-INF/lib contents:
<%
  java.util.Set<String> libs = application.getResourcePaths("/WEB-INF/lib/");
  if (libs != null) for (String p : libs) out.println(p);
  else out.println("(nothing)");

  out.println("\nTry loading JSTL impl class:");
  try {
      Class.forName("jakarta.servlet.jsp.jstl.core.ConditionalTagSupport");
      out.println("OK: jakarta.servlet.jsp.jstl impl is present");
  } catch (Throwable t) {
      t.printStackTrace(new java.io.PrintWriter(out));
  }
%>
</pre>
