package com.swempire.web.board.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.swempire.web.board.model.BoardVO;
import com.swempire.web.board.model.LoginVO;
import com.swempire.web.board.model.ReplyVO;
import com.swempire.web.board.model.Search;
import com.swempire.web.board.model.SignupVO;
import com.swempire.web.board.service.BoardService;
import com.swempire.web.board.service.LoginService;

@Controller
@RequestMapping(value = "/board")
public class BoardController {

	@Inject
	private BoardService boardService;

	@Inject
	private LoginService loginService;

	@RequestMapping(value = "/getBoardList", method = RequestMethod.GET)
	public String getBoardList(Model model, LoginVO loginVO,
			@RequestParam(required = false, defaultValue = "1") int page,
			@RequestParam(required = false, defaultValue = "1") int range,
			@RequestParam(required = false, defaultValue = "title") String searchType,
			@RequestParam(required = false) String keyword, @ModelAttribute("search") Search search,
			HttpServletRequest request) throws Exception {
		Model a = model.addAttribute("userVO", new SignupVO());

		model.addAttribute("search", search);
		search.setSearchType(searchType);
		search.setKeyword(keyword);

		int listCnt = boardService.getBoardListCnt(search);

		search.pageInfo(page, range, listCnt);

		// Pagination
		model.addAttribute("pagination", search);

		model.addAttribute("boardList", boardService.getBoardList(search));

		return "board/index";
	}

	@RequestMapping(value = "/getBoardList", method = RequestMethod.POST)
	public String getBoardList2(Model model, LoginVO loginVO,
			@RequestParam(required = false, defaultValue = "1") int page,
			@RequestParam(required = false, defaultValue = "1") int range,
			@RequestParam(required = false, defaultValue = "title") String searchType,
			@RequestParam(required = false) String keyword, @ModelAttribute("search") Search search,
			HttpServletRequest request) throws Exception {

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		loginVO.setPw(pw);
		loginVO.setId(id);

		loginService.loginSelect(loginVO);

		model.addAttribute("search", search);
		search.setSearchType(searchType);
		search.setKeyword(keyword);

		int listCnt = boardService.getBoardListCnt(search);

		search.pageInfo(page, range, listCnt);

		// Pagination
		model.addAttribute("pagination", search);

		model.addAttribute("boardList", boardService.getBoardList(search));

		return "board/index";

	}

	@RequestMapping("/boardForm")
	public String boardForm(@ModelAttribute("boardVO") BoardVO vo, Model model) {

		return "board/boardForm";

	}

	@RequestMapping(value = "/saveBoard", method = RequestMethod.POST)
	public String saveBoard(@ModelAttribute("boardVO") BoardVO boardVO, @RequestParam("mode") String mode,
			RedirectAttributes rttr) throws Exception {
		if (mode.equals("edit")) {
			boardService.updateBoard(boardVO);
		} else {
			boardService.insertBoard(boardVO);
		}
		return "redirect:/board/getBoardList";
	}

	@RequestMapping(value = "/getBoardContent", method = RequestMethod.GET)
	public String getBoardContent(Model model, @RequestParam("bid") int bid) throws Exception {

		model.addAttribute("boardContent", boardService.getBoardContent(bid));

		model.addAttribute("replyVO", new ReplyVO());

		return "board/boardContent";
	}

	@RequestMapping(value = "/editForm", method = RequestMethod.GET)
	public String editForm(@RequestParam("bid") int bid, @RequestParam("mode") String mode, Model model)
			throws Exception {

		model.addAttribute("boardContent", boardService.getBoardContent(bid));

		model.addAttribute("mode", mode);

		model.addAttribute("boardVO", new BoardVO());

		return "board/boardForm";
	}

	@RequestMapping(value = "/deleteBoard", method = RequestMethod.GET)

	public String deleteBoard(RedirectAttributes rttr, @RequestParam("bid") int bid) throws Exception {

		boardService.deleteBoard(bid);

		return "redirect:/board/getBoardList";

	}

	@ExceptionHandler(RuntimeException.class)
	public String exceptionHandler(Model model, Exception e, Logger logger) {

		logger.info("exception : " + e.getMessage());

		model.addAttribute("exception", e);

		return "error/exception";

	}

}
