## provideWithLive

Runs a transformation function with the live default Effect services while
ensuring that the workflow itself is run with the test services.

**Signature**

```ts
declare const provideWithLive: (<A, E, R, A2, E2, R2>(f: (effect: Effect.Effect<A, E, R>) => Effect.Effect<A2, E2, R2>) => (self: Effect.Effect<A, E, R>) => Effect.Effect<A2, E | E2, R | R2>) & (<A, E, R, A2, E2, R2>(self: Effect.Effect<A, E, R>, f: (effect: Effect.Effect<A, E, R>) => Effect.Effect<A2, E2, R2>) => Effect.Effect<A2, E | E2, R | R2>)
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TestServices.ts#L214)

Since v2.0.0