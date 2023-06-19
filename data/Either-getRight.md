# getRight

Converts a `Either` to an `Option` discarding the error.

Alias of {@link toOption}.

Part of the `Either` module, imported from `@effect/data/Either`.

**Example**

```ts
import * as O from '@effect/data/Option'
import * as E from '@effect/data/Either'

assert.deepStrictEqual(E.getRight(E.right('ok')), O.some('ok'))
assert.deepStrictEqual(E.getRight(E.left('err')), O.none())
```

**Signature**

```ts
export declare const getRight: <E, A>(self: Either<E, A>) => Option<A>
```
