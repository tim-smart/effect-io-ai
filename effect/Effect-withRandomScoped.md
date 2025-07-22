Package: `effect`<br />
Module: `Effect`<br />

## Effect.withRandomScoped

Sets the implementation of the `Random` service to the specified value and
restores it to its original value when the scope is closed.

**Signature**

```ts
declare const withRandomScoped: <A extends Random.Random>(value: A) => Effect<void, never, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L11609)

Since v2.0.0