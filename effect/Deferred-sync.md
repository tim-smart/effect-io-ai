Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.sync

Completes the `Deferred` with the specified lazily evaluated value.

**Signature**

```ts
declare const sync: { <A>(evaluate: LazyArg<A>): <E>(self: Deferred<A, E>) => Effect.Effect<boolean>; <A, E>(self: Deferred<A, E>, evaluate: LazyArg<A>): Effect.Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Deferred.ts#L281)

Since v2.0.0