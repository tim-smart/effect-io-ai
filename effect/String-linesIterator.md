# linesIterator

Returns an `IterableIterator` which yields each line contained within the
string, trimming off the trailing newline character.

To import and use `linesIterator` from the "String" module:

```ts
import * as String from "effect/String"
// Can be accessed like this
String.linesIterator
```

**Signature**

```ts
export declare const linesIterator: (self: string) => LinesIterator
```
