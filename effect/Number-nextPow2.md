# nextPow2

Returns the next power of 2 from the given number.

To import and use `nextPow2` from the "Number" module:

```ts
import * as Number from "effect/Number"
// Can be accessed like this
Number.nextPow2
```

**Example**

```ts
import { nextPow2 } from "effect/Number"

assert.deepStrictEqual(nextPow2(5), 8)
assert.deepStrictEqual(nextPow2(17), 32)
```

**Signature**

```ts
export declare const nextPow2: (n: number) => number
```
