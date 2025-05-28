Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.tapOutput

Returns a new schedule that runs the given effectful function for each output
before continuing execution.

**Details**

This function allows side effects to be performed on each output produced by
the schedule. It does not modify the schedule’s behavior but ensures that the
provided function `f` runs after each step.

**Signature**

```ts
declare const tapOutput: { <X, R2, Out>(f: (out: Types.NoInfer<Out>) => Effect.Effect<X, never, R2>): <In, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R2 | R>; <Out, In, R, X, R2>(self: Schedule<Out, In, R>, f: (out: Out) => Effect.Effect<X, never, R2>): Schedule<Out, In, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1821)

Since v2.0.0