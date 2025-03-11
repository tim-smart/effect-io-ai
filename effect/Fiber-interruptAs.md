## interruptAs

Interrupts the fiber as if interrupted from the specified fiber. If the
fiber has already exited, the returned effect will resume immediately.
Otherwise, the effect will resume when the fiber exits.

**Signature**

```ts
declare const interruptAs: { (fiberId: FiberId.FiberId): <A, E>(self: Fiber<A, E>) => Effect.Effect<Exit.Exit<A, E>>; <A, E>(self: Fiber<A, E>, fiberId: FiberId.FiberId): Effect.Effect<Exit.Exit<A, E>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Fiber.ts#L469)

Since v2.0.0