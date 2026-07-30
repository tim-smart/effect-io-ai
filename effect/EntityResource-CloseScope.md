Package: `@effect/cluster`<br />
Module: `EntityResource`<br />

## EntityResource.CloseScope

A `Scope` that is only closed when the resource is explicitly closed.

It is not closed during restarts, due to shard movement or node shutdowns.

**Signature**

```ts
declare class CloseScope
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/EntityResource.ts#L45)

Since v1.0.0