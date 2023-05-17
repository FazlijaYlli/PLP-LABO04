# Déclaration
|**Types**|**Description**|
|---|---|
|`int`|Entier appartenant à l'ensemble Z|
|`bool`|Booléen (True \| False)|
|`(type, type)`|Tuple de plusieurs types|

|**Variables**|**Description**|
|---|---|
|`fixed type var expr`|Déclaration d'une variable constante nommée var.|

|**Fonctions**|**Description**|
|---|---|
|`type func(type param) f expr`|Déclaration d'une fonction f à un paramètre nommé param de type 'type' retournant type|
|`type func(type p1, type p2) f expr`|Déclaration d'une fonction f à deux paramètres p1 et p2, les deux de type 'type'.|

# Expression
|**Litéraux**|**Exemples**|
|---|---|
|Entier |`5, -42, 31, (598), ...`|
|Booléen|True \| False|
|Tuples|(), (expr, expr), (expr, expr, expr, ...), ...|

|**Fonctions**|**Description**|
|---|---|
|`f(var, -4)`|Appel à la fonction f qui prend deux paramètres. Une variable et un entier litéral.|
|`fixed int result f(g(5))`|Stockage du résultat de la fonction f qui prend en paramètre le résultat de la fonction g dans une constante result.|

|**Conditions**|**Description**|
|---|---|
|`if (bool_expr) expr`|Condition qui exécute l'expression si bool_expr vaut True.|
|`if (bool_expr) expr otherwise expr`|Condition qui exécute une des deux expressions selon le résultat de bool_expr.|

## Exemple pattern matching en utilisant le mot-clé `handle`
```C
// handle prend une expression qu'il va essayer de match avec les cas décrits dans les accolades.
// trivial est le cas par défaut qui s'exécute quand aucun autre cas n'est matché.
// Les cas sont testées de haut en bas.
handle (expr) {
    5 => expr // Si expr vaut 5, on rentre dans ce cas
    -42, 7 => expr // Si expr vaut -42 OU 7, on rentre dans ce cas
    trivial => expr // On rentre TOUJOURS dans ce cas si on y arrive.    
}
```

|**Opérateur**|**Exemple**|**Description**|
|---|---|---|
|`!`|`!bool_expr`|Rend l'inverse de l'expression booléenne `bool_expr`|
|`+`|`int_expr + int_expr`|Additionne les deux expressions de type int et retourne le résultat|
|`-`|`int_expr - int_expr`|Soustrait les deux expressions de type int et retourne le résultat|
|`*`|`int_expr * int_expr`|Multiplie les deux expressions de type int et retourne le résultat|
|`/`|`int_expr / int_expr`|Applique la division entière sur les deux expressions de type int et retourne le quotient|
|`%`|`int_expr % int_expr`|Appplique la division entière sur les deux expressions de type int et retourne le reste|
|`=`|`expr = expr`|Compare deux expressions et retourne True si les expressions sont pareilles.
|`=/=`|`expr =/= expr`|Compare deux expressions et retourne False si les expressions sont pareilles.
|`>`|`int_expr > int_expr`| Compare deux expressions entières et retourne True si l'expression de gauche est plus grande que celle de droite.|
|`>=`|`int_expr >= int_expr`| Compare deux expressions entières et retourne True si l'expression de gauche est plus grande ou égale à celle de droite.|
|`<`|`int_expr < int_expr`| Compare deux expressions entières et retourne True si l'expression de gauche est plus petite que celle de droite.|
|`<=`|`int_expr <= int_expr`| Compare deux expressions entières et retourne True si l'expression de gauche est plus petite ou égale à celle de droite.|
|`&`|`bool_expr & bool_expr`| Compare deux expressions booléennes et retourne True si les deux expressions valent True.
|`\|`|`bool_expr \| bool_expr`| Compare deux expressions booléennes et retourne True si une des deux expressions valent True

# Remarques
- Les expressions parenthésées doivent être traités avant les opérations à l'extérieur des paranthèses.
- `int_expr` est une expression de type `int`.
- `bool_expr` est une expression de type `bool`.
- les noms des variables sont uniquement alphabétiques. [A-Za-z]
- `#` permets de faire un commentaire monoligne
- `/*` permets de faire un commentaire multiligne. Le commentaire s'arrête dès qu'un `*/` est rencontré.