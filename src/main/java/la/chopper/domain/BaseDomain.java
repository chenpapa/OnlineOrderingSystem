package la.chopper.domain;

import org.apache.commons.lang.builder.ToStringBuilder;

import java.io.Serializable;

/**
 * @author chentao
 */
public class BaseDomain implements Serializable {

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this);
    }
}
