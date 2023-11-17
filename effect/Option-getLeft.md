# getLeft

Converts a `Either` to an `Option` discarding the value.

To import and use `getLeft` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.getLeft
```

**Example**

```ts
import * as O from "effect/Option"
import * as E from "effect/Either"

assert.deepStrictEqual(O.getLeft(E.right("ok")), O.none())
assert.deepStrictEqual(O.getLeft(E.left("a")), O.some("a"))
```

**Signature**

```ts
export declare const getLeft: <E, A>(self: Either<E, A>) => Option<E>
```
