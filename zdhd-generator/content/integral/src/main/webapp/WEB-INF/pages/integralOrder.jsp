<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<script type="application/javascript">
    $(function() {
        $("#integralOrderTable").DataTable({
            processing: true,
            serverSide: true,
            searching: false,
            ajax: {
                url: "integralOrder.json",
                data: function(data) {
                    var arr = $("#integralOrderForm").serializeArray();
                    for(var i = 0; i < arr.length; i++) {
                        var param = arr[i];
                        data[param.name] = param.value;
                    }
                }
            },
            order: [[ 0, "asc" ]],
            columns: [
                { data: "accountId", title: "??????ID" },
                { data: "paymentTime", title: "????????????" },
                { data: "productNoSeq", title: "????????????" },
                { data: "integralStatus", title: "????????????" },
                { data: "orderNo", title: "?????????" },
                { data: "productName", title: "????????????" },
                { data: "integral", title: "????????????" },
                { data: "cash", title: "????????????" },
                { data: "platform", title: "??????" },
                { data: "motifyTime", title: "" },
                { data: "status", title: "??????" },
                { data: "integralConsumeTime", title: "????????????" },
                { data: "paymentStatus", title: "????????????" },
                { data: "channel", title: "??????" },
                { data: "productNo", title: "????????????" },
                { data: "paymentCash", title: "????????????" },
                { data: "accountNo", title: "????????????" },
                { data: "deliveryStatus", title: "????????????" },
                { data: null, title: "??????", render : function(data, type, full, meta) {
                    $("#editIntegralOrderDialog").data("" + data.id, data);
                    return '<button name="edit" class="btn btn-warning btn-xs" type="button" onclick="openEditDialog(\'#editIntegralOrderDialog\', \''+ data.id +'\')">??????</button>';
                } }
            ]
        });

        $('#editIntegralOrderDialog').dialog({
            width: 800,
            refreshTitleTarget : "",
            autoOpen: false
        });

        $('#editIntegralOrderForm').validate();
    });

</script>
<div id="page-content" class="page-content">
    <div class="page-header">
        <h1>
            ??????
            <span class="pull-right">
                <span class="pull-right">
                    <button class="btn-common" onclick="openNewDialog('#editIntegralOrderDialog')" type="button">
                        <i class="icon-edit"></i>??????
                    </button>
                </span>
            </span>
        </h1>
    </div>
    <form id="integralOrderForm" table="#integralOrderTable">
        <div class="row">
            <div class="col-xs-2 form-group">
                <label class="col-xs-5">??????ID:</label>
                <input class="col-xs-7" name="accountId" type="text" />
            </div>
            <div class="col-xs-2 form-group">
                <label class="col-xs-5">????????????:</label>
                <input class="col-xs-7" name="paymentTime" type="date" />
            </div>
            <div class="col-xs-2 form-group">
                <label class="col-xs-5">????????????:</label>
                <input class="col-xs-7" name="productNoSeq" type="text" />
            </div>
            <div class="col-xs-2 form-group">
                <label class="col-xs-5">????????????:</label>
                <input class="col-xs-7" name="integralStatus" type="text" />
            </div>
            <div class="col-xs-2 form-group">
                <label class="col-xs-5">?????????:</label>
                <input class="col-xs-7" name="orderNo" type="text" />
            </div>
            <div class="col-xs-2 form-group">
                <label class="col-xs-5">????????????:</label>
                <input class="col-xs-7" name="productName" type="text" />
            </div>
            <div class="col-xs-2 form-group">
                <label class="col-xs-5">????????????:</label>
                <input class="col-xs-7" name="integral" type="number" />
            </div>
            <div class="col-xs-2 form-group">
                <label class="col-xs-5">????????????:</label>
                <input class="col-xs-7" name="cash" type="number" />
            </div>
            <div class="col-xs-2 form-group">
                <label class="col-xs-5">??????:</label>
                <input class="col-xs-7" name="platform" type="text" />
            </div>
            <div class="col-xs-2 form-group">
                <label class="col-xs-5">:</label>
                <input class="col-xs-7" name="motifyTime" type="date" />
            </div>
            <div class="col-xs-2 form-group">
                <label class="col-xs-5">??????:</label>
                <input class="col-xs-7" name="status" type="text" />
            </div>
            <div class="col-xs-2 form-group">
                <label class="col-xs-5">????????????:</label>
                <input class="col-xs-7" name="integralConsumeTime" type="date" />
            </div>
            <div class="col-xs-2 form-group">
                <label class="col-xs-5">????????????:</label>
                <input class="col-xs-7" name="paymentStatus" type="text" />
            </div>
            <div class="col-xs-2 form-group">
                <label class="col-xs-5">??????:</label>
                <input class="col-xs-7" name="channel" type="text" />
            </div>
            <div class="col-xs-2 form-group">
                <label class="col-xs-5">????????????:</label>
                <input class="col-xs-7" name="productNo" type="text" />
            </div>
            <div class="col-xs-2 form-group">
                <label class="col-xs-5">????????????:</label>
                <input class="col-xs-7" name="paymentCash" type="number" />
            </div>
            <div class="col-xs-2 form-group">
                <label class="col-xs-5">????????????:</label>
                <input class="col-xs-7" name="accountNo" type="number" />
            </div>
            <div class="col-xs-2 form-group">
                <label class="col-xs-5">????????????:</label>
                <input class="col-xs-7" name="deliveryStatus" type="text" />
            </div>
            <div class="col-xs-4 form-group">
                <div class="col-xs-1"></div>
                <button class="btn-search col-xs-3" type="button" style="width:70px;">
                    <i class="icon-edit"></i>??????
                </button>
                <div class="col-xs-1"></div>
                <button class="btn-clear col-xs-3" type="reset" style="width:70px;">
                    <i class="icon-edit"></i>??????
                </button>
            </div>
        </div>
    </form>
    <table id="integralOrderTable" class="dataTable"></table>
