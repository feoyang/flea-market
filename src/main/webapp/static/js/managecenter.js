//设置提示框消息
const alertBox = $('#alert-box')
const alert = (message, type) => {
    console.log(message, type)
    const wrapper = document.createElement('div')
    wrapper.innerHTML = [`<div class="alert alert-${type} alert-dismissible position-fixed" role="alert">${message}</div>`].join('')
    alertBox.innerHTML = ''
    alertBox.append(wrapper)
    alertBox.show()
    setTimeout(function () {
        alertBox.fadeOut()
    }, 1000)
}

//下架商品模态框
const deleteModal = document.getElementById('deleteModal')
deleteModal.addEventListener('show.bs.modal', event => {
    const button = event.relatedTarget
    const goods_id = button.getAttribute('data-bs-whatever')
    const modalUrl = deleteModal.querySelector('a')
    modalUrl.href = "/goods/delete?id=" + goods_id
})
const deleteConfirmButton = deleteModal.querySelector('a')
deleteConfirmButton.onclick = function () {
    alert('删除成功', 'success')
}
//修改商品模态框
const editModal = document.getElementById('editModal')
editModal.addEventListener('show.bs.modal', event => {
    const button = event.relatedTarget
    const goodsId = button.getAttribute("data-bs-whatever")
    const goodsName = button.getAttribute("name")
    const description = button.getAttribute("description")
    const degree = button.getAttribute("degree")
    const price = button.getAttribute("price")
    const cate = button.getAttribute("cate")
    editModal.setAttribute('goodsId', goodsId)
    document.getElementById('goodsName').value = goodsName
    document.getElementById('description').value = description
    document.getElementById('degree').value = degree
    document.getElementById('price').value = price
    document.getElementById('cate').value = cate
})
//提交修改信息
document.getElementById('editSubmitButton').onclick = function () {
    // 获取表单数据
    const id = document.getElementById('editModal').getAttribute('goodsId')
    console.log(id)
    const goodsName = $("#goodsName").val();
    const price = $("#price").val();
    const description = $("#description").val();
    const degree = $("#degree").val();
    const cate = $("#cate").val();

    // 构造表单数据对象
    const goodsData = {
        id: id,
        goodsName: goodsName,
        price: price,
        description: description,
        degree: degree,
        cate: cate
    };

    // 发送 AJAX 请求
    $.ajax({
        url: '/order/submitEdition',  // 替换为实际的后端接口
        method: 'POST',
        data: goodsData,
        success: function (response) {
            // 请求成功的处理逻辑
            alert('修改成功', 'success');
        },
        error: function (error) {
            // 请求失败的处理逻辑
            alert('修改失败，请稍后充实', 'danger');
        }
    });
}
//卖家确认出售模态框
const sellerConfirmModal = document.getElementById('sellerConfirmModal')
sellerConfirmModal.addEventListener('show.bs.modal', async event => {
    const button = event.relatedTarget
    const goodsId = button.getAttribute('data-bs-whatever')
    // Send an asynchronous request to the server
    const response = await fetch(`/order/check?status=buyercancled&id=${goodsId}`);

    // Assuming the server returns JSON, parse the response
    const result = await response.json();

    if (result === 'true') {
        alert('买家已取消订单，无法确认出售', 'danger')
        event.preventDefault();
    } else {
        const modalUrl = deleteModal.querySelector('a')
        modalUrl.href = "/order/sellerconfirm?id=" + goodsId
    }
})
const sellerConfirmButton = sellerConfirmModal.querySelector('a')
sellerConfirmButton.onclick = function () {
    alert('确认出售成功', 'success')
}
// 买家确认购买模态框
const buyerConfirmModal = document.getElementById('buyerConfirmModal');
buyerConfirmModal.addEventListener('show.bs.modal', async event => {
    const button = event.relatedTarget;
    const goodsId = button.getAttribute('data-bs-whatever');
    const cancelResponse = await fetch(`/order/check?status=buyercancled&id=${goodsId}`);
    const cancelResult = await cancelResponse.json();
    if (cancelResult === 'true') {
        alert('卖家已取消交易，无法确认购买', 'danger')
        event.preventDefault();
    } else {
        const confirmResponse = await fetch(`/order/check?status=sellerconfirmed&id=${goodsId}`);
        const confirmResult = confirmResponse.json()
        if (confirmResult === 'false') {
            alert('请等待或联系卖家确认出售', 'danger')
            event.preventDefault();
        } else {
            const modalUrl = buyerConfirmModal.querySelector('a');
            modalUrl.href = "/order/buyerconfirm?id=" + goodsId;
        }
    }
});
const buyerConfirmButton = buyerConfirmModal.querySelector('a');
buyerConfirmButton.onclick = function () {
    alert('确认购买成功', 'success');
};
//卖家取消交易/买家取消订单模态框
const cancelModal = document.getElementById('cancelModal');
cancelModal.addEventListener('show.bs.modal', event => {
    const button = event.relatedTarget;
    const goodsId = button.getAttribute('data-bs-whatever');
    const modalUrl = cancelModal.querySelector('a');
    modalUrl.href = "/order/cancel?id=" + goodsId;
});
const cancelConfirmButton = cancelModal.querySelector('a');
cancelConfirmButton.onclick = function () {
    alert('取消成功', 'success');
};
// 卖家删除订单模态框
const sellerDeleteModal = document.getElementById('sellerDeleteModal');
sellerDeleteModal.addEventListener('show.bs.modal', event => {
    const button = event.relatedTarget;
    const goodsId = button.getAttribute('data-bs-whatever');
    const modalUrl = sellerDeleteModal.querySelector('a');
    modalUrl.href = "/order/sellerdelete?id=" + goodsId;
});
sellerDeleteButton = sellerDeleteModal.querySelector('a');
sellerDeleteButton.onclick = function () {
    alert('删除成功', 'success');
};
// 买家删除订单模态框
const buyerDeleteModal = document.getElementById('buyerDeleteModal');
buyerDeleteModal.addEventListener('show.bs.modal', event => {
    const button = event.relatedTarget;
    const goodsId = button.getAttribute('data-bs-whatever');
    const modalUrl = buyerDeleteModal.querySelector('a');
    modalUrl.href = "/order/buyerdelete?id=" + goodsId;
});
buyerDeleteButton = buyerDeleteModal.querySelector('a');
buyerDeleteButton.onclick = function () {
    alert('删除成功', 'success');
};
