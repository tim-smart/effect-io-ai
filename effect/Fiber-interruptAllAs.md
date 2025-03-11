## interruptAllAs

Interrupts all fibers as by the specified fiber, awaiting their
interruption.

**Signature**

```ts
declare const interruptAllAs: { (fiberId: FiberId.FiberId): (fibers: Iterable<Fiber<any, any>>) => Effect.Effect<void>; (fibers: Iterable<Fiber<any, any>>, fiberId: FiberId.FiberId): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Fiber.ts#L502)

Since v2.0.0