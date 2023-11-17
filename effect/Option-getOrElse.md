# getOrElse

Returns the value of the `Option` if it is `Some`, otherwise returns `onNone`

To import and use `getOrElse` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.getOrElse
```

**Example**

```ts
import { some, none, getOrElse } from "effect/Option"
import { pipe } from "effect/Function"

assert.deepStrictEqual(
  pipe(
    some(1),
    getOrElse(() => 0)
  ),
  1
)
assert.deepStrictEqual(
  pipe(
    none(),
    getOrElse(() => 0)
  ),
  0
)
```

**Signature**

```ts
export declare const getOrElse: {
  <B>(onNone: LazyArg<B>): <A>(self: Option<A>) => B | A
  <A, B>(self: Option<A>, onNone: LazyArg<B>): A | B
}
```
