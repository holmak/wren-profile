class List {
  toString {
    var result = "["
    for (i in 0...count) {
      if (i > 0) result = result + ", "
      result = result + this[i].toString
    }
    result = result + "]"
    return result
  }

  + that {
    var result = []
    for (element in this) {
      result.add(element)
    }
    for (element in that) {
      result.add(element)
    }
    return result
  }
}