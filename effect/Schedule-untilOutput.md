Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.untilOutput

Returns a new schedule that stops execution when the given predicate on the
output evaluates to `true`.

**Details**

This function modifies an existing schedule so that it only continues
executing while the given predicate returns false for its output values. Once
the predicate evaluates to `true`, execution stops.

The output of the resulting schedule remains the same, but its duration is
now constrained by a stopping condition based on its own output.

**See**

- `untilOutputEffect` If you need to use an effectful predicate.

**Signature**

```ts
declare const untilOutput: { <Out>(f: Predicate<Out>): <In, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R>; <Out, In, R>(self: Schedule<Out, In, R>, f: Predicate<Out>): Schedule<Out, In, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1976)

Since v2.0.0