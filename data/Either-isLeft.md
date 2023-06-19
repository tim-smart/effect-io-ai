# isLeft

Determine if a `Either` is a `Left`.

Part of the `Either` module, imported from `@effect/data/Either`.

**Example**

```ts
import { isLeft, left, right } from '@effect/data/Either'

assert.deepStrictEqual(isLeft(right(1)), false)
assert.deepStrictEqual(isLeft(left('error')), true)
```

**Signature**

```ts
export declare const isLeft: <E, A>(self: Either<E, A>) => self is Left<E, A>
```
