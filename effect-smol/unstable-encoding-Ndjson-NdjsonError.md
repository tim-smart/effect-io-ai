Package: `effect`<br />
Module: `Ndjson`<br />

## Ndjson.NdjsonError

Error raised when NDJSON encoding or decoding fails.

The `kind` field identifies whether the failure happened while packing or
unpacking, and `cause` preserves the original error.

**Signature**

```ts
declare class NdjsonError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Ndjson.ts#L41)

Since v4.0.0