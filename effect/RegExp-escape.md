# escape

Escapes special characters in a regular expression pattern.

To import and use `escape` from the "RegExp" module:

ts
import \* as RegExp from "effect/RegExp"
// Can be accessed like this
RegExp.escape
undefined

**Example**

```ts
import { RegExp } from "effect"

assert.deepStrictEqual(RegExp.escape("a*b"), "a\\*b")
```

**Signature**

```ts
export declare const escape: (string: string) => string
```
