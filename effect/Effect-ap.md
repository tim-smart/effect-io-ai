Package: `effect`<br />
Module: `Effect`<br />

## Effect.ap

Applies the function produced by one effect to the value produced by another effect.

**Details**

This function combines two effects:
- The first effect produces a function of type `(a: A) => B`.
- The second effect produces a value of type `A`.

Once both effects complete successfully, the function is applied to the value, resulting in an effect that produces a value of type `B`.

**Signature**

```ts
declare const ap: { <A, E2, R2>(that: Effect<A, E2, R2>): <B, R, E>(self: Effect<(a: A) => B, E, R>) => Effect<B, E | E2, R | R2>; <A, B, E, R, E2, R2>(self: Effect<(a: A) => B, E, R>, that: Effect<A, E2, R2>): Effect<B, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L12772)

Since v2.0.0