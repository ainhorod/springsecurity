package com.concretepage.service;

import org.springframework.security.access.annotation.Secured;
import com.concretepage.entity.UserInfo;
public interface IUserService {
	@Secured ({"ROLE_ADMIN", "ROLE_USER"})
	UserInfo getDataByUserName(String userName);
} 