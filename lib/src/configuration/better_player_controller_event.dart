///Internal events of BetterPlayerController, used in widgets to update state.
enum BetterPlayerControllerEvent {
  ///Fullscreen mode has started.
  openFullscreen,

  ///Fullscreen mode has ended.
  hideFullscreen,

  ///Subtitles changed.
  changeSubtitles,

  ///New data source has been set.
  setupDataSource,

  ///Turn on the mirror
  turnOnVideoMirror,

  ///Turn off the mirror
  turnOffVideoMirror,

  showPlaceHolder,

  hidePlaceHolder,

  //Video has started.
  play
}
