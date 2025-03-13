Package: `effect`<br />
Module: `Exit`<br />

## Exit.mapError

Maps over the error contained in the `Failure` of the specified exit using
the provided function.

**Signature**

```ts
declare const mapError: { <E, E2>(f: (e: E) => E2): <A>(self: Exit<A, E>) => Exit<A, E2>; <A, E, E2>(self: Exit<A, E>, f: (e: E) => E2): Exit<A, E2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Exit.ts#L302)

Since v2.0.0