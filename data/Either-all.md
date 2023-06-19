# all

Similar to `Promise.all` but operates on `Either`s.

```
Iterable<Either<E, A>> -> Either<E, A[]>
```

Flattens a collection of `Either`s into a single `Either` that contains a list of all the `Right` values.
If there is a `Left` value in the collection, it returns the first `Left` found as the result.

Part of the `Either` module, imported from `@effect/data/Either`.

**Example**

```ts
import * as E from '@effect/data/Either'

assert.deepStrictEqual(E.all([E.right(1), E.right(2), E.right(3)]), E.right([1, 2, 3]))
assert.deepStrictEqual(E.all([E.right(1), E.left('error'), E.right(3)]), E.left('error'))
```

**Signature**

```ts
export declare const all: <E, A>(collection: Iterable<Either<E, A>>) => Either<E, A[]>
```
