Package: `effect`<br />
Module: `PartitionedSemaphore`<br />

## PartitionedSemaphore.makeUnsafe

Constructs a `PartitionedSemaphore` synchronously, outside of `Effect`.

**When to use**

Prefer `make` when the semaphore should be created inside an `Effect`
workflow.

**Details**

Negative permit counts are clamped to `0`. Non-finite permit counts create
an unbounded semaphore whose acquire and release operations complete
immediately.

**Signature**

```ts
declare const makeUnsafe: <K = unknown>(options: { readonly permits: number; }) => PartitionedSemaphore<K>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PartitionedSemaphore.ts#L128)

Since v3.19.4