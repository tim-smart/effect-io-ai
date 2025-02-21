# product

Combines two `Option` values into a single `Option` containing a tuple of
their values if both are `Some`.

**Details**

This function takes two `Option`s and combines their values into a tuple `[A,
B]` if both are `Some`. If either of the `Option`s is `None`, the result is
`None`. This is particularly useful for combining multiple `Option` values
into a single one, ensuring both contain valid values.

To import and use `product` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.product
```

**Signature**

```ts
export declare const product: <A, B>(self: Option<A>, that: Option<B>) => Option<[A, B]>
```
