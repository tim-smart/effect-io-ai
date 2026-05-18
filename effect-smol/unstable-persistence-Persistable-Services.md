Package: `effect`<br />
Module: `Persistable`<br />

## Persistable.Services

All schema services required to encode and decode a persistable request
result.

**Signature**

```ts
type Services<A> = | A["~effect/persistence/Persistable"]["success"]["DecodingServices"]
  | A["~effect/persistence/Persistable"]["success"]["EncodingServices"]
  | A["~effect/persistence/Persistable"]["error"]["DecodingServices"]
  | A["~effect/persistence/Persistable"]["error"]["EncodingServices"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Persistable.ts#L124)

Since v4.0.0