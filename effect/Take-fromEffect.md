## fromEffect

Creates an effect from `Effect<A, E, R>` that does not fail, but succeeds with
the `Take<A, E>`. Error from stream when pulling is converted to
`Take.failCause`. Creates a single value chunk.

**Signature**

```ts
declare const fromEffect: <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<Take<A, E>, never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Take.ts#L118)

Since v2.0.0