Package: `@effect/platform-node-shared`<br />
Module: `NodeStream`<br />

## NodeStream.pipeThroughSimple

Pipes a stream of strings or bytes through a Node `Duplex` using default
options and `Cause.UnknownError` for stream failures.

**Signature**

```ts
declare const pipeThroughSimple: { (duplex: LazyArg<Duplex>): <R, E>(self: Stream.Stream<string | Uint8Array, E, R>) => Stream.Stream<Uint8Array, E | Cause.UnknownError, R>; <R, E>(self: Stream.Stream<string | Uint8Array, E, R>, duplex: LazyArg<Duplex>): Stream.Stream<Uint8Array, Cause.UnknownError | E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeStream.ts#L169)

Since v4.0.0