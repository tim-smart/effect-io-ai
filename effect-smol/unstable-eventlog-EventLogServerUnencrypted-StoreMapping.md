Package: `effect`<br />
Module: `EventLogServerUnencrypted`<br />

## EventLogServerUnencrypted.StoreMapping

Service that resolves client-requested store ids to server store ids and checks
whether a store exists.

**When to use**

Use to map client-visible store identifiers to server storage identifiers
before authorizing or serving unencrypted event-log requests.

**Signature**

```ts
declare class StoreMapping
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogServerUnencrypted.ts#L323)

Since v4.0.0