import 'data.dart';
import 'package:cache_data/cache_data.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const duration = Duration(seconds: 5);
    final cache = CacheData<List<Data>>();

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          cache.fetchData(
              'https://jsonplaceholder.typicode.com/albums',
              duration: duration);
          debugPrint("isExpired ${cache.isExpired(
            'https://jsonplaceholder.typicode.com/albums',
          )} now ${DateTime.now()}");
        },
        child: FutureBuilder<List<Data>?>(
          future: cache.fetchData(
              'https://jsonplaceholder.typicode.com/albums',
              duration: duration),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              // throw snapshot.error!;
              debugPrint(snapshot.error!.toString());
              return const Center(
                child: Text('An error has occurred!'),
              );
            } else if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      child: Text(snapshot.data![index].userId.toString()),
                    ),
                    title: Text(snapshot.data![index].title),
                  );
                },
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
