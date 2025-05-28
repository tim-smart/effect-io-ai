Package: `effect`<br />
Module: `Stream`<br />

## Stream.failSync

Terminates with the specified lazily evaluated error.

**Signature**

```ts
declare const failSync: <E>(evaluate: LazyArg<E>) => Stream<never, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1589)

Since v2.0.0