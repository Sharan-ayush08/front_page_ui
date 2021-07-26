import 'package:flutter/material.dart';

class Allergies with ChangeNotifier {
  Map<String, Map<String, String>> _allergyList = {
    'Aeroallergens': {
      'Practice Essentials':
          'Both outdoor and indoor aeroallergns sensitize and exacrebate allergic asthma',
      'Overview': 'OverView and ManyMore',
      'Avoidance Measures and Interventions':
          'Indore allergens can be avoided using two primary techniques',
      'Dust Mites': 'Dust mite is the major source of allergens in house dust',
      'Furry Pets': 'Furry pets include, for example,cats,dogs,rodents etc',
      'Cockroaches': 'Of the 4500 known species of coackroach in the world',
      'Fungi': 'Fungi are widely used ',
      'Rodents': 'Rodents are the largest population i=of mammals in the world.'
    },
    'Allergic Contact Dermatitis':{
      'OverView':'Individuals with allergic contact dermatitis may have persistent or relapsing.',
      'Clinical Presentation':'Preexisting skin diseases',
      'DDx':'Differential Diagnosis',
      'Workup':'Approach Consideration',
      'Treatment & Managment':'Topical corticosteroids are the mainstay of treatment.',
      'Medication':'The goal of pharmacotherapy is to reduce morbidity and to prevent complications.'
    }
  };
  Map<String,Map<String,String>> get items{
    return _allergyList;
  }
}
