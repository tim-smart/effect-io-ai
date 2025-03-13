Package: `effect`<br />
Module: `Stream`<br />

## Stream.flattenExitOption

Unwraps `Exit` values that also signify end-of-stream by failing with `None`.

**Signature**

```ts
declare const flattenExitOption: <A, E2, E, R>(self: Stream<Exit.Exit<A, Option.Option<E2>>, E, R>) => Stream<A, E | E2, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1847)

Since v2.0.0