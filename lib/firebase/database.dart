import 'package:firebase/firebase.dart' as WebFirebase;
import 'package:firebase/firestore.dart' as WebFirestore;

WebFirestore.Firestore webFirestore = WebFirebase.firestore();

final WebFirestore.DocumentReference docRef = webFirestore.collection('ItemsCategory').doc('Apps');



