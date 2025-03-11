## identity

Creates a schedule that always recurs, passing inputs directly as outputs.

**Details**

This schedule runs indefinitely, returning each input value as its output
without modification. It effectively acts as a pass-through that simply
echoes its input values at each step.

**Signature**

```ts
declare const identity: <A>() => Schedule<A, A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1132)

Since v2.0.0