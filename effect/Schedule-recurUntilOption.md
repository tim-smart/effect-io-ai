Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.recurUntilOption

A schedule that recurs until the input value matches a partial function, then
maps the value.

**Details**

This schedule continues executing until the provided partial function `pf`
returns `Some(value)`. At that point, it stops and maps the resulting value
to an `Option<B>`. If `pf` returns `None`, the schedule continues.

This is useful when defining schedules that should stop once a certain
condition is met and transform the final value before completion.

**Signature**

```ts
declare const recurUntilOption: <A, B>(pf: (a: A) => Option.Option<B>) => Schedule<Option.Option<B>, A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1536)

Since v2.0.0