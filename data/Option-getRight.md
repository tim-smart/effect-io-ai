# getRight

Converts a `Either` to an `Option` discarding the error.

Alias of {@link fromEither}.

To import and use `getRight` from the "Option" module:

```ts
import * as Option from '@effect/data/Option'

// Can be accessed like this
Option.getRight
```

**Example**

```ts
import * as O from '@effect/data/Option'
import * as E from '@effect/data/Either'

assert.deepStrictEqual(O.getRight(E.right('ok')), O.some('ok'))
assert.deepStrictEqual(O.getRight(E.left('err')), O.none())
```

**Signature**

```ts
export declare const getRight: <E, A>(self: Either<E, A>) => Option<A>
```
