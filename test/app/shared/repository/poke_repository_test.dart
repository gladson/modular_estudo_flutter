import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dio/dio.dart';

// import 'package:teste_flutter_slidy_modular_mobx/app/shared/repository/poke_repository.dart';

class MockClient extends Mock implements Dio {}

void main() {
  // PokeRepository repository;
  // MockClient client;

  setUp(() {
    // repository = PokeRepository();
    // client = MockClient();
  });

  group('PokeRepository Test', () {
    //  test("First Test", () {
    //    expect(repository, isInstanceOf<PokeRepository>());
    //  });

    test('returns a Post if the http call completes successfully', () async {
      //    when(client.get('https://jsonplaceholder.typicode.com/posts/1'))
      //        .thenAnswer((_) async =>
      //            Response(data: {'title': 'Test'}, statusCode: 200));
      //    Map<String, dynamic> data = await repository.fetchPost(client);
      //    expect(data['title'], 'Test');
    });
  });
}
