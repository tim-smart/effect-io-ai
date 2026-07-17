Package: `effect`<br />
Module: `LogLevel`<br />

## LogLevel.getOrdinal

Returns the ordinal value of the log level.

**When to use**

Use to project a `LogLevel` into the numeric sort key used by
`LogLevel.Order` when custom ordering code or an integration needs a number
instead of an `Order` comparison.

**Details**

The mapping is `All` to `Number.MIN_SAFE_INTEGER`, `Trace` to `0`, `Debug` to
`10000`, `Info` to `20000`, `Warn` to `30000`, `Error` to `40000`, `Fatal` to
`50000`, and `None` to `Number.MAX_SAFE_INTEGER`.

**Gotchas**

These ordinals are internal sort keys; do not treat them as external severity
numbers.

**See**

- `Order` for comparing log levels without exposing numeric keys
- `isGreaterThanOrEqualTo` for minimum-threshold filtering

**Signature**

```ts
declare const getOrdinal: (self: LogLevel) => number
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/LogLevel.ts#L192)

Since v4.0.0