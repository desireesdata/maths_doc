Livres = {"a", "b", "c"}
Archives = {"d", "e"}

def card(*ensembles:set)->int:
    print(f"Elements de l'union des ensembles : {set.union(*ensembles)}")
    return len(set.union(*ensembles))

print(card(Livres, Archives))