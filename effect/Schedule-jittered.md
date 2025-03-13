Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.jittered

Returns a new schedule that randomly adjusts the interval size within a
range.

**Details**

This function modifies a schedule so that its delay between executions is
randomly varied within a range. By default, the delay is adjusted between
`80%` (`0.8 * interval`) and `120%` (`1.2 * interval`) of the original
interval size.

This is useful for adding randomness to repeated executions, reducing
contention in distributed systems, and avoiding synchronized execution
patterns that can cause bottlenecks.

**See**

- `jitteredWith` If you need to specify custom min/max values.

**Signature**

```ts
declare const jittered: <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1230)

Since v2.0.0