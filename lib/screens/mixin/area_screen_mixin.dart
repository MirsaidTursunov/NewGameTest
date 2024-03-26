part of 'package:olympian/screens/area_screen.dart';

mixin AreaScreenMixin on State<NestedScrollWidget>{
  final dataKey = GlobalKey();
  late final ScrollController _scrollCtrl;
  double widthOffset = 0.0;
  double wordWidth = 160.0;
  double itemHeight = 66.0;

  @override
  void initState() {
    _scrollCtrl = ScrollController();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final notifications = NotificationService();
      notifications.init(context: context);
    });
    super.initState();
  }

  ensureScroll(BuildContext ctx) async {
    await Future.delayed(const Duration(milliseconds: 500));
    ctx.read<GameViewModel>().scrollToWidget();
  }
}