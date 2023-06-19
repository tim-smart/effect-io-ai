# getOrElse

Returns the wrapped value if it's a `Right` or a default value if is a `Left`.

Part of the `Either` module, imported from `@effect/data/Either`.

**Example**

```ts
import * as E from '@effect/data/Either'
import { pipe } from '@effect/data/Function'

assert.deepStrictEqual(
  E.getOrElse(E.right(1), () => 0),
  1
)
assert.deepStrictEqual(
  E.getOrElse(E.left('error'), () => 0),
  0
)
```

**Signature**

```ts
export declare const getOrElse: {
  <E, B>(onLeft: (e: E) => B): <A>(self: Either<E, A>) => B | A
  <E, A, B>(self: Either<E, A>, onLeft: (e: E) => B): A | B
}
```
