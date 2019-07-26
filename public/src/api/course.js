// services/api/course.js

import request from 'Helper/request.js'

function get_by_user(id) {
  return request({
    url:    `/courses`,
    method: 'GET',
    data: {
      user_id: id
    }
  });
}

const CourseService = {
  get_by_user
}

export default CourseService;
