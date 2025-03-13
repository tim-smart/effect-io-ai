Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.whileInputEffect

Returns a new schedule that continues execution for as long as the given
effectful predicate on the input evaluates to `true`.

**Details**

This function modifies an existing schedule so that it only continues
execution while an effectful predicate holds true for its input. If the
predicate evaluates to `false` at any step, the schedule stops.

**See**

- `whileInput` If you need to use a pure predicate.

**Signature**

```ts
declare const whileInputEffect: { <In, R2>(f: (input: In) => Effect.Effect<boolean, never, R2>): <Out, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R2 | R>; <Out, In, R, R2>(self: Schedule<Out, In, R>, f: (input: In) => Effect.Effect<boolean, never, R2>): Schedule<Out, In, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L2058)

Since v2.0.0