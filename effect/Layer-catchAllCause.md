## catchAllCause

Recovers from all errors.

**Signature**

```ts
declare const catchAllCause: { <E, RIn2, E2, ROut2>(onError: (cause: Cause.Cause<E>) => Layer<ROut2, E2, RIn2>): <RIn, ROut>(self: Layer<ROut, E, RIn>) => Layer<ROut & ROut2, E2, RIn2 | RIn>; <RIn, E, ROut, RIn2, E2, ROut22>(self: Layer<ROut, E, RIn>, onError: (cause: Cause.Cause<E>) => Layer<ROut22, E2, RIn2>): Layer<ROut & ROut22, E2, RIn | RIn2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L222)

Since v2.0.0