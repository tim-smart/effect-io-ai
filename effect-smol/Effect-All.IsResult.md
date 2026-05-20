Package: `effect`<br />
Module: `Effect`<br />

## Effect.All.IsResult

Detects whether `Effect.all` should collect results in `Result` mode.

**Signature**

```ts
type IsResult<A> = [Extract<A, { readonly mode: "result" }>] extends [never] ? false : true
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L380)

Since v4.0.0