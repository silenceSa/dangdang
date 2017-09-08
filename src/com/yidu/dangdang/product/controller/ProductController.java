package com.yidu.dangdang.product.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.yidu.dangdang.product.biz.ProductBiz;
import com.yidu.dangdang.product.biz.impl.ProductBizImpl;
import com.yidu.dangdang.product.domain.Product;
import com.yidu.dangdang.util.DynamicSql;
import com.yidu.dangdang.util.IDGenderatorUtil;

/**
 * 后台控制器
 * 
 * @author 陈涛
 * @since 2017/7/3
 */
public class ProductController extends HttpServlet {

	/**
	 * 序列号
	 */
	private static final long serialVersionUID = -4936830978907235864L;
	/**
	 * 调用biz层
	 */
	private ProductBiz productBiz = new ProductBizImpl();
	/**
	 * 调用Gson类
	 */
	private Gson gson = new Gson();

	/**
	 * get请求
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 设置编码类型
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		// 获得请求参数
		String biz = request.getParameter("biz");
		if ("findAll".equals(biz)) {
			// 调用找到所有商品的方法
			doFindAllProduct(request, response);
		} else if ("add".equals(biz)) {
			// 调用添加商品的方法
			doAddProduct(request, response);
		} else if ("update".equals(biz)) {
			// 调用修改密码的方法
			doUpdateProduct(request, response);
		} else if ("findProductByPage".equals(biz)) {
			// 调用分页查询商品的方法
			doFindProductByPage(request, response);
		} else if ("findProductByDysql".equals(biz)) {
			// 调用动态查询商品的方法
			doFindProductByDysql(request, response);
		} else if ("findProductByProductId".equals(biz)) {
			// 调用根据商品Id找到商品的方法
			doFindProductByProductId(request, response);
		}

	}

	/**
	 * 根据商品Id查询商品
	 * 
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	private void doFindProductByProductId(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// 传参数商品Id
		String productId = request.getParameter("productId");
		// 商品对象
		Product product = new Product();
		// 设置参数商品Id
		product.setProductId(productId);
		// 调用biz层的根据商品Id找商品的方法
		Product fporduct = productBiz.findProductByProductId(productId);
		// 传进json参数 把找到的商品赋值给json
		String json = "[" + gson.toJson(fporduct) + "]";
		// 把json写出来
		PrintWriter out = response.getWriter();
		out.write(json);

	}

	/**
	 * 查询商品
	 * 
	 * @param request
	 * @param response
	 * @throws IOException
	 * @throws ServletException
	 */
	private void doFindProductByDysql(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		// 获得要搜索的数据
		// 商品名
		String productName = request.getParameter("productName");
		// 分类号
		String categoryId = request.getParameter("categoryId");
		// 当前价1
		String currPrice1 = request.getParameter("currPrice1");
		// 当前价2
		String currPrice2 = request.getParameter("currPrice2");
		// 判定 当当前价1为空是1=2
		if (currPrice1.equals("")) {
			currPrice1 = currPrice2;
		}
		// 判定 当当前价2为空是2=1
		if (currPrice2.equals("")) {
			currPrice2 = currPrice1;
		}
		// 动态sql对象
		DynamicSql sql = new DynamicSql();
		// 生成动态的sql语句
		// 添加参数 addp like normal scope1
		sql.addParam("productName;like");
		sql.addParam("categoryId;normal");
		sql.addParam("currPrice;scope1");
		sql.addParam("currPrice;scope2");
		// 设置属性setv
		sql.setValue(productName);
		sql.setValue(categoryId);
		sql.setValue(currPrice1);
		sql.setValue(currPrice2);
		// 生成特定的map集合addvp
		sql.addValidParamAndValue();
		// 返回查询结果 商品集合 调用biz层的动态查询方法
		List<Product> products = productBiz.findProductByDysql(sql);
		//创建json 把找到的商品集合赋值给gson.tojson
		String json = gson.toJson(products);
		//吧json写出来
		PrintWriter out = response.getWriter();
		out.write(json);

	}

