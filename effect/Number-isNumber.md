# isNumber

Tests if a value is a `number`.

To import and use `isNumber` from the "Number" module:

```ts
import * as Number from "effect/Number"
// Can be accessed like this
Number.isNumber
```

**Example**

```ts
import { isNumber } from "effect/Number"

assert.deepStrictEqual(isNumber(2), true)
assert.deepStrictEqual(isNumber("2"), false)
```

**Signature**

```ts
export declare const isNumber: (input: unknown) => input is number
```
