Package: `@effect/platform-node`<br />
Module: `NodeHttpClient`<br />

## NodeHttpClient.makeDispatcher

Acquires a new Undici `Agent` dispatcher and destroys it when the enclosing
scope is finalized.

**Signature**

```ts
declare const makeDispatcher: Effect.Effect<Undici.Dispatcher, never, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeHttpClient.ts#L103)

Since v4.0.0