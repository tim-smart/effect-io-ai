Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.isDone

Returns `true` if this `Deferred` has already been completed with a value or
an error, `false` otherwise.

**Signature**

```ts
declare const isDone: <A, E>(self: Deferred<A, E>) => Effect.Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Deferred.ts#L251)

Since v2.0.0