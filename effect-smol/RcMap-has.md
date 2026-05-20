Package: `effect`<br />
Module: `RcMap`<br />

## RcMap.has

Returns whether the `RcMap` currently contains an entry for the specified
key.

**Details**

This operation only checks the current map state; it does not run the lookup
function or acquire a missing resource. Closed maps return `false`.

**Signature**

```ts
declare const has: { <K>(key: K): <A, E>(self: RcMap<K, A, E>) => Effect.Effect<boolean>; <K, A, E>(self: RcMap<K, A, E>, key: K): Effect.Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RcMap.ts#L473)

Since v3.17.7