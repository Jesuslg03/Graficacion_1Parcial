proc findSpan(n, p: int, u: float, U: seq[float]): int =
  ## Determine the knot span index
  ## Input: n,p,u,U
  ## Return: the knot span index

  # Special case
  if u == U[n + 1]:
    return n

  # Do binary search
  var low = p
  var high = n + 1
  var mid = 0

  while u < U[mid] or u >= U[mid + 1]:
    if u < U[mid]:
      high = mid
    else:
      low = mid
    mid = (low + high) div 2

  return mid
  findSpan.nim