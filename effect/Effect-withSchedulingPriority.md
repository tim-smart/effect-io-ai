Package: `effect`<br />
Module: `Effect`<br />

## Effect.withSchedulingPriority

Sets the scheduling priority used when yielding

**Signature**

```ts
declare const withSchedulingPriority: { (priority: number): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>; <A, E, R>(self: Effect<A, E, R>, priority: number): Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L6548)

Since v2.0.0