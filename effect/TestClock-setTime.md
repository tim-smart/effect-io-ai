Package: `effect`<br />
Module: `TestClock`<br />

## TestClock.setTime

Accesses a `TestClock` instance in the context and sets the clock time
to the specified `Instant` or `Date`, running any actions scheduled for on or before
the new time in order.

**Signature**

```ts
declare const setTime: (input: DateTime.DateTime.Input) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TestClock.ts#L502)

Since v2.0.0