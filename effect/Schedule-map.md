Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.map

Returns a new schedule that transforms its output using the specified
function.

**Details**

This function modifies an existing schedule so that its outputs are
transformed by the provided function `f`. The timing and recurrence behavior
of the schedule remain unchanged, but the values it produces are mapped to
new values.

This is useful when composing schedules where you need to adjust the output
format or apply additional processing.

**See**

- `mapEffect` If you need to use an effectful transformation
function.

**Signature**

```ts
declare const map: { <Out, Out2>(f: (out: Out) => Out2): <In, R>(self: Schedule<Out, In, R>) => Schedule<Out2, In, R>; <Out, In, R, Out2>(self: Schedule<Out, In, R>, f: (out: Out) => Out2): Schedule<Out2, In, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1306)

Since v2.0.0