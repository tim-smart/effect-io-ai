Package: `effect`<br />
Module: `Effect`<br />

## Effect.replicate

Returns an array of `n` identical effects.

**When to use**

Use to create an array containing the same effect multiple times when you
want to pass those effects to another collector or control execution
separately.

**Details**

This only creates the array of effects. It does not run or collect them.

**See**

- `all` for running the returned effects and collecting results
- `replicateEffect` for repeating an effect and collecting results in one step with concurrency and discard options

**Signature**

```ts
declare const replicate: { (n: number): <A, E, R>(self: Effect<A, E, R>) => Array<Effect<A, E, R>>; <A, E, R>(self: Effect<A, E, R>, n: number): Array<Effect<A, E, R>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L7644)

Since v2.0.0