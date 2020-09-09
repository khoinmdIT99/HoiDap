function AjaxPostAsync(url, objAjax, successCallback) {
    AjaxRequestClientAPI("POST", url, objAjax, successCallback, true, "json");
}
function AjaxGetAsync(url, objAjax, successCallback) {
    AjaxRequestClientAPI("GET", url, objAjax, successCallback, true, "json");
}
function AjaxPutAsync(url, objAjax, successCallback) {
    AjaxRequestClientAPI("PUT", url, objAjax, successCallback, true, "json");
}
function AjaxDeleteAsync(url, objAjax, successCallback) {
    AjaxRequestClientAPI("DELETE", url, objAjax, successCallback, true, "json");
}

function AjaxPost(url, objAjax, successCallback) {
    AjaxRequestClientAPI("POST", url, objAjax, successCallback, false, "json");
}
function AjaxGet(url, objAjax, successCallback) {
    AjaxRequestClientAPI("GET", url, objAjax, successCallback, false, "json");
}
function AjaxPut(url, objAjax, successCallback) {
    AjaxRequestClientAPI("PUT", url, objAjax, successCallback, false, "json");
}
function AjaxDelete(url, objAjax, successCallback) {
    AjaxRequestClientAPI("DELETE", url, objAjax, successCallback, false, "json");
}
function AjaxRequestClientAPI(type, url, objAjax, successCallback, async, dataType) {
    var parameters = undefined, divLoading = undefined, isLoading = false;
    if (objAjax !== undefined && objAjax !== null) {
        parameters = objAjax.parameters;
        divLoading = objAjax.divLoading;
    }
    if (divLoading !== undefined && divLoading !== "") {
        $(divLoading).loading("toggle");
        isLoading = true;
    }
    $.ajax({
        type: type === undefined ? "POST" : type,
        url: url === undefined ? "" : url,
        contentType: "application/json; charset=utf-8",
        data: parameters === undefined ? "" : parameters,
        dataType: dataType === undefined ? "json" : dataType,
        async: async === undefined ? true : async,
        crossDomain: true,
        beforeSend: function (xhr) {
            xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
            xhr.setRequestHeader("Authorization", "Bearer " + GetCookie("access_token"));
        },
        success: function (data) {
            if (data.data !== undefined)
                data = data.data;
            if (isLoading)
                $(":loading").loading("stop");
            if (successCallback !== undefined && typeof successCallback === "function") successCallback(data);
        },
        error: function (xhr, textStatus) {
            if (isLoading)
                $(":loading").loading("stop");
            if (xhr.status === 400 || xhr.status === 401) {
                console.log("StatusText: " + xhr.statusText + ", Message: " + xhr.responseJSON.Message);
                SwalMessage(xhr.responseJSON.Message);
                return;
            } else {
                var message = xhr.responseText !== undefined ? xhr.responseText : textStatus;
                console.log(message);
                SwalMessage("Có lỗi xảy ra. Xin vui lòng thử lại sau hoặc thông báo với quản trị. Chi tiết:" + xhr.responseText);
                return;
            }
        }
    });
}
function AjaxLoadPartial(url, divLoading, successCallback) {
    AjaxRequestPartial(url, divLoading, successCallback);
}
function AjaxRequestPartial(url, divLoading, successCallback) {
    var isLoading = false;
    if (divLoading !== undefined && divLoading !== "") {
        $(divLoading).loading("toggle");
        isLoading = true;
    }
    $.ajax({
        type: "GET",
        url: url === undefined ? "" : url,
        async: true,
        success: function (data) {
            if (data.data !== undefined)
                data = data.data;
            if (isLoading)
                $(":loading").loading("stop");
            if (successCallback !== undefined && typeof successCallback === "function") successCallback(data);
        },
        error: function (xhr, textStatus) {
            if (isLoading)
                $(":loading").loading("stop");
            if (xhr.status === 400 || xhr.status === 401) {
                console.log("StatusText: " + xhr.statusText + ", Message: " + xhr.responseJSON.Message);
                SwalMessage(xhr.responseJSON.Message);
                return;
            } else {
                var message = xhr.responseText !== undefined ? xhr.responseText : textStatus;
                console.log(message);
                SwalMessage("Có lỗi xảy ra. Xin vui lòng thử lại sau hoặc thông báo với quản trị. Chi tiết:" + xhr.responseText);
                return;
            }
        }
    });
}

