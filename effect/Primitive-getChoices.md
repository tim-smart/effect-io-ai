# getChoices

Returns a text representation of the valid choices for a primitive type, if
any.

To import and use `getChoices` from the "Primitive" module:

ts
import \* as Primitive from "@effect/cli/Primitive"
// Can be accessed like this
Primitive.getChoices
undefined

**Signature**

```ts
export declare const getChoices: <A>(self: Primitive<A>) => Option<string>
```
