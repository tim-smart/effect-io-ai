# shutdown

Interrupts any fibers that are suspended on `offer` or `take`. Future calls
to `offer*` and `take*` will be interrupted immediately.

Part of the `Hub` module, imported from `@effect/io/Hub`.

**Signature**

```ts
export declare const shutdown: <A>(self: Hub<A>) => Effect.Effect<never, never, void>
```
