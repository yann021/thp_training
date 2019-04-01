# Morpion_project

Dans ce programme, nous avons mis:

Un Gemfile activé, un app.rb runnant directement l'application appelée dans le terminal, ce README.md ;)

 & Dans le dossier lib: 
 
  - **Application**
  
*La classe Application permet aux joueurs de lancer et de relancer (ou non) une partie.*

  - **Player**
  
*La classe player permet d'appeler les noms des joueurs*

  - **Game**
  
*La classe Game permet de runner le jeu, elle contiens le nécessaire pour le faire fonctionner : input du des noms des joueurs,choix de la case à cocher,loop des tours,jeu gagnant ou match nul + sortie programme* 

  - **Board**
  
  *La classe Board permet de définir les cases du jeu et une variable qui s'adaptera au choix de coche du joueur: x. Elle peut prendre la valeur X," " (espace vide) ou O en fonction de la case choisie par le joueur. On définit aussi dans cette classe les conditions nécessaires pour gagner.   (8 possibilités)*
  
  - **BoardCase**
  
  *La classe BoardCase nous permet d'associer l'input utilisateur au contenu qu'on veut y afficher. (joueur1 puts "A1" = X ,par exemple).*
  
  - **Show**
  
  *La classe Show permet de définir le plateau de jeu: ses bords, où placer les variables input par le joueur*



Ah! Et le db armé du fichier csv vide ne sert à rien, on a juste oublié de le supprimer de notre dossier avant de push.^^'
