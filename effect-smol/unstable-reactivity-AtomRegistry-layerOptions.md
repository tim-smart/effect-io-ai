Package: `effect`<br />
Module: `AtomRegistry`<br />

## AtomRegistry.layerOptions

Creates a layer that provides an `AtomRegistry` configured with the supplied
options.

**Details**

The registry is disposed when the layer scope is finalized.

**Signature**

```ts
declare const layerOptions: (options?: { readonly initialValues?: Iterable<readonly [Atom.Atom<any>, any]> | undefined; readonly scheduleTask?: ((f: () => void) => () => void) | undefined; readonly timeoutResolution?: number | undefined; readonly defaultIdleTTL?: number | undefined; }) => Layer.Layer<AtomRegistry>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AtomRegistry.ts#L223)

Since v4.0.0