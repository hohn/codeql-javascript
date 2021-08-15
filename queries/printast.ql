/**
 * @name Print AST
 * @kind graph
 */

import javascript
import semmle.javascript.PrintAst

class PrintAstConfigurationOverride extends PrintAstConfiguration {
    override predicate shouldPrint(Locatable e, Location l) {
        super.shouldPrint(e, l) and
        l.getFile().getBaseName() = "callbacks.js"
    }
}
// from File f
// where f.getBaseName() = "callbacks.js"
// select f
