part of 'bottom_navigation_bloc.dart';

class BottomNavigationState extends Equatable {
  final PageIndex pageIndex;

  const BottomNavigationState({this.pageIndex = PageIndex.home});

  @override
  List<Object> get props => [
        pageIndex,
      ];

  BottomNavigationState copyWith({
    PageIndex? pageIndex,
  }) {
    return BottomNavigationState(
      pageIndex: pageIndex ?? this.pageIndex,
    );
  }
}

enum PageIndex {
  home,
  myUser,
}

extension PageIndexExt on PageIndex {
  String lableOf() {
    switch (this) {
      case PageIndex.home:
        return "Home";

      case PageIndex.myUser:
        return "My User";
      default:
        return '';
    }
  }

  Widget iconOf({bool isActived = false}) {
    switch (this) {
      case PageIndex.home:
        return Icon(
          Icons.home,
          size: 30,
          color: isActived ? XColors.primary : null,
        );

      case PageIndex.myUser:
        return Icon(
          Icons.person,
          size: 30,
          color: isActived ? XColors.primary : null,
        );
      default:
        return const Icon(Icons.emoji_emotions_outlined);
    }
  }

  Widget get page {
    switch (this) {
      case PageIndex.home:
        return const HomeWrapperPage();
      // case PageIndex.calendar:
      //   return const ScheduleWrapperPage();
      // case PageIndex.studentCard:
      //   return const CardStudentWrapperPage();
      case PageIndex.myUser:
      //   return const MyUserWrapperPage();

      default:
        return const NotFoundPage();
    }
  }
}
