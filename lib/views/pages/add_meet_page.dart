part of 'pages.dart';

class AddMeetPage extends StatelessWidget {
  const AddMeetPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => NavigationHelper.back(),
            icon: const Icon(Icons.chevron_left),
          ),
          centerTitle: true,
          title: const Text('Buat Kelas'),
          foregroundColor: kColorWhite,
          backgroundColor: kColorSurface,
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          children: [
            const SizedBox(height: 16.0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Topic',
                ),
                textInputAction: TextInputAction.next,
              ),
            ),
            const SizedBox(height: 24.0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Link Google Meet',
                ),
                textInputAction: TextInputAction.next,
              ),
            ),
            const SizedBox(height: 24.0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Link Modul',
                ),
                textInputAction: TextInputAction.next,
              ),
            ),
            const SizedBox(height: 24.0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: 4,
                decoration: InputDecoration(
                  labelText: 'Deskripsi',
                  alignLabelWithHint: true
                ),
                textInputAction: TextInputAction.next,
              ),
            ),
            const SizedBox(height: 16.0),
            MyFilledButton(
              onPressed: () {},
              child: const Text('Buat Kelas'),
            ),
            const SizedBox(height: 16.0),
          ],
        ),
      );
}
