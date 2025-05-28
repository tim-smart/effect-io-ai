Package: `effect`<br />
Module: `Stream`<br />

## Stream.whenCase

Returns the resulting stream when the given `PartialFunction` is defined
for the given value, otherwise returns an empty stream.

**Signature**

```ts
declare const whenCase: <A, A2, E, R>(evaluate: LazyArg<A>, pf: (a: A) => Option.Option<Stream<A2, E, R>>) => Stream<A2, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L5552)

Since v2.0.0