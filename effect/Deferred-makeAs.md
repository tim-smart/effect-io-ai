## makeAs

Creates a new `Deferred` from the specified `FiberId`.

**Signature**

```ts
declare const makeAs: <A, E = never>(fiberId: FiberId.FiberId) => Effect.Effect<Deferred<A, E>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Deferred.ts#L96)

Since v2.0.0