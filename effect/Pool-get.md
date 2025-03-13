Package: `effect`<br />
Module: `Pool`<br />

## Pool.get

Retrieves an item from the pool in a scoped effect. Note that if
acquisition fails, then the returned effect will fail for that same reason.
Retrying a failed acquisition attempt will repeat the acquisition attempt.

**Signature**

```ts
declare const get: <A, E>(self: Pool<A, E>) => Effect.Effect<A, E, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Pool.ts#L191)

Since v2.0.0