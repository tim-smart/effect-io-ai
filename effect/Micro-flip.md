Package: `effect`<br />
Module: `Micro`<br />

## Micro.flip

Swap the error and success types of the `Micro` effect.

**Signature**

```ts
declare const flip: <A, E, R>(self: Micro<A, E, R>) => Micro<E, A, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L1280)

Since v3.4.0