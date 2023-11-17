# getLeft

Converts a `Either` to an `Option` discarding the value.

To import and use `getLeft` from the "Either" module:

```ts
import * as Either from "effect/Either"
// Can be accessed like this
Either.getLeft
```

**Example**

```ts
import * as O from "effect/Option"
import * as E from "effect/Either"

assert.deepStrictEqual(E.getLeft(E.right("ok")), O.none())
assert.deepStrictEqual(E.getLeft(E.left("err")), O.some("err"))
```

**Signature**

```ts
export declare const getLeft: <E, A>(self: Either<E, A>) => Option<E>
```
