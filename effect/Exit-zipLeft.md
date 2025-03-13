Package: `effect`<br />
Module: `Exit`<br />

## Exit.zipLeft

Sequentially zips the this result with the specified result discarding the
second element of the tuple or else returns the failed `Cause<E | E2>`.

**Signature**

```ts
declare const zipLeft: { <A2, E2>(that: Exit<A2, E2>): <A, E>(self: Exit<A, E>) => Exit<A, E2 | E>; <A, E, A2, E2>(self: Exit<A, E>, that: Exit<A2, E2>): Exit<A, E | E2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Exit.ts#L391)

Since v2.0.0