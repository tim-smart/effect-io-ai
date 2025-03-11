## unsafeDone

Unsafely exits the `Deferred` with the specified `Exit` value, which will be
propagated to all fibers waiting on the value of the `Deferred`.

**Signature**

```ts
declare const unsafeDone: <A, E>(self: Deferred<A, E>, effect: Effect.Effect<A, E>) => void
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Deferred.ts#L301)

Since v2.0.0