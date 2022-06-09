import 'package:phonon_test/core/models/user.dart';
import 'package:phonon_test/core/utils/debouncer.dart';
import 'package:phonon_test/core/utils/exports.dart';
import 'package:phonon_test/ui/views/users_list/users_list_viewmodel.dart';
import 'package:phonon_test/ui/views/users_list/widgets/custom_textfield.dart';
import 'package:phonon_test/ui/views/users_list/widgets/user_item.dart';
import 'package:phonon_test/ui/views/users_list/widgets/user_item_loader.dart';
import 'package:phonon_test/ui/widgets/back_wrapper.dart';

class UsersListView extends StatelessWidget {
  final _debouncer = Debouncer(milliseconds: 600);

  UsersListView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<UsersListViewModel>.reactive(
      viewModelBuilder: () => UsersListViewModel(),
      builder: (context, model, child) => BackWrapper(
        title: 'Github Search',
        showIcon: false,
        iconColor: BrandColors.dark3B,
        titleColor: BrandColors.purple,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: CustomTextField(
                onChanged: (value) {
                  model.loading = true;
                  if(value.isNotEmpty) {
                    _debouncer.run(() => model.fetchUsers(value));
                    return;
                  }
                  _debouncer.run(() => model.clearUsers());
                },
              )
            ),
            Expanded(
              child: model.users == null && !model.loading ? Center(
                child: SizedBox(
                  width: 250.w,
                  child: Text(
                    'Enter username above to search',
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      fontSize: 16.sp,
                      color: BrandColors.dark3B
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ) : (model.users??[]).isEmpty ? Center(
                child: SizedBox(
                  width: 250.w,
                  child: Text(
                    'No user found!',
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      fontSize: 16.sp,
                      color: BrandColors.dark3B
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ) : ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 20.h),
                itemCount: model.loading ? 10 : model.users!.length,
                separatorBuilder: (c, i) => SizedBox(height: 15.h,),
                itemBuilder: (c, i) {
                  if(model.loading) {
                    return const UserItemLoader();
                  } else {
                    User user = model.users![i];
                    List temp = (user.url ?? '').split('/');

                    return UserItem(
                      title: temp.last,
                      user: user,
                      onTap: (){},
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}