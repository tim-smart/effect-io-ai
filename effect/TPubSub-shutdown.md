Package: `effect`<br />
Module: `TPubSub`<br />

## TPubSub.shutdown

Interrupts any fibers that are suspended on `offer` or `take`. Future calls
to `offer*` and `take*` will be interrupted immediately.

**Signature**

```ts
declare const shutdown: <A>(self: TPubSub<A>) => STM.STM<void>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TPubSub.ts#L117)

Since v2.0.0