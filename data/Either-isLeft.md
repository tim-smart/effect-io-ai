# isLeft

Determine if a `Either` is a `Left`.

To import and use `isLeft` from the "Either" module:

```ts
import * as Either from '@effect/data/Either'

// Can be accessed like this
Either.isLeft
```

**Example**

```ts
import { isLeft, left, right } from '@effect/data/Either'

assert.deepStrictEqual(isLeft(right(1)), false)
assert.deepStrictEqual(isLeft(left('a')), true)
```

**Signature**

```ts
export declare const isLeft: <E, A>(self: Either<E, A>) => self is Left<E, A>
```
