
import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';




File foto;



class ProductosProvider with ChangeNotifier {

  void seleccionarFotoGaleria()async{
    await procesarImagen(ImageSource.gallery);   
  }

  void seleccionarFotoCamara()async{
    await procesarImagen(ImageSource.camera);
  }

  procesarImagen(ImageSource origen)async{

    foto = await ImagePicker.pickImage(source: origen);

    notifyListeners();

    return foto;
  }

  Future subirImagen(File image, String path) async{
      
       FirebaseStorage _storage = FirebaseStorage.instance;
       StorageReference firebaseStorageRef = _storage.ref().child(path);

       StorageUploadTask uploadTask = firebaseStorageRef.putFile(image);


       final StorageTaskSnapshot downloadUrl= await uploadTask.onComplete;
       final String url = await downloadUrl.ref.getDownloadURL();

       print('Url Is $url');
       return url;
       
  }

  
}