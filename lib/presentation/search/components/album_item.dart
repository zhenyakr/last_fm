import 'package:flutter/material.dart';

class AlbumItem extends StatelessWidget {
  const AlbumItem(
      {Key? key,
      required this.url,
      required this.subtitle,
      required this.title,
      required this.onTap})
      : super(key: key);

  final String title;
  final String subtitle;
  final String url;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      child: InkWell(
        onTap: onTap,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                height: 250.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                    image: NetworkImage(url),
                    onError: (o, s) => Text(
                      'Sorry, something went wrong',
                    ),
                    scale: 1.0,
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.grey,
                      BlendMode.modulate,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 14,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    3.0,
                  ),
                  //color: Colors.grey[800]?.withOpacity(0.6),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5.0,
                    horizontal: 7.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        subtitle,
                        style: const TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
