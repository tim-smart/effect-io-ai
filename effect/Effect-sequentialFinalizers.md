Package: `effect`<br />
Module: `Effect`<br />

## Effect.sequentialFinalizers

Ensures that finalizers are run sequentially in reverse order of their
addition.

**Details**

This function modifies the behavior of finalizers within a scoped workflow to
ensure they are run sequentially in reverse order when the scope is closed.

By default, finalizers are executed sequentially, so this only changes the
behavior if the scope is configured to run finalizers concurrently.

**See**

- `parallelFinalizers` for a version that ensures finalizers are run concurrently.

**Signature**

```ts
declare const sequentialFinalizers: <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L5958)

Since v2.0.0