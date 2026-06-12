Package: `effect`<br />
Module: `Duration`<br />

## Duration.Input

Valid input types that can be converted to a Duration.

**When to use**

Use when an API should accept any value that Effect can convert into a
`Duration`, including existing durations, millisecond numbers, nanosecond
bigints, high-resolution tuples, duration strings, infinity strings, or
duration objects.

**Details**

String inputs accept values like `"10 seconds"`, `"500 millis"`,
`"Infinity"`, and `"-Infinity"`. Finite fractional values that are
normalized to nanoseconds are rounded to the nearest nanosecond, with ties
away from zero.

**See**

- `fromInput` for safe conversion to `Option`
- `fromInputUnsafe` for throwing conversion
- `DurationObject` for object-shaped duration input
- `Unit` for supported string units

**Signature**

```ts
type Input = | Duration
  | number // millis
  | bigint // nanos
  | readonly [seconds: number, nanos: number]
  | `${number} ${Unit}`
  | "Infinity"
  | "-Infinity"
  | DurationObject
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L158)

Since v4.0.0