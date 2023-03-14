$(function () {

    // $('input').iCheck({
    //     checkboxClass: 'icheckbox_square-blue',
    //     radioClass: 'iradio_square-blue',
    //     increaseArea: '20%' /* optional */
    // });

    $('.sidebar-menu a').each(function (){
       let location = window.location.protocol + '//' + window.location.host + window.location.pathname;
       let link = this.href;
       if(link == location){
           $('.sidebar-menu li').removeClass('active');
           $(this).parent().addClass('active');
           $(this).closest('.treeview').addClass('active');
       }
    });
});