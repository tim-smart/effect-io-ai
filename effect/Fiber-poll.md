## poll

Tentatively observes the fiber, but returns immediately if it is not
already done.

**Signature**

```ts
declare const poll: <A, E>(self: Fiber<A, E>) => Effect.Effect<Option.Option<Exit.Exit<A, E>>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Fiber.ts#L636)

Since v2.0.0