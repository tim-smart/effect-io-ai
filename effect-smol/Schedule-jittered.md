Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.jittered

Returns a new `Schedule` that randomly adjusts each recurrence delay.

**When to use**

Use to add random variation to an existing schedule's recurrence delays while
preserving its output and completion behavior.

**Details**

Each recurrence delay is scaled by a random factor between `0.8` and `1.2`.

**See**

- `modifyDelay` for replacing recurrence delays with a custom effectful transformation

**Signature**

```ts
declare const jittered: <Output, Input, Error, Env>(self: Schedule<Output, Input, Error, Env>) => Schedule<Output, Input, Error, Env>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L2406)

Since v2.0.0