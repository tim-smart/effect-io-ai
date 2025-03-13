Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.done

Exits the `Deferred` with the specified `Exit` value, which will be
propagated to all fibers waiting on the value of the `Deferred`.

**Signature**

```ts
declare const done: { <A, E>(exit: Exit.Exit<A, E>): (self: Deferred<A, E>) => Effect.Effect<boolean>; <A, E>(self: Deferred<A, E>, exit: Exit.Exit<A, E>): Effect.Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Deferred.ts#L145)

Since v2.0.0