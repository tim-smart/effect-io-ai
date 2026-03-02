Package: `effect`<br />
Module: `Semaphore`<br />

## Semaphore.makePartitionedUnsafe

Creates a `Partitioned` semaphore unsafely.

**Previously Known As**

This API replaces the following from Effect 3.x:

- `PartitionedSemaphore.makeUnsafe`

**Signature**

```ts
declare const makePartitionedUnsafe: <K = unknown>(options: { readonly permits: number; }) => Partitioned<K>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Semaphore.ts#L217)

Since v3.19.4