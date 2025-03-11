## mapError

Transform any expected errors of the given `Micro` effect.

**Signature**

```ts
declare const mapError: { <E, E2>(f: (e: E) => E2): <A, R>(self: Micro<A, E, R>) => Micro<A, E2, R>; <A, E, R, E2>(self: Micro<A, E, R>, f: (e: E) => E2): Micro<A, E2, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L2856)

Since v3.4.0