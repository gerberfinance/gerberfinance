//vimeo videos
var vimeo = {
    videos: [],
    currentVideo: null,
    init: function (element, i) {
        
      var videoData = {
            'title': $(element).html(),
            'id': 'video-' + i,
            'url': $(element).attr('href')
        };

        $.getJSON('http://www.vimeo.com/api/oembed.json?url=' + encodeURIComponent(videoData.url) + '&api=1&player_id='+ videoData.id +'&width=300&callback=?', function(data){
        
        $(element).html(data.html);
        $(element).find('iframe').load(function(){
                player = this;
                $(player).attr('id', videoData.id);
                $f(player)
                .addEvent('ready', function(player_id){
                    vimeo.videos.push($f(player_id));
                })
                .addEvent('play', function(player_id){
                    if (vimeo.currentVideo != null) vimeo.currentVideo.api('pause');
                    vimeo.currentVideo = $f(player_id);
                });
            });
        });
    }
}
      

$(document).ready(function () {
    $('a.vimeo').each(function(i) {
        vimeo.init(this, i);
    });
});        
​