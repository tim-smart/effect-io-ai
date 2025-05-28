Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.unionWith

Combines two schedules, continuing execution as long as at least one of them
wants to continue, merging their intervals using a custom merge function.

**Details**

This function allows you to combine two schedules while defining how their
intervals should be merged. Unlike `union`, which simply selects the
shorter delay, this function lets you specify a custom merging strategy for
the schedules’ intervals.

The merged schedule continues execution as long as at least one of the input
schedules allows it. The next interval is determined by applying the provided
merge function to the intervals of both schedules.

The output of the resulting schedule is a tuple containing the outputs of
both schedules. The input type is the intersection of both schedules' input
types.

**See**

- `union` If you need to use the shorter delay.

**Signature**

```ts
declare const unionWith: { <Out2, In2, R2>(that: Schedule<Out2, In2, R2>, f: (x: Intervals.Intervals, y: Intervals.Intervals) => Intervals.Intervals): <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<[Out, Out2], In & In2, R2 | R>; <Out, In, R, Out2, In2, R2>(self: Schedule<Out, In, R>, that: Schedule<Out2, In2, R2>, f: (x: Intervals.Intervals, y: Intervals.Intervals) => Intervals.Intervals): Schedule<[Out, Out2], In & In2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1902)

Since v2.0.0