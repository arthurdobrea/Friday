package net.arthur.springsecurityapp.validator;

import net.arthur.springsecurityapp.model.dto.EventDto;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import java.time.LocalDate;
import java.time.LocalTime;

import static java.util.Objects.isNull;

public class FutureOrPresentValidator implements ConstraintValidator<FutureOrPresent, EventDto> {

    @Override
    public void initialize(FutureOrPresent constraintAnnotation) {

    }

    @Override
    public boolean isValid(EventDto eventDto, ConstraintValidatorContext constraintValidatorContext) {
        final LocalDate startDate = eventDto.getStartDate();
        final LocalDate endDate = eventDto.getEndDate();
        final LocalTime startTime = eventDto.getStartTime();
        final LocalTime endTime = eventDto.getEndTime();

        if (!isNull(startDate) && !isNull(endDate) && !isNull(startTime) && !isNull(endTime)) {
            if (startDate.compareTo(endDate) < 0) {
                return true;
            }
                else
                if (startTime.compareTo(endTime) < 0) {
                    return true;
                }
            }

        return false;
    }
}
