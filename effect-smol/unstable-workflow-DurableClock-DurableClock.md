Package: `effect`<br />
Module: `DurableClock`<br />

## DurableClock.DurableClock

Represents a durable workflow timer with a name, duration, and deferred
completed when the timer wakes.

**Signature**

```ts
export interface DurableClock {
  readonly [TypeId]: typeof TypeId
  readonly name: string
  readonly duration: Duration.Duration
  readonly deferred: DurableDeferred.DurableDeferred<typeof Schema.Void>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DurableClock.ts#L28)

Since v4.0.0