package com.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.test.repository.UserRepository;

@Controller
@RequestMapping("/index")
public class WelcomeController {

	@Autowired
	public UserRepository userRepository;

	@RequestMapping(value = "", method = RequestMethod.GET)
	public ModelAndView index() {
		ModelAndView model = new ModelAndView("index");
		model.addObject("list", userRepository.findAll());
		return model;
	}

	@RequestMapping(value = "/{id}/delete", method = RequestMethod.GET)
	public ModelAndView deleteUsers(@PathVariable long id) {
		userRepository.delete(id);
		return new ModelAndView("redirect:/index");
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public ModelAndView userRegister(@ModelAttribute("user") User user) {
		ModelAndView model = new ModelAndView("index");
		if (user != null) {
			userRepository.save(user);
			model.addObject("warning", "User Registration Success");

		} else {
			model.addObject("danger", "Something Going Bad");

		}
		return new ModelAndView("redirect:/index");
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public ModelAndView update(@RequestParam("id") long id, @RequestParam("deviceType") String deviceType,
			@RequestParam("fqnld") String fqnld, @RequestParam("featurename") String featurename,
			@RequestParam("featurestatus") String featurestatus, @RequestParam("fiber") String fiber,
			@RequestParam("portstatus") String portstatus) {

		User user = userRepository.getOne(id);
		user.setDeviceType(deviceType);
		user.setFeaturename(featurename);
		user.setFeaturestatus(featurestatus);
		user.setFiber(fiber);
		user.setFqnld(fqnld);
		user.setPortstatus(portstatus);
		userRepository.save(user);
		return new ModelAndView("redirect:/index");
	}

	@RequestMapping(value = "/{id}/edit", method = RequestMethod.GET)
	public ModelAndView edit(@PathVariable("id") long id) {
		ModelAndView model = new ModelAndView("edit");
		User user = userRepository.getOne(id);
		model.addObject("user", user);
		return model;
	}

}