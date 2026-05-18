Package: `effect`<br />
Module: `PersistedQueue`<br />

## PersistedQueue.makeFactory

Creates a `PersistedQueueFactory` from the current `PersistedQueueStore`.

Values are encoded and decoded with the supplied schema, automatically
assigned an id when needed, and acknowledged or retried according to the
`take` handler's exit.

**Signature**

```ts
declare const makeFactory: Effect.Effect<{ readonly make: <S extends Schema.Top>(options: { readonly name: string; readonly schema: S; }) => Effect.Effect<PersistedQueue<S["Type"], S["EncodingServices"] | S["DecodingServices"]>>; }, never, PersistedQueueStore>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PersistedQueue.ts#L151)

Since v4.0.0