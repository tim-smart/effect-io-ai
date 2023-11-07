# stripMargin

For every line in this string, strip a leading prefix consisting of blanks
or control characters followed by the `"|"` character from the line.

To import and use `stripMargin` from the "String" module:

```ts
import * as String from 'effect/String'

// Can be accessed like this
String.stripMargin
```

**Signature**

```ts
export declare const stripMargin: (self: string) => string
```
