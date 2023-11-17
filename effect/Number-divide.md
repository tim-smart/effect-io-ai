# divide

Provides a division operation on `number`s.

To import and use `divide` from the "Number" module:

```ts
import * as Number from "effect/Number"
// Can be accessed like this
Number.divide
```

**Example**

```ts
import { divide } from "effect/Number"
import { some, none } from "effect/Option"

assert.deepStrictEqual(divide(6, 3), some(2))
assert.deepStrictEqual(divide(6, 0), none())
```

**Signature**

```ts
export declare const divide: {
  (that: number): (self: number) => Option<number>
  (self: number, that: number): Option<number>
}
```
