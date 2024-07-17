import 'package:flutter/material.dart';
import 'package:portfolio/constants/icons.dart';
import 'package:portfolio/services/auth/url_launcher.dart';
import 'package:portfolio/services/auth/url_links.dart';

class SocialIconButton extends StatefulWidget {
  final String iconPath;
  final VoidCallback onTap;

  SocialIconButton({super.key, required this.iconPath, required this.onTap});

  @override
  _SocialIconButtonState createState() => _SocialIconButtonState();
}

class _SocialIconButtonState extends State<SocialIconButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: _isHovered ? 50 : 40,
        width: _isHovered ? 50 : 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.blue),
          color: Colors.transparent,
          boxShadow: _isHovered
              ? [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.6),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ]
              : [],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: GestureDetector(
            onTap: widget.onTap,
            child: Image.asset(
              widget.iconPath,
              height: 30,
              width: 30,
              fit: BoxFit.cover,
              color: _isHovered ? Colors.blue : Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class FacebookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SocialIconButton(
      iconPath: Appicons.facebook,
      onTap: () => UrlLauncherHelper.launchUrl(facebookLink),
    );
  }
}

class TwitterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SocialIconButton(
      iconPath: Appicons.twitter,
      onTap: () => UrlLauncherHelper.launchUrl(twitterLink),
    );
  }
}

class InstagramButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SocialIconButton(
      iconPath: Appicons.instagram,
      onTap: () => UrlLauncherHelper.launchUrl(instagramLink),
    );
  }
}

class TelegramButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SocialIconButton(
      iconPath: Appicons.telegram,
      onTap: () => UrlLauncherHelper.launchUrl(telegramLink),
    );
  }
}

class WhatsappButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SocialIconButton(
      iconPath: Appicons.whatsapp,
      onTap: () => UrlLauncherHelper.launchUrl('https://www.whatsapp.com/'),
    );
  }
}

class LinkedinButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SocialIconButton(
      iconPath: Appicons.linkedin,
      onTap: () => UrlLauncherHelper.launchUrl(linkedinLink),
    );
  }
}

class MediumButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SocialIconButton(
      iconPath: Appicons.medium,
      onTap: () => UrlLauncherHelper.launchUrl(mediumLink),
    );
  }
}

class HashnodeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SocialIconButton(
      iconPath: Appicons.hashnode,
      onTap: () => UrlLauncherHelper.launchUrl(hashnodeLink),
    );
  }
}
