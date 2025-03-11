## get

Retrieves the current version of the reloadable service.

**Signature**

```ts
declare const get: <I, S>(tag: Context.Tag<I, S>) => Effect.Effect<S, never, Reloadable<I>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Reloadable.ts#L92)

Since v2.0.0