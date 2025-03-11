## withMaxOpsBeforeYield

Sets the maximum number of operations before yield by the default schedulers

**Signature**

```ts
declare const withMaxOpsBeforeYield: { (priority: number): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>; <A, E, R>(self: Effect<A, E, R>, priority: number): Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L6559)

Since v2.0.0