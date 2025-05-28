Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.asVoid

Transforms a schedule to always return `void` instead of its output.

**Details**

This function modifies a given schedule so that it no longer returns
meaningful output—each execution produces `void`. This is useful when the
schedule is used only for timing purposes and the actual output of the
schedule is irrelevant.

The schedule still determines when executions should occur, but the results
are discarded.

**Signature**

```ts
declare const asVoid: <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<void, In, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L325)

Since v2.0.0