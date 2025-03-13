Package: `effect`<br />
Module: `Micro`<br />

## Micro.when

The moral equivalent of `if (p) exp`.

**Signature**

```ts
declare const when: { <E2 = never, R2 = never>(condition: LazyArg<boolean> | Micro<boolean, E2, R2>): <A, E, R>(self: Micro<A, E, R>) => Micro<Option.Option<A>, E | E2, R | R2>; <A, E, R, E2 = never, R2 = never>(self: Micro<A, E, R>, condition: LazyArg<boolean> | Micro<boolean, E2, R2>): Micro<Option.Option<A>, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L2239)

Since v3.4.0