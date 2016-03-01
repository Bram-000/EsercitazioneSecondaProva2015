/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package main;

/**
 *
 * @author FSEVERI\ramescu2755
 */
import org.springframework.context.annotation.Bean;  
import org.springframework.context.annotation.ComponentScan;  
import org.springframework.context.annotation.Configuration;  
import org.springframework.web.servlet.config.annotation.EnableWebMvc;  
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.view.JstlView;  
import org.springframework.web.servlet.view.UrlBasedViewResolver; 

@Configuration
@ComponentScan("main")
@EnableWebMvc

public class Config {
      @Bean
      public UrlBasedViewResolver setupViewResolver(){
          UrlBasedViewResolver resolver = new UrlBasedViewResolver();
          resolver.setPrefix("/WEB-INF/jsp");
          resolver.setSuffix(".jsp");
          resolver.setViewClass(JstlView.class);
          return resolver;
      }
      public void addResourceHandlers(ResourceHandlerRegistry reg){
          reg.addResourceHandler("/resources/**").addResourceLocations("/WEB-INF/resources/*");
      }
}
