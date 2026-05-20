Package: `effect`<br />
Module: `Hydration`<br />

## Hydration.dehydrate

Encodes the serializable atoms currently stored in a registry into dehydrated
state.

**Details**

Only atoms marked with `Atom.serializable` are included. `encodeInitialAs`
controls whether `AsyncResult.Initial` values are ignored, encoded as values, or
represented by promises that resolve when the atom leaves the initial state.

**Signature**

```ts
declare const dehydrate: (registry: AtomRegistry.AtomRegistry, options?: { readonly encodeInitialAs?: "ignore" | "promise" | "value-only" | undefined; }) => Array<DehydratedAtom>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Hydration.ts#L67)

Since v4.0.0