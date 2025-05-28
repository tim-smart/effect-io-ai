Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.mapBoth

Transforms both the input and output of a schedule.

**Details**

This function modifies an existing schedule by applying a transformation to
both its input values and its output values. The provided transformation
functions `onInput` and `onOutput` allow you to map the schedule to work with
a different input type while modifying its outputs as well.

**See**

- `mapBothEffect` If you need to use effectful transformation functions.

**Signature**

```ts
declare const mapBoth: { <In2, In, Out, Out2>(options: { readonly onInput: (in2: In2) => In; readonly onOutput: (out: Out) => Out2; }): <R>(self: Schedule<Out, In, R>) => Schedule<Out2, In2, R>; <Out, In, R, In2, Out2>(self: Schedule<Out, In, R>, options: { readonly onInput: (in2: In2) => In; readonly onOutput: (out: Out) => Out2; }): Schedule<Out2, In2, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L840)

Since v2.0.0