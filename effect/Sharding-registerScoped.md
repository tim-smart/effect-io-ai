## registerScoped

Same as `register`, but will automatically call `unregister` when the `Scope` is terminated.

**Signature**

```ts
declare const registerScoped: Effect.Effect<void, never, Sharding | Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/Sharding.ts#L120)

Since v1.0.0