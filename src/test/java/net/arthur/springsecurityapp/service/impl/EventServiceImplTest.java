package net.arthur.springsecurityapp.service.impl;

import net.arthur.springsecurityapp.dao.EventDao;
import net.arthur.springsecurityapp.model.Event;
import org.junit.After;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;


import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.Mockito.*;
@RunWith(MockitoJUnitRunner.class)
public class EventServiceImplTest {

    @InjectMocks
    private EventServiceImpl eventService;

    @Mock
    private EventDao eventDao;

    @After
    public void tearDown() {
        verifyNoMoreInteractions(eventDao);
    }

    @Test
    public void shouldSaveEvent(){
        Event event = new Event("Endava Retro party");

        when(eventDao.saveEvent(event)).thenReturn(event);

        final Event actualResult = eventService.saveEvent(event);

        verify(eventDao).saveEvent(event);

        assertThat(actualResult).isEqualTo(event);
    }

    @Test
    public void shouldEditEvent() {
        Event event = new Event("Im not Edited Event");

        event.setTitle("i'm Edited Event");

        when(eventDao.updateEvent(event)).thenReturn(event);

        final Event actualEvent = eventService.updateEvent(event);

        verify(eventDao).updateEvent(event);

        assertThat(actualEvent).isEqualTo(event);

    }


}
