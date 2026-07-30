Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.mapInputContext

Transforms the required context of a schedule.

**Details**

This function modifies a schedule by mapping its required context (`R`) into
a new context (`R0`) using the provided function `f`.

This is useful when you need to adapt a schedule to work with a different
dependency environment without changing its core logic.

**Signature**

```ts
declare const mapInputContext: { <R0, R>(f: (env0: Context.Context<R0>) => Context.Context<R>): <Out, In>(self: Schedule<Out, In, R>) => Schedule<Out, In, R0>; <Out, In, R, R0>(self: Schedule<Out, In, R>, f: (env0: Context.Context<R0>) => Context.Context<R>): Schedule<Out, In, R0>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L600)

Since v2.0.0