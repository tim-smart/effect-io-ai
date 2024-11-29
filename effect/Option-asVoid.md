# asVoid

Maps the `Some` value of this `Option` to the `void` constant value.

This is useful when the value of the `Option` is not needed, but the presence or absence of the value is important.

To import and use `asVoid` from the "Option" module:

ts
import \* as Option from "effect/Option"
// Can be accessed like this
Option.asVoid
undefined

**Signature**

```ts
export declare const asVoid: <_>(self: Option<_>) => Option<void>
```
