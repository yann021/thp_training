# Bienvenue sur mon super concurrent de EventBrite !

[Version en production](https://eventbrite-fb.herokuapp.com/)

## La marche à suivre pour récupérer et tester l'application :

### Récupérer le projet en local
```
git clone https://github.com/fr3d100/eventbrite-v1
```
### Charger les gem du Gemfile
```
bundle install
```
### Créer les bases de données
```
rails db:create
```
### Charger le modèle de donnée en base
```
rails db:migrate
```
### Charger des données
```
rails db:seed
```

## La marche à suivre pour lancer les tests de la vue events#show :
```
rspec spec/views/events/show.html.erb_spec.rb
```


Fait avec :hearts: par @Fred

