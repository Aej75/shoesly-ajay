import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:code_test/core/constants/firestore_collection.dart';
import 'package:code_test/core/enum/product_color.dart';
import 'package:code_test/core/utils/firebase_config/firebase_config.dart';
import 'package:code_test/features/brand/data/model/brand.dart';
import 'package:code_test/features/brand/data/repository/i_brand_repository.dart';
import 'package:code_test/features/product/data/model/product.dart';
import 'package:code_test/features/product/data/model/product_filter.dart';
import 'package:code_test/features/product/data/repository/i_product_repository.dart';
import 'package:code_test/features/review/data/model/review.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import 'core/enum/product_gender.dart';

@injectable
class DataPopulation {
  final FirebaseFirestore db;
  final IBrandRepository brandRepository;
  final IProductRepository productRepository;
  final brandCollection =
      FirebaseFirestore.instance.collection(FirestoreCollection.brands);
  final reviewCollection =
      FirebaseFirestore.instance.collection(FirestoreCollection.reviews);

  var uuid = const Uuid();

  DataPopulation(this.brandRepository, this.db, this.productRepository);

  Future<void> seed() async {
    // await populateBrand();
    // await populateProduct();
    // await populateReviewData();
  }

  Future<void> populateBrand() async {
    final firestoreService = FirebaseClient<Brand>(brandCollection);

    // Dummy data
    final List<Brand> brands = [
      Brand(
        id: uuid.v1(),
        name: 'Nike',
        logo: 'assets/logos/nike.png',
        totalProducts: 120,
      ),
      Brand(
        id: uuid.v1(),
        name: 'Adidas',
        logo: 'assets/logos/adidas.png',
        totalProducts: 100,
      ),
      Brand(
        id: uuid.v1(),
        name: 'Puma',
        logo: 'assets/logos/puma.png',
        totalProducts: 80,
      ),
      Brand(
        id: uuid.v1(),
        name: 'Reebok',
        logo: 'assets/logos/reebok.png',
        totalProducts: 60,
      ),
      Brand(
        id: uuid.v1(),
        name: 'Vans',
        logo: 'assets/logos/new_balance.png',
        totalProducts: 50,
      ),
    ];

    bool batchCreateSuccess = await firestoreService.createBatch(
      items: brands,
      toMap: (brand) => brand.toJson(),
    );

    if (batchCreateSuccess) {
      log('Brand Batch create successful');
    } else {
      log('Brand Batch create failed');
    }
  }

