import 'package:flutter/material.dart';
import 'package:flutter_rpg/models/character.dart';
import 'package:flutter_rpg/profile/skill_list.dart';
import 'package:flutter_rpg/profile/stats_table.dart';
import 'package:flutter_rpg/shared/style_button.dart';
import 'package:flutter_rpg/shared/style_text.dart';
import 'package:flutter_rpg/theme.dart';

class Profile extends StatelessWidget {
  const Profile({
    super.key, 
    required this.character});

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StyledTitle(character.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            // basic info - image, vocation, description
            Container(
              padding: const EdgeInsets.all(16),
              color: AppColors.secondaryColor.withOpacity(0.3),
              child: Row(
               children: [
                Image.asset('assets/img/vocations/${character.vocation.image}', width: 80, height: 120, fit: BoxFit.cover,),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      StyledHeading(character.name),
                      StyledText(character.vocation.title),
                      const SizedBox(height: 10),
                      StyledText(character.vocation.description),
                    ],
                  ),
                ),
               ],
              ),
            ), 
            // weapon and ability and slogan 
            const SizedBox(height : 20),
            Center(
              child: Icon(Icons.code, color: AppColors.primaryColor,)
            ),
            Padding(
              padding: const EdgeInsets.all(8.0), 
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                color: AppColors.secondaryColor.withOpacity(0.3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  const StyledHeading('Slogan'),
                  StyledText(character.slogan),
                  const SizedBox(height: 10),
                  const StyledHeading('Weapon'),
                  StyledText(character.vocation.weapon),
                  const SizedBox(height: 10),
                  const StyledHeading('Ability'),
                  StyledText(character.vocation.ability),
                ]),
              ),
            ),
            // stats & skills
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  StatsTable(character),
                  SkillList(character)
                ],
              ),
            ),
            // save button
            StyledButton(
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Character saved'),
                    showCloseIcon: true,
                    duration: const Duration(seconds: 2),
                    backgroundColor: AppColors.secondaryColor,
                  ));
              },
               child: const StyledHeading('Save Character')
               ),
            const  SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
