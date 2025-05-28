Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.untilOutputEffect

Returns a new schedule that stops execution when the given effectful
predicate on the output evaluates to `true`.

**Details**

This function modifies an existing schedule so that it only continues
executing while the provided effectful predicate returns `false` for its
output values. Once the predicate returns `true`, execution stops.

**See**

- `untilOutput` If you need to use a pure predicate.

**Signature**

```ts
declare const untilOutputEffect: { <Out, R2>(f: (out: Out) => Effect.Effect<boolean, never, R2>): <In, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R2 | R>; <Out, In, R, R2>(self: Schedule<Out, In, R>, f: (out: Out) => Effect.Effect<boolean, never, R2>): Schedule<Out, In, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1998)

Since v2.0.0