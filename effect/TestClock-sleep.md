## sleep

Semantically blocks the current fiber until the clock time is equal to or
greater than the specified duration. Once the clock time is adjusted to
on or after the duration, the fiber will automatically be resumed.

**Signature**

```ts
declare const sleep: (durationInput: Duration.DurationInput) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TestClock.ts#L511)

Since v2.0.0