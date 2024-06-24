class Media {
  void play() {
    print("Playing media...");
  }
}

class Song extends Media {
  String? artist;
  Song(this.artist);

  @override
  void play() {
    if (artist != null) {
      print("Playing song by $artist...");
    } else {
      print("Playing song by unknown artist...");
    }
  }
}

void main() {
  Media media = Media();
  media.play();
  Song songWithArtist = Song("Adele");
  songWithArtist.play();
  Song songWithoutArtist = Song(null);
  songWithoutArtist.play();
}
