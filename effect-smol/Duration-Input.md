Package: `effect`<br />
Module: `Duration`<br />

## Duration.Input

Valid input types that can be converted to a Duration.

String inputs accept values like `"10 seconds"`, `"500 millis"`,
`"Infinity"`, and `"-Infinity"`.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L96)

Since v2.0.0