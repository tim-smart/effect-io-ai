# orElse

Returns the provided `Option` `that` if `self` is `None`, otherwise returns `self`.

To import and use `orElse` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.orElse
```

**Example**

```ts
import { pipe, Option } from "effect"

assert.deepStrictEqual(
  pipe(
    Option.none(),
    Option.orElse(() => Option.none())
  ),
  Option.none()
)
assert.deepStrictEqual(
  pipe(
    Option.some("a"),
    Option.orElse(() => Option.none())
  ),
  Option.some("a")
)
assert.deepStrictEqual(
  pipe(
    Option.none(),
    Option.orElse(() => Option.some("b"))
  ),
  Option.some("b")
)
assert.deepStrictEqual(
  pipe(
    Option.some("a"),
    Option.orElse(() => Option.some("b"))
  ),
  Option.some("a")
)
```

**Signature**

```ts
export declare const orElse: {
  <B>(that: LazyArg<Option<B>>): <A>(self: Option<A>) => Option<B | A>
  <A, B>(self: Option<A>, that: LazyArg<Option<B>>): Option<A | B>
}
```
