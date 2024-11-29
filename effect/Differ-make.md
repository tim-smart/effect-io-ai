# make

Constructs a new `Differ`.

To import and use `make` from the "Differ" module:

ts
import \* as Differ from "effect/Differ"
// Can be accessed like this
Differ.make
undefined

**Signature**

```ts
export declare const make: <Value, Patch>(params: {
  readonly empty: Patch
  readonly diff: (oldValue: Value, newValue: Value) => Patch
  readonly combine: (first: Patch, second: Patch) => Patch
  readonly patch: (patch: Patch, oldValue: Value) => Value
}) => Differ<Value, Patch>
```
