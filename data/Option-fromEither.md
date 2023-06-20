# fromEither

Converts a `Either` to an `Option` discarding the error.

To import and use `fromEither` from the "Option" module:

```ts
import * as Option from '@effect/data/Option'

// Can be accessed like this
Option.fromEither
```

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
