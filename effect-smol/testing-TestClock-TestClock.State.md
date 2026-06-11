Package: `effect`<br />
Module: `TestClock`<br />

## TestClock.TestClock.State

Represents the state tracked by a `TestClock`, including the current
millisecond timestamp and the sleeps scheduled to resume when the clock
reaches their target time.

**Signature**

```ts
export interface State {
    readonly timestamp: number
    readonly sleeps: ReadonlyArray<[number, Latch.Latch]>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TestClock.ts#L174)

Since v4.0.0