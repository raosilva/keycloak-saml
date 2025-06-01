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
