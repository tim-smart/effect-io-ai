Package: `effect`<br />
Module: `Effect`<br />

## Effect.bindTo

Gives a name to the success value of an `Effect`, creating a single-key
record used in do notation pipelines.

**Signature**

```ts
declare const bindTo: { <N extends string>(name: N): <A, E, R>(self: Effect<A, E, R>) => Effect<{ [K in N]: A; }, E, R>; <A, E, R, N extends string>(self: Effect<A, E, R>, name: N): Effect<{ [K in N]: A; }, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L1480)

Since v4.0.0