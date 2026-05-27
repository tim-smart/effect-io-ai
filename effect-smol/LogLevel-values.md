Package: `effect`<br />
Module: `LogLevel`<br />

## LogLevel.values

All `LogLevel` values in order from `All` through the concrete severities to
`None`.

**When to use**

Use to enumerate or validate all accepted `LogLevel` string values, including
the `All` and `None` sentinel levels.

**Details**

The array order matches the module severity order: `All`, concrete
severities from `Fatal` to `Trace`, then `None`.

**Gotchas**

This list includes `All` and `None`, so it is not limited to concrete emitted
severities.

**See**

- `Severity` for the concrete message severity type that excludes `All` and `None`
- `Order` for comparing these levels by severity order

**Signature**

```ts
declare const values: ReadonlyArray<LogLevel>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LogLevel.ts#L138)

Since v4.0.0