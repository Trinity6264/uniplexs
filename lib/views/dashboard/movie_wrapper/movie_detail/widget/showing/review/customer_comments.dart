import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:uniplexs/app/app.gr.dart';
import 'package:uniplexs/constant/color_pallet.dart';
import 'package:uniplexs/views/dashboard/movie_wrapper/movie_detail/widget/showing/review/comment.dart';

import '../../../../../../../constant/asset_path.dart';

class CustomerComments extends StatelessWidget {
  const CustomerComments({super.key});

  @override
  Widget build(BuildContext context) {
    final tabsRouter = AutoTabsRouter.of(context);
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextButton(
            onPressed: () {
              tabsRouter.current.router.navigate(const AllCommentsRoute());
            },
            // viewModel.toCommentPage,
            child: const Text('View all'),
          ),
          // SizedBox(height: size.height * .02),
          const Comment(
            username: 'Kyei Yeboah',
            ratingStars: 5,
            date: '20/07/2022',
            userProfile: AssetPath.mega,
            content:
                'This film is so beautiful even if there is no follow up. The Characters are likable to the T.I even enjoy...',
          ),
          const Comment(
            username: 'Amoah Alexander',
            ratingStars: 2,
            date: '20/08/2022',
            userProfile: AssetPath.tee,
            content: 'Forget, the movie sucks... 😏',
          ),
        ],
      ),
    );
  }
}
