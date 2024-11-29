# boolean

Represents a boolean value.

True values can be passed as one of: `["true", "1", "y", "yes" or "on"]`.
False value can be passed as one of: `["false", "o", "n", "no" or "off"]`.

To import and use `boolean` from the "Primitive" module:

ts
import \* as Primitive from "@effect/cli/Primitive"
// Can be accessed like this
Primitive.boolean
undefined

**Signature**

```ts
export declare const boolean: (defaultValue: Option<boolean>) => Primitive<boolean>
```
