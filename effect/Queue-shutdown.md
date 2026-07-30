Package: `effect`<br />
Module: `Queue`<br />

## Queue.shutdown

Interrupts any fibers that are suspended on `offer` or `take`. Future calls
to `offer*` and `take*` will be interrupted immediately.

**Signature**

```ts
declare const shutdown: <A>(self: Dequeue<A> | Enqueue<A>) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Queue.ts#L535)

Since v2.0.0