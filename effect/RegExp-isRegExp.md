# isRegExp

Tests if a value is a `RegExp`.

To import and use `isRegExp` from the "RegExp" module:

```ts
import * as RegExp from "effect/RegExp"
// Can be accessed like this
RegExp.isRegExp
```

**Example**

```ts
import { RegExp } from "effect"

assert.deepStrictEqual(RegExp.isRegExp(/a/), true)
assert.deepStrictEqual(RegExp.isRegExp("a"), false)
```

**Signature**

```ts
export declare const isRegExp: (input: unknown) => input is RegExp
```
