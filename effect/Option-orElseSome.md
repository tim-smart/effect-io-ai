# orElseSome

Returns the provided default value as `Some` if `self` is `None`, otherwise returns `self`.

To import and use `orElseSome` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.orElseSome
```

**Example**

```ts
import * as O from "effect/Option"
import { pipe } from "effect/Function"

assert.deepStrictEqual(
  pipe(
    O.none(),
    O.orElseSome(() => "b")
  ),
  O.some("b")
)
assert.deepStrictEqual(
  pipe(
    O.some("a"),
    O.orElseSome(() => "b")
  ),
  O.some("a")
)
```

**Signature**

```ts
export declare const orElseSome: {
  <B>(onNone: LazyArg<B>): <A>(self: Option<A>) => Option<B | A>
  <A, B>(self: Option<A>, onNone: LazyArg<B>): Option<A | B>
}
```
