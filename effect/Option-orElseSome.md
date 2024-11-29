# orElseSome

Returns the provided default value as `Some` if `self` is `None`, otherwise returns `self`.

To import and use `orElseSome` from the "Option" module:

ts
import \* as Option from "effect/Option"
// Can be accessed like this
Option.orElseSome
undefined

**Example**

```ts
import { pipe, Option } from "effect"

assert.deepStrictEqual(
  pipe(
    Option.none(),
    Option.orElseSome(() => "b")
  ),
  Option.some("b")
)
assert.deepStrictEqual(
  pipe(
    Option.some("a"),
    Option.orElseSome(() => "b")
  ),
  Option.some("a")
)
```

**Signature**

```ts
export declare const orElseSome: {
  <B>(onNone: LazyArg<B>): <A>(self: Option<A>) => Option<B | A>
  <A, B>(self: Option<A>, onNone: LazyArg<B>): Option<A | B>
}
```
