package com.zxcs.printtemplate.vo;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * 统一请求响应
 */
@Data
@ToString
@NoArgsConstructor
@AllArgsConstructor
@JsonInclude(JsonInclude.Include.NON_NULL)
public class Response {

	private String errCode;

	private String errMsg;

	private Object data;

	public static Response newInstance() {
		return new Response();
	}

	public Response setErrCode(String errCode) {
		this.errCode = errCode;
		return this;
	}

	public Response setErrMsg(String errMsg) {
		this.errMsg = errMsg;
		return this;
	}

	public Response setData(Object data) {
		this.data = data;
		return this;
	}
}
