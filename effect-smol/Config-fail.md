Package: `effect`<br />
Module: `Config`<br />

## Config.fail

Creates a config that always fails with the given error.

**When to use**

Use when you need to re-raise a specific config error, such as inside
`orElse`.

**Signature**

```ts
declare const fail: (err: SourceError | Schema.SchemaError) => Config<never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L844)

Since v2.0.0