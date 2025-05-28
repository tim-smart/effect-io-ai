Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.andThen

Runs two schedules sequentially, merging their outputs.

**Details**

This function executes two schedules one after the other. The first schedule
runs to completion, and then the second schedule begins execution. Unlike
`andThenEither`, this function merges the outputs instead of wrapping
them in `Either`, allowing both schedules to contribute their results
directly.

This is useful when a workflow consists of two phases where the second phase
should start only after the first one has fully completed.

**See**

- `andThenEither` If you need to keep track of which schedule
produced each result.

**Signature**

```ts
declare const andThen: { <Out2, In2, R2>(that: Schedule<Out2, In2, R2>): <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<Out2 | Out, In & In2, R2 | R>; <Out, In, R, Out2, In2, R2>(self: Schedule<Out, In, R>, that: Schedule<Out2, In2, R2>): Schedule<Out | Out2, In & In2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L249)

Since v2.0.0