Package: `effect`<br />
Module: `STM`<br />

## STM.exists

Determines whether any element of the `Iterable[A]` satisfies the effectual
predicate `f`.

**Signature**

```ts
declare const exists: { <A, R, E>(predicate: (a: NoInfer<A>) => STM<boolean, E, R>): (iterable: Iterable<A>) => STM<boolean, E, R>; <A, R, E>(iterable: Iterable<A>, predicate: (a: A) => STM<boolean, E, R>): STM<boolean, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L556)

Since v2.0.0