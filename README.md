    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        String exclusionParam = filterConfig.getInitParameter("exclusions");
        if (exclusionParam != null && !exclusionParam.isEmpty()) {
            exclusions = Arrays.stream(exclusionParam.split(","))
                               .map(String::trim)  // Remove espaços extras
                               .collect(Collectors.toList());
        } else {
            exclusions = Collections.emptyList();  // Evita NullPointerException
        }
    }
<init-param>
    <param-name>exclusions</param-name>
    <param-value>/SSO.jsp</param-value>
</init-param>
            URL url = new URL("http://localhost:8080/minhaapi/roles?user=" + username);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
