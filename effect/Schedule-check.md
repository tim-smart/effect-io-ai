Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.check

Filters schedule executions based on a custom condition.

**Details**

This function modifies a schedule by applying a custom test function to each
input-output pair. The test function determines whether the schedule should
continue or stop. If the function returns `true`, the schedule proceeds as
usual; if it returns `false`, the schedule terminates.

This is useful for conditional retries, custom stop conditions, or
dynamically controlling execution based on observed inputs and outputs.

**See**

- `checkEffect` If you need to use an effectful test function.

**Signature**

```ts
declare const check: { <In, Out>(test: (input: In, output: Out) => boolean): <R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R>; <Out, In, R>(self: Schedule<Out, In, R>, test: (input: In, output: Out) => boolean): Schedule<Out, In, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L373)

Since v2.0.0