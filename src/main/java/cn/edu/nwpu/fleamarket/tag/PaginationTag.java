package cn.edu.nwpu.fleamarket.tag;
import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

/**
 * 分页标签
 *
 * */
public class PaginationTag extends SimpleTagSupport {

    private String status;
    private int currentPage;
    private int totalPage;
    private String goodsName;

    public void setStatus(String status) {
        this.status = status;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public void setTotalPage(int totalPage) {
        if(totalPage==0)
        {
            totalPage=1;
        }
        this.totalPage = totalPage;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    @Override
    public void doTag() throws JspException, IOException {

        getJspContext().getOut().print("<div class=\"pagination-tag\">");
        getJspContext().getOut().print("<a href=\"" +"/views/managecenter" + "?status=" + status + "&currentPage=" + (currentPage - 1) + "&searchInput="+goodsName+ "\">上一页</a>");
        getJspContext().getOut().print("<a id=\"currentPage\">第" + (currentPage + 1) + "页</a>");
        getJspContext().getOut().print("<a href=\"" + "/views/managecenter" + "?status=" + status + "&currentPage=" + (currentPage + 1) +"&searchInput="+goodsName+"\">下一页</a>");
        getJspContext().getOut().print("<a id=\"totalpage\">共" + (totalPage ) + "页</a>");
        getJspContext().getOut().print("</div>");
        System.out.println("zheshitag");
    }
}
