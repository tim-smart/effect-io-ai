Package: `effect`<br />
Module: `Envelope`<br />

## Envelope.primaryKeyByAddress

Builds a storage primary-key string from an entity address, RPC tag, and
payload primary-key ID.

**Signature**

```ts
declare const primaryKeyByAddress: (options: { readonly address: EntityAddress; readonly tag: string; readonly id: string; }) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Envelope.ts#L442)

Since v4.0.0