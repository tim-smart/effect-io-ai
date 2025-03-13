Package: `effect`<br />
Module: `Micro`<br />

## Micro.as

Create a `Micro` effect that will replace the success value of the given
effect.

**Signature**

```ts
declare const as: { <A, B>(value: B): <E, R>(self: Micro<A, E, R>) => Micro<B, E, R>; <A, E, R, B>(self: Micro<A, E, R>, value: B): Micro<B, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L1259)

Since v3.4.0