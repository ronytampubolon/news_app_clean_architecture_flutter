# Barita - Stay Tuned News

A Flutter Project for Mobile App served you popular and recomended news.

## Getting Started

This project is built with clean architecture guidance by Uncle Bob.
Separate folder:<br/>

# lib

* [config/](./lib/config)
  * [constants.dart](./lib/config/constants.dart)
* [core/](./lib/core)
  * [bloc/](./lib/core/bloc)
    * [bloc_with_state.dart](./lib/core/bloc/bloc_with_state.dart)
  * [params/](./lib/core/params)
    * [article_request.dart](./lib/core/params/article_request.dart)
  * [resources/](./lib/core/resources)
    * [data_state.dart](./lib/core/resources/data_state.dart)
  * [usecases/](./lib/core/usecases)
    * [usecase.dart](./lib/core/usecases/usecase.dart)
  * [utils/](./lib/core/utils)
    * [convert_material_color.dart](./lib/core/utils/convert_material_color.dart)
* [data/](./lib/data)
  * [datasources/](./lib/data/datasources)
    * [remote/](./lib/data/datasources/remote)
    * [category_data.dart](./lib/data/datasources/category_data.dart)
    * [dummy_data.dart](./lib/data/datasources/dummy_data.dart)
  * [model/](./lib/data/model)
    * [news_model.dart](./lib/data/model/news_model.dart)
    * [news_model.g.dart](./lib/data/model/news_model.g.dart)
    * [response_list_news.dart](./lib/data/model/response_list_news.dart)
    * [response_list_news.g.dart](./lib/data/model/response_list_news.g.dart)
    * [source_model.dart](./lib/data/model/source_model.dart)
    * [source_model.g.dart](./lib/data/model/source_model.g.dart)
  * [repositories/](./lib/data/repositories)
    * [new_repository_impl.dart](./lib/data/repositories/new_repository_impl.dart)
* [domain/](./lib/domain)
  * [entities/](./lib/domain/entities)
    * [category.dart](./lib/domain/entities/category.dart)
    * [news.dart](./lib/domain/entities/news.dart)
    * [source.dart](./lib/domain/entities/source.dart)
  * [repositories/](./lib/domain/repositories)
    * [news_repository.dart](./lib/domain/repositories/news_repository.dart)
  * [usecases/](./lib/domain/usecases)
    * [get_news_usecase.dart](./lib/domain/usecases/get_news_usecase.dart)
* [presentation/](./lib/presentation)
  * [blocs/](./lib/presentation/blocs)
    * [bloc/](./lib/presentation/blocs/bloc)
  * [pages/](./lib/presentation/pages)
    * [bookmark.dart](./lib/presentation/pages/bookmark.dart)
    * [detail_news.dart](./lib/presentation/pages/detail_news.dart)
    * [home.dart](./lib/presentation/pages/home.dart)
    * [list_news.dart](./lib/presentation/pages/list_news.dart)
    * [navigation_screen.dart](./lib/presentation/pages/navigation_screen.dart)
    * [notification_screen.dart](./lib/presentation/pages/notification_screen.dart)
    * [profile.dart](./lib/presentation/pages/profile.dart)
    * [splash_screen.dart](./lib/presentation/pages/splash_screen.dart)
  * [widget/](./lib/presentation/widget)
    * [filter_category.dart](./lib/presentation/widget/filter_category.dart)
    * [greetings_home.dart](./lib/presentation/widget/greetings_home.dart)
    * [home_search.dart](./lib/presentation/widget/home_search.dart)
    * [item_category.dart](./lib/presentation/widget/item_category.dart)
    * [item_news_full.dart](./lib/presentation/widget/item_news_full.dart)
    * [item_news_list.dart](./lib/presentation/widget/item_news_list.dart)
    * [popular_topics.dart](./lib/presentation/widget/popular_topics.dart)
    * [recomended.dart](./lib/presentation/widget/recomended.dart)
* [injector.dart](./lib/injector.dart)
* [main.dart](./lib/main.dart)


Here a few resources to get you started and learn more in Flutter Project:
- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

If you need any guidance and advised for your flutter project contact me here [if10051@gmail.com](mailto:if10051@gmail.com)