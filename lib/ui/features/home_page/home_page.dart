import 'package:flutter/material.dart';
import 'package:spotify_responsive_clone/resources/colors.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView(
          children: [
            const SizedBox(height: 50),
            firstRow(),
            const SizedBox(height: 16),
            mostUsedPlaylists(),
            const SizedBox(height: 32),
            const Text(
              'Trending now',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: primaryFontColor,
              ),
            ),
            const SizedBox(height: 16),
            // horizontalPlayLists(),
            const SizedBox(height: 64),
            const Text(
              'Now releases for you',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: primaryFontColor,
              ),
            ),
            const SizedBox(height: 16),
            horizontalPlayLists(color: Colors.blue),
            const SizedBox(height: 16),
            const Text(
              'Recently played',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: primaryFontColor,
              ),
            ),
            const SizedBox(height: 16),
            horizontalPlayLists(color: Colors.purple, size: 100),
          ],
        ),
      ),
    );
  }

  SingleChildScrollView horizontalPlayLists(
      {Color color = Colors.red, double size = 130}) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          verticalPlayList(color: color, size: size),
          const SizedBox(width: 8),
          verticalPlayList(color: color, size: size),
          const SizedBox(width: 8),
          verticalPlayList(color: color, size: size),
          const SizedBox(width: 8),
          verticalPlayList(color: color, size: size),
          const SizedBox(width: 8),
          verticalPlayList(color: color, size: size),
          const SizedBox(width: 8),
          verticalPlayList(color: color, size: size),
        ],
      ),
    );
  }

  Widget verticalPlayList({Color color = Colors.red, double size = 130}) {
    return SizedBox(
      width: size,
      child: Flexible(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: size,
              color: color,
            ),
            const SizedBox(height: 4),
            const Text(
              'Music ##',
              style: TextStyle(color: primaryFontColor, fontSize: 14),
            ),
            const Text(
              'Single · ${'Singer #'}',
              style: TextStyle(color: secondaryFontColor, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }

  Widget mostUsedPlaylists() {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 800) {
        return Row(
          children: [
            mostUsedPlaylistTile(),
            const SizedBox(width: 8),
            mostUsedPlaylistTile(),
            const SizedBox(width: 8),
            mostUsedPlaylistTile(),
            const SizedBox(width: 8),
            mostUsedPlaylistTile(),
          ],
        );
      }
      return Column(
        children: [
          Row(
            children: [
              mostUsedPlaylistTile(),
              const SizedBox(width: 8),
              mostUsedPlaylistTile(),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              mostUsedPlaylistTile(),
              const SizedBox(width: 8),
              mostUsedPlaylistTile(),
            ],
          ),
        ],
      );
    });
  }

  Widget mostUsedPlaylistTile() {
    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Container(
          height: 70,
          color: Colors.grey.withOpacity(0.15),
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  color: Colors.green,
                ),
              ),
              const SizedBox(width: 4),
              const Text(
                'Music #',
                style: TextStyle(
                  color: primaryFontColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row firstRow() {
    return Row(
      children: [
        const Expanded(
          flex: 2,
          child: Text(
            'Good morning',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: primaryFontColor,
            ),
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(
                Icons.notifications_none,
                color: primaryIconColor,
              ),
              Icon(
                Icons.access_time_outlined,
                color: primaryIconColor,
              ),
              Icon(
                Icons.settings_outlined,
                color: primaryIconColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
