Package: `effect`<br />
Module: `Cause`<br />

## Cause.interruptors

Collects all `FiberId`s responsible for interrupting a fiber.

**Details**

This function returns a set of IDs indicating which fibers caused
interruptions within this `Cause`. It's useful for debugging concurrency
issues or tracing cancellations.

**Signature**

```ts
declare const interruptors: <E>(self: Cause<E>) => HashSet.HashSet<FiberId.FiberId>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L846)

Since v2.0.0