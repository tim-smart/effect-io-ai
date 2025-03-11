## join

Joins the fiber, which suspends the joining fiber until the result of the
fiber has been determined. Attempting to join a fiber that has erred will
result in a catchable error. Joining an interrupted fiber will result in an
"inner interruption" of this fiber, unlike interruption triggered by
another fiber, "inner interruption" can be caught and recovered.

**Signature**

```ts
declare const join: <A, E>(self: Fiber<A, E>) => Effect.Effect<A, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Fiber.ts#L527)

Since v2.0.0