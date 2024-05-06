def common_interests2(interests_dict):
    common_interests_dict = dict()
    for name1, interests1 in interests_dict.items():
        for name2, interests2 in interests_dict.items():
            if name1 != name2:
                intersection = interests1.intersection(interests2)
                if len(intersection) != 0:
                    tuples = ((name1, name2), (name2, name1))
                    if common_interests_dict.get(tuples[0]) is None and common_interests_dict.get(tuples[1]) is None:
                            common_interests_dict[tuples[0]] = intersection
    return common_interests_dict


def common_interests(interests_dict):
    common_interests_dict = dict()
    for name1, interests1 in interests_dict.items():
        for name2, interests2 in interests_dict.items():
            if name1 < name2:
                intersection = interests1.intersection(interests2)
                if len(intersection) != 0:
                    common_interests_dict[(name1, name2)] = intersection
    return common_interests_dict


def maxCI(ci_dict):
    result = max([len(x) for x in ci_dict.values()])
    return result


def pairs_with_max_CI(ci_dict, max):
    maxed_pairs = []
    for pair, set_interests in ci_dict.items():
        if len(set_interests) == max:
            maxed_pairs.append(pair)
    return maxed_pairs


def main():
    A = "reading"
    B = "eating"
    C = "traveling"
    D = "writing"
    E = "running"
    F = "music"
    G = "movies"
    H = "programming"

    interests = {
        "Marco": {A, D, E, F},
        "Anna": {E, A, G},
        "Maria": {G, D, E},
        "Paolo": {B, D, F},
        "Matheus": {D, B, E, F, A},
        "Teresa": {F, H, C, D},
    }

    print("a) Table of common interests:")
    commoninterests = common_interests(interests)
    commoninterests2 = common_interests2(interests)
    for k, v in commoninterests.items():
        print(k, v)
    print("\n")

    for k, v in commoninterests2.items():
        print(k, v)
    print("\n")

    # print("b) Maximum number of common interests:")
    # maxC_I = maxCI(commoninterests)
    # print(maxC_I)

    # print("c) Pairs with maximum number of matching interests:")
    # maxmatches = pairs_with_max_CI(commoninterests, maxC_I)
    # print(maxmatches)

    # print("d) Pairs with low similarity:")
    # lowJaccard = ...
    # print(lowJaccard)


# Start program:
main()
