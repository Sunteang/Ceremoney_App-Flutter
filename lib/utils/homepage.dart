import 'package:flutter/material.dart';
import '../pages/button-containers/buttoncontainer.dart';
import '../pages/user-information/UserInformation.dart';
// import 'package:testing/utils/settingpage.dart';
import 'package:testing/utils/singleChildScroll.dart';
import '../pages/post-page/postpage.dart';
import 'starpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teang Container Widget'),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: const Icon(Icons.person_outlined,
                color: Colors.black, size: 30),
            onPressed: () => _showInfoDialog(context),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text(
                'Serey Sunteang',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                'sereysunteang@gmail.com',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://i.pinimg.com/736x/65/78/64/657864774184d29c4c3606640b3ec3fa.jpg'),
              ),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.person,
                color: Colors.blueAccent,
                size: 30,
              ),
              title: const Text(
                'Profile',
                style: TextStyle(fontSize: 20),
              ),
              trailing: const Icon(
                Icons.chevron_right,
                color: Colors.blueAccent,
                size: 30,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const _CustomPage(pageName: 'Profile'),
                  ),
                );
              },
            ),
            // ListTile(
            //   leading: const Icon(
            //     Icons.settings,
            //     color: Colors.blueAccent,
            //     size: 30,
            //   ),
            //   title: const Text(
            //     'Settings',
            //     style: TextStyle(fontSize: 20),
            //   ),
            //   trailing: const Icon(
            //     Icons.chevron_right,
            //     color: Colors.blueAccent,
            //     size: 30,
            //   ),
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => const SettingPage()),
            //     );
            //   },
            // ),
            // Other ListTiles remain the same...
          ],
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 5),
          // Row 1
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildIconContainer(
                icon: Icons.edit,
                bgColor: Colors.yellow,
                iconColor: Colors.red,
                onTap: () => _navigateToPostPage(context),
              ),
              _buildIconContainer(
                icon: Icons.delete,
                bgColor: Colors.blue,
                iconColor: Colors.yellow,
                onTap: () => _showSnackBar(context, 'Delete icon clicked'),
              ),
              _buildIconContainer(
                icon: Icons.settings,
                bgColor: Colors.red,
                iconColor: Colors.white,
                onTap: () => _showSnackBar(context, 'Settings icon clicked'),
              ),
            ],
          ),
          const SizedBox(height: 5),
          // Row 2
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildIconContainer(
                icon: Icons.home,
                bgColor: Colors.yellow,
                iconColor: Colors.red,
                onTap: () => _navigateToButtonPage(context),
              ),
              _buildIconContainer(
                icon: Icons.person,
                bgColor: Colors.blue,
                iconColor: Colors.yellow,
                onTap: () => _navigateToUserInfoPage(context),
              ),
              _buildIconContainer(
                icon: Icons.star,
                bgColor: Colors.red,
                iconColor: Colors.white,
                onTap: () => _navigateToStarPage(context),
              ),
            ],
          ),
          const SizedBox(height: 5),
          // Row 3
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildIconContainer(
                icon: Icons.favorite,
                bgColor: Colors.yellow,
                iconColor: Colors.red,
                onTap: () => _showSnackBar(context, 'Favorite icon clicked'),
              ),
              _buildIconContainer(
                icon: Icons.email,
                bgColor: Colors.blue,
                iconColor: Colors.yellow,
                onTap: () => _navigateToScrollViewPage(context),
              ),
              _buildIconContainer(
                icon: Icons.share,
                bgColor: Colors.red,
                iconColor: Colors.white,
                onTap: () => _showSnackBar(context, 'Share icon clicked'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Helper Widget to Build Icon Containers
  Widget _buildIconContainer({
    required IconData icon,
    required Color bgColor,
    required Color iconColor,
    required VoidCallback onTap,
  }) {
    return Container(
      height: 130,
      width: 130,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: IconButton(
        onPressed: onTap,
        icon: Icon(
          icon,
          color: iconColor,
          size: 50,
        ),
      ),
    );
  }

  // Show Information Dialog
  void _showInfoDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('About This App'),
        content: const Text(
          'This app is designed by Serey Sunteang to demonstrate various Flutter widgets like Drawer, Buttons, and Navigation.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }

  // Navigate to Post Page
  void _navigateToPostPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const PostPage()),
    );
  }

  //Navigate to Star Page
  void _navigateToStarPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const StarPage()),
    );
  }

  //Navigate to Scroll View Page
  void _navigateToScrollViewPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SignleChildScroll()),
    );
  }

  //Navigate to Button Page
  void _navigateToButtonPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ButtonContainer()),
    );
  }

  //Navigate to UserInfo Page
  void _navigateToUserInfoPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Userinformation()),
    );
  }

  // Snackbar for basic notifications
  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}

// Dummy Page for navigation
class _CustomPage extends StatelessWidget {
  final String pageName;

  const _CustomPage({super.key, required this.pageName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(pageName)),
      body: Center(child: Text('Welcome to the $pageName')),
    );
  }
}
