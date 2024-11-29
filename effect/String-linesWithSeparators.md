# linesWithSeparators

Returns an `IterableIterator` which yields each line contained within the
string as well as the trailing newline character.

To import and use `linesWithSeparators` from the "String" module:

ts
import \* as String from "effect/String"
// Can be accessed like this
String.linesWithSeparators
undefined

**Signature**

```ts
export declare const linesWithSeparators: (s: string) => LinesIterator
```
