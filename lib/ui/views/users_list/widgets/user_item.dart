import 'package:cached_network_image/cached_network_image.dart';
import 'package:phonon_test/core/models/user.dart';
import 'package:phonon_test/core/utils/exports.dart';
import 'package:phonon_test/ui/views/users_list/users_list_viewmodel.dart';
import 'package:phonon_test/ui/widgets/partial_build.dart';

class UserItem extends StatelessWidget {
  final User user;
  final String title;
  final VoidCallback onTap;
  
  const UserItem({ Key? key, required this.user, required this.title, required this.onTap }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePartialBuild<UsersListViewModel>(
      builder: (context, model) => InkWell(
        onTap: () => onTap(),
        borderRadius: BorderRadius.circular(8.r),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 13.w),
          decoration: BoxDecoration(
            color: const Color(0xFFFAF9FF),
            borderRadius: BorderRadius.circular(8.r)
          ),
          child: Row(
            children: [
              ClipOval(
                child: Container(
                  width: 35.r,
                  height: 35.r,
                  child: CachedNetworkImage(
                    imageUrl: user.avatarUrl ?? '',
                    errorWidget: (c, _, __) => CircleAvatar(
                      radius: 17.5.r,
                    ),
                    placeholder: (c, _) => CircleAvatar(
                      radius: 17.5.r,
                      backgroundColor: Colors.transparent,
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8.w,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$title ',
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        fontSize: 13.sp,
                        color: BrandColors.dark3B
                      ),
                    ),
                    SizedBox(height: 8.h,),
                    FutureBuilder<int?>(
                      future: model.fetchRepoCount(user.login ?? ''),
                      builder: (context, snapshot) {
                        if(snapshot.hasData) {
                          int? data = snapshot.data;

                          return Text(
                            '$data Repositories',
                            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              fontSize: 11.sp,
                              color: BrandColors.dark70
                            ),
                          );
                        }

                        return Text('...');
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10.w,),
            ],
          ),
        ),
      ),
    );
  }
}