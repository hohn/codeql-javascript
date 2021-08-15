/**
 * @name simple graph test
 * @kind graph
 */

import javascript

query predicate edges(int a, int b) {
    a = 1 and b = 2
    or
    a = 2 and b = 3
}

query predicate nodes(int n, string key, string val) {
    (edges(n, _) or edges(_, n)) and
    key = "semmle.label" and
    val = n.toString()
}

query predicate graphProperties(string key, string value) {
    key = "semmle.graphKind" and value = "tree"
}
