Package: `effect`<br />
Module: `Layer`<br />

## Layer.catch

Recovers from all typed errors by switching to another layer.

**When to use**

Use when every typed `Layer` construction error should use the same
recovery path.

**See**

- `catchTag` for recovering from specific tagged errors
- `catchCause` for recovering with access to the full cause

**Signature**

```ts
declare const catch: { <E, RIn2, E2, ROut2>(onError: (error: E) => Layer<ROut2, E2, RIn2>): <RIn, ROut>(self: Layer<ROut, E, RIn>) => Layer<ROut & ROut2, E2, RIn2 | RIn>; <RIn, E, ROut, RIn2, E2, ROut2>(self: Layer<ROut, E, RIn>, onError: (error: E) => Layer<ROut2, E2, RIn2>): Layer<ROut & ROut2, E2, RIn | RIn2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L1819)

Since v4.0.0