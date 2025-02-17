import 'package:auto_route/auto_route.dart';

import '../model/BusinessItem.dart';
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
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Image(
                image: Image.network(widget.item.imageUrl).image,
                width: 500,
                height: 500),
            SizedBox(height: 10),
            Material(
                type: MaterialType.transparency,
                child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(10),
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(widget.item.title)))),
          ],
        ),
      ),
    );
  }
}
