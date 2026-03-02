Package: `effect`<br />
Module: `Tool`<br />

## Tool.unsafeSecureJsonParse

**Unsafe**: This function will throw an error if an insecure property is
found in the parsed JSON or if the provided JSON text is not parseable.

**Signature**

```ts
declare const unsafeSecureJsonParse: (text: string) => unknown
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L1823)

Since v1.0.0