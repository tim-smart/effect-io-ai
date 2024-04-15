# escape

Escapes special characters in a regular expression pattern.

To import and use `escape` from the "RegExp" module:

```ts
import * as RegExp from "effect/RegExp"
// Can be accessed like this
RegExp.escape
```

**Example**

```ts
import * as RegExp from "effect/RegExp"

assert.deepStrictEqual(RegExp.escape("a*b"), "a\\*b")
```

**Signature**

```ts
export declare const escape: (string: string) => string
```
