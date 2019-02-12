import i18n from 'i18next';
import ICU from 'i18next-icu';
import XHR from 'i18next-xhr-backend';
import { initReactI18next } from 'react-i18next';
import LanguageDetector from 'i18next-browser-languagedetector';

import enUs from './locales/en-us.json';
import frFR from './locales/fr-FR.json';
import esLa from './locales/es-419.json';

i18n
  // https://github.com/i18next/i18next-icu
  .use(ICU)
  // https://github.com/i18next/i18next-browser-languageDetector
  .use(LanguageDetector)
  .use(initReactI18next)
  .use(XHR)
  .init({
    resources: {},
    fallbackLng: 'en-US',
    // lowerCaseLng: true,
    // nsSeparator: false,
    // keySeparator: false,

    // common namespace for the app
    ns: ['translations', 'ldml'],
    defaultNS: 'translations',

    // debug: true,

    interpolation: {
      // react already does escaping
      escapeValue: false,
    },
  });

i18n.addResourceBundle('es-419', 'translations', esLa, true, true);
i18n.addResourceBundle('en-US', 'translations', enUs, true, true);
i18n.addResourceBundle('fr-FR', 'translations', frFR, true, true);

export default i18n;
