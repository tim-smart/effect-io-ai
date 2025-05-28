Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.passthrough

Transforms a schedule to pass through its inputs as outputs.

**Details**

This function modifies an existing schedule so that it returns its input
values instead of its original output values. The schedule's timing remains
unchanged, but its outputs are replaced with whatever inputs it receives.

**Signature**

```ts
declare const passthrough: <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<In, In, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1147)

Since v2.0.0