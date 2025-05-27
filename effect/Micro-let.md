Package: `effect`<br />
Module: `Micro`<br />

## Micro.let

Bind the result of a synchronous computation to the given name.

**Signature**

```ts
declare const let: { <N extends string, A extends Record<string, any>, B>(name: N, f: (a: NoInfer<A>) => B): <E, R>(self: Micro<A, E, R>) => Micro<Simplify<Omit<A, N> & { [K in N]: B; }>, E, R>; <A extends Record<string, any>, E, R, B, N extends string>(self: Micro<A, E, R>, name: N, f: (a: NoInfer<A>) => B): Micro<Simplify<Omit<A, N> & { [K in N]: B; }>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L4089)

Since v3.4.0