# group

Group equal, consecutive elements of a `NonEmptyReadonlyArray` into `NonEmptyArray`s.

To import and use `group` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.group
```

**Example**

```ts
import { Array } from "effect"

const result = Array.group([1, 1, 2, 2, 2, 3, 1])
assert.deepStrictEqual(result, [[1, 1], [2, 2, 2], [3], [1]])
```

**Signature**

```ts
export declare const group: <A>(self: NonEmptyReadonlyArray<A>) => NonEmptyArray<NonEmptyArray<A>>
```
