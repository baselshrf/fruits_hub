import 'package:e_commerce/core/cubits/products_cubit/products_cubit_state.dart';
import 'package:e_commerce/core/repos/products_repo/products_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit(this.productsRepo) : super(ProductsInitial());

  final ProductsRepo productsRepo;
  int productsLength = 0;

  Future<void> getProducts() async {
    emit(ProductsLoading());
    final result = await productsRepo.getProducts();
    result.fold((failure) => emit(ProductsFailure(failure.message)), (
      products,
    ) {
      productsLength = products.length;
      emit(ProductsSuccess(products));
    });
  }

  Future<void> getBestSellingroducts() async {
    emit(ProductsLoading());
    final result = await productsRepo.getBestSellingProducts();
    result.fold(
      (failure) => emit(ProductsFailure(failure.message)),
      (products) => emit(ProductsSuccess(products)),
    );
  }
}
