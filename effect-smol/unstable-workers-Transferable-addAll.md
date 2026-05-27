Package: `effect`<br />
Module: `Transferable`<br />

## Transferable.addAll

Adds transferables to the current `Collector` when one is present in the
context, and does nothing otherwise.

**Signature**

```ts
declare const addAll: (tranferables: Iterable<globalThis.Transferable>) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Transferable.ts#L102)

Since v4.0.0