git commit
	tworzy 'komita' w historii gałęzi, którą mamy zcheckoutowaną 
	w repozytorium - zawiera on informacje o tym, kiedy i w jaki sposób
	zmodyfikowaliśmy projekt
git commit --amend
	modyfikuje poprzedniego komita


git branch [nazwa nowego brancha]
	tworzy nową gałąź w repozytorium, która będzie równoległa do innych
	branchy i będzie zawierała własne, niezależne od nich komity
git branch -f [branch a] [branch b]
	siłą przenosi brancha a do brancha b

git checkout [nazwa brancha]
	przełącza się na wybraną gałąź (np w celu ich połączenia)
	
git checkout -b [nazwa brancha]
	git branch [nazwa brancha]; git checkout [nazwa brancha]
	
git merge [nazwa brancha]
	tworzy na aktualnej gałęzi komita zawierające wszystkie komity wybranej
	gałęzi

git rebase [nazwa brancha]
	łączy komity aktualnej i wybranej gałęzi - do wybranej gałęzi 'dołącza'
	nowe komity będące kopią komitów z aktualnej gałęzi, w celu liniowości
	historii repozytorium

git checkout [nazwa commita]
	umożliwia zcheckoutowanie konkretnego komita (za pomocą wskaźnika HEAD)

REFERENCJE WZGLĘDNE
git checkout [branch]^ - zcheckoutowanie poprzedniego komita gałęzi (rodzic)
git checkout [branch]^^ - drugi komit gałęzi (przodek drugiego stopnia)
git checkout ~<num> - zcheckoutowanie kilka komitów wstecz
git checkout HEAD^ - poprzedni komit względem zcheckoutowanego

git reset [branch ref/commit]
	cofa lokalnie zmiany do komita zreferowanego w argumencie

git revert [branch ref/commit]
	tworzy komita odwracajacego zmiany komita zreferowanego w argumencie
	(remote)

git cherry-pick [commit1] [commit2] [...]
	kopiuje wszystkie podane komity jako nowe komity w aktualnej gałęzi

git tag [nazwa taga] [commit ref]
	tworzy tag w danym komicie. Można checkoutować się do tego taga

git describe [commit ref]
	zwraca opis danego komita względem najbliższego otagowanego przodka - 
	- <tag>_<numCommits>_g<hash>


REMOTE COMMANDS	
git clone

git fetch
	pobiera brakujące ze zdalnego repozytorium

git pull - git fetch; git merge o/main
git pull --rebase - git fetch; git rebase o/main


