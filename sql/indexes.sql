CREATE INDEX idx_attributes_attribute_type_id ON attributes(attribute_type_id);
CREATE INDEX idx_attribute_values_attribute_id ON attribute_values(attribute_id);
CREATE INDEX idx_attribute_values_film_id ON attribute_values(film_id);

CREATE INDEX idx_attribute_values_value_text ON attribute_values(value_text);
CREATE INDEX idx_attribute_values_value_int ON attribute_values(value_int);
CREATE INDEX idx_attribute_values_value_bool ON attribute_values(value_bool);
CREATE INDEX idx_attribute_values_value_float ON attribute_values(value_float);
CREATE INDEX idx_attribute_values_value_date ON attribute_values(value_date);