Package: `effect`<br />
Module: `Transferable`<br />

## Transferable.makeCollector

Effect that creates a fresh `Collector` service for accumulating
transferables.

**Signature**

```ts
declare const makeCollector: Effect.Effect<{ readonly addAll: (_: Iterable<globalThis.Transferable>) => Effect.Effect<void>; readonly addAllUnsafe: (_: Iterable<globalThis.Transferable>) => void; readonly read: Effect.Effect<Array<globalThis.Transferable>>; readonly readUnsafe: () => Array<globalThis.Transferable>; readonly clearUnsafe: () => Array<globalThis.Transferable>; readonly clear: Effect.Effect<Array<globalThis.Transferable>>; }, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Transferable.ts#L72)

Since v4.0.0