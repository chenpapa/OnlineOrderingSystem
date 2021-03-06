package la.chopper.converter;

import org.springframework.core.convert.converter.Converter;

/**
 * @author chentao
 */
public class BooleanConverter implements Converter<String, Boolean> {
    @Override
    public Boolean convert(String source) {
        return Boolean.parseBoolean(source);
    }
}
