import 'package:cached_network_image/cached_network_image.dart';
import 'package:phonon_test/core/models/user.dart';
import 'package:phonon_test/core/utils/exports.dart';

class UserItem extends StatelessWidget {
  final User user;
  final String title;
  final VoidCallback onTap;
  
  const UserItem({ Key? key, required this.user, required this.title, required this.onTap }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
                  Text(
                    '${Random().nextInt(10)} Repositories',
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      fontSize: 11.sp,
                      color: BrandColors.dark70
                    ),
                  )
                ],
              ),
            ),
            SizedBox(width: 10.w,),
            // RichText(
            //   text: TextSpan(
            //     style: Theme.of(context).textTheme.bodyText2!.copyWith(
            //       fontFamily: 'Roboto',
            //       fontSize: 14.sp,
            //       color: transaction.type == 'DEPOSIT' ? BrandColors.green : BrandColors.red,
            //       fontWeight: FontWeight.bold
            //     ),
            //     text: Utils.currenyFormat(transaction.currencyCode ?? '', 0).format(transaction.amount).contains('-') ? '${Utils.currenyFormat(transaction.currencyCode ?? '', 0).format(transaction.amount)[0]} ${Utils.currenyFormat(transaction.currencyCode ?? '', 0).format(transaction.amount)[1]} ' :  '${Utils.currenyFormat(transaction.currencyCode ?? '', 0).format(transaction.amount)[0]} ',
            //     children: [
            //       TextSpan(
            //         text: Utils.currenyFormat(transaction.currencyCode ?? '', 0).format(transaction.amount).contains('-') ? Utils.currenyFormat(transaction.currencyCode ?? '', 0).format(transaction.amount).substring(2) : Utils.currenyFormat(transaction.currencyCode ?? '', 0).format(transaction.amount).substring(1),
            //         style: Theme.of(context).textTheme.bodyText2!.copyWith(
            //           fontSize: 14.sp,
            //           color: transaction.type == 'DEPOSIT' ? BrandColors.green : BrandColors.red,
            //           fontWeight: FontWeight.bold
            //         ),
            //       )
            //     ]
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}