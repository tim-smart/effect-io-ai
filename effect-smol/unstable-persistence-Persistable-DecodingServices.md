Package: `effect`<br />
Module: `Persistable`<br />

## Persistable.DecodingServices

Services required to decode a persisted success or error value for the
request.

**Signature**

```ts
type DecodingServices<A> = | A["~effect/persistence/Persistable"]["success"]["DecodingServices"]
  | A["~effect/persistence/Persistable"]["error"]["DecodingServices"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Persistable.ts#L94)

Since v4.0.0