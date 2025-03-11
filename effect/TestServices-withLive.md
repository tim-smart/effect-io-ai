## withLive

Executes the specified workflow with the specified implementation of the
live service.

**Signature**

```ts
declare const withLive: ((live: Live.TestLive) => <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>) & (<A, E, R>(effect: Effect.Effect<A, E, R>, live: Live.TestLive) => Effect.Effect<A, E, R>)
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TestServices.ts#L167)

Since v2.0.0