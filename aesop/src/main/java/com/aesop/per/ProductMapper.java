package com.aesop.per;

import java.util.List;

import com.aesop.domain.Product;
import com.aesop.domain.ProductVO;

public interface ProductMapper {

	int getTotalCount();
	List<ProductVO> getProductList();
	List<ProductVO> getCategoryList(String category);
	ProductVO getProduct(int pno);
	void insProduct(Product product);
	void upProduct(Product product);
	void delProduct(int pno);
}
