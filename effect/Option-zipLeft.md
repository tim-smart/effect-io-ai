# zipLeft

Combines two `Option`s, keeping the value from the first `Option` if both are
`Some`.

**Details**

This function takes two `Option`s and returns the first one if it is `Some`.
If either the first `Option` or the second `Option` is `None`, the result
will be `None`. This operation "zips" the two `Option`s while discarding the
value from the second `Option`.

This is useful when sequencing computations where the second `Option`
represents a dependency or condition that must hold, but its value is
irrelevant.

To import and use `zipLeft` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.zipLeft
```

**Signature**

```ts
export declare const zipLeft: {
  <_>(that: Option<_>): <A>(self: Option<A>) => Option<A>
  <A, X>(self: Option<A>, that: Option<X>): Option<A>
}
```
