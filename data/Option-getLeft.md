# getLeft

Converts a `Either` to an `Option` discarding the value.

Part of the `Option` module, imported from `@effect/data/Option`.

**Example**

```ts
import * as O from '@effect/data/Option'
import * as E from '@effect/data/Either'

assert.deepStrictEqual(O.getLeft(E.right('ok')), O.none())
assert.deepStrictEqual(O.getLeft(E.left('error')), O.some('error'))
```

**Signature**

```ts
export declare const getLeft: <E, A>(self: Either<E, A>) => Option<E>
```
