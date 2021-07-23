import 'package:flutter/material.dart';

class Anatomy with ChangeNotifier {
  // ignore: non_constant_identifier_names
  Map<String, Map<String, String>> _anatomy_details = {
    'Anal Canal Anatomy': {
      'Gross Anatomy':
          'It is the most terminal part of the lowest GT tract/large intestin.',
      'Tissue,Nerve and Muscles': 'The perianal skin keratnixed,stratified.',
      'Pathophysiologic Variants': 'Pathophysiologic Variants',
      'Perianal Lesions':
          'The location of perianal lesions is described in relation to clock'
    },
    'Ankal Joint Anatomy': {
      'OverView':
          'The ankle joint is a hinged synovial joint with primarly up-and-down movement',
      'Lateral Ligament and Biomechanics': 'Lateral Ligament',
      'Medial Ligament and Biomechanics': 'Medial Ligament',
      'Syndesmosis': 'Syndesmosis',
      'Subtalar Joint': 'The Subtalar Joint',
      'Pathophysilogic Variants': 'Natural Anatomy '
    }
  };

  Map<String, Map<String, String>> get items {
    return _anatomy_details;
  }
}
