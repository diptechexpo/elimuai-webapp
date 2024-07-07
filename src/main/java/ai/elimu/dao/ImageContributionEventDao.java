package ai.elimu.dao;

import ai.elimu.entity.content.multimedia.Image;
import ai.elimu.entity.contributor.Contributor;
import ai.elimu.entity.contributor.ImageContributionEvent;
import java.util.List;
import org.springframework.dao.DataAccessException;

public interface ImageContributionEventDao extends GenericDao<ImageContributionEvent> {
    
    List<ImageContributionEvent> readAll(Image image) throws DataAccessException;
    
    List<ImageContributionEvent> readAll(Contributor contributor) throws DataAccessException;
    
    List<ImageContributionEvent> readMostRecent(int maxResults) throws DataAccessException;
    
    Long readCount(Contributor contributor) throws DataAccessException;
}
