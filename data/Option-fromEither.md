# fromEither

Converts a `Either` to an `Option` discarding the error.

Part of the `Option` module, imported from `@effect/data/Option`.

**Example**

```ts
import * as O from '@effect/data/Option'
import * as E from '@effect/data/Either'

assert.deepStrictEqual(O.fromEither(E.right(1)), O.some(1))
assert.deepStrictEqual(O.fromEither(E.left('error message')), O.none())
```

**Signature**

```ts
export declare const fromEither: <E, A>(self: Either<E, A>) => Option<A>
```
