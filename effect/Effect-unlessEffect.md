Package: `effect`<br />
Module: `Effect`<br />

## Effect.unlessEffect

Conditionally execute an effect based on the result of another effect.

**See**

- `unless` for a version that allows the condition to be a boolean.
- `whenEffect` for a version that executes the effect when the condition is `true`.

**Signature**

```ts
declare const unlessEffect: { <E2, R2>(condition: Effect<boolean, E2, R2>): <A, E, R>(self: Effect<A, E, R>) => Effect<Option.Option<A>, E2 | E, R2 | R>; <A, E, R, E2, R2>(self: Effect<A, E, R>, condition: Effect<boolean, E2, R2>): Effect<Option.Option<A>, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L8630)

Since v2.0.0