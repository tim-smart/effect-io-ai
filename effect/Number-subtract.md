# subtract

Provides a subtraction operation on `number`s.

To import and use `subtract` from the "Number" module:

```ts
import * as Number from "effect/Number"
// Can be accessed like this
Number.subtract
```

**Example**

```ts
import { subtract } from "effect/Number"

assert.deepStrictEqual(subtract(2, 3), -1)
```

**Signature**

```ts
export declare const subtract: { (that: number): (self: number) => number; (self: number, that: number): number }
```
