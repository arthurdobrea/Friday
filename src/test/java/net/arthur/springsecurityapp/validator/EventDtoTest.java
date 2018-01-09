package net.arthur.springsecurityapp.validator;

import net.arthur.springsecurityapp.model.EventType;
import net.arthur.springsecurityapp.model.dto.EventDto;
import org.junit.Test;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Set;

import static org.assertj.core.api.Assertions.assertThat;

public class EventDtoTest {


    private Validator validator = Validation.buildDefaultValidatorFactory().getValidator();

    @Test
    public void shouldPassWhenAllFieldsArePresent() {

        final EventDto eventDto = createEventDto("title", "Endava", "description", LocalDate.of(2018, 1, 12), LocalDate.of(2019, 2, 3), LocalTime.of(12, 21), LocalTime.of(12, 42));
        Set<ConstraintViolation<EventDto>> constraintViolations = validator.validate(eventDto);
        assertThat(constraintViolations).isEmpty();
    }


    private EventDto createEventDto(String title,
                                    String location,
                                    String description,
                                    LocalDate startDate,
                                    LocalDate endDate,
                                    LocalTime startTime,
                                    LocalTime endTime) {
        final EventDto eventDto = new EventDto();
        eventDto.setTitle(title);
        eventDto.setLocation(location);
        eventDto.setDescription(description);
        eventDto.setStartDate(startDate);
        eventDto.setEndDate(endDate);
        eventDto.setStartTime(startTime);
        eventDto.setEndTime(endTime);
        eventDto.setEventType(EventType.BOARDGAMES);
        eventDto.setImage(new CommonsMultipartFile[1]);
        return eventDto;
    }

}