/*SetCookie*/
function SetCookie(cname, cvalue, exdays) {
    var d = new Date();
    d.setTime(d.getTime() + exdays * 24 * 60 * 60 * 1000);
    var expires = "expires=" + d.toUTCString();
    document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
}
/*GetCookie*/
function GetCookie(cname) {
    if (document.cookie === "") return "";
    var name = cname + "=";
    try {
        var ca = document.cookie.split(";");
        for (var i = 0; i < ca.length; i++) {
            var c = ca[i];
            while (c.charAt(0) === " ") {
                c = c.substring(1);
            }
            if (c.indexOf(name) === 0) {
                return c.substring(name.length, c.length);
            }
        }
        return "";
    } catch (e) {
        return "";
    }
}
/*CreateURL*/
function CreateURL(prefix, objValue) {
    if (prefix === undefined) return "";
    if (objValue === undefined) return prefix;
    var url = prefix + "?";
    for (var prop in objValue) {
        if (objValue.hasOwnProperty(prop)) {
            url += prop + "=" + objValue[prop] + "&";
        }
    }
    return (url + "*").replace("&*", "");
}
/*Phân trang quản trị*/
function PaginationPageAdmin(totalPage, prefixUrl, objValue, functionLoadResult) {
    PaginationPageAdminMain("gg-pagination-footer", "table-body", totalPage, prefixUrl, objValue, functionLoadResult);
}
function PaginationPageAdminMain(idpagination, idResult, totalPage, prefixUrl, objValue, functionLoadResult) {
    if (totalPage === 0) totalPage = 1;
    $("#" + idpagination).twbsPagination({
        totalPages: totalPage,
        visiblePages: 4,
        first: '<span data-toggle="popover" data-trigger="hover" data-placement="top" data-content="Trang đầu tiên" class="fa fa-step-backward"></span>',
        last: '<span data-toggle="popover" data-trigger="hover" data-placement="top" data-content="Trang cuối cùng" class="fa fa-step-forward"></span>',
        prev: '<span data-toggle="popover" data-trigger="hover" data-placement="top" data-content="Trang trước" class="fa fa-chevron-left"></span>',
        next: '<span data-toggle="popover" data-trigger="hover" data-placement="top" data-content="Trang sau" class="fa fa-chevron-right"></span>',
        onPageClick: function (event, page) {
            AjaxLoadPartial(CreateURL(prefixUrl, objValue) + page, undefined,
                function (html) {
                    $("#" + idResult).html(html);
                    LoadSkill();
                    if (functionLoadResult !== undefined)
                        functionLoadResult();
                });
        }
    });
}

function LoadPaginationPageInfoLog(totalPage, urlLoadContent) {
    $('#gg-pagination-footer-log').twbsPagination({
        totalPages: totalPage,
        visiblePages: 4,
        first: '<span data-toggle="popover" data-trigger="hover" data-placement="top" data-content="Trang đầu tiên" class="fa fa-step-backward"></span>',
        last: '<span data-toggle="popover" data-trigger="hover" data-placement="top" data-content="Trang cuối cùng" class="fa fa-step-forward"></span>',
        prev: '<span data-toggle="popover" data-trigger="hover" data-placement="top" data-content="Trang trước" class="fa fa-chevron-left"></span>',
        next: '<span data-toggle="popover" data-trigger="hover" data-placement="top" data-content="Trang sau" class="fa fa-chevron-right"></span>',
        onPageClick: function (event, page) {
            AjaxLoadPartial(urlLoadContent + page, undefined,
                function (html) {
                    $("#table-body-log").html(html);
                });
        }
    });
}

function LoadPaginationPageInfo(totalPage, urlLoadContent) {
    if (totalPage === 0)
        totalPage = 1;
    $('#gg-pagination-footer').twbsPagination({
        totalPages: totalPage,
        visiblePages: 4,
        first: '<span data-toggle="popover" data-trigger="hover" data-placement="top" data-content="Trang đầu tiên" class="fa fa-step-backward"></span>',
        last: '<span data-toggle="popover" data-trigger="hover" data-placement="top" data-content="Trang cuối cùng" class="fa fa-step-forward"></span>',
        prev: '<span data-toggle="popover" data-trigger="hover" data-placement="top" data-content="Trang trước" class="fa fa-chevron-left"></span>',
        next: '<span data-toggle="popover" data-trigger="hover" data-placement="top" data-content="Trang sau" class="fa fa-chevron-right"></span>',
        onPageClick: function (event, page) {
            AjaxLoadPartial(urlLoadContent + page, undefined,
                function (html) {
                    $("#table-body").html(html);
                });
        }
    });
}
/**
 * Phân trang hệ thống
 * @param {any} idPagination ID triển khai phân trang
 * @param {any} totalPage    Tổng số trang
 * @param {any} urlLoadContent URL lấy nội dung khi có sự thay đổi trang(page), lưu ý "page=" phải ở cuối URL để hứng page
 * @param {any} idLoadContent  ID để load nội dung khi có sự thay đổi trang(page)
 */

function PaginationExamOnline(idPagination, totalPage, urlLoadContent, idLoadContent, functionLoadResult) {
    $("#" + idPagination).twbsPagination({
        totalPages: totalPage,
        visiblePages: 4,
        first: '<span data-toggle="popover" data-trigger="hover" data-placement="top" data-content="Trang đầu tiên" class="glyphicon glyphicon-step-backward"></span>',
        last: '<span data-toggle="popover" data-trigger="hover" data-placement="top" data-content="Trang cuối cùng" class="glyphicon glyphicon-step-forward"></span>',
        prev: '<span data-toggle="popover" data-trigger="hover" data-placement="top" data-content="Trang trước" class="glyphicon glyphicon-chevron-left"></span>',
        next: '<span data-toggle="popover" data-trigger="hover" data-placement="top" data-content="Trang sau" class="glyphicon glyphicon-chevron-right"></span>',
        onPageClick: function (event, page) {
            if (window.isPaginationFirst && page === 1) { window.isPaginationFirst = false; return; }
            AjaxLoadPartial(urlLoadContent + page, "body", function (html) {
                $("#" + idLoadContent).html(html);
                if (functionLoadResult !== undefined)
                    functionLoadResult();
            });
        }
    });
}