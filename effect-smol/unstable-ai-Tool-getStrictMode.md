Package: `effect`<br />
Module: `Tool`<br />

## Tool.getStrictMode

Returns the strict mode setting for a tool, or `undefined` if not set.

**When to use**

Use to inspect the per-tool strict JSON Schema override attached through
`Tool.Strict`.

**Gotchas**

`undefined` means no per-tool override is set. It is distinct from `false`;
provider or global configuration determines the final behavior.

**See**

- `Strict` for the annotation read by this helper

**Signature**

```ts
declare const getStrictMode: <T extends Any>(tool: T) => boolean | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L1862)

Since v4.0.0