import 'package:auto_route/auto_route.dart';

import '../BusinessItem.dart';
import 'base/base_domain.dart';

@RoutePage()
class DetailScreen extends StatefulWidget {
  final BusinessItem item;

  const DetailScreen({super.key, required this.item});

  @override
  State<StatefulWidget> createState() => DetailScreenState();
}

class DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            context.router.back();
          },
        ),
        centerTitle: true,
        title: Text('Detail ${widget.item.title}'),
      ),
      body: Center(
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () {},
          child: Padding(
              padding: EdgeInsets.all(10.0), child: Text(widget.item.title)),
        ),
      ),
    );
  }
}
