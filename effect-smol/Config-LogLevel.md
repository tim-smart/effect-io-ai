Package: `effect`<br />
Module: `Config`<br />

## Config.LogLevel

A `Schema.Codec` for `LogLevel` string literals.

When to use:
- Pass to `schema` for custom paths, or use the `logLevel`
  convenience constructor.

Accepted values: `"All"`, `"Fatal"`, `"Error"`, `"Warn"`, `"Info"`,
`"Debug"`, `"Trace"`, `"None"`.

**See**

- `logLevel` – convenience constructor

**Signature**

```ts
declare const LogLevel: Schema.Literals<ReadonlyArray<LogLevel_.LogLevel>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L783)

Since v4.0.0