Package: `effect`<br />
Module: `Effect`<br />

## Effect.bindTo

Gives a name to the success value of an `Effect`, creating a single-key
record used in do notation pipelines.

**When to use**

Use to start a do-notation pipeline from an existing `Effect` when its
success value should become the first named field in the accumulated record.

**See**

- `Do` for starting from an empty accumulated record
- `bind` for adding fields produced by effects

**Signature**

```ts
declare const bindTo: { <N extends string>(name: N): <A, E, R>(self: Effect<A, E, R>) => Effect<{ [K in N]: A; }, E, R>; <A, E, R, N extends string>(self: Effect<A, E, R>, name: N): Effect<{ [K in N]: A; }, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L1332)

Since v2.0.0