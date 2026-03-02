Package: `effect`<br />
Module: `EntityResource`<br />

## EntityResource.CloseScope

A `Scope` that is only closed when the resource is explicitly closed.

It is not closed during restarts, due to shard movement or node shutdowns.

**Signature**

```ts
declare class CloseScope
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EntityResource.ts#L45)

Since v4.0.0