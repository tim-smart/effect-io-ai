# lessThan

Returns `true` if the first argument is less than the second, otherwise `false`.

To import and use `lessThan` from the "Number" module:

```ts
import * as Number from "effect/Number"
// Can be accessed like this
Number.lessThan
```

**Example**

```ts
import { lessThan } from "effect/Number"

assert.deepStrictEqual(lessThan(2, 3), true)
assert.deepStrictEqual(lessThan(3, 3), false)
assert.deepStrictEqual(lessThan(4, 3), false)
```

**Signature**

```ts
export declare const lessThan: { (that: number): (self: number) => boolean; (self: number, that: number): boolean }
```
