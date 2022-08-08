
// Global variable
  bool isLikeAnimating = false;


// widget
AnimatedOpacity(
  duration: const Duration(milliseconds: 200),
  opacity: isLikeAnimating ? 1 : 0,
  child: LikeAnimation(
    isAnimating: isLikeAnimating,
    duration: const Duration(
      milliseconds: 400,
    ),
    onEnd: () {
      setState(() {
        isLikeAnimating = false;
      });
    },
    child: Icon(
      Icons.favorite,
      color: Colors.white,
      size: 111,
    ),
  ),
),