## catchAllDefect

Catch any unexpected errors of the given `Micro` effect, allowing you to recover from them.

**Signature**

```ts
declare const catchAllDefect: { <E, B, E2, R2>(f: (defect: unknown) => Micro<B, E2, R2>): <A, R>(self: Micro<A, E, R>) => Micro<A | B, E | E2, R | R2>; <A, E, R, B, E2, R2>(self: Micro<A, E, R>, f: (defect: unknown) => Micro<B, E2, R2>): Micro<A | B, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L2663)

Since v3.4.6