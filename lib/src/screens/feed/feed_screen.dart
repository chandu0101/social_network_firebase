import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dstore/dstore.dart';
import 'package:dstore_flutter/dstore_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:social_network/src/dstore/app_state.dart';
import 'package:social_network/src/dstore/databases/firebase.dart';
import 'package:social_network/src/dstore/pstates/firebase/auth_ps.dart';
import 'package:social_network/src/dstore/pstates/firebase/feed_ps.dart';
import 'package:social_network/src/dstore/selectors/app_selectors.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CreatePostInput(),
          Expanded(
              child: SelectorBuilder<AppState, StreamField<Post, dynamic>>(
            selector: AppSelectors.postFeed,
            builder: (context, state) {
              print("re building stream");
              return ListView.builder(
                itemCount: state.dataList.length,
                itemBuilder: (context, index) {
                  final p = state.dataList[index];
                  return PostTile(post: p);
                },
              );
            },
          ))
        ],
      ),
    );
  }
}

class PostTile extends StatelessWidget {
  final Post post;
  const PostTile({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [Text(post.title), Text(post.text)],
      ),
    );
  }
}

class CreatePostInput extends StatefulWidget {
  const CreatePostInput({Key? key}) : super(key: key);

  @override
  _CreatePostInputState createState() => _CreatePostInputState();
}

class _CreatePostInputState extends State<CreatePostInput> {
  String title = "";
  String text = "";

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final width = constraints.biggest.width;
      return SelectorBuilder<AppState, AuthPS>(
        selector: AppSelectors.authPS,
        builder: (context, state) {
          return Container(
              constraints: BoxConstraints(minWidth: width, minHeight: 300),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        labelText: "Title ",
                        errorText: title.isEmpty ? "Should provide title" : ""),
                    onChanged: (value) {
                      title = value.trim();
                    },
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: "Text ",
                        errorText: text.isEmpty ? "should provide text" : ""),
                    onChanged: (value) {
                      text = value.trim();
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {
                            context.dispatch(FeedPSActions.addPost(
                                post: Post(
                                    title: title,
                                    text: text,
                                    user: FirebaseFirestore.instance
                                        .collection("users")
                                        .doc(state.user!.user!.uid)
                                        .withConverter<User>(
                                            fromFirestore: (DocumentSnapshot<
                                                            Map<String,
                                                                dynamic>>
                                                        snapshot,
                                                    SnapshotOptions? options) =>
                                                state.user!.user!,
                                            toFirestore: (
                                              User value,
                                              SetOptions? options,
                                            ) =>
                                                {})))); // TODO check toJson
                          },
                          child: Text("Send"))
                    ],
                  ),
                ],
              ));
        },
      );
    });
  }
}
