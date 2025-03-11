## adjust

Accesses a `TestClock` instance in the context and increments the time
by the specified duration, running any actions scheduled for on or before
the new time in order.

**Signature**

```ts
declare const adjust: (durationInput: Duration.DurationInput) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TestClock.ts#L469)

Since v2.0.0