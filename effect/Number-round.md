# round

Returns the number rounded with the given precision.

To import and use `round` from the "Number" module:

```ts
import * as Number from "effect/Number"
// Can be accessed like this
Number.round
```

**Example**

```ts
import { round } from "effect/Number"

assert.deepStrictEqual(round(1.1234, 2), 1.12)
assert.deepStrictEqual(round(1.567, 2), 1.57)
```

**Signature**

```ts
export declare const round: { (precision: number): (self: number) => number; (self: number, precision: number): number }
```
