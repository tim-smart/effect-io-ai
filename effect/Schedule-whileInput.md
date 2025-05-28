Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.whileInput

Returns a new schedule that continues execution as long as the given
predicate on the input is true.

**Details**

This function modifies an existing schedule so that it only continues
execution while a specified predicate holds true for its input. If the
predicate evaluates to `false` at any step, the schedule stops.

**See**

- `whileInputEffect` If you need to use an effectful predicate.

**Signature**

```ts
declare const whileInput: { <In>(f: Predicate<In>): <Out, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R>; <Out, In, R>(self: Schedule<Out, In, R>, f: Predicate<In>): Schedule<Out, In, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L2040)

Since v2.0.0