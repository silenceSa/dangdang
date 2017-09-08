package com.yidu.dangdang.util;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class ParseExcel {

	private static List<List<String>> exerows = new ArrayList<List<String>>();
	
	public static List<List<String>> readXml(String fileName) {
		boolean isE2007 = false; // 判断是否是excel2007格式
		Workbook wb = null;
		if (fileName.endsWith("xlsx"))
			isE2007 = true;
		try {
			InputStream input = new FileInputStream(fileName); // 建立输入流
			// 根据文件格式(2003或者2007)来初始化
			if (isE2007)
				wb = new XSSFWorkbook(input);
			else
				wb = new HSSFWorkbook(input);
			Sheet sheet = wb.getSheetAt(0); // 获得第一张工作表
			// 获得第一个表单的迭代器
			Iterator<Row> rows = sheet.rowIterator(); 
			//迭代行
			while (rows.hasNext()) {
				//获得下一行
				Row row = rows.next(); 
				//获得当前行的迭代器
				Iterator<Cell> cells = row.cellIterator();
				//每一行的数据集合
				List<String> exells = new ArrayList<String>();
				//迭代当前行的每个单元格添加数据
				while (cells.hasNext()) {
					//获得下一个单元格
					Cell cell = cells.next();
					switch (cell.getCellType()) { // 根据cell中的类型来输出数据
					case HSSFCell.CELL_TYPE_NUMERIC:
						System.out.println(cell.getNumericCellValue());
						break;
					case HSSFCell.CELL_TYPE_STRING:
						exells.add(cell.getStringCellValue());
						break;
					case HSSFCell.CELL_TYPE_BOOLEAN:
						System.out.println(cell.getBooleanCellValue());
						break;
					case HSSFCell.CELL_TYPE_FORMULA:
						System.out.println(cell.getCellFormula());
						break;
					default:
						System.out.println("unsuported sell type");
						break;
					}
				}
				//添加一行数据
				exerows.add(exells);
			}
		} catch (IOException ex) {
			ex.printStackTrace();
		}finally{
			try {
				wb.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		
		return exerows;
	}
	
	
}
