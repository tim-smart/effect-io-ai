# toEither

Converts an `Option` to an `Either`, allowing you to provide a value to be used in the case of a `None`.

To import and use `toEither` from the "Option" module:

```ts
import * as Option from '@effect/data/Option'

// Can be accessed like this
Option.toEither
```

**Example**

```ts
import { pipe } from '@effect/data/Function'
import * as O from '@effect/data/Option'
import * as E from '@effect/data/Either'

const onNone = () => 'error'
assert.deepStrictEqual(pipe(O.some(1), O.toEither(onNone)), E.right(1))
assert.deepStrictEqual(pipe(O.none(), O.toEither(onNone)), E.left('error'))
```

**Signature**

```ts
export declare const toEither: {
  <A, E>(self: Option<A>, onNone: () => E): Either<E, A>
  <E>(onNone: () => E): <A>(self: Option<A>) => Either<E, A>
}
```
