Package: `effect`<br />
Module: `Micro`<br />

## Micro.suspend

Lazily creates a `Micro` effect from the given side-effect.

**Signature**

```ts
declare const suspend: <A, E, R>(evaluate: LazyArg<Micro<A, E, R>>) => Micro<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L893)

Since v3.4.0