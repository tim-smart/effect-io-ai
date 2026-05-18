Package: `effect`<br />
Module: `PartitionedSemaphore`<br />

## PartitionedSemaphore.withPermitsIfAvailable

Runs an effect only when the requested permits can be acquired immediately,
returning the result in `Some`.

**Details**

If the permits are not available, the effect is not run and the result is
`None`. When permits are acquired, they are released after the wrapped
effect completes, fails, or is interrupted. Requests for zero or a negative
number of permits run the effect and return `Some`.

**Signature**

```ts
declare const withPermitsIfAvailable: { <K>(self: PartitionedSemaphore<K>, permits: number): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<Option.Option<A>, E, R>; <K, A, E, R>(self: PartitionedSemaphore<K>, permits: number, effect: Effect.Effect<A, E, R>): Effect.Effect<Option.Option<A>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PartitionedSemaphore.ts#L459)

Since v4.0.0