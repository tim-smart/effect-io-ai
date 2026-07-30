Package: `effect`<br />
Module: `TQueue`<br />

## TQueue.shutdown

Interrupts any fibers that are suspended on `offer` or `take`. Future calls
to `offer*` and `take*` will be interrupted immediately.

**Signature**

```ts
declare const shutdown: <A>(self: TDequeue<A> | TEnqueue<A>) => STM.STM<void>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TQueue.ts#L348)

Since v2.0.0