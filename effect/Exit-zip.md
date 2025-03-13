Package: `effect`<br />
Module: `Exit`<br />

## Exit.zip

Sequentially zips the this result with the specified result or else returns
the failed `Cause<E | E2>`.

**Signature**

```ts
declare const zip: { <A2, E2>(that: Exit<A2, E2>): <A, E>(self: Exit<A, E>) => Exit<[A, A2], E2 | E>; <A, E, A2, E2>(self: Exit<A, E>, that: Exit<A2, E2>): Exit<[A, A2], E | E2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Exit.ts#L379)

Since v2.0.0