Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.succeed

Completes the `Deferred` with the specified value.

**Signature**

```ts
declare const succeed: { <A>(value: A): <E>(self: Deferred<A, E>) => Effect.Effect<boolean>; <A, E>(self: Deferred<A, E>, value: A): Effect.Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Deferred.ts#L270)

Since v2.0.0