# reverse

Reverse an `Iterable`, creating a new `Array`.

To import and use `reverse` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.reverse
```

**Example**

```ts
import { Array } from "effect"

const numbers = [1, 2, 3, 4]
const result = Array.reverse(numbers)
assert.deepStrictEqual(result, [4, 3, 2, 1])
```

**Signature**

```ts
export declare const reverse: <S extends Iterable<any> | NonEmptyReadonlyArray<any>>(
  self: S
) => S extends NonEmptyReadonlyArray<infer A> ? NonEmptyArray<A> : S extends Iterable<infer A> ? Array<A> : never
```
