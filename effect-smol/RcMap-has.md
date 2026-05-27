Package: `effect`<br />
Module: `RcMap`<br />

## RcMap.has

Returns whether the `RcMap` currently contains an entry for the specified
key.

**When to use**

Use to check whether a key is already present in an `RcMap` without running
the lookup function or acquiring a missing resource.

**Details**

This operation only checks the current map state.

**Gotchas**

Closed maps return `false`, so `false` does not distinguish a missing key
from a closed map.

**See**

- `get` for acquiring or retaining the resource for a key
- `keys` for enumerating all currently stored keys

**Signature**

```ts
declare const has: { <K>(key: K): <A, E>(self: RcMap<K, A, E>) => Effect.Effect<boolean>; <K, A, E>(self: RcMap<K, A, E>, key: K): Effect.Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RcMap.ts#L549)

Since v3.17.7