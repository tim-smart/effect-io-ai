Package: `effect`<br />
Module: `Envelope`<br />

## Envelope.primaryKey

Returns the storage primary key for a request envelope whose payload has a
primary key, or `null` when the envelope is not a keyed request.

**Signature**

```ts
declare const primaryKey: <R extends Rpc.Any>(envelope: Envelope<R>) => string | null
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Envelope.ts#L409)

Since v4.0.0