package dz.elit.sihati.web.configuration.task;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.stream.Collectors;

@Component
public class TaskScriptData {


    @Value("${script.command}")
    private String scriptCommand;

    @Autowired
    private JdbcTemplate jdbcTemplate;

   @Scheduled(cron = "0 0 0 * * ?")

    public void executeTask() {
    //    System.out.println("Executing scheduled task at " + new java.util.Date());
        // Place the script execution code here
        try {
            String sql = Files.lines(Paths.get(scriptCommand))
                    .collect(Collectors.joining("\n"));

            jdbcTemplate.execute(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
