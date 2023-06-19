# toArray

Transforms an `Either` into an `Array`.
If the input is `Left`, an empty array is returned.
If the input is `Right`, the value is wrapped in an array.

Part of the `Either` module, imported from `@effect/data/Either`.

**Example**

```ts
import { right, left, toArray } from '@effect/data/Either'

assert.deepStrictEqual(toArray(right(1)), [1])
assert.deepStrictEqual(toArray(left('error')), [])
```

**Signature**

```ts
export declare const toArray: <E, A>(self: Either<E, A>) => A[]
```
