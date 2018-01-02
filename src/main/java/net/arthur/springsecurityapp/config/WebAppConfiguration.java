package net.arthur.springsecurityapp.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.*;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@Configuration
@EnableWebMvc
@ComponentScan("net.arthur.springsecurityapp")
public class WebAppConfiguration implements WebMvcConfigurer {

    private static final String RES_HANDLER = "/resources/**";
    private static final String RES_LOCATION = "/resources/";
    private static final String PREFIX = "/static/";
    private static final String SUFFIX = ".jsp";

    @Override
    public void addResourceHandlers(final ResourceHandlerRegistry registry) {
        registry
                .addResourceHandler(RES_HANDLER)
                .addResourceLocations(RES_LOCATION);
    }

    @Override
    public void configureViewResolvers(final ViewResolverRegistry registry) {
        final InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
        viewResolver.setViewClass(JstlView.class);
        viewResolver.setPrefix(PREFIX);
        viewResolver.setSuffix(SUFFIX);
        registry.viewResolver(viewResolver);
    }

    @Bean
    public ReloadableResourceBundleMessageSource messageSource() {
        final ReloadableResourceBundleMessageSource messageSource = new ReloadableResourceBundleMessageSource();
        messageSource.addBasenames("classpath:validation");
        return messageSource;
    }

    @Bean(name = "multipartResolver")
    public CommonsMultipartResolver getCommonsMultipartResolver() {
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver();
        multipartResolver.setMaxUploadSize(20971520);   // 20MB
        multipartResolver.setMaxInMemorySize(1048576);  // 1MB
        return multipartResolver;
    }
}
