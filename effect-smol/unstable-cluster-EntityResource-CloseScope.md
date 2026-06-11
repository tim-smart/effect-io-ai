Package: `effect`<br />
Module: `EntityResource`<br />

## EntityResource.CloseScope

Context service for a Scope that is only closed when the resource is explicitly closed.

**When to use**

Use when a cluster entity resource needs a scope that survives restarts and
closes only through the resource lifecycle.

**Gotchas**

It is not closed during restarts, due to shard movement or node shutdowns.

**Signature**

```ts
declare class CloseScope
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EntityResource.ts#L72)

Since v4.0.0