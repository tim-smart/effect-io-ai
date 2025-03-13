Package: `effect`<br />
Module: `STM`<br />

## STM.merge

Returns a new effect where the error channel has been merged into the
success channel to their common combined type.

**Signature**

```ts
declare const merge: <A, E, R>(self: STM<A, E, R>) => STM<E | A, never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1289)

Since v2.0.0