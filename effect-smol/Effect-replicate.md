Package: `effect`<br />
Module: `Effect`<br />

## Effect.replicate

Returns an array of `n` identical effects.

Use with `Effect.all` to run the replicated effects and collect results.

**Signature**

```ts
declare const replicate: { (n: number): <A, E, R>(self: Effect<A, E, R>) => Array<Effect<A, E, R>>; <A, E, R>(self: Effect<A, E, R>, n: number): Array<Effect<A, E, R>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L7264)

Since v2.0.0