using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace Validierung
{
    //ValidationRules müssen von der Klasse ValidationRule erben und die abstrakte Methode Validate() implementieren.
    //Diese liefert ein ValidationResult zurück, je nachdem, ob die Regel erfüllt wurde oder nicht.
    public class IpValidation : ValidationRule
    {
        public override ValidationResult Validate(object value, CultureInfo cultureInfo)
        {
            if(Regex.IsMatch(value.ToString(), @"^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$"))
            {
                return ValidationResult.ValidResult;
            }
            else
            {
                return new ValidationResult(false, "Bitte gib eine IPv4-Adresse ein.");
            }


        }
    }
}

/*
@"^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$"))
@ = VerbaTim-String-Einleitung
" = String-Beginn (C#)

^ (am Anfang)   = Beginn des Strings
()              = Gruppierung von Chars (damit dahinter Befehle für diese Gruppe gegeben werden können)
2               = Char: 2                                           |                                                       |
5               = Char: 5                                           |= Eine der Char-Gruppen 250 - 255                      |
[0-5]           = Einer der Chars 0,1,2,3,4,5 (Alternativ: [012345])|                                                       |
|               = logisches Oder                                                                                            |
2               = Char: 2                                           |                                                       |
[0-4]           = Einer der Chars 0,1,2,4                           |= Eine der Char-Gruppen 200 - 249                      |
[0-9]           = Einer der Chars 0,1,2,4,5,6,7,8,9                 |                                                       |= Eine der Char-Gruppen 0-255
|               = logisches Oder                                                                                            |
[01]            = Einer der Chars 0,1                               |                                                       |
?               = Vorangegangener Char (bzw Gruppe) ist optional    |                                                       |
[0-9]           = Einer der Chars 0,1,2,4,5,6,7,8,9                 |= Eine der Char-Gruppen 000-199 (inkl. 00-99 und 0-9)  |
[0-9]           = Einer der Chars 0,1,2,4,5,6,7,8,9                 |                                                       |
?               = Vorangegangener Char (bzw Gruppe) ist optional    |                                                       |
\.              = Char: . (ein . ohne den Escaper \ würde für für einen beliebingen Char stehen)
{3}             = Vorangegangener Char (bzw Gruppe) wird 3 mal erwartet
(...)
$               = Ende des Strings

" = String-Ende (C#)
*/

