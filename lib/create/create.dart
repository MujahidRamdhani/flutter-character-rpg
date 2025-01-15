import 'package:flutter/material.dart';
import 'package:flutter_rpg/create/vocation_card.dart';
import 'package:flutter_rpg/models/character.dart';
import 'package:flutter_rpg/models/vocation.dart';
import 'package:flutter_rpg/screens/home/home.dart';
import 'package:flutter_rpg/services/character_store.dart';
import 'package:flutter_rpg/shared/style_button.dart';
import 'package:flutter_rpg/shared/style_text.dart';
import 'package:flutter_rpg/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:uuid/uuid.dart';

var uuid = const Uuid();

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  final _nameController = TextEditingController();
  final _sloganController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _sloganController.dispose();
    super.dispose();
  }

  //submit handler

  void handleSubmit() {
    if (_nameController.text.trim().isEmpty) {
      // print('name must not be empty');
      //show error dialog
      showDialog(
          context: context,
          builder: (ctx) {
            return AlertDialog(
              title: const StyledHeading('Name must not be empty'),
              content:
                  const StyledText('Please enter a name for your character'),
              actions: [
                StyledButton(
                    onPressed: () {
                      Navigator.of(ctx).pop();
                    },
                    child: const StyledText('close'))
              ],
              actionsAlignment: MainAxisAlignment.center,
            );
          });
      return;
    }
    if (_sloganController.text.trim().isEmpty) {
      // print('slogan must not be empty');
      //show error dialog
      showDialog(
          context: context,
          builder: (ctx) {
            return AlertDialog(
              title: const StyledHeading('Slogan must not be empty'),
              content:
                  const StyledText('Please enter a slogan for your character'),
              actions: [
                StyledButton(
                    onPressed: () {
                      Navigator.of(ctx).pop();
                    },
                    child: const StyledText('close'))
              ],
              actionsAlignment: MainAxisAlignment.center,
            );
          });

      return;
    }

    // print(_nameController.text);
    // print(_sloganController.text);

    
   

    Provider.of<CharacterStore>(context, listen: false).addCharacter(Character(
        name: _nameController.text.trim(),
        slogan: _sloganController.text.trim(),
        id: uuid.v4(),
        vocation: selectedVocation));
         
    Navigator.push(context, MaterialPageRoute(builder: (ctx) => Home()));
  }

  // handling vocation select
  Vocation selectedVocation = Vocation.archer;

  void updateVocation(Vocation vocation) {
    setState(() {
      selectedVocation = vocation;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const StyledTitle('Character Creation'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 50),
        child: SingleChildScrollView(
          child: Column(children: [
            // welcome message
            Center(
              child: Icon(
                Icons.code,
                color: AppColors.primaryColor,
              ),
            ),
            const Center(
              child: StyledHeading('Welcome, new player!'),
            ),
            const Center(
              child: StyledText('Create a name & slogan for your character'),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _nameController,
              style: GoogleFonts.kanit(
                  textStyle: Theme.of(context).textTheme.bodyMedium),
              cursorColor: AppColors.textColor,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_2),
                label: StyledText('Character Name'),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _sloganController,
              style: GoogleFonts.kanit(
                  textStyle: Theme.of(context).textTheme.bodyMedium),
              cursorColor: AppColors.textColor,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.chat),
                label: StyledText('Character slogan'),
              ),
            ),
            SizedBox(height: 30),

            // Select vocation title
            Center(
              child: Icon(
                Icons.code,
                color: AppColors.primaryColor,
              ),
            ),
            const Center(
              child: StyledHeading('Choose your vocation'),
            ),
            const Center(
              child: StyledText('This determines your available skills'),
            ),
            const SizedBox(height: 30),

            //vocation cards
            VocationCard(
                selected: selectedVocation == Vocation.archer,
                onTap: updateVocation,
                vocation: Vocation.archer),

            //vocation cards mage
            VocationCard(
                selected: selectedVocation == Vocation.mage,
                onTap: updateVocation,
                vocation: Vocation.mage),

            //vocation cards raider
            VocationCard(
                selected: selectedVocation == Vocation.raider,
                onTap: updateVocation,
                vocation: Vocation.raider),

            //vocation cards ranger
            VocationCard(
                selected: selectedVocation == Vocation.ranger,
                onTap: updateVocation,
                vocation: Vocation.ranger),

            // good luck message
            Center(
              child: Icon(
                Icons.code,
                color: AppColors.primaryColor,
              ),
            ),
            const Center(
              child: StyledHeading('Good Luck!'),
            ),
            const Center(
              child: StyledText('And enjoy the journey....'),
            ),
            const SizedBox(height: 30),

            Center(
                child: StyledButton(
                    onPressed: handleSubmit,
                    child: const StyledHeading('Create Character')))
          ]),
        ),
      ),
    );
  }
}
