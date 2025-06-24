Package: `effect`<br />
Module: `Stream`<br />

## Stream.suspend

Returns a lazily constructed stream.

**Signature**

```ts
declare const suspend: <A, E, R>(stream: LazyArg<Stream<A, E, R>>) => Stream<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4786)

Since v2.0.0