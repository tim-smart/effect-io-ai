Package: `effect`<br />
Module: `Stream`<br />

## Stream.sync

Creates a single-valued pure stream.

**Signature**

```ts
declare const sync: <A>(evaluate: LazyArg<A>) => Stream<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4766)

Since v2.0.0