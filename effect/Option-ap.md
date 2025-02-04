# ap

Applies a function inside a `Some` to a value inside another `Some`,
combining them into a new `Option`.

**Details**

This function allows you to apply a function wrapped in an `Option` (`self`)
to a value wrapped in another `Option` (`that`). If both `Option`s are
`Some`, the function is applied to the value, and the result is wrapped in a
new `Some`. If either `Option` is `None`, the result is `None`.

To import and use `ap` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.ap
```

**Signature**

```ts
export declare const ap: {
  <A>(that: Option<A>): <B>(self: Option<(a: A) => B>) => Option<B>
  <A, B>(self: Option<(a: A) => B>, that: Option<A>): Option<B>
}
```
