Package: `@effect/opentelemetry`<br />
Module: `Logger`<br />

## Logger.logLevelToSeverityNumber

Maps an Effect `LogLevel` to the corresponding OpenTelemetry `SeverityNumber`.

**Details**

OpenTelemetry log severity numbers are in the range `1` through `24`. This
function maps from Effect's log levels instead of using
`LogLevel.getOrdinal`, whose internal sort ordinals, such as the `Info`
ordinal `20000`, fall outside the OpenTelemetry logs data model and can be
treated as `UNSPECIFIED` by validating backends.

**Signature**

```ts
declare const logLevelToSeverityNumber: (level: LogLevel.LogLevel) => SeverityNumber
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/opentelemetry/src/Logger.ts#L54)

Since v4.0.0