# getLeft

Converts a `Either` to an `Option` discarding the value.

Part of the `Either` module, imported from `@effect/data/Either`.

**Example**

```ts
import * as O from '@effect/data/Option'
import * as E from '@effect/data/Either'

assert.deepStrictEqual(E.getLeft(E.right('ok')), O.none())
assert.deepStrictEqual(E.getLeft(E.left('err')), O.some('err'))
```

**Signature**

```ts
export declare const getLeft: <E, A>(self: Either<E, A>) => Option<E>
```
