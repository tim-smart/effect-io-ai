# getRight

Converts a `Either` to an `Option` discarding the `Left`.

Alias of {@link toOption}.

To import and use `getRight` from the "Either" module:

```ts
import * as Either from "effect/Either"
// Can be accessed like this
Either.getRight
```

**Example**

```ts
import * as O from "effect/Option"
import * as E from "effect/Either"

assert.deepStrictEqual(E.getRight(E.right("ok")), O.some("ok"))
assert.deepStrictEqual(E.getRight(E.left("err")), O.none())
```

**Signature**

```ts
export declare const getRight: <E, A>(self: Either<E, A>) => Option<A>
```
