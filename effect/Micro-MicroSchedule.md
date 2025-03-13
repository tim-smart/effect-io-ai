Package: `effect`<br />
Module: `Micro`<br />

## Micro.MicroSchedule

The `MicroSchedule` type represents a function that can be used to calculate
the delay between repeats.

The function takes the current attempt number and the elapsed time since the
first attempt, and returns the delay for the next attempt. If the function
returns `None`, the repetition will stop.

**Signature**

```ts
type MicroSchedule = (attempt: number, elapsed: number) => Option.Option<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L2439)

Since v3.4.6