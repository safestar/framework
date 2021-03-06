/*
* Copyright (c)  2015, Newtouch
* All rights reserved. 
*
* $id: ReminderBody.java 9552 2015年3月17日 下午5:39:23 WangLijun$
*/
package com.newtouch.lion.model.reminder; 

import java.util.Set;

import com.newtouch.lion.model.VersionEntity;

/**
 * <p>
 * Title: 消息体内容
 * </p>
 * <p>
 * Description: 消息体内容
 * </p>
 * <p>
 * Copyright: Copyright (c) 2015
 * </p>
 * <p>
 * Company: Newtouch
 * </p>
 * 
 * @author WangLijun
 * @version 1.0
 */
public class ReminderBody extends VersionEntity<Long>{

	/**
	 * 序列化
	 */
	private static final long serialVersionUID = 7247958627563615579L;
	/**编号ID*/
	private Long id;
	/**消息标题*/
	private String title;
	/**消息内容*/
	private String content;
	/**消息的URL*/
	private String relatedUrl;
	/**消息重要级别*/
	private String importanceLevel;
	/**消息标题的参数*/
	private String titleParams;
	/**消息内容的参数*/
	private String contentParams;
	/**消息类型*/
	private String reminderType;
	/**消息阅读者信息*/
	private Set<ReminderReader>  reminderReaders;
	
	@Override
	public Long getId() {
		return this.id;
	}


	/**
	 * @param id the id to set
	 */
	public void setId(Long id) {
		this.id = id;
	};
	

	/**
	 * @return  消息标题
	 */
	public String getTitle() {
		return title;
	}


	/**
	 * @param title 消息标题
	 */
	public void setTitle(String title) {
		this.title = title;
	}


	/**
	 * @return  消息内容
	 */
	public String getContent() {
		return content;
	}


	/**
	 * @param content 消息内容
	 */
	public void setContent(String content) {
		this.content = content;
	}


	/**
	 * @return  消息的URL
	 */
	public String getRelatedUrl() {
		return relatedUrl;
	}


	/**
	 * @param relatedUrl  消息的URL
	 */
	public void setRelatedUrl(String relatedUrl) {
		this.relatedUrl = relatedUrl;
	}


	/**
	 * @return 消息重要级别
	 */
	public String getImportanceLevel() {
		return importanceLevel;
	}


	/**
	 * @param importanceLevel 消息重要级别
	 */
	public void setImportanceLevel(String importanceLevel) {
		this.importanceLevel = importanceLevel;
	}


	/**
	 * @return the titleParams 消息标题的参数
	 */
	public String getTitleParams() {
		return titleParams;
	}


	/**
	 * @param titleParams 消息标题的参数
	 */
	public void setTitleParams(String titleParams) {
		this.titleParams = titleParams;
	}


	/**
	 * @return the contentParams 消息内容的参数
	 */
	public String getContentParams() {
		return contentParams;
	}


	/**
	 * @param contentParams  消息内容的参数
	 */
	public void setContentParams(String contentParams) {
		this.contentParams = contentParams;
	}


	/**
	 * @return  消息类型
	 */
	public String getReminderType() {
		return reminderType;
	}


	/**
	 * @param reminderType 消息类型
	 */
	public void setReminderType(String reminderType) {
		this.reminderType = reminderType;
	}


	/**
	 * @return 消息阅读者
	 */
	public Set<ReminderReader> getReminderReaders() {
		return reminderReaders;
	}


	/**
	 * @param reminderReaders 消息阅读者
	 */
	public void setReminderReaders(Set<ReminderReader> reminderReaders) {
		this.reminderReaders = reminderReaders;
	}
}

	