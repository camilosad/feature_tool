import React from 'react'
import { shallow } from 'enzyme'
import HelloWorld from '../../app/bundles/HelloWorld/components/HelloWorld'
/* global jest, describe, it, expect */

describe('HelloWorld', () => {
  const name = 'test name'
  const updateName = jest.fn()
  const component = shallow(<HelloWorld name={name} updateName={updateName} />)
  it('should call updateName', () => {
    component.find('#name').simulate('change', { target: { value: 'Hello World' } })
    expect(updateName).toBeCalledWith('Hello World')
  })
})
