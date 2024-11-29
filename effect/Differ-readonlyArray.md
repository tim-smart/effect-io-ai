# readonlyArray

Constructs a differ that knows how to diff a `ReadonlyArray` of values.

To import and use `readonlyArray` from the "Differ" module:

ts
import \* as Differ from "effect/Differ"
// Can be accessed like this
Differ.readonlyArray
undefined

**Signature**

```ts
export declare const readonlyArray: <Value, Patch>(
  differ: Differ<Value, Patch>
) => Differ<ReadonlyArray<Value>, Differ.ReadonlyArray.Patch<Value, Patch>>
```
