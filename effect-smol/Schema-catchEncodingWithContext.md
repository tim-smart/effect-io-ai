Package: `effect`<br />
Module: `Schema`<br />

## Schema.catchEncodingWithContext

Like `catchEncoding`, but the handler may require Effect services (`R`).

**Signature**

```ts
declare const catchEncodingWithContext: <S extends Top, R = never>(f: (issue: Issue.Issue) => Effect.Effect<Option_.Option<S["Encoded"]>, Issue.Issue, R>) => (self: S) => middlewareEncoding<S, S["EncodingServices"] | R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3973)

Since v4.0.0