  Future<void> populateProduct() async {
    final productCollection =
        FirebaseFirestore.instance.collection(FirestoreCollection.products);
    final brandCollectionService = FirebaseClient<Brand>(brandCollection);
    final productCollectionService = FirebaseClient<Product>(productCollection);

    final brands = await brandCollectionService.readCollection(
      toMap: (Map<String, dynamic> data, String id) {
        return Brand.fromJson(data);
      },
    );
    final nike = brands.firstWhere((element) => element.name == "Nike");
    final adidas = brands.firstWhere((element) => element.name == "Adidas");
    final rebook = brands.firstWhere((element) => element.name == "Puma");
    final puma = brands.firstWhere((element) => element.name == "Reebok");
    final vans = brands.firstWhere((element) => element.name == "Vans");

    final List<String> nikeImage = List.generate(
        3,
        (index) =>
            'https://firebasestorage.googleapis.com/v0/b/code-test-ajaya.appspot.com/o/image_9-removebg-preview.png?alt=media&token=8875bc1a-f3f1-485b-857c-35438131d01a');
    final List<String> adidasImage = List.generate(
        3,
        (index) =>
            'https://firebasestorage.googleapis.com/v0/b/code-test-ajaya.appspot.com/o/image_1__1_-removebg-preview.png?alt=media&token=0b9fb35f-2a10-445c-9f07-d134fceae2b3');
    final List<String> rebookImage = List.generate(
        3,
        (index) =>
            'https://firebasestorage.googleapis.com/v0/b/code-test-ajaya.appspot.com/o/image_19-removebg-preview.png?alt=media&token=5c7fc345-b97b-443a-a62a-fd25cc6d498e');
    final List<String> pumaImage = List.generate(
        3,
        (index) =>
            'https://firebasestorage.googleapis.com/v0/b/code-test-ajaya.appspot.com/o/Product__1_-removebg-preview.png?alt=media&token=ba68c415-400d-4307-b951-c379f3678f98');
    final List<String> vansImage = List.generate(
        3,
        (index) =>
            'https://firebasestorage.googleapis.com/v0/b/code-test-ajaya.appspot.com/o/Product-removebg-preview.png?alt=media&token=a01c6dbf-4c71-4619-a898-db077ae26a92');

    final products = [
      Product(
          id: uuid.v1(),
          name: 'Jordan 1 Retro High Tie Dye',
          description:
              "Engineered to crush any movement-based workout, these On sneakers enhance the label's original Cloud sneaker with cutting edge technologies for a",
          images: nikeImage,
          price: 200,
          brand: nike.name,
          avgRating: 4.5,
          thumbnail: nikeImage.first,
          totalReviews: 10,
          sizes: [39, 39.5, 40, 40.5, 41],
          colors: [ProductColor.white, ProductColor.red],
          gender: Gender.unisex),

      Product(
          id: uuid.v1(),
          name: 'Jordan 1 Retro High Tie Dye',
          description:
              "Engineered to crush any movement-based workout, these On sneakers enhance the label's original Cloud sneaker with cutting edge technologies for a",
          images: adidasImage,
          price: 250,
          brand: nike.name,
          avgRating: 4.5,
          totalReviews: 10,
          thumbnail: adidasImage.first,
          sizes: [39, 39.5, 40, 40.5, 41],
          colors: [ProductColor.white, ProductColor.black],
          gender: Gender.unisex),
      Product(
          id: uuid.v1(),
          name: 'Jordan 1 Retro High Tie Dye',
          description:
              "Engineered to crush any movement-based workout, these On sneakers enhance the label's original Cloud sneaker with cutting edge technologies for a",
          images: pumaImage,
          price: 300,
          brand: adidas.name,
          thumbnail: pumaImage.first,
          avgRating: 4.5,
          totalReviews: 10,
          sizes: [39, 39.5, 40, 40.5, 41],
          colors: [ProductColor.white, ProductColor.black, ProductColor.red],
          gender: Gender.unisex),

      Product(
          id: uuid.v1(),
          name: 'Jordan 1 Retro High Tie Dye',
          description:
              "Engineered to crush any movement-based workout, these On sneakers enhance the label's original Cloud sneaker with cutting edge technologies for a",
          images: vansImage,
          price: 400,
          brand: puma.name,
          avgRating: 4.5,
          thumbnail: vansImage.first,
          totalReviews: 10,
          sizes: [39, 39.5, 40, 40.5, 41],
          colors: [
            ProductColor.white,
            ProductColor.black,
          ],
          gender: Gender.unisex),
      Product(
          id: uuid.v1(),
          name: 'Jordan 1 Retro High Tie Dye',
          description:
              "Engineered to crush any movement-based workout, these On sneakers enhance the label's original Cloud sneaker with cutting edge technologies for a",
          images: rebookImage,
          totalReviews: 10,
          price: 500,
          brand: rebook.name,
          avgRating: 4.5,
          thumbnail: rebookImage.first,
          sizes: [39, 39.5, 40, 40.5, 41],
          colors: [ProductColor.black, ProductColor.red],
          gender: Gender.unisex),
      Product(
          id: uuid.v1(),
          name: 'Jordan 1 Retro High Tie Dye',
          description:
              "Engineered to crush any movement-based workout, these On sneakers enhance the label's original Cloud sneaker with cutting edge technologies for a",
          images: nikeImage,
          price: 200,
          brand: nike.name,
          avgRating: 4.5,
          thumbnail: nikeImage.first,
          totalReviews: 10,
          sizes: [39, 39.5, 40, 40.5, 41],
          colors: [ProductColor.white, ProductColor.red],
          gender: Gender.unisex),

      Product(
          id: uuid.v1(),
          name: 'Jordan 1 Retro High Tie Dye',
          description:
              "Engineered to crush any movement-based workout, these On sneakers enhance the label's original Cloud sneaker with cutting edge technologies for a",
          images: adidasImage,
          price: 250,
          brand: nike.name,
          avgRating: 4.5,
          totalReviews: 10,
          thumbnail: adidasImage.first,
          sizes: [39, 39.5, 40, 40.5, 41],
          colors: [ProductColor.white, ProductColor.black],
          gender: Gender.unisex),
      Product(
          id: uuid.v1(),
          name: 'Jordan 1 Retro High Tie Dye',
          description:
              "Engineered to crush any movement-based workout, these On sneakers enhance the label's original Cloud sneaker with cutting edge technologies for a",
          images: pumaImage,
          price: 300,
          brand: adidas.name,
          thumbnail: pumaImage.first,
          avgRating: 4.5,
          totalReviews: 10,
          sizes: [39, 39.5, 40, 40.5, 41],
          colors: [ProductColor.white, ProductColor.black, ProductColor.red],
          gender: Gender.unisex),

      Product(
          id: uuid.v1(),
          name: 'Jordan 1 Retro High Tie Dye',
          description:
              "Engineered to crush any movement-based workout, these On sneakers enhance the label's original Cloud sneaker with cutting edge technologies for a",
          images: vansImage,
          price: 400,
          brand: puma.name,
          avgRating: 4.5,
          thumbnail: vansImage.first,
          totalReviews: 10,
          sizes: [39, 39.5, 40, 40.5, 41],
          colors: [
            ProductColor.white,
            ProductColor.black,
          ],
          gender: Gender.unisex),
      Product(
          id: uuid.v1(),
          name: 'Jordan 1 Retro High Tie Dye',
          description:
              "Engineered to crush any movement-based workout, these On sneakers enhance the label's original Cloud sneaker with cutting edge technologies for a",
          images: rebookImage,
          totalReviews: 10,
          price: 500,
          brand: rebook.name,
          avgRating: 4.5,
          thumbnail: rebookImage.first,
          sizes: [39, 39.5, 40, 40.5, 41],
          colors: [ProductColor.black, ProductColor.red],
          gender: Gender.unisex),

      //
    ];

    for (var product in products) {
      product.createdAt = DateTime.now();
    }
    bool batchCreateSuccess = await productCollectionService.createBatch(
      items: products,
      toMap: (products) => products.toJson(),
    );

    if (batchCreateSuccess) {
      log('Product Batch create successful');
    } else {
      log('Product Batch create failed');
    }
  }

