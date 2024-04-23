import math
proc deCasteljau*(P: seq[(float, float)], n: int, u: float): (float, float) =
  var Q: seq[(float, float)] = P

  for i in 0..n:
    Q[i] = P[i]

  for k in 1..n:
    for i in 0..n - k:
      let x1 = (1.0 - u) * Q[i][0] + u * Q[i + 1][0]
      let y1 = (1.0 - u) * Q[i][1] + u * Q[i + 1][1]
      Q[i] = (x1, y1)

  result = Q[0]