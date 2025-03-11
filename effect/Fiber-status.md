## status

Returns the `FiberStatus` of a `RuntimeFiber`.

**Signature**

```ts
declare const status: <A, E>(self: RuntimeFiber<A, E>) => Effect.Effect<FiberStatus.FiberStatus>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Fiber.ts#L678)

Since v2.0.0