Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.intersectWith

Combines two schedules, continuing only if both want to continue, merging
intervals using a custom function.

**Details**

This function takes two schedules and creates a new schedule that only
continues execution if both schedules allow it. Instead of automatically
using the longer delay (like `intersect`), this function applies a
user-provided merge function `f` to determine the next interval between
executions.

The output of the resulting schedule is a tuple containing the outputs of
both schedules, and the input type is the intersection of both schedules'
input types.

**Signature**

```ts
declare const intersectWith: { <Out2, In2, R2>(that: Schedule<Out2, In2, R2>, f: (x: Intervals.Intervals, y: Intervals.Intervals) => Intervals.Intervals): <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<[Out, Out2], In & In2, R2 | R>; <Out, In, R, Out2, In2, R2>(self: Schedule<Out, In, R>, that: Schedule<Out2, In2, R2>, f: (x: Intervals.Intervals, y: Intervals.Intervals) => Intervals.Intervals): Schedule<[Out, Out2], In & In2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1198)

Since v2.0.0