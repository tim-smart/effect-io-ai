## flatMap

Map the success value of this `Micro` effect to another `Micro` effect, then
flatten the result.

**Signature**

```ts
declare const flatMap: { <A, B, E2, R2>(f: (a: A) => Micro<B, E2, R2>): <E, R>(self: Micro<A, E, R>) => Micro<B, E | E2, R | R2>; <A, E, R, B, E2, R2>(self: Micro<A, E, R>, f: (a: A) => Micro<B, E2, R2>): Micro<B, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L1525)

Since v3.4.0