import 'package:barita/domain/entities/news.dart';
import 'package:barita/domain/entities/source.dart';

const sampleSource = Source(id: "wired", name: "Wired");
const sampleNews = News(
    title: "The Panasonic Lumix thoughtfully designed controls",
    source: sampleSource,
    urlToImage:
        "https://media.wired.com/photos/62ed6496c899551de612436a/191:100/w_1280,c_limit/Lumix-GH5-Gear.jpg",
    description:
        "In-body stabilization and thoughtfully designed controls make this workhorse a great choice for in-the-field photographers and filmmakers.",
    publishedAt: '2022-08-08T12:00:00Z',
    author: "Rony Tampubolon",
    url: '"https://www.wired.com/review/panasonic-lumix-gh6/"');

const List<News> listNews = [
  News(
      title: "The Panasonic Lumix thoughtfully designed controls",
      source: sampleSource,
      urlToImage:
          "https://media.wired.com/photos/62ed6496c899551de612436a/191:100/w_1280,c_limit/Lumix-GH5-Gear.jpg",
      description:
          "In-body stabilization and thoughtfully designed controls make this workhorse a great choice for in-the-field photographers and filmmakers.",
      publishedAt: '2022-08-08T12:00:00Z',
      author: "Rony Tampubolon",
      url: '"https://www.wired.com/review/panasonic-lumix-gh6/"'),
  News(
      title:
          "Russia, Ukraine open to IAEA visit after 'suicidal' nuclear plant strike - The Washington Post",
      source: Source(id: "the-washington-post", name: "The Washington Post"),
      urlToImage:
          "https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/ZAQQGTAW6MI63OMYWKVWR5MENA.jpg&w=1440",
      description:
          "In the wake of purported strikes targeting Zaporizhzhia, world leaders and experts are calling Russian and Ukrainian forces to declare a military-free zone.",
      publishedAt: '2022-08-08T12:00:00Z',
      author: "Karina Tsui",
      url:
          "https://www.washingtonpost.com/world/2022/08/08/zaporizhzhia-shelling-ukraine-nuclear-plant-un-iaea-russia/"),
  News(
      title:
          "FBI executes search warrant at Trump's Mar-a-Lago in document investigation - CNN",
      source: Source(id: "cnn", name: "CNN"),
      urlToImage:
          "https://media.cnn.com/api/v1/images/stellar/prod/220808101326-donald-trump-0806.jpg?c=16x9&q=w_800,c_fill",
      description:
          "The FBI executed a search warrant on Monday at Donald Trump's Mar-a-Lago resort in Palm Beach, Florida, as part of an investigation into the handling of presidential documents, including classified documents, that may have been brought to Florida, three peopl…",
      publishedAt: '2022-08-09T00:09:00Z',
      author: "Kaitlan Collins",
      url:
          "https://www.washingtonpost.com/world/2022/08/08/zaporizhzhia-shelling-ukraine-nuclear-plant-un-iaea-russia/")
];
