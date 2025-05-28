Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.recurs

A schedule that recurs a fixed number of times before terminating.

**Details**

This schedule will continue executing until it has been stepped `n` times,
after which it will stop. The output of the schedule is the current count of
recurrences.

**Signature**

```ts
declare const recurs: (n: number) => Schedule<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1604)

Since v2.0.0