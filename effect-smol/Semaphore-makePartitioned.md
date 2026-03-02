Package: `effect`<br />
Module: `Semaphore`<br />

## Semaphore.makePartitioned

Creates a `Partitioned` semaphore.

**Previously Known As**

This API replaces the following from Effect 3.x:

- `PartitionedSemaphore.make`

**Signature**

```ts
declare const makePartitioned: <K = unknown>(options: { readonly permits: number; }) => Effect.Effect<Partitioned<K>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Semaphore.ts#L354)

Since v3.19.4