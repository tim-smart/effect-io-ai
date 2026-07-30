Package: `effect`<br />
Module: `Stream`<br />

## Stream.contextWith

Accesses the context of the stream.

**Signature**

```ts
declare const contextWith: <R, A>(f: (env: Context.Context<R>) => A) => Stream<A, never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1531)

Since v2.0.0