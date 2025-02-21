# asVoid

Replaces the value inside a `Some` with the constant value `void`, leaving
`None` unchanged.

**Details**

This function transforms an `Option` by replacing the value inside a `Some`
with `void`. If the `Option` is `None`, it remains unchanged.

This is particularly useful in scenarios where the presence or absence of a
value is significant, but the actual content of the value is irrelevant.

To import and use `asVoid` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.asVoid
```

**Signature**

```ts
export declare const asVoid: <_>(self: Option<_>) => Option<void>
```
