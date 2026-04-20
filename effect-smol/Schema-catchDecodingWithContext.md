Package: `effect`<br />
Module: `Schema`<br />

## Schema.catchDecodingWithContext

Like `catchDecoding`, but the handler may require Effect services (`R`).

**Signature**

```ts
declare const catchDecodingWithContext: <S extends Top, R = never>(f: (issue: Issue.Issue) => Effect.Effect<Option_.Option<S["Type"]>, Issue.Issue, R>) => (self: S) => middlewareDecoding<S, S["DecodingServices"] | R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3959)

Since v4.0.0