  Future<void> populateReviewData() async {
    final reviewCollectionservice = FirebaseClient<Review>(reviewCollection);

    final products =
        (await productRepository.getProducts(filter: ProductFilter(limit: 100)))
                .data ??
            [];

    final imageUrl = [
      'https://firebasestorage.googleapis.com/v0/b/code-test-ajaya.appspot.com/o/reviewuser%2FRectangle%20318%20(1).png?alt=media&token=2f2733bc-9e76-43cf-a63c-a97ba8aa2a7a',
      'https://firebasestorage.googleapis.com/v0/b/code-test-ajaya.appspot.com/o/reviewuser%2FRectangle%20318%20(2).png?alt=media&token=f592bc23-e28d-48b2-8fa1-38504656ab4c',
      'https://firebasestorage.googleapis.com/v0/b/code-test-ajaya.appspot.com/o/reviewuser%2FRectangle%20318.png?alt=media&token=497d08b1-f302-4cc6-8863-ec4c7fbdda8e'
    ];
    final scoreList = [1, 2, 3, 4, 5];

    List<String> names = ['Alice', 'Bob', 'Charlie', 'Diana'];
    List<T> shuffle<T>(list) {
      list.shuffle();
      return list;
    }

    List<String> reviews = [
      'Great product, very useful!',
      'Not what I expected, but okay.',
      'Excellent quality, highly recommend.',
      'Could be better, had some issues.',
      'Fantastic, exceeded my expectations!'
    ];
    for (var product in products) {
      List<Review> reviewList = List.generate(
          10,
          (index) => Review(
              id: "",
              productId: product.id!,
              score: shuffle<num>(scoreList).first,
              createdAt: DateTime.now(),
              userName: shuffle<String>(names).first,
              userImage: shuffle<String>(imageUrl).first,
              content: shuffle<String>(reviews).first));

      bool batchCreateSuccess = await reviewCollectionservice.createBatch(
        items: reviewList,
        toMap: (review) => review.toJson(),
      );

      if (batchCreateSuccess) {
        log('Review Batch create successful');
      } else {
        log('Review Batch create failed');
      }
    }
  }
}
