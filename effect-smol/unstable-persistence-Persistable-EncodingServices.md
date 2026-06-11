Package: `effect`<br />
Module: `Persistable`<br />

## Persistable.EncodingServices

Services required to encode a success or error value for persistence.

**Signature**

```ts
type EncodingServices<A> = | A["~effect/persistence/Persistable"]["success"]["EncodingServices"]
  | A["~effect/persistence/Persistable"]["error"]["EncodingServices"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Persistable.ts#L104)

Since v4.0.0