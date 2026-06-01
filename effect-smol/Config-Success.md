Package: `effect`<br />
Module: `Config`<br />

## Config.Success

Extracts the successfully parsed value type from a `Config`.

**When to use**

Use to derive the parsed value type from an existing `Config` value when
declaring reusable config-driven types.

**See**

- `Config` for the config type whose parsed value is extracted
- `Effect.Success` for extracting the success type from any `Effect`

**Signature**

```ts
type Success<T> = [T] extends [Config<infer A>] ? A : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L519)

Since v2.5.0