# isString

Tests if a value is a `string`.

To import and use `isString` from the "String" module:

```ts
import * as String from "effect/String"
// Can be accessed like this
String.isString
```

**Example**

```ts
import { String } from "effect"

assert.deepStrictEqual(String.isString("a"), true)
assert.deepStrictEqual(String.isString(1), false)
```

**Signature**

```ts
export declare const isString: Refinement<unknown, string>
```