</div>
<div id="editIntegralOrderDialog" style="display: none">
    <form id="editIntegralOrderForm" model="integralOrder" table="#integralOrderTable" class="form-horizontal" action="${ctx}/integralOrder/save.json" enctype="multipart/form-data" method="post">
        <input name="id" type="hidden"/>
        <div class="row">
            <div class="col-xs-6 form-row">
                <div>
                    <label>??????ID:</label>
                    <input name="accountId" type="text" />
                </div>
                <div>
                    <label>????????????:</label>
                    <input name="paymentTime" type="date" />
                </div>
                <div>
                    <label>????????????:</label>
                    <input name="productNoSeq" type="text" />
                </div>
                <div>
                    <label>????????????:</label>
                    <input name="integralStatus" type="text" />
                </div>
                <div>
                    <label>?????????:</label>
                    <input name="orderNo" type="text" />
                </div>
                <div>
                    <label>????????????:</label>
                    <input name="productName" type="text" />
                </div>
                <div>
                    <label>????????????:</label>
                    <input name="integral" type="number" />
                </div>
                <div>
                    <label>????????????:</label>
                    <input name="cash" type="number" />
                </div>
                <div>
                    <label>??????:</label>
                    <input name="platform" type="text" />
                </div>
                <div>
                    <label>:</label>
                    <input name="motifyTime" type="date" />
                </div>
                <div>
                    <label>??????:</label>
                    <input name="status" type="text" />
                </div>
                <div>
                    <label>????????????:</label>
                    <input name="integralConsumeTime" type="date" />
                </div>
                <div>
                    <label>????????????:</label>
                    <input name="paymentStatus" type="text" />
                </div>
                <div>
                    <label>??????:</label>
                    <input name="channel" type="text" />
                </div>
                <div>
                    <label>????????????:</label>
                    <input name="productNo" type="text" />
                </div>
                <div>
                    <label>????????????:</label>
                    <input name="paymentCash" type="number" />
                </div>
                <div>
                    <label>????????????:</label>
                    <input name="accountNo" type="number" />
                </div>
                <div>
                    <label>????????????:</label>
                    <input name="deliveryStatus" type="text" />
                </div>
            </div>
        </div>
    </form>
</div>