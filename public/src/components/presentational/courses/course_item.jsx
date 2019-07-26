import React from 'react'
import classnames from 'classnames';
import {CellBody, CellFooter, CellHeader, Checkbox, FormCell} from 'react-weui';

const CourseItem = props => {
  const form_class = classnames("item", {"green-bg": props.subscribed });
  return (
    <li>
      <FormCell checkbox className={form_class}>
        <CellHeader>
          <Checkbox
            name={`item-${props.data.id}`}
            checked={true}
            onChange={props.onChange}
          />

        </CellHeader>

        <CellBody>{props.data.name}</CellBody>

        <CellFooter>cell footer</CellFooter>
      </FormCell>
      <span class="weui-icon-checked" />
    </li>
  )
}

export default CourseItem;
