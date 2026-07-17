Package: `effect`<br />
Module: `Duration`<br />

## Duration.Unit

Valid time units that can be used in duration string representations.

**When to use**

Use when typing the unit portion of duration string inputs accepted by
`Duration.Input`.

**See**

- `Input` for the full duration input union

**Signature**

```ts
type Unit = | "nano"
  | "nanos"
  | "micro"
  | "micros"
  | "milli"
  | "millis"
  | "second"
  | "seconds"
  | "minute"
  | "minutes"
  | "hour"
  | "hours"
  | "day"
  | "days"
  | "week"
  | "weeks"
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Duration.ts#L115)

Since v2.0.0