## map

Transforms the success value of the `Micro` effect with the specified
function.

**Signature**

```ts
declare const map: { <A, B>(f: (a: A) => B): <E, R>(self: Micro<A, E, R>) => Micro<B, E, R>; <A, E, R, B>(self: Micro<A, E, R>, f: (a: A) => B): Micro<B, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L1576)

Since v3.4.0