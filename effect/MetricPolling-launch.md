## launch

Returns an effect that will launch the polling metric in a background
fiber, using the specified schedule.

**Signature**

```ts
declare const launch: { <A2, R2>(schedule: Schedule.Schedule<A2, unknown, R2>): <Type, In, R, E, Out>(self: MetricPolling<Type, In, R, E, Out>) => Effect.Effect<Fiber.Fiber<A2, E>, never, R2 | R | Scope.Scope>; <Type, In, R, E, Out, A2, R2>(self: MetricPolling<Type, In, R, E, Out>, schedule: Schedule.Schedule<A2, unknown, R2>): Effect.Effect<Fiber.Fiber<A2, E>, never, Scope.Scope | R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MetricPolling.ts#L72)

Since v2.0.0