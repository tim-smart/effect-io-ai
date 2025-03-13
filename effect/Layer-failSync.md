Package: `effect`<br />
Module: `Layer`<br />

## Layer.failSync

Constructs a layer that fails with the specified error.

**Signature**

```ts
declare const failSync: <E>(evaluate: LazyArg<E>) => Layer<unknown, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L329)

Since v2.0.0