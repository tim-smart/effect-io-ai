## andThen

Sequences two `Cause`s. The second `Cause` can be dependent on the result of
the first `Cause`.

**Signature**

```ts
declare const andThen: { <E, E2>(f: (e: E) => Cause<E2>): (self: Cause<E>) => Cause<E2>; <E2>(f: Cause<E2>): <E>(self: Cause<E>) => Cause<E2>; <E, E2>(self: Cause<E>, f: (e: E) => Cause<E2>): Cause<E2>; <E, E2>(self: Cause<E>, f: Cause<E2>): Cause<E2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L1048)

Since v2.0.0