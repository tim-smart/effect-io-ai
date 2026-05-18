Package: `effect`<br />
Module: `PersistedQueue`<br />

## PersistedQueue.make

Accesses `PersistedQueueFactory` to create a named persisted queue for a
schema.

**Signature**

```ts
declare const make: <S extends Schema.Top>(options: { readonly name: string; readonly schema: S; }) => Effect.Effect<PersistedQueue<S["Type"], S["EncodingServices"] | S["DecodingServices"]>, never, PersistedQueueFactory>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PersistedQueue.ts#L132)

Since v4.0.0