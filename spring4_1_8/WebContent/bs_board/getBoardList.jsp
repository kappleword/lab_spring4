<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%
	List<Map<String,Object>> boardList = null;
	boardList = (List<Map<String,Object>>)request.getAttribute("boardList");
	int size = 0;
	if(boardList!=null){
		size = boardList.size();
	}
	out.print("size:"+size);
%>    
<%@ include file="header.jsp" %>
                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Tables</h1>
                    <p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below.
                        For more information about DataTables, please visit the <a target="_blank"
                            href="https://datatables.net">official DataTables documentation</a>.</p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>글번호</th>
                                            <th>제목</th>
                                            <th>작성일</th>
                                            <th>첨부파일</th>
                                            <th>조회수</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>글번호</th>
                                            <th>제목</th>
                                            <th>작성일</th>
                                            <th>첨부파일</th>
                                            <th>조회수</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
<%
	for(int i=0;i<boardList.size();i++){
		Map<String,Object> rmap = boardList.get(i);
%>                                    
                                        <tr>
                                            <td><%=rmap.get("BM_NO") %></td>
                                            <td><%=rmap.get("BM_TITLE") %></td>
                                            <td><%=rmap.get("BM_DATE") %></td>
                                            <td><%=rmap.get("BS_FILE") %></td>
                                            <td><%=rmap.get("BM_HIT") %></td>
                                        </tr>
<%
	}
%>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->
<%@ include file="footer.jsp" %>