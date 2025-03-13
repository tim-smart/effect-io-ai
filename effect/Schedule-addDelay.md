Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.addDelay

Adds a delay to every interval in a schedule.

**Details**

This function modifies a given schedule by applying an additional delay to
every interval it defines. The delay is determined by the provided function,
which takes the schedule's output and returns a delay duration.

**See**

- `addDelayEffect` If you need to compute the delay using an effectful function.

**Signature**

```ts
declare const addDelay: { <Out>(f: (out: Out) => Duration.DurationInput): <In, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R>; <Out, In, R>(self: Schedule<Out, In, R>, f: (out: Out) => Duration.DurationInput): Schedule<Out, In, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L197)

Since v2.0.0