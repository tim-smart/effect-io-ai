Package: `effect`<br />
Module: `Transferable`<br />

## Transferable.getterAddAll

Creates a schema getter that records transferables derived from a value in
the current `Collector` while passing the value through unchanged.

**Signature**

```ts
declare const getterAddAll: <A>(f: (_: A) => Iterable<globalThis.Transferable>) => SchemaGetter.Getter<A, A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Transferable.ts#L119)

Since v4.0.0