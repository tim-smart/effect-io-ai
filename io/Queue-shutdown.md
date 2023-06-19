# shutdown

Interrupts any fibers that are suspended on `offer` or `take`. Future calls
to `offer*` and `take*` will be interrupted immediately.

Part of the `Queue` module, imported from `@effect/io/Queue`.

**Signature**

```ts
export declare const shutdown: <A>(self: Dequeue<A> | Enqueue<A>) => Effect.Effect<never, never, void>
```
