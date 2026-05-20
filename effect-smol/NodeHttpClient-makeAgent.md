Package: `@effect/platform-node`<br />
Module: `NodeHttpClient`<br />

## NodeHttpClient.makeAgent

Acquires Node `http` and `https` agents with the supplied options and
destroys both agents when the enclosing scope is finalized.

**Signature**

```ts
declare const makeAgent: (options?: Https.AgentOptions) => Effect.Effect<HttpAgent["Service"], never, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeHttpClient.ts#L406)

Since v4.0.0