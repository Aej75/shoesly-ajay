// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i21;

import '../../data_population.dart' as _i24;
import '../../features/brand/data/repository/brand_repository.dart' as _i8;
import '../../features/brand/data/repository/i_brand_repository.dart' as _i7;
import '../../features/brand/presentation/bloc/brand_bloc.dart' as _i22;
import '../../features/cart/data/repository/cart_repository.dart' as _i10;
import '../../features/cart/data/repository/i_cart_repository.dart' as _i9;
import '../../features/cart/presentation/bloc/cart_bloc.dart' as _i23;
import '../../features/product/data/repository/i_product_repository.dart'
    as _i13;
import '../../features/product/data/repository/product_repository.dart' as _i14;
import '../../features/product/presentation/bloc/product_bloc.dart' as _i19;
import '../../features/review/data/repository/i_review_repository.dart' as _i15;
import '../../features/review/data/repository/review_repository.dart' as _i16;
import '../../features/review/presentation/bloc/review_bloc.dart' as _i20;
import '../routes/auth_guard.dart' as _i28;
import '../routes/guest_guard.dart' as _i6;
import '../utils/bloc/fcm_bloc/domain/controller/i_controller_repository.dart'
    as _i11;
import '../utils/bloc/fcm_bloc/domain/repository/i_fcm_repository.dart' as _i12;
import '../utils/bloc/fcm_bloc/presentation/bloc/fcm_bloc.dart' as _i25;
import '../utils/session/app_manager.dart' as _i27;
import '../utils/session/i_app_manager.dart' as _i26;
import '../utils/session/i_session_manager.dart' as _i17;
import '../utils/session/session_manager.dart' as _i18;
import 'local_module.dart' as _i29;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final localModule = _$LocalModule();
    gh.singleton<_i3.FirebaseAuth>(() => localModule.firebaseAuth());
    gh.singleton<_i4.FirebaseFirestore>(() => localModule.firestore());
    gh.singleton<_i5.FlutterSecureStorage>(() => localModule.secureStorage());
    gh.factory<_i6.GuestGuard>(() => _i6.GuestGuard());
    gh.factory<_i7.IBrandRepository>(
        () => _i8.BrandRepository(db: gh<_i4.FirebaseFirestore>()));
    gh.factory<_i9.ICartRepository>(
        () => _i10.CartRepository(db: gh<_i4.FirebaseFirestore>()));
    gh.factory<_i11.IFcmController>(
        () => _i11.FcmController(gh<_i12.IFcmRepository>()));
    gh.factory<_i13.IProductRepository>(
        () => _i14.ProductRepository(db: gh<_i4.FirebaseFirestore>()));
    gh.factory<_i15.IReviewRepository>(
        () => _i16.ReviewRepository(gh<_i4.FirebaseFirestore>()));
    gh.factory<_i17.ISessionManager>(
        () => _i18.SessionManager(gh<_i5.FlutterSecureStorage>()));
    gh.factory<_i19.ProductBloc>(
        () => _i19.ProductBloc(gh<_i13.IProductRepository>()));
    gh.factory<_i20.ReviewBloc>(
        () => _i20.ReviewBloc(gh<_i15.IReviewRepository>()));
    await gh.factoryAsync<_i21.SharedPreferences>(
      () => localModule.prefs,
      preResolve: true,
    );
    gh.factory<_i22.BrandBloc>(
        () => _i22.BrandBloc(gh<_i7.IBrandRepository>()));
    gh.factory<_i23.CartBloc>(() => _i23.CartBloc(
          gh<_i9.ICartRepository>(),
          gh<_i3.FirebaseAuth>(),
        ));
    gh.factory<_i24.DataPopulation>(() => _i24.DataPopulation(
          gh<_i7.IBrandRepository>(),
          gh<_i4.FirebaseFirestore>(),
          gh<_i13.IProductRepository>(),
        ));
    gh.factory<_i25.FcmBloc>(() => _i25.FcmBloc(gh<_i11.IFcmController>()));
    gh.factory<_i26.IAppManager>(
        () => _i27.AppManager(gh<_i21.SharedPreferences>()));
    gh.factory<_i28.AuthGuard>(() => _i28.AuthGuard(
          gh<_i17.ISessionManager>(),
          gh<_i26.IAppManager>(),
        ));
    return this;
  }
}

class _$LocalModule extends _i29.LocalModule {}
