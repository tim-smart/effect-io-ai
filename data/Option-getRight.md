# getRight

Converts a `Either` to an `Option` discarding the error.

Alias of {@link fromEither}.

Part of the `Option` module, imported from `@effect/data/Option`.

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
