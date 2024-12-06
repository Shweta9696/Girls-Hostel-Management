package com.saraswati.hostel.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.saraswati.hostel.entity.Admin;
import com.saraswati.hostel.entity.Student;
import com.saraswati.hostel.entity.User;
import com.saraswati.hostel.repository.UserRepository;

@Service
public class UserService {
@Autowired
private UserRepository userRepository;

public User saveUser(User user)
{
	return userRepository.save(user);
}

public User getUserById(Long id)
{
	return userRepository.findById(id).orElse(null);
}
public User getUserByName(String name)
{
	return userRepository.findByName(name);
}

public User verifyUser(String email, String pass)
{
	return userRepository.verifyUser(email, pass);
}

public User updateUserPassword(User user, Long id)
{
		User existUser=getUserById(id);
	if(existUser!=null)
	{
		existUser.setPassword(user.getPassword());
		User save = userRepository.save(existUser);
		
		return save;
	}
	return null;
}




public User updateStudent(Long id, User user)
{
	User existingUser=getUserById(id);
	if(existingUser!=null)
	{
		existingUser.setName(user.getName());
		existingUser.setPassword(user.getPassword());
		existingUser.setPhoneNo(user.getPhoneNo());
		return userRepository.save(existingUser);
	}
	return null;
}
public void deleteStudent(Long id)
{
	userRepository.deleteById(id);
}
public List<User> getAllUser()
{
	return userRepository.findAll();
}


}
