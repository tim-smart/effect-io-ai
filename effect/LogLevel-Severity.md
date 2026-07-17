Package: `effect`<br />
Module: `LogLevel`<br />

## LogLevel.Severity

Log levels that represent actual message severities, excluding the `All` and
`None` sentinel levels.

**When to use**

Use when typing emitted log message severities, such as explicit log calls,
current log level references, or error-report severity annotations, where
`All` and `None` are not valid values.

**See**

- `LogLevel` for the wider log-level type that also accepts the
`All` and `None` sentinel levels
- `values` for the runtime list of all accepted `LogLevel` values,
including sentinels

**Signature**

```ts
type Severity = "Fatal" | "Error" | "Warn" | "Info" | "Debug" | "Trace"
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/LogLevel.ts#L80)

Since v4.0.0