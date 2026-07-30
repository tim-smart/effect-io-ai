Package: `@effect/experimental`<br />
Module: `EventLog`<br />

## EventLog.layerIdentityKvs

Generates a random `Identity` and stores it in a `KeyValueStore`.

**Signature**

```ts
declare const layerIdentityKvs: (options: { readonly key: string; }) => Layer.Layer<Identity, ParseResult.ParseError | Error.PlatformError, KeyValueStore.KeyValueStore>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/experimental/src/EventLog.ts#L451)

Since v1.0.0