Package: `effect`<br />
Module: `Effect`<br />

## Effect.randomWith

Retrieves the `Random` service from the context and uses it to run the
specified effect.

**Signature**

```ts
declare const randomWith: <A, E, R>(f: (random: Random.Random) => Effect<A, E, R>) => Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L11567)

Since v2.0.0