	/**
	 * 分页查询
	 * 
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void doFindProductByPage(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// 传进String类型的分页大小数并转为整形
		int pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		// 商品集合调用biz层的分页查询方法10
		List<Product> productList = productBiz
				.findProductByPage(10, pageNumber);
		//创建json 把找到的商品集合赋值给gson.tojson
		String json = gson.toJson(productList);
		//吧json写出来
		PrintWriter out = response.getWriter();
		out.write(json);

	}

	/**
	 * 修改商品
	 * 
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	private void doUpdateProduct(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// 传进参数
		//商品Id
		String productId = request.getParameter("productId");
		//商品名
		String productName = request.getParameter("productName");
		//double类型价格
		Double price = Double.parseDouble(request.getParameter("price"));
		//double类型当前价格
		Double currPrice = Double
				.parseDouble(request.getParameter("currPrice"));
		//double折扣
		Double discount = Double.parseDouble(request.getParameter("discount"));
		//double运费
		Double freight = Double.parseDouble(request.getParameter("freight"));
		//尺寸
		String size = request.getParameter("size");
		//整形数目
		int num = Integer.parseInt(request.getParameter("num"));
		//品牌名
		String brandName = request.getParameter("brandName");
		//h
		String image_h = request.getParameter("image_h");
		//b
		String image_b = request.getParameter("image_b");
		//s1~s5
		String image_s1 = request.getParameter("image_s1");
		String image_s2 = request.getParameter("image_s2");
		String image_s3 = request.getParameter("image_s3");
		String image_s4 = request.getParameter("image_s4");
		String image_s5 = request.getParameter("image_s5");
		//分类Id
		String categoryId = request.getParameter("categoryId");
		//空字符串
		String Desc1 = request.getParameter("Desc1");
		String Desc2 = request.getParameter("Desc2");
		String Desc3 = request.getParameter("Desc3");

		// 设置参数
		Product product = new Product();
		product.setProductId(productId);
		product.setProductName(productName);
		product.setPrice(price);
		product.setCurrPrice(currPrice);
		product.setDiscount(discount);
		product.setFreight(freight);
		product.setSize(size);
		product.setNum(num);
		product.setBrandName(brandName);
		product.setImage_h(image_h);
		product.setImage_b(image_b);
		product.setImage_s1(image_s1);
		product.setImage_s2(image_s2);
		product.setImage_s3(image_s3);
		product.setImage_s4(image_s4);
		product.setImage_s5(image_s5);
		product.setCategoryId(categoryId);
		product.setDesc1(Desc1);
		product.setDesc2(Desc2);
		product.setDesc3(Desc3);

		// 调用业务层的修改方法修改
		int result = productBiz.updateProduct(product);
		PrintWriter out = response.getWriter();
		if (result > 0) {
			// 修改成功
			out.write("{\"status\":\"success\"}");
		} else {
			// 修改失败
			out.write("{\"status\":\"failed\"}");
		}

	}

	/**
	 * 添加方法
	 * 
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	private void doAddProduct(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// 传进参数
		//商品名
		String productName = request.getParameter("productName");
		//double类型价格
		Double price = Double.parseDouble(request.getParameter("price"));
		//double类型当前价格
		Double currPrice = Double
						.parseDouble(request.getParameter("currPrice"));
		//double折扣
		Double discount = Double.parseDouble(request.getParameter("discount"));
		//double运费
		Double freight = Double.parseDouble(request.getParameter("freight"));
		//尺寸
		String size = request.getParameter("size");
		//整形数目
		int num = Integer.parseInt(request.getParameter("num"));
		//品牌名
		String brandName = request.getParameter("brandName");
		//h
		String image_h = request.getParameter("image_h");
		//b
		String image_b = request.getParameter("image_b");
		//s1~s5
		String image_s1 = request.getParameter("image_s1");
		String image_s2 = request.getParameter("image_s2");
		String image_s3 = request.getParameter("image_s3");
		String image_s4 = request.getParameter("image_s4");
		String image_s5 = request.getParameter("image_s5");
		//分类Id
		String categoryId = request.getParameter("categoryId");
		//空字符串
		String Desc1 = request.getParameter("Desc1");
		String Desc2 = request.getParameter("Desc2");
		String Desc3 = request.getParameter("Desc3");

		// 设置参数
		//商品对象
		Product product = new Product();
		//ID工具类自动生成
		product.setProductId(IDGenderatorUtil.generateId());
		product.setProductName(productName);
		product.setPrice(price);
		product.setCurrPrice(currPrice);
		product.setDiscount(discount);
		product.setFreight(freight);
		product.setSize(size);
		product.setNum(num);
		product.setBrandName(brandName);
		product.setImage_h(image_h);
		product.setImage_b(image_b);
		product.setImage_s1(image_s1);
		product.setImage_s2(image_s2);
		product.setImage_s3(image_s3);
		product.setImage_s4(image_s4);
		product.setImage_s5(image_s5);
		product.setCategoryId(categoryId);
		product.setDesc1(Desc1);
		product.setDesc2(Desc2);
		product.setDesc3(Desc3);

		// 调用业务层的方法添加
		int result = productBiz.addProduct(product);
		PrintWriter out = response.getWriter();
		if (result > 0) {
			// 添加成功
			out.write("{\"status\":\"success\"}");
		} else {
			// 添加失败
			out.write("{\"status\":\"failed\"}");
		}

	}

	/**
	 * 找到所有的商品
	 * 
	 * @param request
	 * @param response
	 * @throws IOException
	 *             IO异常
	 * @throws ServletException
	 */
	private void doFindAllProduct(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		// 获得请求参数
		//传进字符串类型的行数并转为整形
		int rows = Integer.parseInt(request.getParameter("rows"));
		//传进字符串类型的页码并转为整形
		int page = Integer.parseInt(request.getParameter("page"));

		// 商品集合调用biz层的分页查询商品方法
		List<Product> product = productBiz.findProductByPage(rows, page);
		//json= 调用biz层找到所有商品.大小的方法赋值给total 把找到的商品赋值给gson再赋值给rows
		String json = "{\"total\" : " + productBiz.findAllProduct().size()
				+ ", \"rows\" : " + gson.toJson(product) + "}";
		// 把json发送出来
		PrintWriter out = response.getWriter();
		out.write(json);
	}

	/**
	 * post请求
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
