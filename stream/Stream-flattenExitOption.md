# flattenExitOption

Unwraps `Exit` values that also signify end-of-stream by failing with `None`.

For `Exit` values that do not signal end-of-stream, prefer:

```ts
stream.mapZIO(ZIO.done(_))
```

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const flattenExitOption: <R, E, E2, A>(
  self: Stream<R, E, Exit.Exit<Option.Option<E2>, A>>
) => Stream<R, E | E2, A>
```
