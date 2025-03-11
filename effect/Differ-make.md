## make

Constructs a new `Differ`.

**Signature**

```ts
declare const make: <Value, Patch>(params: { readonly empty: Patch; readonly diff: (oldValue: Value, newValue: Value) => Patch; readonly combine: (first: Patch, second: Patch) => Patch; readonly patch: (patch: Patch, oldValue: Value) => Value; }) => Differ<Value, Patch>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Differ.ts#L309)

Since v2.0.0