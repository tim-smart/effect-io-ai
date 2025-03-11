## scoped

Converts this fiber into a scoped effect. The fiber is interrupted when the
scope is closed.

**Signature**

```ts
declare const scoped: <A, E>(self: Fiber<A, E>) => Effect.Effect<Fiber<A, E>, never, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Fiber.ts#L669)

Since v2.0.0