def quicksort(lst):
    if len(lst) <= 1:
        return lst
    el0 = lst[0]
    T = []
    lhigh = list()
    llower = list()
    for el in lst:
        if el > el0:
            lhigh.append(el)
        elif el < el0:
            llower.append(el)
        else:
            T.append(el)
    # return llower + T + lhigh
    print('Lower', llower)
    print('Higher', lhigh)
    print('T', T)
    
    return quicksort(llower) + T + quicksort(lhigh)

if __name__ == '__main__':
    lst = [0,2,2,2,2,2,2,2,2,1]
    print(quicksort(lst))
