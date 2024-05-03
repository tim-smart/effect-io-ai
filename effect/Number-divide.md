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
import { Number, Option } from "effect"

assert.deepStrictEqual(Number.divide(6, 3), Option.some(2))
assert.deepStrictEqual(Number.divide(6, 0), Option.none())
```

**Signature**

```ts
export declare const divide: {
  (that: number): (self: number) => Option<number>
  (self: number, that: number): Option<number>
}
```
