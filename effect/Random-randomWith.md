Package: `effect`<br />
Module: `Random`<br />

## Random.randomWith

Retreives the `Random` service from the context and uses it to run the
specified workflow.

**Signature**

```ts
declare const randomWith: <A, E, R>(f: (random: Random) => Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Random.ts#L139)

Since v2.0.0