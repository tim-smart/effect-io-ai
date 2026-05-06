Package: `@effect/opentelemetry`<br />
Module: `Logger`<br />

## Logger.logLevelToSeverityNumber

Maps an Effect `LogLevel` to the corresponding OpenTelemetry
`SeverityNumber` (per the OTel logs data model, severity range 1-24).

Effect's `LogLevel.getOrdinal` returns Effect's internal sort ordinal
(e.g. Info=20000), which falls outside the OTel spec — backends that
validate the field map such values to `UNSPECIFIED`.

**Signature**

```ts
declare const logLevelToSeverityNumber: (level: LogLevel.LogLevel) => SeverityNumber
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/opentelemetry/src/Logger.ts#L41)

Since v1.0.0