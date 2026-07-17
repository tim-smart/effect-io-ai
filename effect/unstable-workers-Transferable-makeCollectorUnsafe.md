Package: `effect`<br />
Module: `Transferable`<br />

## Transferable.makeCollectorUnsafe

Creates a mutable `Collector` service directly, exposing unsafe synchronous
methods for reading, adding, and clearing collected transferables.

**Signature**

```ts
declare const makeCollectorUnsafe: () => Collector["Service"]
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Transferable.ts#L44)

Since v4.0.0