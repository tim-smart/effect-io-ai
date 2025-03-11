## interruptFork

Interrupts the fiber from whichever fiber is calling this method. The
interruption will happen in a separate daemon fiber, and the returned
effect will always resume immediately without waiting.

**Signature**

```ts
declare const interruptFork: <A, E>(self: Fiber<A, E>) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Fiber.ts#L515)

Since v2.0.0