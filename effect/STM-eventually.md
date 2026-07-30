Package: `effect`<br />
Module: `STM`<br />

## STM.eventually

Returns an effect that ignores errors and runs repeatedly until it
eventually succeeds.

**Signature**

```ts
declare const eventually: <A, E, R>(self: STM<A, E, R>) => STM<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L535)

Since v2.0.0