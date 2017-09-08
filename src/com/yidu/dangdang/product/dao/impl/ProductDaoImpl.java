package com.yidu.dangdang.product.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.yidu.dangdang.product.dao.ProductDao;
import com.yidu.dangdang.product.domain.Product;
import com.yidu.dangdang.util.DBUtil;
import com.yidu.dangdang.util.DynamicSql;

/**
 * 数据访问层实现类
 * @author 陈涛
 * @since  2017/7/3
 */
public class ProductDaoImpl implements ProductDao {

	
	/**
	 * 找到所有的商品的方法
	 * @return返回商品集合
	 */
	@Override
	public List<Product> findAllProduct() {
		//商品集合
		List<Product> products=new ArrayList<Product>();
		//获得连接
		Connection con = DBUtil.getConnection();
		//创建预处理对象
		PreparedStatement sta = null;
		//创建结果集对象
		ResultSet res = null;
		//sql语句
		String sql = "select * from product";

		try {
			//给获得连接的预处理对象执行sql语句
			sta = con.prepareStatement(sql);
			//执行预编译语句获得结果集对象
			res=sta.executeQuery();
			//操作结果集
			while(res.next()){
				//商品对象
				Product product = new Product();
				product.setProductId(res.getString(1));
				product.setProductName(res.getString(2));
				product.setPrice(res.getDouble(3));
				product.setCurrPrice(res.getDouble(4));
				product.setDiscount(res.getDouble(5));
				product.setFreight(res.getDouble(6));
				product.setSize(res.getString(7));
				product.setNum(res.getInt(8));
				product.setBrandName(res.getString(9));
				product.setImage_h(res.getString(10));
				product.setImage_b(res.getString(11));
				product.setImage_s1(res.getString(12));
				product.setImage_s2(res.getString(13));
				product.setImage_s3(res.getString(14));
				product.setImage_s4(res.getString(15));
				product.setImage_s5(res.getString(16));
				product.setCategoryId(res.getString(17));
				product.setDesc1(res.getString(18));
				product.setDesc2(res.getString(19));
				product.setDesc3(res.getString(20));
				//添加当前对象
				products.add(product);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			//关闭流
			DBUtil.closeAll(null, sta, con);
		}
        //返回对象
		return products;
	}

	/**
	 * 删除商品的方法
	 * @param productId 商品Id
	 * @return返回受影响行数
	 */
	@Override
	public int removeProduct(String productId) {
		int count = 0;
		//获得连接
		Connection con = DBUtil.getConnection();
		//创建预处理对象
		PreparedStatement sta = null;
		//sql语句
		String sql = "delete product where productId = ?";

		try {
			//给获得连接的预处理对象执行sql语句
			sta = con.prepareStatement(sql);
			//给占位符赋值
			sta.setString(1, productId);
			//执行预编译语句获得结果集对象
			count = sta.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			//关闭流
			DBUtil.closeAll(null, sta, con);
		}

		return count;
	}

	/**
	 * 修改商品的方法
	 * @param product 商品对象
	 * @return返回受影响行数
	 */
	@Override
	public int updateProduct(Product product) {
		int count = 0;
		//获得连接
		Connection con = DBUtil.getConnection();
		//创建预处理对象
		PreparedStatement sta = null;
		//sql语句
		String sql = "update product set productName = ?, price = ?, currPrice=?, discount = ?, freight=?, size=?, num=?, brandName=?, image_h=?, image_b=?, image_s1=?, image_s2=?, image_s3=?, image_s4=?, image_s5=?,categoryId=?, Desc1=?, Desc2=?, Desc3=? where productId = ?";

		try {
			//给获得连接的预处理对象执行sql语句
			sta = con.prepareStatement(sql);
			//给占位符赋值
			sta.setString(1, product.getProductName());
			sta.setDouble(2, product.getPrice());
			sta.setDouble(3, product.getCurrPrice());
			sta.setDouble(4, product.getDiscount());
			sta.setDouble(5, product.getFreight());
			sta.setString(6, product.getSize());			
			sta.setInt(7,product.getNum());
			sta.setString(8, product.getBrandName());
			sta.setString(9,product.getImage_h());
			sta.setString(10,product.getImage_b());
			sta.setString(11,product.getImage_s1());
			sta.setString(12,product.getImage_s2());
			sta.setString(13,product.getImage_s3());
			sta.setString(14,product.getImage_s4());
			sta.setString(15,product.getImage_s5());
			sta.setString(16,product.getCategoryId());
			sta.setString(17,product.getDesc1());
			sta.setString(18,product.getDesc2());
			sta.setString(19,product.getDesc3());
			sta.setString(20, product.getProductId());
			//执行预编译语句获得结果集对象
			count = sta.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			//关闭流
			DBUtil.closeAll(null, sta, con);
		}
        //返回
		return count;
	}

	/**
	 * 添加商品的方法
	 * @param  product 商品对象
	 * @return返回受影响行数
	 */
	@Override
	public int addProduct(Product product) {
		int count = 0;
		//获得连接
		Connection con = DBUtil.getConnection();
		//创建预处理对象
		PreparedStatement sta = null;
		//sql语句
		String sql = "insert into product values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

		try {
			//给获得连接的预处理对象执行sql语句
			sta = con.prepareStatement(sql);
			//给占位符赋值
			sta.setString(1, product.getProductId());
			sta.setString(2, product.getProductName());
			sta.setDouble(3, product.getPrice());
			sta.setDouble(4, product.getCurrPrice());
			sta.setDouble(5, product.getDiscount());
			sta.setDouble(6, product.getFreight());
			sta.setString(7, product.getSize());			
			sta.setInt(8,product.getNum());
			sta.setString(9, product.getBrandName());
			sta.setString(10,product.getImage_h());
			sta.setString(11,product.getImage_b());
			sta.setString(12,product.getImage_s1());
			sta.setString(13,product.getImage_s2());
			sta.setString(14,product.getImage_s3());
			sta.setString(15,product.getImage_s4());
			sta.setString(16,product.getImage_s5());
			sta.setString(17,product.getCategoryId());
			sta.setString(18,product.getDesc1());
			sta.setString(19,product.getDesc2());
			sta.setString(20,product.getDesc3());
			//执行预编译语句获得结果集对象
			count = sta.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			//关闭流
			DBUtil.closeAll(null, sta, con);
		}

		return count;
	}


	/**
	 * 动态查询商品的方法
	 * @param dysql
	 * @return商品结合
	 */
	@Override
	public List<Product> findProductByDySql(DynamicSql dysql) {
		//sql语句
		String sql = "select * from product " + dysql.createGeneralSql();
		// 用户集合
		List<Product> productList = new ArrayList<Product>();
		// 获得连接
		Connection con = DBUtil.getConnection();
		//创建预处理对象
		PreparedStatement sta = null;
		//创建结果集对象
		ResultSet rs = null;
		try {
			//给获得连接的预处理对象执行sql语句
			sta = con.prepareStatement(sql);
			// 调用动态sql语句对象的方法动态地为占位符赋值setp
			dysql.setParam(sta);
			//执行预编译语句获得结果集对象
			rs = sta.executeQuery();
			// 操作结果集
			while (rs.next()) {
				Product product=new Product();
				product.setProductId(rs.getString("productId"));
				product.setProductName(rs.getString("productName"));
				product.setPrice(rs.getDouble("price"));
				product.setCurrPrice(rs.getDouble("currPrice"));
				product.setDiscount(rs.getDouble("discount"));
				product.setFreight(rs.getDouble("freight"));
				product.setSize(rs.getString("size"));
				product.setNum(rs.getInt("num"));
				product.setBrandName(rs.getString("brandName"));
				product.setImage_h(rs.getString("image_h"));
				product.setImage_b(rs.getString("image_b"));
				product.setImage_s1(rs.getString("image_s1"));
				product.setImage_s2(rs.getString("image_s2"));
				product.setImage_s3(rs.getString("image_s3"));
				product.setImage_s4(rs.getString("image_s4"));
				product.setImage_s5(rs.getString("image_s5"));
				product.setCategoryId(rs.getString("categoryId"));
				product.setDesc1(rs.getString("Desc1"));
				product.setDesc2(rs.getString("Desc2"));
				product.setDesc3(rs.getString("Desc3"));
				
				// 添加当前对象
				productList.add(product);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// 关闭流
			DBUtil.closeAll(rs, sta, con);
		}

		// 返回集合
		return productList;
	}

	/**
	 * 根据商品Id查询商品的方法
	 * @param productId 商品Id
	 * @return商品对象
	 */
	@Override
	public Product findProductByProductId(String productId) {
		//获得连接
		Connection con = DBUtil.getConnection();
		//创建预处理对象
		PreparedStatement sta = null;
		//创建结果集对象
		ResultSet rs = null;
		//商品对象
		Product product = null;
		try {
			//sql语句
			String sql = "select * from product where productId=?";
			//给获得连接的预处理对象执行sql语句
			sta= con.prepareStatement(sql);
			//给占位符赋值
			sta.setString(1, productId);
			//执行预编译语句获得结果集对象
			rs = sta.executeQuery();
			//操作结果集
			if(rs.next()){
				product = new Product();
				product.setProductId(rs.getString("productId"));
				product.setProductName(rs.getString("productName"));
				product.setPrice(rs.getDouble("price"));
				product.setCurrPrice(rs.getDouble("currPrice"));
				product.setDiscount(rs.getDouble("discount"));
				product.setFreight(rs.getDouble("freight"));
				product.setSize(rs.getString("size"));
				product.setNum(rs.getInt("num"));
				product.setBrandName(rs.getString("brandName"));
				product.setImage_h(rs.getString("image_h"));
				product.setImage_b(rs.getString("image_b"));
				product.setImage_s1(rs.getString("image_s1"));
				product.setImage_s2(rs.getString("image_s2"));
				product.setImage_s3(rs.getString("image_s3"));
				product.setImage_s4(rs.getString("image_s4"));
				product.setImage_s5(rs.getString("image_s5"));
				product.setCategoryId(rs.getString("categoryId"));
				product.setDesc1(rs.getString("Desc1"));
				product.setDesc2(rs.getString("Desc2"));
				product.setDesc3(rs.getString("Desc3"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			//关闭流
			DBUtil.closeAll(rs, sta, con);
		}
		//返回商品对象
		return product;
	}

	/**
	 * 根据分类Id查询商品的方法
	 * @param category 分类Id
	 * @return 商品集合
	 */
	@Override
	public List<Product> findProductByCategoryId(String categoryId) {
		//获得连接
		Connection con = DBUtil.getConnection();
		//创建预处理对象
		PreparedStatement sta = null;
		//创建结果集对象
		ResultSet rs = null;
		//商品对象
		Product product = null;
		//商品集合
		List<Product> products=new ArrayList<Product>();
		try {
			//sql语句
			String sql = "select * from product where categoryId=?";
			//给获得连接的预处理对象执行sql语句
			sta= con.prepareStatement(sql);
			//给占位符赋值
			sta.setString(1, categoryId);
			//执行预编译语句获得结果集对象
			rs = sta.executeQuery();
			//操作结果集
			if(rs.next()){
				product = new Product();
				product.setProductId(rs.getString("productId"));
				product.setProductName(rs.getString("productName"));
				product.setPrice(rs.getDouble("price"));
				product.setCurrPrice(rs.getDouble("currPrice"));
				product.setDiscount(rs.getDouble("discount"));
				product.setFreight(rs.getDouble("freight"));
				product.setSize(rs.getString("size"));
				product.setNum(rs.getInt("num"));
				product.setBrandName(rs.getString("brandName"));
				product.setImage_h(rs.getString("image_h"));
				product.setImage_b(rs.getString("image_b"));
				product.setImage_s1(rs.getString("image_s1"));
				product.setImage_s2(rs.getString("image_s2"));
				product.setImage_s3(rs.getString("image_s3"));
				product.setImage_s4(rs.getString("image_s4"));
				product.setImage_s5(rs.getString("image_s5"));
				product.setCategoryId(rs.getString("categoryId"));
				product.setDesc1(rs.getString("Desc1"));
				product.setDesc2(rs.getString("Desc2"));
				product.setDesc3(rs.getString("Desc3"));
				//添加商品
				products.add(product);
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			//关闭流
			DBUtil.closeAll(rs, sta, con);
		}
        //返回商品集合
		return products;
	}

	/**
	 * 根据分类Id分页查询商品的方法
	 * @param categoryId 分类Id
	 * @param start 开始参数
	 * @param end   结束参数
	 * @return 商品集合
	 */
	@Override
	public List<Product> findPagenationByCategoryId(String categoryId,
			int start, int end) {
		//获得连接
		Connection con = DBUtil.getConnection();
		//创建预处理对象
		PreparedStatement sta = null;
		//创建结果集对象
		ResultSet rs = null;
		//商品集合
		List<Product> productList = new ArrayList<Product>();
		try {
			//sql语句
			String sql="select * from product where categoryId =? limit ?,?";
			//给获得连接的预处理对象执行sql语句
			sta= con.prepareStatement(sql);
			//给占位符赋值
			sta.setString(1, categoryId);
			sta.setInt(2, start);
			sta.setInt(3, end);
			//执行预编译语句获得结果集对象
			rs = sta.executeQuery();
			//操作结果集
			while(rs.next()) {
				Product product=new Product();
				product.setProductId(rs.getString("productId"));
				product.setProductName(rs.getString("productName"));
				product.setPrice(rs.getDouble("price"));
				product.setCurrPrice(rs.getDouble("currPrice"));
				product.setDiscount(rs.getDouble("discount"));
				product.setFreight(rs.getDouble("freight"));
				product.setSize(rs.getString("size"));
				product.setNum(rs.getInt("num"));
				product.setBrandName(rs.getString("brandName"));
				product.setImage_h(rs.getString("image_h"));
				product.setImage_b(rs.getString("image_b"));
				product.setImage_s1(rs.getString("image_s1"));
				product.setImage_s2(rs.getString("image_s2"));
				product.setImage_s3(rs.getString("image_s3"));
				product.setImage_s4(rs.getString("image_s4"));
				product.setImage_s5(rs.getString("image_s5"));
				product.setCategoryId(rs.getString("categoryId"));
				product.setDesc1(rs.getString("Desc1"));
				product.setDesc2(rs.getString("Desc2"));
				product.setDesc3(rs.getString("Desc3"));
				
				// 添加当前对象
				productList.add(product);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			//关闭流
			DBUtil.closeAll(rs, sta, con);
		}
		//返回商品集合
		return productList;
	}

	/**
	 * 根据品牌名分页查询商品的方法
	 * @param brandName 品牌名
	 * @param start 开始参数
	 * @param end   结束参数
	 * @return 商品集合
	 */
	@Override
	public List<Product> findPagenationBybrandName(String brandName,int start,int end) {
		//获得连接
		Connection con = DBUtil.getConnection();
		//创建预处理对象
		PreparedStatement sta = null;
		//创建结果集对象
		ResultSet rs = null;
		//商品集合
		List<Product> productList = new ArrayList<Product>();
		try {
			//sql语句
			String sql="select * from product where brandName =? limit ?,?";
			//给获得连接的预处理对象执行sql语句
			sta= con.prepareStatement(sql);
            //给占位符赋值
			sta.setString(1,brandName);
			sta.setInt(2,start);
			sta.setInt(3,end);
			//执行预编译语句获得结果集对象
			rs = sta.executeQuery();
			//操作结果集
			while(rs.next()) {
				Product product=new Product();
				product.setProductId(rs.getString("productId"));
				product.setProductName(rs.getString("productName"));
				product.setPrice(rs.getDouble("price"));
				product.setCurrPrice(rs.getDouble("currPrice"));
				product.setDiscount(rs.getDouble("discount"));
				product.setFreight(rs.getDouble("freight"));
				product.setSize(rs.getString("size"));
				product.setNum(rs.getInt("num"));
				product.setBrandName(rs.getString("brandName"));
				product.setImage_h(rs.getString("image_h"));
				product.setImage_b(rs.getString("image_b"));
				product.setImage_s1(rs.getString("image_s1"));
				product.setImage_s2(rs.getString("image_s2"));
				product.setImage_s3(rs.getString("image_s3"));
				product.setImage_s4(rs.getString("image_s4"));
				product.setImage_s5(rs.getString("image_s5"));
				product.setCategoryId(rs.getString("categoryId"));
				product.setDesc1(rs.getString("Desc1"));
				product.setDesc2(rs.getString("Desc2"));
				product.setDesc3(rs.getString("Desc3"));
				
				// 添加当前对象
				productList.add(product);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			//关闭流
			DBUtil.closeAll(rs, sta, con);
		}
		//返回商品集合
		return productList;
	}

	/**
	 * 根据品牌名查询商品的方法
	 * @param brandName 品牌名
	 * @return 商品集合
	 */
	@Override
	public List<Product> findProductByBrandName(String brandName) {
		//获得连接
		Connection con = DBUtil.getConnection();
		//创建预处理对象
		PreparedStatement sta = null;
		//创建结果集对象
		ResultSet rs = null;
		//商品集合
		List<Product> productList = new ArrayList<Product>();
		try {
			//sql语句
			String sql="select * from product where brandName=?";
			//给获得连接的预处理对象执行sql语句
			sta= con.prepareStatement(sql);
			//给占位符赋值
			sta.setString(1,brandName);
			//执行预编译语句获得结果集对象
			rs = sta.executeQuery();
			//操作结果集
			while(rs.next()) {
				Product product=new Product();
				product.setProductId(rs.getString("productId"));
				product.setProductName(rs.getString("productName"));
				product.setPrice(rs.getDouble("price"));
				product.setCurrPrice(rs.getDouble("currPrice"));
				product.setDiscount(rs.getDouble("discount"));
				product.setFreight(rs.getDouble("freight"));
				product.setSize(rs.getString("size"));
				product.setNum(rs.getInt("num"));
				product.setBrandName(rs.getString("brandName"));
				product.setImage_h(rs.getString("image_h"));
				product.setImage_b(rs.getString("image_b"));
				product.setImage_s1(rs.getString("image_s1"));
				product.setImage_s2(rs.getString("image_s2"));
				product.setImage_s3(rs.getString("image_s3"));
				product.setImage_s4(rs.getString("image_s4"));
				product.setImage_s5(rs.getString("image_s5"));
				product.setCategoryId(rs.getString("categoryId"));
				product.setDesc1(rs.getString("Desc1"));
				product.setDesc2(rs.getString("Desc2"));
				product.setDesc3(rs.getString("Desc3"));
				
				// 添加当前对象
				productList.add(product);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			//关闭流
			DBUtil.closeAll(rs, sta, con);
		}
		//商品集合
		return productList;
	}

	/**
	 * 根据商品名分页查询商品的方法
	 * @param productName 商品名
	 * @param start 开始参数
	 * @param end   结束参数
	 * @return 商品集合
	 */
	@Override
	public List<Product> findProductByProductName(String productName,int start,int end) {
		//获得连接
		Connection con = DBUtil.getConnection();
		//创建预处理对象
		PreparedStatement sta = null;
		//创建结果集对象
		ResultSet rs = null;
		//商品集合
		List<Product> productList = new ArrayList<Product>();
		try {
			//sql语句
			String sql="select * from product where productName like ? limit ?,?";
			//给获得连接的预处理对象执行sql语句
			sta= con.prepareStatement(sql);
            //给占位符赋值
			sta.setString(1,"%"+productName+"%");
			sta.setInt(2,start);
			sta.setInt(3,end);
			//执行预编译语句获得结果集对象
			rs = sta.executeQuery();
			//操作结果
			while(rs.next()) {
				Product product=new Product();
				product.setProductId(rs.getString("productId"));
				product.setProductName(rs.getString("productName"));
				product.setPrice(rs.getDouble("price"));
				product.setCurrPrice(rs.getDouble("currPrice"));
				product.setDiscount(rs.getDouble("discount"));
				product.setFreight(rs.getDouble("freight"));
				product.setSize(rs.getString("size"));
				product.setNum(rs.getInt("num"));
				product.setBrandName(rs.getString("brandName"));
				product.setImage_h(rs.getString("image_h"));
				product.setImage_b(rs.getString("image_b"));
				product.setImage_s1(rs.getString("image_s1"));
				product.setImage_s2(rs.getString("image_s2"));
				product.setImage_s3(rs.getString("image_s3"));
				product.setImage_s4(rs.getString("image_s4"));
				product.setImage_s5(rs.getString("image_s5"));
				product.setCategoryId(rs.getString("categoryId"));
				product.setDesc1(rs.getString("Desc1"));
				product.setDesc2(rs.getString("Desc2"));
				product.setDesc3(rs.getString("Desc3"));
				
				// 添加当前对象
				productList.add(product);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			//关闭流
			DBUtil.closeAll(rs, sta, con);
		}
		
		//返回商品集合
		return productList;
	}

	/**
	 * 根据商品名查询商品的方法
	 * @param productName 商品名
	 * @return 商品集合
	 */
	public List<Product> findProductByProductName(String productName){
		//获得连接
		Connection con = DBUtil.getConnection();
		//创建预处理对象
		PreparedStatement sta = null;
		//创建结果集对象
		ResultSet rs = null;
		//商品集合
		List<Product> productList = new ArrayList<Product>();
		try {
			//sql语句
			String sql="select * from product where productName like ?";
			//给获得连接的预处理对象执行sql语句
			sta= con.prepareStatement(sql);
            //给占位符赋值
			sta.setString(1,"%"+productName+"%");
			//执行预编译语句获得结果集对象
			rs = sta.executeQuery();
			//操作结果
			while(rs.next()) {
				Product product=new Product();
				product.setProductId(rs.getString("productId"));
				product.setProductName(rs.getString("productName"));
				product.setPrice(rs.getDouble("price"));
				product.setCurrPrice(rs.getDouble("currPrice"));
				product.setDiscount(rs.getDouble("discount"));
				product.setFreight(rs.getDouble("freight"));
				product.setSize(rs.getString("size"));
				product.setNum(rs.getInt("num"));
				product.setBrandName(rs.getString("brandName"));
				product.setImage_h(rs.getString("image_h"));
				product.setImage_b(rs.getString("image_b"));
				product.setImage_s1(rs.getString("image_s1"));
				product.setImage_s2(rs.getString("image_s2"));
				product.setImage_s3(rs.getString("image_s3"));
				product.setImage_s4(rs.getString("image_s4"));
				product.setImage_s5(rs.getString("image_s5"));
				product.setCategoryId(rs.getString("categoryId"));
				product.setDesc1(rs.getString("Desc1"));
				product.setDesc2(rs.getString("Desc2"));
				product.setDesc3(rs.getString("Desc3"));
				
				// 添加当前对象
				productList.add(product);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			//关闭流
			DBUtil.closeAll(rs, sta, con);
		}
		//返回商品集合
		return productList;
	}
	
}
