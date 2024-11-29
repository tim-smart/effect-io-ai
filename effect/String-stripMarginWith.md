# stripMarginWith

For every line in this string, strip a leading prefix consisting of blanks
or control characters followed by the character specified by `marginChar`
from the line.

To import and use `stripMarginWith` from the "String" module:

ts
import \* as String from "effect/String"
// Can be accessed like this
String.stripMarginWith
undefined

**Signature**

```ts
export declare const stripMarginWith: {
  (marginChar: string): (self: string) => string
  (self: string, marginChar: string): string
}
```
