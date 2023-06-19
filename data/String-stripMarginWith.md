# stripMarginWith

For every line in this string, strip a leading prefix consisting of blanks
or control characters followed by the character specified by `marginChar`
from the line.

Part of the `String` module, imported from `@effect/data/String`.

**Signature**

```ts
export declare const stripMarginWith: ((marginChar: string) => (self: string) => string) &
  ((self: string, marginChar: string) => string)
```
