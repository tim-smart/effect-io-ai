## mapError

Maps from one error type to another.

**Signature**

```ts
declare const mapError: { <E, E2>(f: (error: E) => E2): <A, R>(self: STM<A, E, R>) => STM<A, E2, R>; <A, E, R, E2>(self: STM<A, E, R>, f: (error: E) => E2): STM<A, E2, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1277)

Since v2.0.0