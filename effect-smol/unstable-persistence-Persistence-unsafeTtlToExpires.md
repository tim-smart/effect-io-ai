Package: `effect`<br />
Module: `Persistence`<br />

## Persistence.unsafeTtlToExpires

Converts a TTL to an absolute expiration timestamp in milliseconds.

**Details**

Returns `null` for no TTL and uses `clock.currentTimeMillisUnsafe`, so it is
intended for backing-store internals.

**Signature**

```ts
declare const unsafeTtlToExpires: (clock: Clock.Clock, ttl: Duration.Duration | undefined) => number | null
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Persistence.ts#L1086)

Since v4.0.0