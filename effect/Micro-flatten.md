Package: `effect`<br />
Module: `Micro`<br />

## Micro.flatten

Flattens any nested `Micro` effects, merging the error and requirement types.

**Signature**

```ts
declare const flatten: <A, E, R, E2, R2>(self: Micro<Micro<A, E, R>, E2, R2>) => Micro<A, E | E2, R | R2>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L1564)

Since v3.4.0