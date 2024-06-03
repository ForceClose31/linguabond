part of 'pages.dart';

class DetailMeetPage extends StatelessWidget {
  const DetailMeetPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => NavigationHelper.back(),
            icon: const Icon(Icons.chevron_left),
          ),
          centerTitle: true,
          title: const Text('Detail Meet'),
          foregroundColor: kColorWhite,
          backgroundColor: kColorSurface,
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          children: [
            const SizedBox(height: 16.0),
            Text('Anda melakukan meet dengan',
                style: Theme.of(context).textTheme.titleSmall),
            Text('Altamis Fattah Atmaja',
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 16.0),
            Transform.translate(
              offset: const Offset(-30.0, 0.0),
              child:
                  Image.asset('assets/images/question daily learning goal.png'),
            ),
            const SizedBox(height: 16.0),
            Text('Topik', style: Theme.of(context).textTheme.headlineMedium),
            Text('Worem ipsum dolor sit amet, consectetur adipiscing elit',
                style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: 16.0),
            Text('Pembahasan',
                style: Theme.of(context).textTheme.headlineMedium),
            Text(
                'Worem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis. Ut commodo efficitur neque.',
                style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: 16.0),
            Text('Cek Materi',
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 16.0),
            MyFilledButton.tonal(
              onPressed: () {},
              icon: SvgPicture.asset('assets/svgs/chest.svg'),
              padding: const EdgeInsets.all(16.0),
              borderColor: kColorBorder,
              minHorizontalPadding: 16.0,
              pressedBottomBorderWidth: 0.0,
              bottomBorderOnly: true,
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width - 32.0 - 100.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Materi.pdf',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(color: kColorBorder),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      'Ini adalah materi yang diberikan oleh mentor, silahkan diakses',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: kColorBorder),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            MyFilledButton(
              onPressed: () {},
              child: const Text('Gabung'),
            ),
            const SizedBox(height: 16.0),
          ],
        ),
      );
}
