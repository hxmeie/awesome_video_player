///Additional configuration used in Better Player Playlist player.
class BetterPlayerPlaylistConfiguration {
  ///How long user should wait for next video
  final Duration nextVideoDelay;

  ///Should videos be looped
  final bool loopVideos;

  ///Index of video that will start on playlist start. Id must be less than
  ///elements in data source list. Default is 0.
  final int initialStartIndex;

  ///When playing a video in full-screen mode, should it exit full-screen mode before playing
  ///the next video. Default is false.
  final bool exitFullscreenWhenPlayNext;

  ///Whether to automatically play the next video. Default is true.
  final bool enableAutoPlayNext;

  const BetterPlayerPlaylistConfiguration({
    this.nextVideoDelay = const Duration(milliseconds: 3000),
    this.loopVideos = true,
    this.enableAutoPlayNext = true,
    this.exitFullscreenWhenPlayNext = false,
    this.initialStartIndex = 0,
  });
}
