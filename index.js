(function() {
  var isOverview;

  isOverview = false;

  Flowtime.showProgress(true);

  Flowtime.parallaxInPx(true);

  Flowtime.start();

  Flowtime.addEventListener('flowtimenavigation', function(event) {
    isOverview = event.isOverview;
  }, false);

  document.onkeypress = function(event) {
    if ((event.keyCode || event.which) === 13 && !isOverview) {
      if (event.shiftKey) {
        Flowtime.prev(false);
      } else {
        Flowtime.next(false);
      }
    }
  };

}).call(this);
