$('#micropost_image').bind('change', function() {
  var size_in_megabytes = this.files[0].size/1024/1024;
  if (size_in_megabytes > 5) {
    alert('５メガバイト以上の大きすぎるファイルです。小さいファイルを指定して下さい。');
  }
});
