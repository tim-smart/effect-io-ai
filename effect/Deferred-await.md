Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.await

Retrieves the value of the `Deferred`, suspending the fiber running the
workflow until the result is available.

**Signature**

```ts
declare const await: <A, E>(self: Deferred<A, E>) => Effect.Effect<A, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Deferred.ts#L108)

Since v2.0.0