# transform

Transforms the type of values that this differ knows how to differ using
the specified functions that map the new and old value types to each other.

To import and use `transform` from the "Differ" module:

ts
import \* as Differ from "effect/Differ"
// Can be accessed like this
Differ.transform
undefined

**Signature**

```ts
export declare const transform: {
  <Value, Value2>(options: {
    readonly toNew: (value: Value) => Value2
    readonly toOld: (value: Value2) => Value
  }): <Patch>(self: Differ<Value, Patch>) => Differ<Value2, Patch>
  <Value, Patch, Value2>(
    self: Differ<Value, Patch>,
    options: { readonly toNew: (value: Value) => Value2; readonly toOld: (value: Value2) => Value }
  ): Differ<Value2, Patch>
}
```
