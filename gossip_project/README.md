# GOSSIP PROJECT : GOING LIVE !

## The Hacking Project - Bootcamp Fullstack Web
### Semaine 5, jour 4.

> On améliore encore notre capacité à répandre des rumeurs. Comme ça ensuite on pourra les retweeter à plein de journalistes.


L'app ne fait rien pour l'instant. Elle contient une base de données qui (normalement) répond aux critères de l'exercice.


***

## Fonctionnalités présentes

* BDD organisée selon les consignes (jusque messages privés)
* `seed.rb` permettant de remplir la BDD

***

## Installation
Cloner le repository : 
~~~bash
$ git clone https://github.com/gaael/gossip-project.git
~~~
Ou télécharger sa version compressée puis l'extraire.

Se placer dans le dossier `gossip-project-master`. Installer les gemmes nécessaires (via *Bundler*)
~~~bash
$ cd path/to/gossip-project-master
$ bundle install
~~~

Remplir la BDD à partir de `seeds.rb`
~~~bash
$ rails db:seed
~~~

Lancer la *console Rails* pour pouvoir accéder à et expérimenter avec la BDD
~~~bash
$ rails c
~~~

Une fois dans la console, penser à appeler `table_print` 
~~~ruby
> require 'table_print'
 => true
~~~


***

## Configuration requise
Version de **Rails** :
~~~bash
$ rails-v
Rails 5.2.3
~~~

Version de **Ruby** :
~~~bash
$ ruby -v
ruby 2.5.1
~~~

Version de **Bundler** :
~~~bash
$ bundle -v
Bundler version 2.0.2
~~~

Gemmes utilisées (source : *Gemfile*) :\
Gemmes ajoutées au **Gemfile** de Rails :
~~~ruby
group :added_gems do
  # Enables 'realistic' and 'effortless' seed
  gem 'faker'
  # Displays nice tables in Rails Console
  gem 'table_print'
end
~~~


***

## Testing

Fait avec des chaînages d'appels à la BDD dans `rails console`. Par exemple

~~~ruby
> tp User.last.city.users.first.sent_messages.first.recipients.first.gossips.last.tags
# should return a tag
# not all users have messages or gossips, this command should be tested step by step

> tp City.first.users.last.gossips.first.comments.last.likes.first.id
# should return an integer if it was tested step by step
~~~

***

## Historique des versions

* version 1.00 : fonctionne avec private messages
* version 0.50 : fonctionne avec cities, users, gossips et tags
* version 0.00 : repo init

***

## Credits
Les ressources de [The Hacking Project](https://www.thehackingproject.org/)\
Les [guides de Rails](https://guides.rubyonrails.org/index.html)


## Meta
Gaël Dubois - [Twitter](https://twitter.com/GalDUBOIS1) - [GitHub](https://github.com/gaael/)\
Distribué sous license GNU-GPLv3. Voir `LICENCE.txt` pour plus d'informations.