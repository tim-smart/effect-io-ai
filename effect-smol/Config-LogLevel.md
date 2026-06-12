Package: `effect`<br />
Module: `Config`<br />

## Config.LogLevel

Schema for `LogLevel` string literals.

**When to use**

Use when you need the reusable log-level schema value for `Config.schema`
with custom paths.

**Details**

Accepted values: `"All"`, `"Fatal"`, `"Error"`, `"Warn"`, `"Info"`,
`"Debug"`, `"Trace"`, `"None"`.

**See**

- `logLevel` – convenience constructor

**Signature**

```ts
declare const LogLevel: Schema.Literals<ReadonlyArray<LogLevel_.LogLevel>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L759)

Since v4.0.0