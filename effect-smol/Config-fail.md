Package: `effect`<br />
Module: `Config`<br />

## Config.fail

Creates a config that always fails with the given error.

When to use:
- Inside `orElse` to re-raise a specific error.
- Testing error handling paths.

**Signature**

```ts
declare const fail: (err: SourceError | Schema.SchemaError) => Config<never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L825)

Since v4.0.0