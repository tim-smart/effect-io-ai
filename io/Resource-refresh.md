# refresh

Refreshes the cache. This method will not return until either the refresh
is successful, or the refresh operation fails.

Part of the `Resource` module, imported from `@effect/io/Resource`.

**Signature**

```ts
export declare const refresh: <E, A>(self: Resource<E, A>) => Effect.Effect<never, E, void>
```
