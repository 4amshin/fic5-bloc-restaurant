import 'dart:developer';
import 'dart:io';

import 'package:camera/camera.dart';
import 'package:fic5_bloc_restaurant/bloc/restaurant/add_restaurant/add_restaurant_bloc.dart';
import 'package:fic5_bloc_restaurant/bloc/restaurant/get_all_restaurant/get_all_restaurant_bloc.dart';
import 'package:fic5_bloc_restaurant/data/data_sources/local_data_sources/auth_local_data_sources.dart';
import 'package:fic5_bloc_restaurant/data/model/request/restaurant_request/add_restaurant_request_model.dart';
import 'package:fic5_bloc_restaurant/presentation/add_restaurant/widget/arv_camera_page.dart';
import 'package:fic5_bloc_restaurant/presentation/add_restaurant/widget/arv_pick_image.dart';
import 'package:fic5_bloc_restaurant/shared/widgets/InputField/text_input/text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class AddRestaurantView extends StatefulWidget {
  static const routeName = "/add_restaurant";
  const AddRestaurantView({Key? key}) : super(key: key);

  @override
  State<AddRestaurantView> createState() => _AddRestaurantViewState();
}

class _AddRestaurantViewState extends State<AddRestaurantView> {
  TextEditingController? nameController;
  TextEditingController? descriptionController;
  TextEditingController? addressController;

  XFile? picture;

  void takePicture(XFile file) {
    picture = file;
    setState(() {});
  }

  Future<void> getImage(ImageSource source) async {
    final ImagePicker picker = ImagePicker();
    final XFile? photo = await picker.pickImage(
      source: source,
      imageQuality: 50,
    );

    if (photo != null) {
      picture = photo;
      setState(() {});
    }
  }

  @override
  void initState() {
    nameController = TextEditingController();
    descriptionController = TextEditingController();
    addressController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    nameController!.dispose();
    descriptionController!.dispose();
    addressController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<AddRestaurantBloc>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Add Restaurant"),
      ),
      body: BlocConsumer<AddRestaurantBloc, AddRestaurantState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            orElse: () {
              return Scaffold(
                body: ListView(
                  children: [
                    ArvPickImage(
                      onCamera: () async {
                        log("Open Camera....");
                        //navigate to camera page
                        //and come back bring image data
                        await availableCameras().then(
                          (value) => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ArvCameraPage(
                                takePicture: takePicture,
                                cameras: value,
                              ),
                            ),
                          ),
                        );
                      },
                      onGallery: () {
                        log("Open Gallery....");
                        //get image from gallery
                        getImage(ImageSource.gallery);
                      },
                      radius: 90,
                      child: picture != null
                          ? Image.file(File(picture!.path))
                          : const SizedBox(
                              height: 110,
                              width: 110,
                              child: Icon(
                                Icons.image,
                                color: Colors.white,
                              ),
                            ),
                    ),
                    const SizedBox(height: 20),
                    TextInput(
                      label: "Restaurant Name",
                      controller: nameController,
                    ),
                    TextInput(
                      label: 'Address',
                      controller: addressController,
                    ),
                    TextInput(
                      label: 'Description',
                      controller: descriptionController,
                      maxLines: 3,
                    ),
                  ],
                ),
                floatingActionButton: FloatingActionButton(
                  onPressed: () async {
                    final userId = await AuthLocalDataSources().getUserId();

                    final restaurantModel = AddRestaurantRequestModel(
                      data: Data(
                        name: nameController!.text,
                        description: descriptionController!.text,
                        latitude: "-3.016910909077944",
                        longitude: "120.15385069886861",
                        address: addressController!.text,
                        userId: userId,
                      ),
                    );

                    bloc.add(
                      AddRestaurantEvent.addRestaurant(
                        restaurantModel: restaurantModel,
                        image: picture!,
                      ),
                    );
                  },
                  child: const Text("Save"),
                ),
              );
            },
          );
        },
        listener: (context, state) {
          state.maybeWhen(
            loaded: (model) {
              //display in the log the posted data
              log(model.toString());

              //display success dialog
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Berhasil Cuk'),
                  backgroundColor: Colors.indigoAccent,
                ),
              );

              //execute Get All Restaurant Bloc for refresh the page
              context
                  .read<GetAllRestaurantBloc>()
                  .add(const GetAllRestaurantEvent.getAllRestaurant());

              context.pop();
            },
            error: (message) {
              //display dialog failed adding product
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Error Cuk: $message'),
                  backgroundColor: Colors.red,
                ),
              );
              context.pop();
            },
            orElse: () {},
          );
        },
      ),
    );
  }
}
