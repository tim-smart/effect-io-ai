# make

Constructs a new `Differ`.

Part of the `Differ` module, imported from `@effect/data/Differ`.

**Signature**

```ts
export declare const make: <Value, Patch>(params: {
  readonly empty: Patch
  readonly diff: (oldValue: Value, newValue: Value) => Patch
  readonly combine: (first: Patch, second: Patch) => Patch
  readonly patch: (patch: Patch, oldValue: Value) => Value
}) => Differ<Value, Patch>
```
