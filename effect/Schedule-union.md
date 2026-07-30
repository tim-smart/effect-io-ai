Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.union

Combines two schedules, continuing execution as long as at least one of them
allows it, using the shorter delay.

**Details**

This function combines two schedules into a single schedule that executes in
parallel. If either schedule allows continuation, the merged schedule
continues. When both schedules produce delays, the schedule selects the
shorter delay to determine the next step.

The output of the new schedule is a tuple containing the outputs of both
schedules. The input type is the intersection of both schedules' input types.

This is useful for scenarios where multiple scheduling conditions should be
considered, ensuring execution proceeds if at least one schedule permits it.

**See**

- `unionWith` If you need to use a custom merge function.

**Signature**

```ts
declare const union: { <Out2, In2, R2>(that: Schedule<Out2, In2, R2>): <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<[Out, Out2], In & In2, R2 | R>; <Out, In, R, Out2, In2, R2>(self: Schedule<Out, In, R>, that: Schedule<Out2, In2, R2>): Schedule<[Out, Out2], In & In2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1868)

Since v2.0.0