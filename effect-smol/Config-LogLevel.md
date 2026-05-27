Package: `effect`<br />
Module: `Config`<br />

## Config.LogLevel

A `Schema.Codec` for `LogLevel` string literals.

**When to use**

Use when passing to `schema` for custom paths, or use the
`logLevel` convenience constructor.

**Details**

Accepted values: `"All"`, `"Fatal"`, `"Error"`, `"Warn"`, `"Info"`,
`"Debug"`, `"Trace"`, `"None"`.

**See**

- `logLevel` – convenience constructor

**Signature**

```ts
declare const LogLevel: Schema.Literals<ReadonlyArray<LogLevel_.LogLevel>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L822)

Since v4.0.0